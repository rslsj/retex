<template>
  <div class="p-6 flex justify-center items-center h-[188px] sm:h-[212px]">
    <h1
      v-if="blog?.cartTitle"
      class="font-bold text-2xl md:text-[40px] text-[#E63036]"
    >
      {{ blog?.cartTitle }}
    </h1>
    <div v-if="blog?.mobile && isMd" class="flex flex-col items-center">
      <h2 class="font-bold">{{ blog?.mobile }}</h2>
      <img
        class="mt-4 cursor-pointer"
        src="/assets/icons/arrow-black.png"
        alt="arrow-black"
      />
    </div>
    <div
      v-if="!blog?.cartTitle && (!blog?.mobile || !isMd)"
      class="flex flex-col items-center"
    >
      <img class="mt-4 cursor-pointer" :src="blog?.img" alt="arrow-black" />
      <NuxtLink
        :to="blog?.link"
        class="font-bold text-base md:text-lg leading-7 mt-4"
      >
        {{ blog?.title }}
      </NuxtLink>
      <h3 class="text-sm font-light leading-6 md:text-base">
        {{ blog?.author }}
      </h3>
    </div>
  </div>
</template>
<script setup>
const props = defineProps({
  blog: {
    type: Object,
  },
});
const isMd = ref(window?.innerWidth < 768);

const handleResize = () => {
  isMd.value = window?.innerWidth < 768;
};

onMounted(() => {
  window.addEventListener("resize", handleResize);
});

onBeforeUnmount(() => {
  window.removeEventListener("resize", handleResize);
});
</script>
