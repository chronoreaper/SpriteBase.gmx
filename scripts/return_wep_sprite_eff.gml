var arg_wep=argument0
switch floor(arg_wep){
    case 2:return slash;//dagger
    case 7:return stab;//bow
    case 8:return slashsweep;//sword
    case 9:return slashsweep;//club
    case 11:return stab;//spirit bow
    case 12:return slashsweep;//iron sword
    case 13:return slash;//kranbit
    case 14:return slashsweep;//great sword
    case 15:return stab;//great bow
    case 16:return stab;//cross bow
    case 17:return stab;//spear
    case 18:return stab;//shurikin
    case 19:return slashsweep;//battle axe
    case 20:return stab;//gael bolg
    case 21:return slash;//axe
    case 50:return windSlash;//xcalabur
    //monster weapons
    case -1:return poison_splash;
    default: return blank;//no wep
}

