<template>
  <div class="flex flex-col md:flex-row font-bold sm:font-normal sm:text-sm">
    <NuxtLink v-for="item in items" :to="item.link" class="p-4">
      {{ item.text }}
    </NuxtLink>
  </div>
</template>

<script setup>
import { items } from "@/data/Footer.js";
</script>
