/// @description  Draw the message
event_inherited();

// Draw the textbox
draw_nine_slice(spr_dialoguebox, x, y, x+width, y+height);

// Draw the message
draw_text(x+6, y+7, string_hash_to_newline(message));

