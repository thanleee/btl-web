<<<<<<< HEAD
// const options = document.querySelectorAll('.slidebar-option')
// const optionsDisplays = document.querySelectorAll('.option-display')
// const girdProduct = document.querySelector('.container')

// const changeGrid = (number) => {
//     console.log('run')
//     if (Number.parseInt(number) === 3) {
//         girdProduct.classList.add('gird-3')
//         girdProduct.classList.remove('gird-4')
//     } else if (Number.parseInt(number) === 4) {
//         girdProduct.classList.add('gird-4')
//         girdProduct.classList.remove('gird-3')
//     }
// }

// options.forEach((ele, index) => {
//     ele.addEventListener('click', () => {
//         if (ele.classList.contains('show')) {
//             ele.classList.remove('show')
//         } else {
//             ele.classList.add('show')
//         }
//     })

// })

// optionsDisplays.forEach((ele, index) => {
//     ele.addEventListener('click', () => {
//         if (!ele.classList.contains('active')) {
//             ele.classList.add('active')
//             if (index === 0) {
//                 optionsDisplays[1].classList.remove('active')
//             } else {
//                 optionsDisplays[0].classList.remove('active')
//             }
//             changeGrid(ele.innerText)
//         }
//     })
// })
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
=======
const options = document.querySelectorAll('.slidebar-option')
const optionsDisplays = document.querySelectorAll('.option-display')
const girdProduct = document.querySelector('.container')

const changeGrid = (number) => {
    console.log('run')
    if(Number.parseInt(number) === 3) {
       girdProduct.classList.add('gird-3')
       girdProduct.classList.remove('gird-4')
    }else if(Number.parseInt(number) === 4){
        girdProduct.classList.add('gird-4')
        girdProduct.classList.remove('gird-3')
    }
}

options.forEach((ele,index) => {
    ele.addEventListener('click', () => {
        if(ele.classList.contains('show')) {
            ele.classList.remove('show')
        }else {
            ele.classList.add('show')
        }
    })

})

optionsDisplays.forEach((ele, index) => {
    ele.addEventListener('click', () => {
        if(!ele.classList.contains('active')) {
            ele.classList.add('active')
           if(index === 0) {
                optionsDisplays[1].classList.remove('active')
           }else {
                optionsDisplays[0].classList.remove('active')
           }
           changeGrid(ele.innerText)
        }
    })
})
>>>>>>> 6cd0e1d83a4c684f041cbfd85dd4ee9ede2b8150
