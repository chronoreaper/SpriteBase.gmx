var arg_skill=argument0
var arg_dis=argument1
var arg_source=argument2
var arg_targ=argument3
var arg_bonus=ceil(arg_source.stats[2,4]/2-arg_targ.stats[2,4]/2)
switch floor(arg_skill){
    case 4:return 80+arg_bonus;//bite
    case 7:return 90+arg_bonus;//piercing strike
    case 8:return 94+arg_bonus;//fire
    case 10:return 87+arg_bonus;//crossSlash
    case 11:return 93-(arg_dis-1)*4+arg_bonus;//long shot
    
    default: return 100
}

