var arg_wep=argument0
/*
weakness
0 - no type
1 - slash
2 - stab
3 - smash
4 - fire
5 - ice
6 - wind
7 - electric
8 - light
9 - dark
*/
switch floor(arg_wep){
    case 2: return 1
    case 7: return 2
    case 8: return 1
    case 9: return 3
    case 11: return 2
    case 50: return 6
    
    //monster weapons
    default: return 0;
}
