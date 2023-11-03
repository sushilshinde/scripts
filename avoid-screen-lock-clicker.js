/*
	Steps to run
 	1. Open browser tab
  	2. Open browser javascript console
   	3. Paste above code
    	4. Enter return
*/

const body = document.querySelector("body");
const sec = 5;

setInterval(function () {
	body.click()
	console.log("Clicked")
},sec * 1000);
