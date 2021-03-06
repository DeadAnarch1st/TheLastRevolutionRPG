/// @description  Activate the dialog
if (!instance_exists(dialog)) {
    dialog = instance_create(0, 0, dialog_object);
    
    // Is it a dialog object?
    if (dialog.object_index == o_dialog) {
        dialog.text = text;
        dialog.portrait = portrait;
        
        // Format the text
        with (dialog) event_user(FORMAT_TEXT);
        other.state = elizabeth_talking_state;
    }
}

