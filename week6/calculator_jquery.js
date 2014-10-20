//jquery

$(function(){
  $("#theForm").submit(sumValues);
});

function sumValues(){
  var left_value = Number($("#left").val());
  var right_value = Number($("#right").val());
  var operator = $("#operator").val();

  if(operator === "+"){
    var result  = left_value + right_value;
  }else if(operator === "-"){
    var result = left_value - right_value; 
  }else if(operator === "*"){
    var result = left_value * right_value;
  }else if(operator === "/"){
    var result = left_value / right_value;
  }else if(operator === "**"){
    var result = Math.pow(left_value, right_value);
  }else{
    var result = "Hey, you can't do that!"
  }
  var resultElement = $("#resultElement"); 
  resultElement.text(result) 
  return false;
  }
