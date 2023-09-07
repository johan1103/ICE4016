slider = document.getElementById('js-range');
output = document.getElementById('value');
result = document.getElementById('js-result');
message  = document.getElementById('message');
let maxNum = slider.value;
let randNum = generateRandomNumber(0,maxNum);

slider.oninput = function() {
    output.innerHTML = this.value;
    maxNum = this.value;
}

function generateRandomNumber(min, max) {
    return Math.floor(Math.random() * (max - min + 1)) + min;
}


function play(){
    const guess = document.getElementById('num').value;
    randNum = generateRandomNumber(0,maxNum);
    console.log(randNum);
    message.innerHTML='you choose:'+guess+' machine choose:'+randNum;
    if(randNum==guess){
        result.innerHTML='congratulation!';
    }else{
        result.innerHTML='you lose!';
    }
}