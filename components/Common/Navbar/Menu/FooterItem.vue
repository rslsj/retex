<template>
  <NuxtLink :to="props.link">
    <div
      class="flex justify-center items-center py-8 bg-white hover:bg-[#f5f5f5] cursor-pointer px-4 max-h-[88px]"
    >
      {{ props.text }}
    </div>
  </NuxtLink>
</template>
<script setup>
const props = defineProps({
  text: String,
  link: String,
});
</script>
