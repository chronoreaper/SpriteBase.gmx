var arg_skill=argument0
/*
options
0 - normal
1 - line only
2 - line with width 3
3 - same area as a range of 2
*/
switch floor(arg_skill){
    case 1: return 0
    case 2: return 1
    case 3: return 2
    case 4: return 0
    case 5: return 3
    case 7: return 1
    case 8: return 0
    default:return 0
}
