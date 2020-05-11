#define generate_map
var width=room_width/15;
var height=room_height/15;

switch env{
    case 0: make_map_1()
        break
    case 1: make_map_2()
        break;
}

var xx=round(width/2)
var yy=round(height/2);

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
            var inst;
            switch env{
                case 0: 
                    inst=instance_create(i*15,j*15,choose(oTree));
                    tile_add(tilesprite2,15*(3),15*1,15,15,i*15,j*15,100000)
                    break
                case 1: 
                    inst=instance_create(i*15,j*15,choose(oStonePillar));
                    tile_add(tilesprite2,15*(4),15*1,15,15,i*15,j*15,100000)
                    break;
            }
            
            inst.visible=false
            isroad = 0
        }
        s+='_'
    }
    if isroad 
    if ds_grid_get(map,i,j)>=0{
        s+=string(ds_grid_get(map,i,j))
        //if (i%4==0 && j%4==0)
        if irandom(3)=0
         tile_add(tilesprite2,15*(6+irandom(6)),15*5,15,15,i*15+15*irandom(1),j*15+15*irandom(1),100000)
        if irandom(5)=0
         tile_add(tilesprite2,15*(1+irandom(9)),15*0,15,15,i*15+15*irandom(1),j*15+15*irandom(1),100000)
    }
}
show_debug_message(s)
}

//ds_grid_destroy(map)
//ds_grid_destroy(gridMap)


#define make_map_1
var width=room_width/15;
var height=room_height/15;
tile_layer_delete(100000)
ds_grid_clear(map,-1)
repeat(1){
var dir=irandom(3);
var dist=2+irandom(3)//how long until a room
var xx=round(width/2)
var yy=round(height/2);
var room_radius = 4+ceil(level/5)
var xmin = max(xx - (room_radius),1)
var xmax = min(xx + (room_radius),room_width - 15)
var ymin = max(yy - (room_radius),1)
var ymax = min(yy + (room_radius),room_height - 15)
ds_grid_set_region(map,
        max(xx - floor(1),1),
        max(yy - floor(1),1),
        min(xx + ceil(1),width-2),
        min(yy + ceil(1),height-2),
        0)
repeat(ceil(level/2)*20 + 23){
    /*
    0 = nothing
    1 = block
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
        if irandom(8)=0{
        var rand_w = irandom(2)+1
        var rand_h = irandom(2)+1
        ds_grid_set_region(map,
        max(xx - floor(rand_w/2),1),
        max(yy - floor(rand_h/2),1),
        min(xx + ceil(rand_w/2),width-2),
        min(yy + ceil(rand_h/2),height-2),
        0)
        }
        
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

//create stairs
var rx = irandom_range(xmin,xmax)
var ry = irandom_range(ymin,ymax)
var stairs = 0
while(!stairs){
    if ds_grid_get(map,rx,ry) >= 0
    if abs(rx - round(width/2)) + abs(ry - round(height/2)) > ceil(level/2)+4{
        if level%5=0{
        var obj = oGreatTree;
            if ds_list_size(bossList)>0{
                var rand = irandom(ds_list_size(bossList)-1)
                obj = ds_list_find_value(bossList,rand)
                ds_list_delete(bossList,rand)
                }
                var inst=instance_create(rx*15,ry*15,obj);
                inst.team=2
                inst.marker=1
                
                if inst.object_index = oWurm{
                    //inst.ai=1
                    repeat(1+ceil(level/5)){
                        inst2=instance_create(rx*15,ry*15,oWurm)
                        inst2.team=2
                        inst2.ai=-1
                        inst2.link=inst
                        inst=inst2
                    }
                }
                
            }
        else{
            instance_create(rx*15,ry*15,oStairs)
            }
        stairs = 1
        ds_grid_set_region(map,
            max(rx - floor(1),1),
            max(ry - floor(1),1),
            min(rx + ceil(1),width-2),
            min(ry + ceil(1),height-2),
            0)
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
//create coin
repeat(ceil(level/3)){
    rx = irandom_range(xmin,xmax)
    ry = irandom_range(ymin,ymax)
    while (place_meeting(rx*15,ry*15,oItem)||place_meeting(rx*15,ry*15,oEvent) || place_meeting(rx*15,ry*15,oUnit)||ds_grid_get(map,rx,ry)<0){
        rx = irandom_range(xmin,xmax)
        ry = irandom_range(ymin,ymax)
    }
    var inst=instance_create(rx*15,ry*15,oCoin);
}

//create health pack
repeat(ceil(level/2)){
    rx = irandom_range(xmin,xmax)
    ry = irandom_range(ymin,ymax)
    while (place_meeting(rx*15,ry*15,oItem)||place_meeting(rx*15,ry*15,oEvent) || place_meeting(rx*15,ry*15,oUnit)||ds_grid_get(map,rx,ry)<0){
        rx = irandom_range(xmin,xmax)
        ry = irandom_range(ymin,ymax)
    }
    var inst=instance_create(rx*15,ry*15,oHealthPack);
}


//create enemies
var enemies = 0
while(enemies < level + difficulty){
    rx = irandom_range(xmin,xmax)
    ry = irandom_range(ymin,ymax)
    if ds_grid_get(map,rx,ry)>=0
     if abs(rx - round(width/2)) + abs(ry - round(height/2)) > 2+(ceil(level/2)>1){//so that enemies dont spawn next to you
        if !place_meeting(rx*15,ry*15,oUnit)
        if irandom(2)=0{
            var inst=instance_create(rx*15,ry*15,get_monster_spawn(level,0));
            inst.visible=false
            inst.team=2
            inst.dir=irandom(3)
            enemies++
            }
    }
}

#define make_map_2
var width=room_width/15;
var height=room_height/15;
tile_layer_delete(100000)
ds_grid_clear(map,-1)
repeat(1){
var dir=irandom(3);

var xx=round(width/2)
var yy=round(height/2);
var room_radius = 4+ceil(level/5)
var xmin = max(xx - (room_radius),1)
var xmax = min(xx + (room_radius),room_width - 15)
var ymin = max(yy - (room_radius),1)
var ymax = min(yy + (room_radius),room_height - 15)
var count = 0
ds_grid_set_region(map,
        max(xx - floor(1),1),
        max(yy - floor(1),1),
        min(xx + ceil(1),width-2),
        min(yy + ceil(1),height-2),
        0)
show_debug_message(level+2)
repeat(level+2){
    count++
    /*
    0 = nothing
    1 = block
    */
    
    /*
    Rooms, 3 types
    
    x
    
    xxx
    xxx
    xxx
    
    xxxxx
    xxxxx
    xxxxx
    xxxxx
    
    */
    
    var roomSize = choose(0,0,1,1,1,1,2)
    
    //room
    ds_grid_set_region(map,
        max(xx - roomSize,1),
        max(yy - roomSize,1),
        min(xx + roomSize,width-2),
        min(yy + roomSize,height-2),
        0)
        
    //hall ways
    if count<level+2
    ds_grid_set_region(map,
        max(xx,1),
        max(yy,1),
        min(xx + 5*(dir==0) - 5*(dir==2) ,width-2),
        min(yy + 5*(dir==3) - 5*(dir==1) ,height-2),
        0)
   /* while ds_grid_value_exists(map,
        max(xx - 1,1),
        max(yy - 1,1),
        min(xx + 1,width-2),
        min(yy + 1,height-2),
        0)
        &&xx=clamp(xx,1,width-2)
        &&yy=clamp(yy,1,height-2)*/
        {
        switch dir{
            case 0:
                    xx+=5 
                break;
            case 1:
                    yy-=5
                break;
            case 2:
                    xx-=5
                break;
            case 3:
                    yy+=5
                break;
        }
    }
    var cx = xx;
    var cy = yy;
    xx= clamp(xx,xmin,xmax)
    yy= clamp(yy,ymin,ymax)
        
    dir += choose(-1,0,1)
    if dir > 3
        dir = 0
    else if dir < 0
        dir = 3
}
}

