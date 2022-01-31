const restorani = [
    {id: 1, name: "Centar Perk"},
    {id: 2, name: "Plaza de Toros"},
    {id: 3, name: "Play Cafe"},
    {id: 4, name: "Pastel Wine & Dine"},
    {id: 5, name: "Picerija Libertas"},
    {id: 6, name: "Eksluziv"},
    {id: 7, name: "Trend"},
    {id: 8, name: "Trend"},
    {id: 9, name: "Carpe diem"},
    {id: 10, name: "Casa Cubana"},
    {id: 11, name: "Bass Cafe"},
    {id: 12, name: "Bravo"},
    {id: 13, name: "Makedonska sofra"},
    {id: 14, name: "Meze Bar"},
    {id: 15, name: "Pelister"},
    {id: 16, name: "Coffee O''Clock"},
    {id: 17, name: "Three Kitchen Bar"},
    {id: 18, name: "Stay you"},
    {id: 19, name: "Cafe Barcelona"},
    {id: 20, name: "Izlet"},
    {id: 21, name: "My Space cafe"},
    {id: 22, name: "Gallery 7"},

];

new Vue({
    el: '#restaurants',
    data: function() {
      return {
        selected: 'Centar Perk',
        restaurants: restorani
      }
    }
  })