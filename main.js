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