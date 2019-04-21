var base=argument0
var boost=argument1
var def=argument2
var res=argument3
var arg_type=argument4
var arg_source=argument5
var arg_targ=argument6
var dmg=0;
switch arg_type{
    case 0:dmg = ceil(1.5*sqrt(sqr(base)*(1+boost*0.01)/def)) break;
    case 1:dmg = ceil(1.5*sqrt(sqr(base)*(1+boost*0.01)/res)) break;
}
return dmg;
