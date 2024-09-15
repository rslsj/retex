<template>
  <div
    class="flex-col justify-between items-center px-4 sm:px-10 py-8 sm:py-[84px] bg-responsive"
  >
    <h1
      class="sm:text-white font-bold text-2xl sm:text-[40px] leading-8 sm:leading-[46px]"
    >
      Essere troppo seri non è cosa molto seria
    </h1>
    <h3
      class="sm:text-white italic text-sm font-semibold sm:text-base leading-4"
    >
      [ Detto Africano ]
    </h3>
  </div>
</template>

<style scoped>
.bg-responsive {
  background: #f4f4f4;
}

@media (min-width: 640px) {
  .bg-responsive {
    background-image: url("/assets/articles/quote.jpg");
    background-position: center;
    background-size: cover;
    background-repeat: no-repeat;
  }
}
</style>
