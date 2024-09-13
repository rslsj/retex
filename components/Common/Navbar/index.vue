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
const itemsMenu = [
  {
    title: "Articoli",
    subtitle: "Trend, dati e novità del Terzo Settore.",
  },
  {
    title: "Storie",
    subtitle: "Letture ed approfondimenti dei fenomeni complessi.",
  },
  {
    title: "Interviste",
    subtitle: "Racconti reali di persone ed organizzazioni.",
  },
  {
    title: "Opinioni",
    subtitle: "Riflessioni e confronti dei nostri opinionisti.",
  },
  {
    title: "Podcast",
    subtitle: "Un luogo per dare voce ai protagonisti della sostenibilità.",
  },
  {
    title: "Bookazine",
    subtitle: "Una rivista da leggere e un libro da conservare.",
  },
];
const itemsFooter = [
  { text: "Chi siamo" },
  { text: "Comitato editoriale" },
  { text: "Servizi" },
  { text: "Agenda / Eventi" },
  { text: "Mappa dell’attivismo" },
  { text: "Inchieste crowdfunding" },
];
</script>
