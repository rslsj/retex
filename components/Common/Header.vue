<template>
  <div
    class="flex justify-between mt-8 sm:mt-0 sm:px-[40px] sm:py-[16px] bg-white"
  >
    <div class="flex grow sm:flex-none">
      <div
        class="flex justify-center items-center grow sm:flex-none sm:border-none py-2 sm:py-0 cursor-pointer bt br"
      >
        <NuxtLink to="/contribute">Contribuisci</NuxtLink>
      </div>
      <span class="mx-0 sm:mx-2" />
      <div
        class="flex justify-center items-center grow sm:flex-none sm:border-none py-2 sm:py-0 cursor-pointer bt"
      >
        <NuxtLink to="/subscribe">Abbonati</NuxtLink>
      </div>
    </div>
    <div class="hidden sm:flex cursor-pointer"><h3>Accedi</h3></div>
  </div>
</template>

<script setup></script>
