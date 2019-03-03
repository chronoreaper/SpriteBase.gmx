if draw>0
if view>0{
//fog
var time=5
var v=view//(view*10* ((0.5)*sin(  (2*pi)/(24*60)*(time-6*60)  )+1.5))/15
var arx=round(x/15),ary=round(y/15);
with oControler{
     if ds_grid_get_disk_min(gridF1,arx,ary,v)<1
        ds_grid_add_disk(gridF1,arx,ary,v,0.2)
    }

}
