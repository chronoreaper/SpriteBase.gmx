var arg_selected = argument0
var c = arg_selected
//Start

var range = c.range
var wepAOE = return_wep_aoe(c.unit)
//tempPath=path_add()

var aGridW=ceil(ds_grid_width(atkArea)/2)
var mGridW=ceil(ds_grid_width(moveAtkArea)/2)

ds_grid_clear(moveAtkArea,0)

setAtkRange(c)

clearAllyAndSelf(c)
    
//set move and wep range
for (var i=-c.mov*15;i<=c.mov*15;i+=15){
        for (var j=-c.mov*15;j<=c.mov*15;j+=15){
        if mp_grid_path(grid,path0,c.x+7,c.y+7,c.x+i+7,c.y+j+7,false)
        if path_get_number(path0)-1<=c.mov
        if!place_meeting(c.x+i,c.y+j,oUnit)||instance_place(c.x+i,c.y+j,oUnit)=c{
            ds_grid_add(moveAtkArea,mGridW+i/15,mGridW+j/15,1)
            ds_grid_add_grid_region(moveAtkArea,atkArea,0,0,ds_grid_width(atkArea),ds_grid_height(atkArea),mGridW+ i/15 - aGridW,mGridW+ j/15-aGridW)
            }
        }
    }

//path_delete(tempPath)

//End
