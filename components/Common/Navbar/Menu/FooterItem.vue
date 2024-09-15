<template>
  <div
    class="flex justify-center items-center py-8 bg-white hover:bg-[#f5f5f5] cursor-pointer px-4"
  >
    {{ props.text }}
  </div>
</template>
<script setup>
const props = defineProps({
  text: String,
});
</script>
