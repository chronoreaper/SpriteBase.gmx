var width=room_width/15;
var height=room_height/15
var arg_x = argument0
var arg_y = argument1
var unitList = argument2;
var lv = level//oControler.level
var levelArea = ds_grid_create(11,11)
ds_grid_clear(levelArea,-1)
var px=5;
var py=5;
var ox=-3;
var oy =-3;

var layout;
ds_grid_clear(map,0)
var posQue = ds_queue_create()
ds_queue_enqueue(posQue,px)
ds_queue_enqueue(posQue,py)

while (!ds_queue_empty(posQue)){
    px = ds_queue_dequeue(posQue)
    py = ds_queue_dequeue(posQue)
    ds_grid_set(posQue,px,py,1)
}

for (var my=0;my<array_length_1d(layout);my++){
    for(var mx=0;mx<string_length(layout[my]);mx++){
        switch (string_char_at(layout[my],mx+1)){
            case "x": 
                instance_create(mx*15+arg_x+ox*15,my*15+arg_y+oy*15,oTree)
                break;
            case "s":
                if lv%5=0{
                inst=instance_create(mx*15+arg_x+ox*15,my*15+arg_y+oy*15,
                    choose(oDragon1));
                    inst.team=2
                }
                else
                instance_create(mx*15+arg_x+ox*15,my*15+arg_y+oy*15,oStairs)
                break;
            case "-":
                if lv%10!=0{
                if irandom(100) <= clamp(lv/3 -1,-1,3) {
                var inst=instance_create(mx*15+arg_x+ox*15,my*15+arg_y+oy*15,
                    choose(oFighter,oArcher,oMage,oHealer));
                    inst.team=1
                    inst.ai=6
                }
                else if irandom(80)=0{
                    inst=instance_create(mx*15+arg_x+ox*15,my*15+arg_y+oy*15,
                    choose(oChest));
                    inst.team=0.1
                }
                else if irandom(25) <= clamp(lv/5 ,0,5){
                    var inst=instance_create(mx*15+arg_x+ox*15,my*15+arg_y+oy*15,
                    choose(oSlime,oBoar,oFrog,oTurt,oShroom,oCyclops,oEyebat));
                    inst.team=2
                }
                break;
                }
        }
        with oEff
            instance_destroy()
        if irandom(10)=0
        tile_add(tilesprite2,15*(1+irandom(9)),15*0,15,15,arg_x+mx*15+ox*15,arg_y+15*my+oy*15,10000)
    }
}
ds_grid_destroy(levelArea)
ds_queue_destroy(posQue)
