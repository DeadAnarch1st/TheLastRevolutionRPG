event_inherited();
width = 80;
height = 44;

// Create the options list
options = ds_list_create();
for (var i=0; i<ds_list_size(o_player_stats.actions); i++) {
    var action = o_player_stats.actions[| i];
    options[| i] = create_option(action[? "name"], action_option_use_ui);
}
mark_option_list(options);

