///fog
if selected!=noone{
if selected.view>0
if ds_map_find_value(aiTurns,selected.team)>=0
{
//fog
var v=selected.view//max(1,selected.view+round(-2*cos((hour*6+minu)*pi/(12*6))+2))
var arx=floor(selected.xx/15),ary=floor(selected.yy/15);
//with oControler
instance_activate_all()
{
for (var i=-v;i<=v;i+=1){
    for (var j=-v;j<=v;j+=1){
        if abs(i)+abs(j)<=v{
            var c=0//how many collisions with objects
            var on=place_meeting((arx+i)*15+0,(ary+j)*15+0,oBlock);
            var inst=collision_line(arx*15+7,ary*15+7,(arx+i)*15+7,(ary+j)*15+7,oBlock,false,true)
            var inst2=collision_line(arx*15+7+1,ary*15+7+1,(arx+i)*15+7+1,(ary+j)*15+7+1,oBlock,false,true)
            while (inst!=noone||inst2!=noone){
                c++
                instance_deactivate_object(inst)
                instance_deactivate_object(inst2)
                inst=collision_line(arx*15+7,ary*15+7,(arx+i)*15+7,(ary+j)*15+7,oBlock,false,true)
                inst2=collision_line(arx*15+7+1,ary*15+7+1,(arx+i)*15+7+1,(ary+j)*15+7+1,oBlock,false,true)
            }
            instance_activate_object(oBlock)
            if (c=1&&on=1)||
            c=0||(abs(i)+abs(j)<=1)
            if arx+i>0
            if ary+j>0
            if arx+i<ds_grid_width(gridF1)-1
            if ary+j<ds_grid_height(gridF1)-1
            {
                     if ds_grid_get(gridF1,arx+i,ary+j)<1
                        ds_grid_set(gridF1,arx+i,ary+j,1)//0.2
                     ds_grid_set(gridF2,clamp(arx+i,0,room_width/15),
                        clamp(ary+j,0,room_height/15),0)
                }
            }
        }
    }
}
}
}
