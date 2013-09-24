$(document).ready(function() {

	var pot1;
	var pot2;
	var pot3;

	function loop() {


		$.ajax({ //ajax syntax

			url: "SerialToText/SerialToText/data.json", //location of your json object
			dataType: "json", //json to call local json object...jsonp to call nonlocal json object 
			success: function(parsed_json) { //reg syntax
				console.log('success!!');


				 pot1 = parsed_json[0]['potentiometer'];
				 pot2 = parsed_json[1]['potentiometer'];
				 pot3 = parsed_json[2]['potentiometer'];

				// console.log(pot1);
				// console.log(pot2);
				// console.log(pot3);

			//------------------ Canvas ------------------//

			var canvas = document.getElementById("myCanvas");
			canvas.width = window.innerWidth;
			canvas.height = window.innerHeight;
			var rect = canvas.getContext("2d");
			rect.fillStyle ="rgb("+pot1+","+pot2+","+pot3+")";
			rect.fillRect(0, 0, canvas.width, canvas.height);
			console.log(rect.fillStyle);

			//------------------------------------------//
			//$('#wrapper').append(pot1); //writing to HTML
			
			}
		});
	}


	window.setInterval(function() {
		loop();


	}, 500);

});





