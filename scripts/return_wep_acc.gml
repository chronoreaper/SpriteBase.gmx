var arg_wep=argument0
var arg_dis=floor(argument1/15)//15
switch floor(arg_wep){
    case 2:return 90;//dagger
    case 7:return 90-(arg_dis-1)*3;//bow
    case 8:return 94;//sword
    case 50:return 95;//xcalabur
    default: return 85;//no wep
}

