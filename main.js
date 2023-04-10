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