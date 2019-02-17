# lua-streamdeck
This is an alternative to the "el gato streamdeck" that uses an extra Numpad as a button layout

This just works on WINDOWS, linux users have it more easy because of the freedom to manipulate stuff with code.

IMPORTANT: This is made to work with Lua Macros, you can dowload it here: http://www.hidmacros.eu/forum/viewtopic.php?t=241
it does all the work and the functions to isolate the numpad from the other programs

# HOW TO (obsLuaDeck.lua)

Starting the code you can see there are two functions. (ignoring clear();)

    --lmc_device_set_name('MACROS', 'DEVICE_ID');
      By default it is disabled because you need to know your numpad
      ID and replace it for DEVICE_ID, remember to leave the ' '.
      
      HEAD UP TO - GET DEVICE ID to know how to get it
      
    lmc_assign_keyboard('MACROS');
			This is the function that asks you to press a key to recognize it
			as the macros keyboard each time you run it.
			
			DISABLE IT IF YOU SET A DEVICE_ID

The lmc_set_handler(.... function.

		The main program runs here, the file has a example that sends CTRL+ALT to every single key
		

There are 5 custom functions.

    macroCA(int);
      Recieves the keycode of a key and sends it as Ctrl+Alt+key
      
    macroCS(int);
      Recives the keycode of a key and sends it as Ctrl+Shift+key
      
    macroCSA(int);
      Recives the keycode of a key and sends it as Ctrl+Shift+Alt+key
			
		run(string);
			Whenever you want to run a program when pressing a key.
			
			Use the path with double backslash:
			C:\\PATH\\Path with spaces\\Program.EXTENSION
		
		wait();
			This will wait 64ms before continuing with the execution.
			
By default everything promts to the console so you know what are you doing.
