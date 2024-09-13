<template>
  <div :class="primary || isMobile ? 'flex items-center' : ''">
    <img
      :class="primary || isMobile ? 'mr-4' : 'mb-4'"
      :src="author.img"
      alt="author"
    />
    <div :style="{ color: textColor }">
      <h2 class="text-sm mb-2">{{ author.name }}</h2>
      <h3 class="text-[10px] mt-2">{{ author.date }}</h3>
    </div>
  </div>
</template>

<script setup>
const props = defineProps({
  author: {
    type: Object,
    default: () => ({
      img: "/assets/articles/authors/author.png",
      name: "pippo pluto",
      date: "metti data",
    }),
  },
  textColor: {
    type: String,
    default: "#FFFFFF",
  },
  primary: {
    type: Boolean,
    default: false,
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
</script>
