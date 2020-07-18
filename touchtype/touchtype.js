
GlobalLetter = "B";
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
   //console.log(charStr)
   if (charStr.toUpperCase() == GlobalLetter){
	refreshLetter();
	console.log("Well done! The global letter is now: " + GlobalLetter.toUpperCase());
	AddScore();
   }
   else{
	ZeroScore();
  }
   
};

function ChangeTheme(){
if (document.body.className== ''){
document.body.className= "night dark-scheme";}
else{document.body.className= ''}
}
