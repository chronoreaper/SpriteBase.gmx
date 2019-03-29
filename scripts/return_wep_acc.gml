var arg_wep=argument0
var arg_dis=floor(argument1/15)//15
var arg_source=argument2
var arg_targ=argument3
var arg_bonus=ceil(arg_source.stats[2,4]/2-arg_targ.stats[2,4]/2)
switch floor(arg_wep){
    case 2:return 90+arg_bonus;//dagger
    case 7:return 90-(arg_dis-1)*3+arg_bonus;//bow
    case 8:return 94+arg_bonus;//sword
    case 9:return 75+arg_bonus;//club
    case 50:return 95+arg_bonus;//xcalabur
    default: return 85+arg_bonus;//no wep
}

