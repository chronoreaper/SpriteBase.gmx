//check the type of the attack
/*
0 - default, enemies
1 - allies
*/
var arg_unit = argument0
switch arg_unit{
    case healer001_0: return 1
    case barrier_mage001_0: return 1
    default: return 0
}
