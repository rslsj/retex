<template>
  <div class="grid grid-cols-1 sm:grid-cols-3 sbg">
    <div class="flex justify-center items-center p-6">
      <common-article :text-color="textColor" :article="firstArticle">
        <template #header>
          <img
            class="sbb sm:border-none rounded-lg my-6"
            src="/assets/audio/audio1.png"
          />
        </template>
      </common-article>
    </div>

    <div class="p-2 sm:col-span-2 sbg"></div>
  </div>
</template>
<script setup>
const props = defineProps({
  firstArticle: {
    type: Object,
  },
  firstArticle: {
    type: Object,
  },
  textColor: {
    type: String,
    default: "#000000",
  },
});
</script>
