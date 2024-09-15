<template>
  <div>
    <div class="grid grid-cols-1 sm:grid-cols-3">
      <div class="bg-[#E63036]">
        <home-group-article-item :article="first" text-color="#FFFFFF" />
      </div>
      <div>
        <home-group-article-item
          :article="second"
          class="bg-primary bt bb sm:border-none"
          :text-color="isMobile ? '#000000' : '#FFFFFF'"
        />
      </div>
      <home-group-article-item
        :article="third"
        class="bg-secondary"
        :text-color="isMobile ? '#000000' : '#FFFFFF'"
      />
    </div>
    <home-group-article-secondary
      :first-article="fourth"
      :second-article="fifth"
      :text-color="isMobile ? '#000000' : '#FFFFFF'"
    />
  </div>
</template>
<script setup>
import { first, second, third, fourth, fifth } from "@/data/GroupArticles.js";

const isMobile = ref(window?.innerWidth < 640);

onMounted(() => {
  window.addEventListener("resize", handleResize);
});

onBeforeUnmount(() => {
  window.removeEventListener("resize", handleResize);
});

const handleResize = () => {
  isMobile.value = window?.innerWidth < 640;
};
</script>
<style scoped>
@media (min-width: 640px) {
  .bg-primary {
    background-image: url("/assets/articles/girl.jpg");
    background-position: center;
    background-size: cover;
    background-repeat: no-repeat;
  }

  .bg-secondary {
    background-image: url("/assets/articles/meeting.jpg");
    background-position: center;
    background-size: cover;
    background-repeat: no-repeat;
  }
}
</style>
