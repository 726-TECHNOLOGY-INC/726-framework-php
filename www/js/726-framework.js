function expandNav() {
    var e = document.getElementById("x726xNavigation");
    
    if (e.className === "x726x-page-nav__ul") {
        e.className += " responsive";
    } else {
        e.className = "x726x-page-nav__ul";
    }
}

function postForm(targetURL, objForm) {
    var data = new FormData(objForm);    
    var xhr = new XMLHttpRequest();
    
    xhr.open('POST', targetURL, true);
    xhr.onload = function () {
        console.log(this.responseText);
    };
    xhr.send(data);
}

function setUI() {
    var ui = document.getElementById("formui");
    var x = document.getElementById("formval");
    
    if ((ui) && (x)) { ui.value = x.value; }
}

function submitForm(id) {
    var f = document.getElementById(id);
    
    f.submit();
}