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
    case 3: return 5//"water breath" 
    case 5: return 8//"redemptioN"
    case 7: return 2//"pierciNg strike"
    case 8: return 4//"fire"
    case 9: return 8//"heal"
    case 10: return 1//"cross slash"
    case 11: return 2//"loNg shot"
    case -1:return 2//spawn vines start
    case -2:return 2//spawn vines
    default: return 0;
}
