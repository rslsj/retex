<template>
  <div>
    <div class="flex">
      <common-label
        :text="props.article.label.text"
        :color="props.article.label.color"
        tag
      />
    </div>
    <slot name="header" />
    <NuxtLink
      :to="props.article.link"
      :style="{ color: textColor }"
      class="font-bold my-4 cursor-pointer"
      :class="
        props.article.primary
          ? 'leading-[32px] sm:leading-[54px] text-2xl sm:text-[40px]'
          : 'leading-[30px] sm:leading-[46px] text-xl sm:text-[32px]'
      "
    >
      {{ props.article.title }}
    </NuxtLink>
    <common-article-author
      :author="props.article.author"
      :text-color="textColor"
      :primary="props.article.primary"
    />
    <NuxtLink :to="props.article.link">
      <img
        v-show="!isMobile && !props.article.primary"
        class="mt-4 cursor-pointer"
        src="/assets/icons/arrow-white.png"
        alt="arrow-white"
      />
    </NuxtLink>
  </div>
</template>

<script setup>
const props = defineProps({
  article: {
    type: Object,
    default: {
      primary: false,
      link: "/",
      label: {
        text: "label",
        color: "#FFFFFF",
      },
      title: "lorem ipsums dolor sit amet, consectetur adipiscing elit,",
      author: {
        img: "/assets/articles/authors/author.png",
        name: "author",
        date: "29 Giugno 2022",
      },
    },
  },
  textColor: {
    type: String,
    default: "#FFFFFF",
  },
});
const isMobile = ref(window?.innerWidth < 640);

const handleResize = () => {
  isMobile.value = window?.innerWidth < 640;
};

onMounted(() => {
  window.addEventListener("resize", handleResize);
});

onBeforeUnmount(() => {
  window.removeEventListener("resize", handleResize);
});
</script>
