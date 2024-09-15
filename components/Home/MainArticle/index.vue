<template>
  <div class="h-[320px] sm:h-[506px] bg-desktop p-6 sm:p-12">
    <div class="h-full flex items-end md:w-8/12">
      <common-article :article="mainArticle" />
    </div>
  </div>
</template>
<script setup>
import { mainArticle } from "@/data/Articles.js";
</script>
<style scoped>
.bg-desktop {
  background-image: url("/assets/articles/main.jpg");
  background-position: center;
  background-size: cover;
  background-repeat: no-repeat;
}
</style>
