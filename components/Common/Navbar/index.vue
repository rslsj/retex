<template>
  <div class="bg-white">
    <div class="flex justify-between bb bt">
      <div
        class="w-[52px] sm:w-24 h-[52px] sm:h-24 flex justify-center items-center pt-1 br"
      >
        <common-navbar-hamburger />
      </div>
      <div
        class="w-[52px] sm:w-24 h-[52px] sm:h-24 flex justify-center items-center cursor-pointer bl"
      >
        <img src="~/assets/icons/lente.svg" />
      </div>
    </div>
    <common-navbar-menu :items="itemsMenu" :itemsFooter="itemsFooter" />
    <common-tab-switch class="hidden sm:flex" />
  </div>
</template>
<script setup>
import { itemsMenu, itemsFooter } from "@/data/Navbar.js";
</script>
