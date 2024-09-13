<template>
  <div class="hidden sm:flex items-end sm:w-3/5 bg-desktop px-8 pb-16">
    <common-article :article="article" />
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
