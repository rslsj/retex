<template>
  <div class="flex-col sm:w-2/5">
    <div
      class="sub-article sm:h-[60%] bg-primary flex items-center p-6 bt bb sm:border-none"
    >
      <common-article
        :article="primaryArticle"
        :text-color="isMobile ? '#000000' : '#FFFFFF'"
      >
        <template #header>
          <img
            class="sbb sm:border-none rounded-lg my-6"
            src="/assets/audio/audio1.png"
          />
        </template>
      </common-article>
    </div>
    <div class="sub-article sm:h-[40%] bg-secondary flex items-center p-6">
      <common-article
        :article="secondaryArticle"
        :text-color="isMobile ? '#000000' : '#FFFFFF'"
      />
    </div>
  </div>
</template>

<script setup>
import { ref, onMounted, onBeforeUnmount } from "vue";

const props = defineProps({
  primaryArticle: {
    type: Object,
  },
  secondaryArticle: {
    type: Object,
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

<style scoped>
@media (min-width: 640px) {
  .bg-primary {
    background-image: url("/assets/articles/startup.jpg");
    background-position: center;
    background-size: cover;
    background-repeat: no-repeat;
  }

  .bg-secondary {
    background-image: url("/assets/articles/flag.jpg");
    background-position: center;
    background-size: cover;
    background-repeat: no-repeat;
  }
}
</style>
