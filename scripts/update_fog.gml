///fog
/*with (oChar){
if draw>0
if view>0
{
//fog
var v=view
var arx=round(xx/15),ary=round(yy/15);
with oControler{
for (var i=-v;i<=v;i+=1){
    for (var j=-v;j<=v;j+=1){
        if abs(i)+abs(j)<=v{
            var c=0
            var inst=collision_line(arx*15+7,ary*15+7,(arx+i)*15+7,(ary+j)*15+7,oObj,false,true)
            while (inst!=noone){
                c++
                instance_deactivate_object(inst)
                inst=collision_line(arx*15+7,ary*15+7,(arx+i)*15+7,(ary+j)*15+7,oObj,false,true)
            }
            instance_activate_object(oObj)
            if c<=1
            if arx+i>0
            if ary+j>0
            if arx+i<ds_grid_width(gridF1)-1
            if ary+j<ds_grid_height(gridF1)-1
            {
                     if ds_grid_get(gridF1,arx+i,ary+j)<1
                        ds_grid_set(gridF1,arx+i,ary+j,1)
                        //ds_grid_add(gridF1,arx+i,ary+j,0.2)
                }
            }
        }
    }
}
}
}
