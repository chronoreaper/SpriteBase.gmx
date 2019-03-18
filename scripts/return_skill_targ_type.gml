var arg_skill=argument0
/*
options
0 - none
1 - ally
2 - enemy
3 - all
4 - no target
*/
switch floor(arg_skill){
    case 1: return 1
    case 2: return 0
    case 3: return 0
    case 4: return 2
    case 5: return 1
    case 6: return 4
    case 7: return 4
    case 8: return 2
    case 9: return 1
    case 10: return 2
    case 11: return 2
    default:return 0
}
