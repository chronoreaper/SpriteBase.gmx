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
    case 2:
        if arg_unit.wep!=arg_slot
            arg_unit.wep=arg_slot
        else
            arg_unit.wep=10
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
    case 4:
        if arg_unit.wep!=arg_slot
            arg_unit.wep=arg_slot
        else
            arg_unit.wep=10
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
    case 6:
        if arg_unit.wep!=arg_slot
            arg_unit.wep=arg_slot
        else
            arg_unit.wep=10
        break;
    case 7:
        if arg_unit.wep!=arg_slot
            arg_unit.wep=arg_slot
        else
            arg_unit.wep=10
        break;
    case 8:
        if arg_unit.wep!=arg_slot
            arg_unit.wep=arg_slot
        else
            arg_unit.wep=10
        break;
    case 9:
        if arg_unit.wep!=arg_slot
            arg_unit.wep=arg_slot
        else
            arg_unit.wep=10
        break;
    case 10:
        if arg_unit.wep!=arg_slot
            arg_unit.wep=arg_slot
        else
            arg_unit.wep=10
        break;
    case 50:
        if arg_unit.wep!=arg_slot
            arg_unit.wep=arg_slot
        else
            arg_unit.wep=10
        break;
    case 51:
        if arg_unit.arm!=arg_slot
            arg_unit.arm=arg_slot
        else
            arg_unit.arm=10
        break;
    default:return 0
}
