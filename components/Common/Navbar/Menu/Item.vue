<template>
  <div class="sbb bg-white hover:bg-[#f5f5f5] cursor-pointer">
    <div class="hidden sm:flex h-[147px]"></div>
    <div class="h-[166px] flex flex-col justify-center p-8">
      <h1 class="text-5xl font-bold mb-4">{{ props.title }}</h1>
      <h3 class="text-sm font-normal">{{ props.subtitle }}</h3>
    </div>
  </div>
</template>
<script setup>
const props = defineProps({
  title: String,
  subtitle: String,
});
</script>
