var arg_unit=argument0
var arg_target=argument1
var arg_slot=menuSel
var arg_item=arg_unit.item[arg_slot]
switch floor(arg_item){
    case 1: 
        with arg_unit{
        if draw>0
            audio_play_sound(sHeal,50,false)
        hp+=4
        if hp>mhp
            hp=mhp
        item[arg_slot]-=0.01
        }
        var txt=instance_create(arg_unit.x+7,arg_unit.y-11,DmgWord);
        txt.text=4
        txt.colour=c_lime
        break;
    case 3: 
        with arg_target{
        hp+=10
        if draw>0
            audio_play_sound(sHeal,50,false)
        if hp>mhp
            hp=mhp
        }
        with arg_unit
            item[arg_slot]-=0.01
        var txt=instance_create(arg_target.x+7,arg_target.y-11,DmgWord);
        txt.text=10
        txt.colour=c_lime
        break;
    case 5: 
        with arg_unit{
        if draw>0
            audio_play_sound(sHeal,50,false)
        hp+=5
        if hp>mhp
            hp=mhp
        item[arg_slot]-=0.01
        if frac(item[arg_slot])=0
            item[arg_slot]=0
        }
        var txt=instance_create(arg_unit.x+7,arg_unit.y-11,DmgWord);
        txt.text=5
        txt.colour=c_lime
        break;
    case 22: 
        with arg_unit{
        if draw>0
            audio_play_sound(sHeal,50,false)
        hp+=7
        if hp>mhp
            hp=mhp
        item[arg_slot]-=0.01
        if frac(item[arg_slot])=0
            item[arg_slot]=0
        }
        var txt=instance_create(arg_unit.x+7,arg_unit.y-11,DmgWord);
        txt.text=7
        txt.colour=c_lime
        break;
    case 51:
        if arg_unit.arm!=arg_slot
            arg_unit.arm=arg_slot
        else
            arg_unit.arm=0
        break
    default:
        if arg_unit.wep!=arg_slot
            arg_unit.wep=arg_slot
        else
            arg_unit.wep=0
        break;
}
