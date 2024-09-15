<template>
  <div class="grid grid-cols-2 md:grid-cols-6">
    <home-bloggers-item
      v-for="(blog, index) in bloggers"
      :blog="blog"
      :class="[
        'border-black',
        !isMd && index !== 5
          ? 'border-t border-r border-b'
          : ' border-t border-b border-r-0',
        isMd && index % 2 === 0 ? 'br border-b-0' : 'border-r-1 border-b-0',
      ]"
    />
  </div>
</template>
<script setup>
import { bloggers } from "@/data/Bloggers.js";
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
