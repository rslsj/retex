<template>
  <div class="bb p-6 flex-col">
    <div class="h-[358px] w-full bg-woman"></div>
    <common-article class="mt-6" :article="article" :text-color="'#000000'" />
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
.bg-woman {
  background-image: url("/assets/articles/woman.jpg");
  background-position: center;
  background-size: cover;
  background-repeat: no-repeat;
}
</style>
