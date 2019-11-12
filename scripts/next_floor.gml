level++;
menu = 98;
instance_create(x,y)
var xc = floor(room_width/30)*15
var yc = floor(room_height/30)*15
//set units to starting area
for (var i=0;i<ds_list_size(unitList);i++){
    var char=ds_list_find_value(unitList,i)
        if instance_exists(char){
            instance_activate_object(char)
            char.xx = xc //+ (i mod 3)*15
            char.yy = yc //+ (floor(i/3))*15
            char.x = char.xx
            char.y = char.yy 
        }
}
//clear old units
ds_list_clear(unitList)
currentTurn=0
var turn=currentTurn
for(var i=0;i<ds_list_size(allUnits);i++){
    var c=ds_list_find_value(allUnits,i);
    instance_activate_object(c)
    with c
    if round(team)=turn{
        var unit=id
        //snap to grid
        
        x = round(x/15)*15
        y = round(y/15)*15
        
        aggro=noone
        if sp>msp
            sp=msp
        if combat=0
        wait=0
        for (var j=0;j<array_length_1d(status);j++){
            dispellStatus(id,j)
            status[j]=0
            statusStr[j]=0
        }
        if hp>0
        with (oControler){
            ds_list_add(unitList,unit)
            selected=unit
            update_fog()
            selected=noone
            }
    }
    else
        instance_destroy()
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
else{
     alarm[10]=1//currentTurn++;//next turn
}
