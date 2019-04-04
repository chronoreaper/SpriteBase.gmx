var arg_wep=argument0
switch floor(arg_wep){
    case 2:return slash;//dagger
    case 7:return stab;//bow
    case 8:return slashsweep;//sword
    case 9:return slashsweep;//club
    case 11:return stab;//spirit bow
    case 50:return windSlash;//xcalabur
    //monster weapons
    case -1:return poison_splash;
    default: return blank;//no wep
}

