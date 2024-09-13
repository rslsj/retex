<template>
  <div class="flex justify-center items-center p-2 w-[100px]">
    <div v-for="mod in modItems" :key="mod.value" class="p-2">
      <div
        :class="['cursor-pointer', { selected: selectedMod === mod.value }]"
        @click="selectedMod = mod.value"
      >
        <img :src="mod.img" alt="Mod Icon" />
      </div>
    </div>
  </div>
</template>

<script setup>
import { useHomeStore } from "@/stores/home";
import { storeToRefs } from "pinia";

import mod0 from "@/assets/icons/mod0.svg";
import mod1 from "@/assets/icons/mod1.svg";

const homeStore = useHomeStore();
const { selectedMod } = storeToRefs(homeStore);

const modItems = [
  { img: mod0, value: 0 },
  { img: mod1, value: 1 },
];
</script>
<style scoped>
.selected {
  border: 1px solid black;
  box-shadow: -3px 3px 0px 0px black;
  border-radius: 4px;
}
</style>
