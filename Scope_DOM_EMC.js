 var button1 = document.getElementById('button_hello1');
 var button2 = document.getElementById('button_hello2');
 var dontHover =  document.getElementById('Question2');
 var keyplace = document.getElementById('Question3');
 var username = document.getElementById('username');
 var text = document.getElementById('hONE');
 var password = document.getElementById('password');
 var button3 = document.getElementById('button3');

/* =====================================================
===============Question 1===========================*/
 button1.addEventListener("click", function(event){
   alert('Im right');
 })

button2.addEventListener("click", function(event){
  alert('No, Im right!');
})

/*====================================================
=================Question 2 ======================*/
dontHover.addEventListener("mouseenter", function(event){

  alert('I told you not to hover over me!');
})

/*====================================================
=================Question 3 ======================*/

window.addEventListener("keypress", function(event){
keyplace.innerHTML = event.key;
})


button3.addEventListener("click", function(event){
  event.preventDefault();

  if (password.value == 12345678 && username.value.length<14) {
text.innerHTML= "The password is correct!"
} else {
text.innerHTML= "The password is incorrect!"
}
})
