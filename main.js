// check email
function checkEmail() {
    var email = document.getElementById("email").value;
    var error = document.getElementById("emailError");
    let atIndex = email.indexOf("@");
    let dotIndex = email.lastIndexOf(".");
    if (atIndex < 1 || dotIndex < atIndex + 2 || dotIndex + 2 >= email.length) {
        error.innerHTML = "email ko hợp lệ";
        document.getElementById("emailError").style.border = "1px soild red";
        return false;
    }
    else {
        return true;
    }
}
// tạo scroll menu
let previous = window.pageYOffset;
let screen = window.innerWidth;
function scrolll() {
    window.onscroll = function () {
        let current = window.pageYOffset;
        if (current > previous) {
            document.querySelector("header").classList.add("hidden");
        }
        else {
            document.querySelector("header").classList.remove("hidden");
        }
        previous = current;
    }
}
scrolll();
// tạo menu trái
const bartabb = document.querySelector('#bartab');
// console.log(bartabb);
bartabb.addEventListener("click", function () {
    document.querySelector(".bartab").style.display = "flex";
    window.onscroll = function () {
        document.querySelector("header").classList.remove("hidden");

    }
})
const bartabclose = document.querySelector('#close');
// console.log(bartabb);
function slideOut() {
    const box = document.querySelector('.bartab');
    box.style.display = "none";
    scrolll();
}
