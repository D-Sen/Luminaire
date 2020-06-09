
switch(async_load[? "event_type"])             // Parse the async_load map to see which event has been triggered
{
    case "gamepad discovered":  

        if (global.playcontrol_one == 255) {global.playcontrol_one = async_load[? "pad_index"];
            gamepad_set_axis_deadzone(global.playcontrol_one, 0.5);       // Set the "deadzone" for the axis
            gamepad_set_button_threshold(global.playcontrol_one, 0.1);    // Set the "threshold" for the triggers
    
        } else { global.playcontrol_two = async_load[? "pad_index"];
            gamepad_set_axis_deadzone(global.playcontrol_two, 0.5);       // Set the "deadzone" for the axis
            gamepad_set_button_threshold(global.playcontrol_two, 0.1);    // Set the "threshold" for the triggers 
        }
        break;

    case "gamepad lost": {
        //Do nothing
        }
        break;
}

