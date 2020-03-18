//check the type of the attack
/*
0 - default, attacks and can move
1 - magic attack, can attack anywhere, can only attack or move
2 - magic support, can only attack or move
3 - magic attack, can attack anywhere
*/
var arg_unit = argument0
switch arg_unit{
    //case mage001_0: return 3
    //case ice_mage001_0: return 3
    //case healer001_0: return 2
    default: return 0
}
