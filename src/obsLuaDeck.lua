--OBS MacrosPad v2 by Pedrogas
--Released by the GNU AGPL v3.0
clear();
lmc.minimizeToTray = true;
lmc_minimize();

--lmc_device_set_name('MACROS', 'DEVICE_ID');
lmc_assign_keyboard('MACROS');

--Program1 = '"C:\\PATH\\PATH SPACES\\program.exe"'

local i=0

lmc_set_handler('MACROS', function(button, direction)
  if (direction == 1) then return end  -- "ignore down."
  if button == 96 then --num0
     macroCA(96)
     print('CTRL+ALT+num0   -   ' .. button)
  else
      if button == 97 then --num1
         macroCA(97)
         print('CTRL+ALT+num1   -   ' .. button)
      else
          if button == 98 then --num2
	     macroCA(98)
             print('CTRL+ALT+num2   -   ' .. button)
          else
              if button == 99 then --num3
	         macroCA(99)
                 print('CTRL+ALT+num3   -   ' .. button)
	      else
                  if button == 100 then --num4
		     macroCA(100)
                     print('CTRL+ALT+num4   -   ' .. button)
                  else
                      if button == 101 then --num5
		         macroCA(101)
                         print('CTRL+ALT+num5   -   ' .. button)
                      else
                          if button == 102 then --num6
			     macroCA(102)
                             print('CTRL+ALT+num6   -   ' .. button)
                          else
                              if button == 103 then --num7
			         macroCA(103)
                                 print('CTRL+ALT+num7   -   ' .. button)
                              else
                                  if button == 104 then --num8
				     macroCA(104)
                                     print('CTRL+ALT+num8   -   ' .. button)
                                  else
                                      if button == 105 then --num9
				         macroCA(105)
                                         print('CTRL+ALT+num9   -   ' .. button)
                                      else
                                          if button == 106 then -- *
					     macroCA(106)
                                             print('CTRL+ALT+*   -   ' .. button)
                                             --print('RUNNING Program   -   ' .. button)
                                             --run(Program)
                                          else
                                              if button == 107 then -- +
					         macroCA(107)
                                                 print('CTRL+ALT+ +   -   ' .. button)
                                              else
											  --Button 108 doesn't exist
                                                   if button == 109 then -- -
                                                      macroCA(109)
                                                      print('CTRL+ALT+ -   -   ' .. button)                                                      
                                                   else
                                                       if button == 110 then -- =
						          macroCSA(187)
                                                          print('CTRL+SHIFT+ALT+ =   -   ' .. button)
                                                       else
                                                           if button == 111 then -- /
							      macroCA(111)
                                                              print('CTRL+ALT+ /   -   ' .. button)                                                              
                                                           else
                                                               if button == 8 then -- -
							          macroCA(109)
                                                                  print('CTRL+ALT+-   -   ' .. button)
                                                               else
                                                                   if button == 13 then -- 1
								      macroCA(49)
                                                                      print('INTRO - CTRL+ALT+1    -   ' .. button)
                                                                   else
					--This next one is if your Numpad has a 000 button doesn't send a triple action
                                                                       if button == 48 then -- 0
								          if i == 0 then
                                                                             macroCA(48)
                                                                             print('CTRL+ALT+0   -   ' .. button)
                                                                          end
                                                                          i=i+1
                                                                          if i == 3 then
                                                                             i=0
                                                                          end
                                                                       else
                                                                           if button == 144 then --Blocknum
									      print('NUMLOCK TOGGLED')
                                                                           else
									       print('KEY NOT ASSIGNED: ' .. button)
                                                                           end
                                                                       end
                                                                   end
                                                               end
                                                           end
                                                       end
                                                   end
                                              end
                                          end
                                      end
                                  end
                              end
                          end
                      end
                  end
              end
          end
      end
  end
end)

function run(program)
  os.execute('start "" '..program)
end

function macroCA(keyCode)
  lmc_send_input(17,0,0) --CTRL ↓
  lmc_send_input(18,0,0) --ALT ↓
  lmc_send_input(keyCode,0,0) --KEY ↓
  wait()--WAITS 64ms to realease the keys so OBS can detect the input anywhere
  lmc_send_input(keyCode,0,2) --KEY ↑
  lmc_send_input(17,0,2) --CTRL ↑
  lmc_send_input(18,0,2) --ALT ↑
end

function macroCS(keyCode)
  lmc_send_input(17,0,0) --CTRL ↓
  lmc_send_input(16,0,0) --SHIFT ↓
  lmc_send_input(keyCode,0,0) --KEY ↓
  wait()--WAITS 64ms to realease the keys so OBS can detect the input anywhere
  lmc_send_input(keyCode,0,2) --KEY ↑
  lmc_send_input(17,0,2) --CTRL ↑
  lmc_send_input(16,0,2) --SHIFT ↑
end

function macroCSA(keyCode)
  lmc_send_input(17,0,0) --CTRL ↓
  lmc_send_input(16,0,0) --SHIFT ↓
  lmc_send_input(18,0,0) --ALT ↓
  lmc_send_input(keyCode,0,0) --KEY ↓
  wait()--WAITS 64ms to realease the keys so OBS can detect the input anywhere
  lmc_send_input(keyCode,0,2) --KEY ↑
  lmc_send_input(17,0,2) --CTRL ↑
  lmc_send_input(16,0,2) --SHIFT ↓
  lmc_send_input(18,0,2) --ALT ↑
end

function wait()
  lmc_sleep(86)
end
