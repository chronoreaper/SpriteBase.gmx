var c = argument0

//clearAllyAndSelf(c)

var mGridW=ceil(ds_grid_width(moveAtkArea)/2)

ds_grid_clear(moveAtkArea,0)

//set move range
for (var i=-c.mov*15;i<=c.mov*15;i+=15){
        for (var j=-c.mov*15;j<=c.mov*15;j+=15){
        if mp_grid_path(grid,path0,c.x+7,c.y+7,c.x+i+7,c.y+j+7,false)
        if path_get_number(path0)-1<=c.mov
        if!place_meeting(c.x+i,c.y+j,oUnit)||instance_place(c.x+i,c.y+j,oUnit)=c{
            ds_grid_add(moveAtkArea,mGridW+i/15,mGridW+j/15,-2)//(path_get_number(path0)-c.mov)
            }
        }
    }
