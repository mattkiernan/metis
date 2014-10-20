$(function(){
  $("#dog").click(displayYes);
  $("#cat").click(displayNo);
  $("#next_button").click(shuffle);
  });

function displayYes(){
  var resultElement = $("#paragraph");
  resultElement.text("Yes");
}

function displayNo(){
  var resultElement = $("#paragraph");
  resultElement.text("No");
}

function shuffle(){
  i++; 
  $("#dog_images").prop("src", photos[i]); 
}

var i = 0

var photos = ["http://img.costumecraze.com/images/vendors/california/20129-Cha-Cha-Cha-Dog-Costume-large.jpg","http://www.baxterboo.com/global/images/products/large/pop-king-dog-costume-1.jpg","http://www.kidshalloweencostumes4u.com/pimages/large/indiana-jones-dog-costume.jpg"]

