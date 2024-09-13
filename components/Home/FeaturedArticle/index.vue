<template>
  <div class="sm:flex sm:h-[845px]">
    <home-featured-article-main
      class="hidden sm:flex"
      :article="featuredArticleMain"
    />
    <home-featured-article-main-mobile
      class="sm:hidden"
      :article="featuredArticleMain"
    />
    <home-featured-article-secondary
      :primary-article="featuredArticleSecondaryOne"
      :secondary-article="featuredArticleSecondaryTwo"
    />
  </div>
</template>
<script setup>
import {
  featuredArticleMain,
  featuredArticleSecondaryOne,
  featuredArticleSecondaryTwo,
} from "@/data/Articles.js";
</script>
