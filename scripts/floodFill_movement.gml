var arg_x=argument0
var arg_y=argument1
var arg_range=argument2
pixel2=pixel
var path2=path_add()
mp_grid_clear_cell(grid,floor(arg_x/pixel2),floor(arg_y/pixel2))
for (var xx=arg_x-arg_range*pixel2;xx<=arg_x+arg_range*pixel2;xx+=pixel2)
for (var yy=arg_y-arg_range*pixel2;yy<=arg_y+arg_range*pixel2;yy+=pixel2)
    {
        if mp_grid_path(grid,path2,arg_x,arg_y,xx,yy,false)
        if path_get_number(path2)<=arg_range+1
        if !place_meeting(xx,yy,oUnit)
            draw_sprite(actionTile,0,xx-view_xview,yy-view_yview)
    }
mp_grid_add_cell(grid,floor(arg_x/pixel2),floor(arg_y/pixel2))
path_delete(path2)
/*
if arg_move<=arg_range
{
    if arg_move>0
    {
        if !collision_rectangle(arg_x+1,arg_y+1,arg_x+18,arg_y+18,oSolid,false,false)
        if ds_grid_get(grid2,floor((arg_x-arg_oX)/pixel2)+arg_maxMove,floor((arg_y-arg_oY)/pixel2)+arg_maxMove)=0
        {
            draw_sprite(actionTile,0,arg_x-view_xview,arg_y-view_yview)
            ds_grid_set(grid2,floor((arg_x-arg_oX)/pixel2)+arg_maxMove,floor((arg_y-arg_oY)/pixel2)+arg_maxMove,1)
            //if arg_x>=arg_oX
            floodFill_movement(arg_x+pixel2,arg_y,arg_range,arg_move+1)
            //if arg_x<=arg_oX
            floodFill_movement(arg_x-pixel2,arg_y,arg_range,arg_move+1)
            //if arg_y>=arg_oY
            floodFill_movement(arg_x,arg_y+pixel2,arg_range,arg_move+1)
            //if arg_y<=arg_oY
            floodFill_movement(arg_x,arg_y-pixel2,arg_range,arg_move+1)
            ds_grid_set(grid2,floor((arg_x-arg_oX)/pixel2)+arg_maxMove,floor((arg_y-arg_oY)/pixel2)+arg_maxMove,0)
        }
    }
    else
    {
        floodFill_movement(arg_x,arg_y+pixel2,arg_range,arg_move+1)
        floodFill_movement(arg_x,arg_y-pixel2,arg_range,arg_move+1)
        floodFill_movement(arg_x+pixel2,arg_y,arg_range,arg_move+1)
        floodFill_movement(arg_x-pixel2,arg_y,arg_range,arg_move+1)
    }
}
/*else 
{
return 0;
}
