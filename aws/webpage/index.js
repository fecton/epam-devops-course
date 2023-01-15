var header1 = document.getElementById("header1");
var last_modified = document.getElementById("last_modified")

var i = 0;
var direction = -1;
var arr = [2,4,6,8,10,12,14];
var length = arr.length;

var date = [15,1,2023];
var months_str = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];

if(date[1] < 0 || date[1] > 12){
    alert("ERROR: BAD MONTH!!!");
}
else{
    last_modified.textContent = "Last Updated: " + String(date[0]) + " " + String(months_str[date[1]-1]) + " " + String(date[2]);
}

function TextSpacing(){
    header1.style.letterSpacing = String(arr[i]) + "px";
    if(i == length || i == 0){
        direction *= -1;
    }
    i += 1 * direction;
}

setInterval("TextSpacing()", 100);
