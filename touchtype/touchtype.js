
GlobalLetter = "A";
HighScore = 0;
Score = 0;
refreshLetter();

function refreshLetter(){
GlobalLetter = String.fromCharCode(65+Math.floor(Math.random() * 26));
document.getElementById("display").innerHTML = GlobalLetter;
}

function AddScore(){
Score= Score + 1;
if (Score>HighScore){
HighScore = HighScore + 1;
}

document.getElementById("score").innerHTML = "Score: " + Score + " " + "High Score: " + HighScore;
}

function ZeroScore(){
Score = 0;
document.getElementById("score").innerHTML = "Score: " + Score + " " + "High Score: " + HighScore;
}

document.onkeypress = function(evt) {
   evt = evt || window.event;
   var charCode = evt.which || evt.keyCode;
   var charStr = String.fromCharCode(charCode);
   if (charStr.toUpperCase() == GlobalLetter){
        FlashBackground("green");
	refreshLetter();
	console.log("Well done! The global letter is now: " + GlobalLetter.toUpperCase());
	AddScore();
   }
   else{
	FlashBackground("red");
	ZeroScore();
  }
   
};

function FlashBackground(color){
var backgroundColor = document.body.style.background;
document.body.style.background = color;
setTimeout(function(){ document.body.style.transition = "background 500ms"; }, 50);
setTimeout(function(){ document.body.style.background = backgroundColor; }, 100);
setTimeout(function(){ document.body.style.transition = ""; }, 200);
}


function ChangeTheme(){
if ( document.body.className== "default" ){ document.body.className= "night"; }
else{ document.body.className =  "default" }
}
