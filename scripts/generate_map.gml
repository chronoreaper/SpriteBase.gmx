var width=room_width/15;
var height=room_height/15
var arg_x = argument0
var arg_y = argument1
var pattren = argument2;
ds_grid_clear(map,0)
var layout=array_create(11);
switch pattren{
case 0:
layout[0] ="---xxxxx---"
layout[1] ="--xx---xx--"
layout[2] ="-xx--s--xx-"
layout[3] ="xx-------xx"
layout[4] ="x---------x"
layout[5] ="x---------x"
layout[6] ="x---------x"
layout[7] ="xx-------xx"
layout[8] ="-xx-----xx-"
layout[9] ="--xx---xx--"
layout[10]="---xxxxx---"
for (var my=0;my<array_length_1d(layout);my++){
    for(var mx=0;mx<string_length(layout[my]);mx++){
        switch (string_char_at(layout[my],mx+1)){
            case "x": 
                instance_create(mx*15+arg_x,my*15+arg_y,oTree)
                break;
            case "s":
                instance_create(mx*15+arg_x,my*15+arg_y,oStairs)
                break;
        }
        if irandom(10)=0
        tile_add(tilesprite2,15*(1+irandom(9)),15*0,15,15,arg_x+mx*15,arg_y+15*my,10000)
    }
}
break;
}
