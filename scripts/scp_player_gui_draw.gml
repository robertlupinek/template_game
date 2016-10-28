//Draw the path the player will move in

if ( global.mp ){
  //Draw the path line
  draw_set_alpha(path_alpha);
  for ( i = 0; i<=1;i+= 10/path_ln ){
    tmp_x = path_get_x(my_path, i);
    tmp_y = path_get_y(my_path, i);
    draw_circle(tmp_x,tmp_y,2,false);
  }
}  
draw_set_alpha(1);


