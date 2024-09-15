<template>
  <div class="max-w-[1440px] grow">
    <div class="fixed w-full max-w-[1440px] bg-white">
      <common-header />
      <common-navbar />
    </div>
    <div class="pt-[127px] sm:pt-[237px]">
      <slot />
    </div>
    <common-footer />
  </div>
</template>
