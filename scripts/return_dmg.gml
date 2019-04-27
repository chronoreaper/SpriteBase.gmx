var base=argument0
var boost=argument1
var arg_type=argument2
var arg_source=argument3
var arg_targ=argument4
var dmg=0;
switch arg_type{
    case 0:dmg = ceil(1.5*sqrt(sqr(base)//*(1+boost*0.01)
        /arg_targ.stats[2,2])) break;
    case 1:dmg = ceil(1.5*sqrt(sqr(base)//*(1+boost*0.01)
        /arg_targ.stats[2,4])) break;
}
return dmg;
