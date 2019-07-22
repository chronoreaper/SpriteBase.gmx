var width=room_width/15;
var height=room_height/15
var map=ds_grid_create(width,height)
//var gridMap=ds_grid_create(width*2+1,height*2+1)
//ds_grid_clear(gridMap,0)
ds_grid_clear(map,1)
repeat(2){
var dir=irandom(3);
var dist=irandom(6)*2+4;
var xx=round(width/2)
var yy=round(height/2);
repeat(2*(width+height)){
    /*
    0 = nothing
    1 = tree
    */
    ds_grid_set(map,xx,yy,0)
    switch dir{
        case 0:
            //if xx<width-2
                xx++ 
            //else dist=1
            break;
        case 1:
            //if yy>1
                yy-- 
            //else dist=1
            break;
        case 2:
           // if xx>1
                xx-- 
           // else dist=1
            break;
        case 3:
           // if yy<height-2
                yy++ 
           // else dist=1
            break;
    }
    /*if xx>width-2
        xx=1
    if xx<1
        xx=width-2
    if yy>height-2
        yy=1
    if yy<1
        yy=height-2*/
    xx= clamp(xx,2,width-2)
    yy= clamp(yy,2,height-2)
    dist--
    if (dist<=0){
        var rand_w = irandom(3)+2
        var rand_h = irandom(3)+2
        ds_grid_set_region(map,
        max(xx - floor(rand_w/2),1),
        max(yy - floor(rand_h/2),1),
        min(xx + ceil(rand_w/2),width-2),
        min(yy + ceil(rand_h/2),height-2),
        0)
        
        dist=irandom(6)*2+4
        dir+=choose(1,-1);
        if dir<0
            dir=3
        else if dir>3
            dir=0
    }
}
}
for (var j=0;j<height;j++){
s=''
for (var i=0;i<width;i++)
{
    
    if ds_grid_get(map,i,j)==1{
        var inst=instance_create(i*15,j*15,choose(oTree));
        inst.visible=false
        s+='0'
    }else
        s+='1'
}
show_debug_message(s)
}
//create objects
repeat((width+height)*15){
var rx=irandom(room_width/15)//room_width/15);
var ry=irandom(room_height/15)//room_height/15);
    if ds_grid_get(map,rx,ry)=0{
        if !place_meeting(rx*15,ry*15,oUnit)
        if !tile_layer_find(10000,rx*15,ry*15)
         /*if ds_grid_get(gridMap,rx+1,ry)=1
        ||ds_grid_get(gridMap,rx,ry+1)=1
        ||ds_grid_get(gridMap,rx,ry-1)=1
        ||ds_grid_get(gridMap,rx-1,ry)=1*/
        if irandom(35)=0{
            var inst=instance_create(rx*15,ry*15,choose(oChest));
            inst.visible=false
            inst.dir=irandom(3)
            }
        /*else{
            var inst=instance_create(rx*15,ry*15,choose(oTree));
            inst.visible=false
            }*/
        if irandom(25)=0{
            var rx2=irandom(1)
            var ry2=irandom(1)
            if !place_meeting(rx*15,ry*15,oUnit){
                var itm=choose(10,6,22)
                var inst=instance_create(rx*15,ry*15,return_item_obj(itm));
                inst.use=return_item_usage_default(itm)
                }
        }
    }
}
ds_grid_destroy(map)
//ds_grid_destroy(gridMap)
