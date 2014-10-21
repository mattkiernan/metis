$(function(){
  $("#dog").click(displayYes);
  $("#cat").click(displayNo);
  $("#dog_guess").click(analyze_dog);
  $("#cat_guess").click(analyze_cat);
  });

var i = 0

var photos = [ 
  "http://img.costumecraze.com/images/vendors/california/20129-Cha-Cha-Cha-Dog-Costume-large.jpg",
  "http://cdn.buzznet.com/assets/users16/ashleeholmes/default/halloween-inspiration-cats-costume--large-msg-131898694028.jpg",
  "http://www.baxterboo.com/global/images/products/large/pop-king-dog-costume-1.jpg"
]

var answers = ["dog","dog","cat","dog"]

function displayYes(){
  var resultElement = $("#paragraph");
  resultElement.text("Yes");
}

function displayNo(){
  var resultElement = $("#paragraph");
  resultElement.text("No");
}

function analyze_dog(){
  $("#photos").prop("src", photos[i]); 
  if(answers[i] === "dog"){
    counter_value = Number($("#counter").text());
    new_counter_value = counter_value + 1;
    $("#counter").text(new_counter_value);
  }
  i++
}

function analyze_cat(){
  $("#photos").prop("src", photos[i]); 
  if(answers[i] === "cat"){
    counter_value = Number($("#counter").text());
    new_counter_value = counter_value + 1;
    $("#counter").text(new_counter_value);
  }
  i++
}


