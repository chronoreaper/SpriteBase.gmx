var arg_wep=argument0
var arg_dis=floor(argument1/15)//15
switch floor(arg_wep){
    case 2:return 90;//dagger
    case 7:return 90-arg_dis*3;//bow
    default: return 85;//no wep
}

