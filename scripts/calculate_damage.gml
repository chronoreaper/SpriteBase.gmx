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
//var txt=instance_create(arg_targ.x+7,arg_targ.y-11,DmgWord);
var txt=instance_create(arg_targ.x+7-15*dsin(-view_angle),arg_targ.y+7-15*dcos(-view_angle),DmgWord);
arg_targ.lastHitBy=arg_source;
var cp=2;
var reducedDmg=0;
arg_targ.combat=cp
/*if arg_targ.link!=noone
if instance_exists(arg_targ.link)
    arg_targ.link.combat=cp*/
arg_source.combat=cp
//check if hit *luck(selected.luc)
//if  get_random()<arg_acc
if true
{
    //var weak=arg_targ.weakness[arg_type]
    var dmg=0;
    
    /*if arg_targ.weakness[arg_type]>1
        txt.colour=c_orange
    else if arg_targ.weakness[arg_type]<1
        txt.colour=c_ltgray
    */    
    if arg_dmg>=0{
        dmg=ceil(arg_dmg*arg_multi);
        dmg=max(dmg,1)//guarentees 1 dmg
        }
    else
        dmg=floor(arg_dmg*arg_multi);
    var shieldIndex=findStatus(arg_targ,1)
    if shieldIndex!=-1{
        if arg_targ.statusStr[shieldIndex]>dmg{
            reducedDmg=dmg
            arg_targ.statusStr[shieldIndex]-=dmg
            dmg=0
        }
        else{
            dmg-=arg_targ.statusStr[shieldIndex]
            reducedDmg=arg_targ.statusStr[shieldIndex]
            arg_targ.status[shieldIndex]=0
            arg_targ.statusStr[shieldIndex]=0
        }
    }
    //on hit effect
    arg_targ.hp-=dmg
    arg_targ.hp=clamp(arg_targ.hp,0,arg_targ.hp)
    //return_wep_onhit_eff(arg_source.item[arg_source.wep],arg_source,arg_targ)
    return_skill_onhit_eff(arg_source,arg_targ)
    arg_targ.image_blend=c_red
    if dmg<0{
        arg_targ.image_blend=c_lime
        dmg*=-1
        txt.colour=c_lime
    }
    arg_targ.alarm[1]=4
    txt.text=string(dmg)
    if arg_multi>=1{
        repeat(ceil(arg_multi)-1)
            txt.text+="!"
        }
    //show reduced damage
    if reducedDmg>0{
        var txt2=instance_create(arg_targ.x+7-24*dsin(-view_angle),arg_targ.y+7-24*dcos(-view_angle),DmgWord);    
        txt2.text="-"+string(reducedDmg)
        txt2.colour=c_ltgray
    }
    //info
    with oControler
        if ds_map_find_value(aiTurns, arg_source.team)>=0
        ||ds_map_find_value(aiTurns, arg_targ.team)>=0
            message_create(arg_source.name+" deals "+txt.text+" to "+arg_targ.name)  
    var totalxp=arg_xp
    if !object_is_ancestor(arg_targ.object_index,oObj)
    if arg_targ.team!=arg_source.team{
        if arg_targ.hp<=0{

            var more=0
            with arg_targ
                more=return_power()
            totalxp+=ceil(more/10)
            
            with oControler
            if ds_map_find_value(aiTurns, arg_source.team)>=0
            ||ds_map_find_value(aiTurns, arg_targ.team)>=0{
                message_create(arg_targ.name+" has been defeated")  
                message_create(arg_source.name+" gained "+string(totalxp)+ "xp")  
                }  
                
            }
        arg_source.xp+=totalxp
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
