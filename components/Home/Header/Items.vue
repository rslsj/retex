<template>
  <div class="flex flex-wrap gap-4 p-2">
    <div v-for="(item, index) in tabItems.slice(1)" :key="index">
      <common-label
        :text="item.text"
        :color="item.color"
        @click="selectedTab = item.value"
      />
    </div>
  </div>
</template>

<script setup>
import { useHomeStore } from "@/stores/home";
import { storeToRefs } from "pinia";

const homeStore = useHomeStore();

const { selectedTab, tabItems } = storeToRefs(homeStore);
</script>
