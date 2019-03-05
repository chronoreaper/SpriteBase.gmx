var width=room_width/30;
var height=room_height/30
var map=ds_grid_create(width,height)
var gridMap=ds_grid_create(width*2+1,height*2+1)
ds_grid_clear(gridMap,0)
ds_grid_clear(map,-1)
repeat(2){
var dir=irandom(3);
var dist=irandom(6)*2+4;
var xx=round(width/2)
var yy=round(height/2);
/*
0=planes
1=dirt road planes
*/
repeat((width+height)*2){
    ds_grid_set(gridMap,xx,yy,1)
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
    if xx>width-2
        xx=1
    if xx<1
        xx=width-2
    if yy>height-2
        yy=1
    if yy<1
        yy=height-2
    dist--
    if (dist<=0){
        dist=irandom(6)*2+4
        dir+=choose(1,-1);
        if dir<0
            dir=3
        else if dir>3
            dir=0
    }
}
}
for (var j=0;j<height;j++)
for (var i=0;i<width;i++)
{
    if (ds_grid_get(gridMap,i,j)==0)
        create_area(0,7,i*30,j*30)
    else if ds_grid_get(gridMap,i,j)==1{
        
        if ds_grid_get(gridMap,i-1,j)==1{
            if ds_grid_get(gridMap,i+1,j)==1{
                if ds_grid_get(gridMap,i,j-1)==1{
                    if ds_grid_get(gridMap,i,j+1)==1
                        create_area(0,6,i*30,j*30)//center
                    else
                        create_area(0,6,i*30,j*30)//upside down T (8)
                }else
                {
                    if ds_grid_get(gridMap,i,j+1)==1
                        create_area(0,6,i*30,j*30)//T (9)
                    else
                        create_area(0,2,i*30,j*30)//horizontal
                }
            }else{//no right
                if ds_grid_get(gridMap,i,j-1)==1{
                    if ds_grid_get(gridMap,i,j+1)==1
                        create_area(0,6,i*30,j*30)//T left in(11)
                    else
                        create_area(0,5,i*30,j*30)//bottom right
                }else//no up
                {
                    if ds_grid_get(gridMap,i,j+1)==1
                        create_area(0,4,i*30,j*30)//Top right
                    else
                        create_area(0,13,i*30,j*30)//left in
                }
            }
        }else{//no left
            if ds_grid_get(gridMap,i+1,j)==1{
                if ds_grid_get(gridMap,i,j-1)==1{
                    if ds_grid_get(gridMap,i,j+1)==1
                        create_area(0,6,i*30,j*30)//T right in(10)
                    else
                        create_area(0,3,i*30,j*30)//bottom left
                }else//no up
                {
                    if ds_grid_get(gridMap,i,j+1)==1
                        create_area(0,0,i*30,j*30)//top left
                    else
                        create_area(0,2,i*30,j*30)//right in(12)
                }
            }else{//no right
                if ds_grid_get(gridMap,i,j-1)==1{
                    if ds_grid_get(gridMap,i,j+1)==1
                        create_area(0,1,i*30,j*30)//Vertical
                    else
                        create_area(0,1,i*30,j*30)//top in (15)
                }else//no up
                {
                    if ds_grid_get(gridMap,i,j+1)==1
                        create_area(0,1,i*30,j*30)//bottom in(14)
                    else
                        create_area(0,7,i*30,j*30)//empty
                }
            }
        }
    }
}
//create objects
repeat((width+height)*20){
var rx=irandom(room_width/30)//room_width/15);
var ry=irandom(room_height/30)//room_height/15);
    if ds_grid_get(gridMap,rx,ry)=0{
        var rx2=irandom(1)
        var ry2=irandom(1)
        if !place_meeting(rx*30+rx2*15,ry*30+ry2*15,oUnit)
         /*if ds_grid_get(gridMap,rx+1,ry)=1
        ||ds_grid_get(gridMap,rx,ry+1)=1
        ||ds_grid_get(gridMap,rx,ry-1)=1
        ||ds_grid_get(gridMap,rx-1,ry)=1*/
        if irandom(25)=0{
            var inst=instance_create(rx*30+rx2*15,ry*30+ry2*15,choose(oChest));
            inst.visible=false
            inst.dir=irandom(3)
            }
        else{
            var inst=instance_create(rx*30+rx2*15,ry*30+ry2*15,choose(oTree));
            inst.visible=false
            }
    }
}
ds_grid_destroy(map)
ds_grid_destroy(gridMap)
