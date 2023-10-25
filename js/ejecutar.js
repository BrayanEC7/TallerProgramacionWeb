const icon = document.querySelector(".icon");
const barraMenu = document.querySelector(".menu");

icon.addEventListener("click",() => {
    barraMenu.classList.toggle("menu_visible");
});