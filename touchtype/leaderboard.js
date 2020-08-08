// Your web app's Firebase configuration
var firebaseConfig = {
    apiKey: "AIzaSyBGhJg8p2dVjgeLmBPaZkk0aOLFA3jeqB0",
    authDomain: "touchtype-leaderboard.firebaseapp.com",
    databaseURL: "https://touchtype-leaderboard.firebaseio.com",
    projectId: "touchtype-leaderboard",
    storageBucket: "touchtype-leaderboard.appspot.com",
    messagingSenderId: "1077436955334",
    appId: "1:1077436955334:web:2bb45d3b3c73164ecdb5c7",
    measurementId: "G-0NN3FSVQ90"
};

// Initialize Firebase, make a reference variable 
firebase.initializeApp(firebaseConfig);
var database = firebase.database();

/////////////////////////////////////////////////////
function clearData() {
    database.ref("User").set({});
    setTimeout(function () {
        pushNothing(), 1000
    });
}

function pushNothing() {
    database.ref("User").push({
        score: " ",
        name: " ",
    });
}
/////////////////////////////////////////////////////

function reload_content() {
    var today = new Date();
    var date = today.getFullYear() + '-' + (today.getMonth() + 1) + '-' + today.getDate();
    var leaderboard = "<table style='width:100%'>";

    /**these two lines of javascript are key to iterating through the database**/
    firebase.database().ref("User").on('value', function (snap) {
        snap.forEach(function (childNodes) {

            //This loop iterates over children of user_id
            //childNodes.key is key of the children of userid such as (20170710)
            name = childNodes.val().name;
            score = childNodes.val().score;

            //add the data into your preset html wrapper, be sure to escape special characters
            if (name != " ") {
                leaderboard += "<tr>\r\n  " +
                    "<th>" + String(name) + "<\/th>\r\n " +
                    "<th>" + String(score) + "<\/th> \r\n ";
            }


        }); 
    });

    document.getElementById("leaderboard").innerHTML = leaderboard
}

var intervalvar;

function reload_content_timer() {
    intervalVar = setInterval(function () {
        reload_content();
    }, 5000);
}

//add a grouping of data to the database
function push() {
    var query = firebase.database().ref("User").orderByKey();
    query.once("value")
        .then(function (snapshot) {
            snapshot.forEach(function (childSnapshot) {
                var key = childSnapshot.key; // key will change every iteration
                var childData = childSnapshot.val();
                var path = "/User/" + key;
                if (childData.name == Player) {
                    database.ref(path).set({
                        name: Player,
                        score: document.getElementById("scoreTextbox").value,
                    });
                }

            });
        });

}

//clear the textboxes
function clear_textbox() {
    document.getElementById("message").innerHTML = "";
}


var Player = "";
var found = false;

function Sign_up() {
    found = false;

    if (Player == "") {
        Player = document.getElementById("nameTextbox").value;
    }
    //
    var query = firebase.database().ref("User").orderByKey();
    query.once("value")
        .then(function (snapshot) {
            snapshot.forEach(function (childSnapshot) {
                var key = childSnapshot.key; // key will change every iteration
                var childData = childSnapshot.val();
                //
                if (childData.name == Player) {
                    document.getElementById("message").innerHTML = "sorry, but that Username is already in use</br></br>";
                    found = true;
                }

                setTimeout(function () {
                    check(), 1000
                });

            });
        });

}


function check() {
    if (!found) {
        database.ref("/User").push({
            name: Player,
            score: "0",
        });
        var textbox = document.getElementById("nameTextbox");
        if (textbox != null) {
            document.getElementById("nameTextbox").remove();
            document.getElementById("submitName").remove();
        }
        found = true;
        console.log(found);
    }
}

window.addEventListener('DOMContentLoaded', (event) => {
    reload_content_timer();
    openNav();
});
