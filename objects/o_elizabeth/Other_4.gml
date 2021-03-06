/// @description  Move to start position
if (instance_exists(o_start_position)) {
    with (o_start_position) {
        if (last_room == other.last_room) {
            other.x = x;
            other.y = y;
        }
    }
}

// Update the last room
last_room = room;

// Set the player's state
if (state == elizabeth_wait_state) {
    state = elizabeth_move_state;
    room_persistent = false;
    persistent = true;
}


// Create the view
if (!instance_exists(o_view)) {
    instance_create(x+8, y+8, o_view);
}

