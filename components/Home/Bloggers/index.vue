<template>
  <div class="grid grid-cols-2 md:grid-cols-6">
    <home-bloggers-item class="sbb" v-for="blog in bloggers" :blog="blog" />
  </div>
</template>
<script setup>
import { bloggers } from "@/data/Bloggers.js";
</script>
