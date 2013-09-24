arduino-javascript
==================
----------------------------------------------------------------------------------------------------------
Communication between Arduino and javascript in a local server using MAMP, processing, JSON and AJAX.
This Example uses 3 potentiometers and arduino to control the "r" - "g" - "b" values of a javascript canvas.
The values are sent through the serial port to a processing sketch which writes a JSON object with the data.
The object is then pulled by the javascript using JQUERY and AJAX.
----------------------------------------------------------------------------------------------------------
Note: This communication will only work with a local server. Use MAMP or any other software for this.
----------------------------------------------------------------------------------------------------------
1. After downloading all the files, copy them inside your local host server folder. If you are using MAMP, 
copy to: Applications/MAMP/htdocs
2. Build a simple circuit using arduino and 3 potentiometers conected to analog inputs 1, 2, and 3.
3. Upload the code located inside the folder "controller" to the arduino and close the arduino IDE.
4. Run the processing sketch located inside the folder serialToText (it might take a couple of times before it 
runs correctly).
5. On your web browser type: localhost.
6. Enjoy!!!!
7. -----------------------------------------------------------------------------------------------------------
