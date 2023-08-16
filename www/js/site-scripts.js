function animateFrame(audioFile, pictureFile, msDelay) {
    var bodyBox = document.getElementsByClassName("BodyBox")[0];
    var dynamicAnimation = document.getElementById("dynamicAnimation");
    
    bodyBox.style.display = "none";   
    dynamicAnimation.innerHTML = '<img class="DynamicImage" src="img/' + pictureFile + '"><audio id="dynamicFX"><source src="audio/' + audioFile + '" type="audio/mpeg"></audio>';
    document.getElementById("dynamicFX").play();    
        
    setTimeout(function() { 
        dynamicAnimation.innerHTML = "";
        bodyBox.style.display = "block";
    }, msDelay);
}