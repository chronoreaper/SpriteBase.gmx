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
arg_dmg=return_arm_reduction(arg_targ.item[arg_targ.arm],arg_dmg)
var txt=instance_create(arg_targ.x+7,arg_targ.y-11,DmgWord);
arg_targ.lastHitBy=arg_source;
var cp=3;
arg_targ.combat=cp
if arg_targ.link!=noone
if instance_exists(arg_targ.link)
    arg_targ.link.combat=cp
arg_source.combat=cp
//check if hit *luck(selected.luc)
if  get_random()<arg_acc
{
    var weak=arg_targ.weakness[arg_type]
    var dmg=0;
    
    if arg_targ.weakness[arg_type]>1
        txt.colour=c_orange
    else if arg_targ.weakness[arg_type]<1
        txt.colour=c_ltgray
        
    if arg_dmg>=0
        dmg=ceil(arg_dmg*arg_multi*weak);
    else
        dmg=floor(arg_dmg*arg_multi*weak);
    if arg_targ.status[0]>dmg{
        arg_targ.status[0]-=dmg
        dmg=0
    }
    else{
        dmg-=arg_targ.status[0]
        arg_targ.status[0]=0
        arg_targ.hp-=dmg
        arg_targ.hp=clamp(arg_targ.hp,0,arg_targ.hp)
    }
    arg_targ.image_blend=c_red
    if dmg<0{
        arg_targ.image_blend=c_lime
        dmg*=-1
        txt.colour=c_lime
    }
    arg_targ.alarm[1]=4
    txt.text=string(dmg)
    if arg_multi>=1{
        repeat(ceil(arg_multi)-2)
            txt.text+="!"
        }
    if !object_is_ancestor(arg_targ.object_index,oObj)
    if arg_targ.team!=arg_source.team{
        arg_source.xp+=arg_xp
        arg_source.aggro=arg_targ
        }
return dmg
}
else{
    txt.text="miss"
    txt.colour=c_gray
    //with oControler
    //    return_wep_dur(arg_source,0)
    return 0
    }
