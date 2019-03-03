var map=ds_grid_create(17,13)
var gridMap=ds_grid_create(17*4+1,13*4+1)
ds_grid_clear(gridMap,0)
ds_grid_clear(map,-1)
/*
o=current location
x=blocked
-=empty or doesnt matter
?=uknown
*/
for (var j=0;j<13;j++)
for (var i=0;i<17;i++)
{
//if left side is block
if i=0
||ds_grid_get(map,i-1,j)==1
||ds_grid_get(map,i-1,j)==4
||ds_grid_get(map,i-1,j)==5
||ds_grid_get(map,i-1,j)==7
||ds_grid_get(map,i-1,j)==11
||ds_grid_get(map,i-1,j)==13
||ds_grid_get(map,i-1,j)==14
||ds_grid_get(map,i-1,j)==15
{
/*
-?-
xo?
-?-
*/
    //if top is blocked
    if j=0
    ||ds_grid_get(map,i,j-1)==2
    ||ds_grid_get(map,i,j-1)==3
    ||ds_grid_get(map,i,j-1)==5
    ||ds_grid_get(map,i,j-1)==7
    ||ds_grid_get(map,i,j-1)==8
    ||ds_grid_get(map,i,j-1)==12
    ||ds_grid_get(map,i,j-1)==13
    ||ds_grid_get(map,i,j-1)==15
    {
    /*
    -x-
    xo?
    -?-
    */
        var rand=choose(0,0,7)//,12,14)
        ds_grid_set(map,i,j,rand)
        create_area(0,rand,15+60*i,15+60*j)
        switch rand{
            case 0:
                ds_grid_set(gridMap,1+i*4+1,1+j*4+1,1)
                ds_grid_set(gridMap,1+i*4+2,1+j*4+1,1)
                ds_grid_set(gridMap,1+i*4+3,1+j*4+1,1)
                ds_grid_set(gridMap,1+i*4+1,1+j*4+2,1)
                ds_grid_set(gridMap,1+i*4+2,1+j*4+2,1)
                ds_grid_set(gridMap,1+i*4+3,1+j*4+2,1)
                ds_grid_set(gridMap,1+i*4+1,1+j*4+3,1)
                ds_grid_set(gridMap,1+i*4+2,1+j*4+3,1)
            break
            case 7:
            break
        }
    }
    /*
    ---
    xo-
    ---
    */
    else{
        var rand=choose(1,1,3,1,3,10)//,15)
        ds_grid_set(map,i,j,rand)
        create_area(0,rand,15+60*i,15+60*j)
        //add objects
            switch rand{
             case 1:
                ds_grid_set(gridMap,1+i*4+1,1+j*4+0,1)
                ds_grid_set(gridMap,1+i*4+1,1+j*4+1,1)
                ds_grid_set(gridMap,1+i*4+1,1+j*4+2,1)
                ds_grid_set(gridMap,1+i*4+1,1+j*4+3,1)
                ds_grid_set(gridMap,1+i*4+2,1+j*4+0,1)
                ds_grid_set(gridMap,1+i*4+2,1+j*4+1,1)
                ds_grid_set(gridMap,1+i*4+2,1+j*4+2,1)
                ds_grid_set(gridMap,1+i*4+2,1+j*4+3,1)
             break
             case 3:
                ds_grid_set(gridMap,1+i*4+1,1+j*4+0,1)
                ds_grid_set(gridMap,1+i*4+1,1+j*4+1,1)
                ds_grid_set(gridMap,1+i*4+1,1+j*4+2,1)
                ds_grid_set(gridMap,1+i*4+2,1+j*4+0,1)
                ds_grid_set(gridMap,1+i*4+2,1+j*4+1,1)
                ds_grid_set(gridMap,1+i*4+2,1+j*4+2,1)
                ds_grid_set(gridMap,1+i*4+3,1+j*4+1,1)
                ds_grid_set(gridMap,1+i*4+3,1+j*4+2,1)
             break
             case 10:
                ds_grid_set(gridMap,1+i*4+1,1+j*4+0,1)
                ds_grid_set(gridMap,1+i*4+1,1+j*4+1,1)
                ds_grid_set(gridMap,1+i*4+1,1+j*4+2,1)
                ds_grid_set(gridMap,1+i*4+1,1+j*4+3,1)
                ds_grid_set(gridMap,1+i*4+2,1+j*4+0,1)
                ds_grid_set(gridMap,1+i*4+2,1+j*4+1,1)
                ds_grid_set(gridMap,1+i*4+2,1+j*4+2,1)
                ds_grid_set(gridMap,1+i*4+2,1+j*4+3,1)
                ds_grid_set(gridMap,1+i*4+3,1+j*4+1,1)
                ds_grid_set(gridMap,1+i*4+3,1+j*4+2,1)
             break
            }
        }
}
else
{
/*
-?-
-o?
-?-
*/
    //if top is blocked
    if j=0
    ||ds_grid_get(map,i,j-1)==2
    ||ds_grid_get(map,i,j-1)==3
    ||ds_grid_get(map,i,j-1)==5
    ||ds_grid_get(map,i,j-1)==7
    ||ds_grid_get(map,i,j-1)==8
    ||ds_grid_get(map,i,j-1)==12
    ||ds_grid_get(map,i,j-1)==13
    ||ds_grid_get(map,i,j-1)==15
    {
    /*
    -x-
    -o?
    -?-
    */
        var rand=choose(2,2,2,4,4,9)//,13)
        ds_grid_set(map,i,j,rand)
        create_area(0,rand,15+60*i,15+60*j)
        switch rand{
            case 2:
                ds_grid_set(gridMap,1+i*4+0,1+j*4+1,1)
                ds_grid_set(gridMap,1+i*4+1,1+j*4+1,1)
                ds_grid_set(gridMap,1+i*4+2,1+j*4+1,1)
                ds_grid_set(gridMap,1+i*4+3,1+j*4+1,1)
                ds_grid_set(gridMap,1+i*4+0,1+j*4+2,1)
                ds_grid_set(gridMap,1+i*4+1,1+j*4+2,1)
                ds_grid_set(gridMap,1+i*4+2,1+j*4+2,1)
                ds_grid_set(gridMap,1+i*4+3,1+j*4+2,1)
            break
            case 4:
                ds_grid_set(gridMap,1+i*4+0,1+j*4+1,1)
                ds_grid_set(gridMap,1+i*4+1,1+j*4+1,1)
                ds_grid_set(gridMap,1+i*4+2,1+j*4+1,1)
                ds_grid_set(gridMap,1+i*4+0,1+j*4+2,1)
                ds_grid_set(gridMap,1+i*4+1,1+j*4+2,1)
                ds_grid_set(gridMap,1+i*4+2,1+j*4+2,1)
                ds_grid_set(gridMap,1+i*4+1,1+j*4+3,1)
                ds_grid_set(gridMap,1+i*4+2,1+j*4+3,1)
            break
            case 9:
                ds_grid_set(gridMap,1+i*4+0,1+j*4+1,1)
                ds_grid_set(gridMap,1+i*4+1,1+j*4+1,1)
                ds_grid_set(gridMap,1+i*4+2,1+j*4+1,1)
                ds_grid_set(gridMap,1+i*4+3,1+j*4+1,1)
                ds_grid_set(gridMap,1+i*4+0,1+j*4+2,1)
                ds_grid_set(gridMap,1+i*4+1,1+j*4+2,1)
                ds_grid_set(gridMap,1+i*4+2,1+j*4+2,1)
                ds_grid_set(gridMap,1+i*4+3,1+j*4+2,1)
                ds_grid_set(gridMap,1+i*4+1,1+j*4+3,1)
                ds_grid_set(gridMap,1+i*4+2,1+j*4+3,1)
            break
        }
    }
    else{
    /*
    ---
    -o?
    -?-
    */
        var rand=choose(5,5,6,8,11)
        ds_grid_set(map,i,j,rand)
        create_area(0,rand,15+60*i,15+60*j)
        switch rand{
            case 5:
                ds_grid_set(gridMap,1+i*4+1,1+j*4+0,1)
                ds_grid_set(gridMap,1+i*4+1,1+j*4+1,1)
                ds_grid_set(gridMap,1+i*4+1,1+j*4+2,1)
                ds_grid_set(gridMap,1+i*4+2,1+j*4+0,1)
                ds_grid_set(gridMap,1+i*4+2,1+j*4+1,1)
                ds_grid_set(gridMap,1+i*4+2,1+j*4+2,1)
                ds_grid_set(gridMap,1+i*4+0,1+j*4+1,1)
                ds_grid_set(gridMap,1+i*4+0,1+j*4+2,1)
            break;
            case 6:
                instance_create(15+60*i,15+60*j,oTrafficLight_l)
                instance_create(15+60*i,15+60*j+15*3,oTrafficLight_l)
                instance_create(15+60*i+15*3,15+60*j,oTrafficLight_r)
                instance_create(15+60*i+15*3,15+60*j+15*3,oTrafficLight_r)
                ds_grid_set_region(gridMap,1+i*4+0,1+j*4+0,1+i*4+3,1+j*4+3,1)
            break
            case 8:
                ds_grid_set(gridMap,1+i*4+1,0+j*4+1,1)
                ds_grid_set(gridMap,2+i*4+1,0+j*4+1,1)
                ds_grid_set(gridMap,0+i*4+1,1+j*4+1,1)
                ds_grid_set(gridMap,1+i*4+1,1+j*4+1,1)
                ds_grid_set(gridMap,2+i*4+1,1+j*4+1,1)
                ds_grid_set(gridMap,3+i*4+1,1+j*4+1,1)
                ds_grid_set(gridMap,0+i*4+1,2+j*4+1,1)
                ds_grid_set(gridMap,1+i*4+1,2+j*4+1,1)
                ds_grid_set(gridMap,2+i*4+1,2+j*4+1,1)
                ds_grid_set(gridMap,3+i*4+1,2+j*4+1,1)
            break
            case 11:
                ds_grid_set(gridMap,1+i*4+0,1+j*4+1,1)
                ds_grid_set(gridMap,1+i*4+0,1+j*4+2,1)
                ds_grid_set(gridMap,1+i*4+1,1+j*4+0,1)
                ds_grid_set(gridMap,1+i*4+1,1+j*4+1,1)
                ds_grid_set(gridMap,1+i*4+1,1+j*4+2,1)
                ds_grid_set(gridMap,1+i*4+1,1+j*4+3,1)
                ds_grid_set(gridMap,1+i*4+2,1+j*4+0,1)
                ds_grid_set(gridMap,1+i*4+2,1+j*4+1,1)
                ds_grid_set(gridMap,1+i*4+2,1+j*4+2,1)
                ds_grid_set(gridMap,1+i*4+2,1+j*4+3,1)
            break
        }
    }
}

}
//create objects
repeat(1000){
var rx=irandom(room_width/15)//room_width/15);
var ry=irandom(room_height/15)//room_height/15);
    if !place_meeting(rx*15,ry*15,oUnit)
    if ds_grid_get(gridMap,rx,ry)!=1{
         /*if ds_grid_get(gridMap,rx+1,ry)=1
        ||ds_grid_get(gridMap,rx,ry+1)=1
        ||ds_grid_get(gridMap,rx,ry-1)=1
        ||ds_grid_get(gridMap,rx-1,ry)=1*/
        instance_create(rx*15,ry*15,choose(oBuilding,oTree,oLamppost,oRecyclingBin))
    }
}
ds_grid_destroy(map)
ds_grid_destroy(gridMap)
