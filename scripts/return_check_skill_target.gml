var arg_source=argument0
var arg_targ=argument1
var arg_targType=argument2
/*
options
0 - none
1 - ally
2 - enemy
3 - all (targ types but cant be none)
*/
switch arg_targType{
    case 0:return true;
    case 1:if arg_targ!=noone return arg_targ.team=arg_source.team break
    case 2:if arg_targ!=noone return arg_targ.team!=arg_source.team||object_is_ancestor(arg_targ.object_index,oObj) break
    case 3:return arg_targ!=noone;
}
return false
