var arg_source=argument0
var arg_targ=argument1
var arg_dmg=argument2
var arg_acc=argument3//base accuracy
var arg_type=argument4
var arg_xp=argument5
var arg_multi=argument6
/*
types
0- normal
*/
//returns hit = 1 or miss =0
var txt=instance_create(arg_targ.x+7,arg_targ.y-11,DmgWord);
//check if hit *luck(selected.luc)
if  get_random()<arg_acc
{
    var dmg=ceil(arg_dmg*arg_multi);
    arg_targ.hp-=dmg
    arg_targ.hp=max(arg_targ.hp,0)
    arg_targ.image_blend=c_red
    arg_targ.alarm[1]=4
    txt.text=string(dmg)
    if arg_multi>=2{
        txt.colour=c_orange
        txt.text+="!"
        }
    arg_source.xp+=arg_xp
return dmg
}
else{
    txt.text="miss"
    txt.colour=c_gray
    return_wep_dur(arg_source,0)
    return 0
    }
