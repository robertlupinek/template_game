tmp_surf= surface_create(view_wview[0], view_hview[0]);
// Makes the surface the size of the view.
surface_set_target(tmp_surf);
draw_clear_alpha(c_black, 0); // Clears surface.
with(all) 
{ 
  if (visible == true)
  { 
        x = x-view_xview[0];  y = y-view_yview[0]; // Moves all instances to the top left corner, so they will appear in the correct place on the surface
        event_perform(ev_draw,0); 
        x = x+view_xview[0];  y = y+view_yview[0]; // Move the instances back to their original spot.
  } 
}   // Draws every visible instance to surface.
surface_reset_target();
return tmp_surf;