//create stairs
xx=round(width/2)
yy=round(height/2);
var rx = xx
var ry = yy
var checkX = irandom_range(xmin,xmax)
var checkY = irandom_range(ymin,ymax)
var count = 0
while(count<5){
    if ds_grid_get(map,checkX,checkY) >= 0
    if abs(checkX - round(width/2)) + abs(checkX - round(height/2)) > ceil(level/2)+4{
        if point_distance(xx,yy,rx,ry)<=point_distance(xx,yy,checkX,checkY)
        {
            count++
            rx= checkX
            ry=checkY
        }
    }
    checkX = irandom_range(xmin,xmax)
    checkY = irandom_range(ymin,ymax)
}

//make the stairs
if level%5=0{
    var obj = oGreatTree;
    if ds_list_size(bossList)>0{
        var rand = irandom(ds_list_size(bossList)-1)
        obj = ds_list_find_value(bossList,rand)
        ds_list_delete(bossList,rand)
        }
        var inst=instance_create(rx*15,ry*15,obj);
        inst.team=2
        inst.marker=1
        
        if inst.object_index = oWurm{
            //inst.ai=1
            repeat(1+ceil(level/5)){
                inst2=instance_create(rx*15,ry*15,oWurm)
                inst2.team=2
                inst2.ai=-1
                inst2.link=inst
                inst=inst2
            }
        }
        
    }
else{
    instance_create(rx*15,ry*15,oStairs)
    }
ds_grid_set_region(map,
    max(rx - floor(1),1),
    max(ry - floor(1),1),
    min(rx + ceil(1),width-2),
    min(ry + ceil(1),height-2),
    0)
            
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
//create coin
repeat(ceil(level/3)){
    rx = irandom_range(xmin,xmax)
    ry = irandom_range(ymin,ymax)
    while (place_meeting(rx*15,ry*15,oItem)||place_meeting(rx*15,ry*15,oEvent) || place_meeting(rx*15,ry*15,oUnit)||ds_grid_get(map,rx,ry)<0){
        rx = irandom_range(xmin,xmax)
        ry = irandom_range(ymin,ymax)
    }
    var inst=instance_create(rx*15,ry*15,oCoin);
}

//create health pack
repeat(ceil(level/2)){
    rx = irandom_range(xmin,xmax)
    ry = irandom_range(ymin,ymax)
    while (place_meeting(rx*15,ry*15,oItem)||place_meeting(rx*15,ry*15,oEvent) || place_meeting(rx*15,ry*15,oUnit)||ds_grid_get(map,rx,ry)<0){
        rx = irandom_range(xmin,xmax)
        ry = irandom_range(ymin,ymax)
    }
    var inst=instance_create(rx*15,ry*15,oHealthPack);
}


//create enemies
var enemies = 0
while(enemies < level + difficulty){
    rx = irandom_range(xmin,xmax)
    ry = irandom_range(ymin,ymax)
    if ds_grid_get(map,rx,ry)>=0
     if abs(rx - round(width/2)) + abs(ry - round(height/2)) > 2+(ceil(level/2)>1){//so that enemies dont spawn next to you
        if !place_meeting(rx*15,ry*15,oUnit)
        if irandom(2)=0{
            var inst=instance_create(rx*15,ry*15,get_monster_spawn(level,0));
            inst.visible=false
            inst.team=2
            inst.dir=irandom(3)
            enemies++
            }
    }
}