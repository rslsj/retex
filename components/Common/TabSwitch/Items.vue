<template>
  <div class="flex space-x-4 overflow-x-auto no-scrollbar">
    <div
      v-for="(tab, index) in tabItems"
      :key="index"
      @click="selectedTab = tab.value"
      :class="[
        'cursor-pointer px-2 pt-6 pb-4 text-2xl font-bold font-raleway whitespace-nowrap hover:text-[#ff2c33]',
        selectedTab === tab.value ? 'border-b-[9px] border-[#ff2c33]' : '',
      ]"
    >
      {{ tab.text }}
    </div>
  </div>
</template>

<script setup>
import { useHomeStore } from "@/stores/home";
import { storeToRefs } from "pinia";

const homeStore = useHomeStore();
const { selectedTab, tabItems } = storeToRefs(homeStore);
</script>
