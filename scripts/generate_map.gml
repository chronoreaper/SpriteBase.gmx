var width=room_width/15;
var height=room_height/15;
//var map=ds_grid_create(width,height)
//var gridMap=ds_grid_create(width*2+1,height*2+1)
//ds_grid_clear(gridMap,0)
ds_grid_clear(map,-1)
repeat(1){
var dir=irandom(3);
var dist=2+irandom(3)//how long until a room
var xx=round(width/2)
var yy=round(height/2);
var xmin = max(xx - (2+ceil(level/2)),1)
var xmax = min(xx + (2+ceil(level/2)),room_width - 15)
var ymin = max(yy - (2+ceil(level/2)),1)
var ymax = min(yy + (2+ceil(level/2)),room_height - 15)
ds_grid_set_region(map,
        max(xx - floor(1),1),
        max(yy - floor(1),1),
        min(xx + ceil(1),width-2),
        min(yy + ceil(1),height-2),
        0)
repeat(ceil(level/2)*20 + 23){
    /*
    0 = nothing
    1 = tree
    */
    ds_grid_set(map,xx,yy,0)
    switch dir{
        case 0:
                xx++ 
            break;
        case 1:
                yy-- 
            break;
        case 2:
                xx-- 
            break;
        case 3:
                yy++ 
            break;
    }
    var cx = xx;
    var cy = yy;
    xx= clamp(xx,xmin,xmax)
    yy= clamp(yy,ymin,ymax)
    if (xx!=cx||cy!=yy){
        dist = 1
    }
    dist--
    if (dist<=0){
        //room
        /*var rand_w = irandom(2)+2
        var rand_h = irandom(2)+2
        ds_grid_set_region(map,
        max(xx - floor(rand_w/2),1),
        max(yy - floor(rand_h/2),1),
        min(xx + ceil(rand_w/2),width-2),
        min(yy + ceil(rand_h/2),height-2),
        0)*/
        
        dist=irandom(3)+2
        dir = irandom(3)
        /*dir+=choose(1,-1);
        if dir<0
            dir=3
        else if dir>3
            dir=0*/
    }
}
}

xx=round(width/2)
yy=round(height/2);

for (var j=0;j<height;j++){
s=''
for (var i=0;i<width;i++)
{
    var isroad = 1
    if ds_grid_get(map,i,j)==-1{
        var path = 0
        for (var l=-1;l<=1;l++)
        for (var k=-1;k<=1;k++)
            if ds_grid_get(map,clamp(i+l,0,width-1),clamp(j+k,0,height-1))>=0
                path = 1
        if path{
            var inst=instance_create(i*15,j*15,choose(oTree));
            inst.visible=false
            isroad = 0
        }
        s+='_'
    }
    if isroad 
    if ds_grid_get(map,i,j)>=0{
        s+=string(ds_grid_get(map,i,j))
        //if (i%4==0 && j%4==0)
        if irandom(10)=0
         tile_add(tilesprite2,15*(1+irandom(9)),15*0,15,15,i*15+15*irandom(1),j*15+15*irandom(1),100000)
    }
}
show_debug_message(s)
}
//create stairs
var rx = irandom_range(xmin,xmax)
var ry = irandom_range(ymin,ymax)
var stairs = 0
while(!stairs){
    if ds_grid_get(map,rx,ry) >= 0
    if abs(rx - round(width/2)) + abs(ry - round(height/2)) > ceil(level/2)+2{
        if level%5=0{
            inst=instance_create(rx*15,ry*15,
                choose(oDragon1,oWurm));
                inst.team=2
                inst.marker=1
                
                if inst.object_index = oWurm{
                    inst.ai=1
                    repeat(4){
                        inst2=instance_create(rx*15,ry*15,oWurm)
                        inst2.team=2
                        inst2.ai=-1
                        inst2.link=inst
                        inst=inst2
                    }
                }
                
            }
        else
            instance_create(rx*15,ry*15,oStairs)
        stairs = 1
    }
    rx = irandom_range(xmin,xmax)
    ry = irandom_range(ymin,ymax)
}

//create obsticals
var teleCount = 0
repeat(min(floor(level/3)*2,8)){
    rx = irandom_range(xmin,xmax)
    ry = irandom_range(ymin,ymax)
    while (place_meeting(rx*15,ry*15,oEvent) || place_meeting(rx*15,ry*15,oUnit)||ds_grid_get(map,rx,ry)<0){
        rx = irandom_range(xmin,xmax)
        ry = irandom_range(ymin,ymax)
    }
    var inst=instance_create(rx*15,ry*15,oTeleporter);
    inst.colourId = floor(teleCount/2)
    teleCount++
}


//create enemies
var enemies = 0
while(enemies < level){
    rx = irandom_range(xmin,xmax)
    ry = irandom_range(ymin,ymax)
    if ds_grid_get(map,rx,ry)>=0
     if abs(rx - round(width/2)) + abs(ry - round(height/2)) > 2+(ceil(level/2)>1){//so that enemies dont spawn next to you
        if !place_meeting(rx*15,ry*15,oUnit)
        if irandom(2)=0{
            var inst=instance_create(rx*15,ry*15,irandom_range(oSlime,oEyebat));
            inst.visible=false
            inst.team=2
            inst.dir=irandom(3)
            enemies++
            }
    }
}


//ds_grid_destroy(map)
//ds_grid_destroy(gridMap)

