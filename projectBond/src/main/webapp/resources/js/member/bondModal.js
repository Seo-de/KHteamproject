const closeBtn = document.getElementById("close");
const yesBtn = document.getElementById("yesBtn");
const noBtn = document.getElementById("noBtn");
const modal = document.getElementById("modal");

closeBtn.addEventListener("click", ()=>{
    modal.classList.add("error");
    modal.classList.remove("confirm");
});
noBtn.addEventListener("click", ()=>{
    modal.classList.add("error");
    modal.classList.remove("confirm");
});

yesBtn.addEventListener("click", ()=>{
    modal.classList.remove("error");
    modal.classList.add("confirm");

});