<template>
  <div class="flex justify-center items-center p-6">
    <common-article :text-color="textColor" :article="article" />
  </div>
</template>
<script setup>
const props = defineProps({
  article: {
    type: Object,
  },
  textColor: {
    type: String,
    default: "#000000",
  },
});
</script>
