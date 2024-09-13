<template>
  <div
    :class="[
      props.tag ? 'px-2 py-1' : 'px-4 py-3',
      'flex justify-center items-center border-shadow  whitespace-nowrap text-[10px] font-bold',
      { 'hover:bg-[#f5f5f5] cursor-pointer': !props.tag },
      { 'bg-white': !isCustomColor },
    ]"
    :style="isCustomColor ? { backgroundColor: props.color } : null"
  >
    {{ props.text }}
  </div>
</template>

<script setup>
const props = defineProps({
  text: String,
  color: {
    type: String,
    default: "#FFFFFF",
  },
  tag: {
    type: Boolean,
    default: false,
  },
});

const isCustomColor = computed(() => props.color !== "#FFFFFF");
</script>
