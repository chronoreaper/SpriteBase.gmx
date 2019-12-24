var xc = floor(room_width/30)*15
var yc = floor(room_height/30)*15
//set units to starting area
for (var i=0;i<ds_list_size(unitList);i++){
    var char=ds_list_find_value(unitList,i)
        if instance_exists(char){
            instance_activate_object(char)
            char.xx = xc + (i mod 2)*15
            char.yy = yc + (floor(i/2))*15
            char.x = char.xx
            char.y = char.yy 
            char.wait=0
            //char.hp=clamp(char.hp+7+level-turnsSurvive,char.hp,char.mhp)
        }
}
//clear old units
ds_list_clear(unitList)
currentTurn=0
turnsSurvive=0
var turn=currentTurn
instance_activate_all()
for(var i=0;i<ds_list_size(allUnits);i++){
    var c=ds_list_find_value(allUnits,i);
    instance_activate_object(c)
    if floor(c.team)=turn{
        var unit=c.id;
        //snap to grid
        
        c.x = round(c.x/15)*15
        c.y = round(c.y/15)*15
        
        c.aggro=noone
        if c.combat=0
        c.wait=0
        for (var j=0;j<array_length_1d(c.status);j++){
            dispellStatus(c,j)
            c.status[j]=0
            c.statusStr[j]=0
        }
        if c.hp>0
        with (oControler){
            ds_list_add(unitList,unit)
            selected=unit
            update_fog()
            selected=noone
            }
    }
    else{
        with (c)
            instance_destroy()
        }
}

//destroy everything else
with oObj{
    instance_destroy()
}
with oItem{
    instance_destroy()
}
with oEvent{
    instance_destroy()
}

tile_layer_delete(10000)
//update unit list
ds_list_sort(unitList,true)
if ds_list_size(unitList)>0{
    if ds_map_find_value(aiTurns, currentTurn)>=0
    {
        var inst=ds_list_find_value(unitList,0)
        if inst!=noone
        if instance_exists(inst){
            x=inst.xx
            y=inst.yy
            xx=x
            yy=y
            view_xview=inst.xx-view_wview/2
            view_yview=inst.yy-view_hview/2
        }
    }
}

//make next floor
generate_map(xc,yc,unitList)

ds_grid_clear(gridF1,-1)
ds_grid_clear(gridF2,-1)
for (var k=0;k<ds_list_size(unitList);k++){
    selected=ds_list_find_value(unitList,k)
    update_fog()
}selected=noone
