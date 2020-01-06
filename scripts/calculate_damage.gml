var arg_source=argument0
var arg_targ=argument1
var arg_dmg=argument2

if arg_targ.object_index = oTempTarg{//attacks the ground
    return_skill_onhit_eff(arg_source,arg_targ)
    return 1
}
else{
var txt=instance_create(arg_targ.x+7-23*dsin(-view_angle),arg_targ.y+7-23*dcos(-view_angle),DmgWord);
arg_targ.lastHitBy=arg_source;
var cp=2;

//arg_targ.combat=cp
//arg_source.combat=cp

var dmg=0;
if arg_dmg = 0
    dmg =arg_source.pow*check_wep_dmg(arg_source.unit);
else
    dmg = arg_dmg
var reducedDmg = 0
var shieldIndex=findStatus(arg_targ,3)

if dmg>0{
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
}
//on hit effect
arg_targ.hp-=dmg
arg_targ.hp=clamp(arg_targ.hp,0,arg_targ.mhp)
if arg_dmg=0
    return_skill_onhit_eff(arg_source,arg_targ)
return_skill_def_eff(arg_source,arg_targ)
arg_targ.image_blend=c_red
if dmg<0{
    arg_targ.image_blend=c_lime
    dmg*=-1
    txt.colour=c_lime
}
arg_targ.alarm[1]=4
if dmg!=0{
    txt.text=string(dmg)
    }
else{
    txt.visible=false
}


//show reduced damage
if reducedDmg>0{
    var txt2=instance_create(arg_targ.x+7-30*dsin(-view_angle),arg_targ.y+7-30*dcos(-view_angle),DmgWord);    
    txt2.text="-"+string(reducedDmg)
    txt2.colour=c_ltgray
}
//info
with oControler
    if ds_map_find_value(aiTurns, arg_source.team)>=0
    ||ds_map_find_value(aiTurns, arg_targ.team)>=0
        if txt.colour=c_lime
            message_create(arg_source.name+" heals "+txt.text+" hp to "+arg_targ.name)  
        else
        message_create(arg_source.name+" deals "+txt.text+" to "+arg_targ.name)  

if !object_is_ancestor(arg_targ.object_index,oObj)
if arg_targ.team!=arg_source.team{
    if arg_targ.hp<=0{
        with oControler
        if ds_map_find_value(aiTurns, arg_source.team)>=0
        ||ds_map_find_value(aiTurns, arg_targ.team)>=0{
            message_create(arg_targ.name+" has been defeated")   
            }  
            
        }
    //arg_source.aggro=arg_targ
    }  
return dmg
}

