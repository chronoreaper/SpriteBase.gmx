var arg_wep=argument0
/*
weakness
0 - physical
1 - magic
*/
switch floor(arg_wep){
    case 2: return 1//"laser beam" 
    case 3: return 1//"water breath" 
    case 5: return 1//"redemptioN"
    case 7: return 0//"pierciNg strike"
    case 8: return 1//"fire"
    case 9: return 1//"heal"
    case 10: return 0//"cross slash"
    case 11: return 0//"loNg shot"
    case 15: return 1//"ice"
    case 16: return 1//"thunder"
    case 17: return 1//"wind"
    case 19: return 1//"flux"
    case -1:return 0//spawn vines start
    case -2:return 0//spawn vines
    default: return 0;
}
