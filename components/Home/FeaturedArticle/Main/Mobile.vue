<template>
  <div class="px-4 py-6">
    <div class="h-[200px] bg-desktop mb-6"></div>
    <common-article :article="article" text-color="#000000" />
  </div>
</template>
<script setup>
const props = defineProps({
  article: {
    type: Object,
  },
});
</script>
<style scoped>
.bg-desktop {
  background-image: url("/assets/articles/climate.jpg");
  background-position: center;
  background-size: cover;
  background-repeat: no-repeat;
}
</style>
