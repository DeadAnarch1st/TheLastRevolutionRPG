/// @description  Initialize the cutscene
action = 0;
last_room = noone;
persistent = true;

if (ds_map_find_value(global.save_data, save_key())) {
    instance_destroy();
    exit;
}

// Set all characters to the cutscene state
if (instance_exists(o_character_parent)) {
    with (o_character_parent) {
        state = character_cutscene_state;
        image_speed = 0;
        image_index = 0;
    }
}

// Set the view's state
if (instance_exists(o_view)) {
    with (o_view) {
        state = view_cutscene_state;
    }
}

