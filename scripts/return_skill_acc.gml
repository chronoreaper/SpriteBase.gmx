var arg_skill=argument0
var arg_dis=argument1
switch floor(arg_skill){
    case 1:return 100;//rest
    case 2:return 101;//laser beam
    case 3:return 101;//water breath
    case 4:return 80;//bite
    case 5:return 100;//redemption
    case 6:return 100;//split
    case 7:return 90;//piercing strike
    case 8:return 94;//fire
    case 9:return 100;//heal
    case 10:return 87;//crossSlash
    case 11:return 93-(arg_dis-1)*4;//long shot
    default: return 0
}

