<template>
  <transition
    name="menu-fade"
    @before-enter="beforeEnter"
    @enter="enter"
    @leave="leave"
  >
    <div
      v-if="menu"
      class="h-screen w-full fixed max-w-[1440px] overflow-auto pb-32 sm:pb-40"
    >
      <div class="grid grid-cols-1 sm:grid-cols-3">
        <common-navbar-menu-item
          v-for="(item, index) in items"
          :key="index"
          :title="item.title"
          :subtitle="item.subtitle"
          :class="getClass(index)"
        />
      </div>

      <div class="grid grid-cols-2 sm:grid-cols-6">
        <common-navbar-menu-footer-item
          v-for="(footerItem, index) in itemsFooter"
          :key="index"
          :text="footerItem.text"
          :class="getClassFooter(index)"
        />
      </div>
    </div>
  </transition>
</template>

<script setup>
import { useHomeStore } from "@/stores/home";
import { storeToRefs } from "pinia";

const homeStore = useHomeStore();
const { menu } = storeToRefs(homeStore);
const props = defineProps({
  items: {
    type: Array,
    required: true,
    default: () => [],
  },
  itemsFooter: {
    type: Array,
    required: true,
    default: () => [],
  },
});
const isMobile = ref(window?.innerWidth < 640);

const handleResize = () => {
  isMobile.value = window?.innerWidth < 640;
};

onMounted(() => {
  window.addEventListener("resize", handleResize);
});

onBeforeUnmount(() => {
  window.removeEventListener("resize", handleResize);
});

// TODO: refactor border management

const getClass = (index) => {
  if (isMobile.value) {
    return "bb";
  }
  if (!isMobile.value && index < 2) {
    return "br";
  } else if (index === 2) {
    return "";
  } else if (index === 5) {
    return "bt bb";
  } else {
    return "bt br bb";
  }
};

const getClassFooter = (index) => {
  if (isMobile.value && index % 2 === 0) {
    return "bb br";
  } else if (isMobile.value && index % 2 !== 0) {
    return "bb";
  } else if (!isMobile.value && index !== 5) {
    return "br";
  } else {
    return "";
  }
};
</script>

<style scoped>
.menu-fade-enter-active,
.menu-fade-leave-active {
  transition: opacity 0.5s ease, transform 0.5s ease;
}

.menu-fade-enter-from,
.menu-fade-leave-to {
  opacity: 0;
  transform: translateY(-20px);
}

.menu-fade-enter-to,
.menu-fade-leave-from {
  opacity: 1;
  transform: translateY(0);
}
</style>
