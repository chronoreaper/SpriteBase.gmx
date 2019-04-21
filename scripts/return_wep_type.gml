var arg_wep=argument0
/*
weakness
0 - physical
1 - magic
*/
switch floor(arg_wep){
    case 50: return 1
    //monster weapons
    default: return 0;
}
