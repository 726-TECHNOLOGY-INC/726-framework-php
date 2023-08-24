/*******************************************************************************
* COPYRIGHT (C) 726 TECHNOLOGY INC, 2017 - 2023            ALL RIGHTS RESERVED *
*******************************************************************************/
function navigateTo(newLocation) {
    window.location.href = newLocation + "/";  
}     

function upOneLevel() {
    var loc = window.location.href;
    var lastIndex = loc.lastIndexOf("/");
    var preText = loc.slice(0, lastIndex) + "/";
  
    window.location.href = preText + "../";
}

function closeDialog(name) {
    $("#" + name + "Title").empty();
    $("#" + name + "Content").empty();    
    $("#" + name).css("display", "none");
}

function openDialog(name, title, endpoint, callback = null) {    
    $("#" + name).css("display", "flex");
    $("#" + name + "Title").empty().html(title);
    
    if ((typeof(endpoint) !== typeof(undefined)) && (endpoint !== "")) {
        $.ajax({
            url : endpoint,
            type : "POST",
            success : function(data) {              
                $("#" + name + "Content").empty().html(data);
                
                if (typeof(callback) === "function") {
                    callback();
                }
                
                $(".first").focus();
            },
            error : function()
            {
                $("#" + name + "Content").empty().html("Error loading dialog content.");
            }
        });
    }
}

function messageBox(name, title, message) {
    $("#" + name).css("display", "flex");
    $("#" + name + "Title").empty().html(title);
    $("#" + name + "Message").empty().html(message);    
}

function closeMessage(name) {
    $("#" + name + "Title").empty();
    $("#" + name + "Message").empty();    
    $("#" + name).css("display", "none");
}