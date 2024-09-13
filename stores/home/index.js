export const useHomeStore = defineStore("home", () => {
  const menu = ref(false);

  const selectedTab = ref(0);
  const selectedMod = ref(0);

  const tabItems = ref([
    { text: "Tutti i temi", value: 0 },
    { text: "Ambiente", value: 1, color: "#E2F1E8" },
    { text: "Economia", value: 2 },
    { text: "Mondo", value: 3, color: "#F1DADA" },
    { text: "Non Profit", value: 4 },
    { text: "Politica", value: 5, color: "#F1F1E2" },
    { text: "Società", value: 6 },
    { text: "Welfare", value: 7 },
  ]);

  return {
    menu,
    selectedTab,
    tabItems,
    selectedMod,
  };
});
