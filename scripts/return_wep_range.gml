var arg_wep=argument0
switch floor(arg_wep){
    case 0: return 1;
    case 2: return 1
    case 4: return 1
    case 6: return 1
    case 7: return 3
    case 8: return 1
    case 11: return 3
    case 15: return 5
    case 16: return 2
    case 18: return 2
    case 50: return 2
    
    //monster weapons
    case -1: return 2;
    default: return 1;
}
