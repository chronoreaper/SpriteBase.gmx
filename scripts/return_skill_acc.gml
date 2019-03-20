var arg_skill=argument0
var arg_dis=argument1
switch floor(arg_skill){
    case 4:return 80;//bite
    case 7:return 90;//piercing strike
    case 8:return 94;//fire
    case 10:return 87;//crossSlash
    case 11:return 93-(arg_dis-1)*4;//long shot
    
    default: return 100
}

