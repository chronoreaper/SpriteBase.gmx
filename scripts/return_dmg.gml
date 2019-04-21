var base=argument0
var boost=argument1
var def=argument2
var arg_type=argument3
var arg_source=argument4
var arg_targ=argument5
var dmg=0;
dmg = ceil(1.5*sqrt(sqr(base)*(1+boost*0.01)/def))
return dmg;
