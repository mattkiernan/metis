function sumValues(){
  var left_value = Number(document.getElementById('left').value);
  var right_value = Number(document.getElementById('right').value);
  var operator = document.getElementById('operator').value;
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
  var resultElement = document.getElementById('resultElement');
  resultElement.innerText = result 
  return false;
  }
