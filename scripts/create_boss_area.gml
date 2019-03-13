var arg_x=argument0
var arg_y=argument1
var pattren=argument2
var type=argument3
var map=array_create(11);
/*
key
- = nothing
x = wall
*/
map[0] ="xxxxxxxxxxx"
map[1] ="x---------x"
map[2] ="x-xx-xx-x-x"
map[3] ="x-x---x-x-x"
map[4] ="x---x-----x"
map[5] ="xx-xx-xx-xx"
map[6] ="x-----x---x"
map[7] ="x-x-x---x-x"
map[8] ="x-x-xx-xx-x"
map[9] ="x---------x"
map[10]="xxxxx-xxxxx"
for (var my=0;my<array_length_1d(map);my++){
    for(var mx=0;mx<string_length(map[my]);mx++){
        if (string_char_at(map[my],mx+1)=="x"){
            instance_create(mx*15+arg_x,my*15+arg_y,oAncientWall)
            tile_add(tilesprite2,15*5,15*5,15,15,arg_x+mx*15,arg_y+15*my,10000)
        }
        tile_add(tilesprite2,15*(5+irandom(7)),15*5,15,15,arg_x+mx*15,arg_y+15*my,10000)
    }
}
