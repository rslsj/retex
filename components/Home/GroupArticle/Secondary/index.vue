<template>
  <div class="grid grid-cols-1 sm:grid-cols-3">
    <div
      class="flex justify-center items-center p-6 bg-sport bt bb sm:border-none"
    >
      <common-article :text-color="textColor" :article="firstArticle">
        <template #header>
          <img
            class="sbb sm:border-none rounded-lg my-6"
            src="/assets/audio/audio2.png"
          />
        </template>
      </common-article>
    </div>
    <div class="p-6 sm:col-span-2 bg-woman hidden sm:flex justify-end">
      <div class="w-[50%]">
        <common-article :text-color="textColor" :article="secondArticle" />
      </div>
    </div>
    <home-group-article-secondary-mobile
      class="flex sm:hidden"
      :article="secondArticle"
    />
  </div>
</template>
<script setup>
const props = defineProps({
  firstArticle: {
    type: Object,
  },
  secondArticle: {
    type: Object,
  },
  textColor: {
    type: String,
    default: "#000000",
  },
});
</script>
<style scoped>
@media (min-width: 640px) {
  .bg-sport {
    background-image: url("/assets/articles/sport.jpg");
    background-position: center;
    background-size: cover;
    background-repeat: no-repeat;
  }

  .bg-woman {
    background-image: url("/assets/articles/woman.jpg");
    background-position: center;
    background-size: cover;
    background-repeat: no-repeat;
  }
}
</style>
