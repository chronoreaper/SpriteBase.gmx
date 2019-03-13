var arg_skill=argument0
/*
options
0 - normal
1 - line only
2 - line with width 3
3 - radius 3
*/
switch floor(arg_skill){
    case 2: return 1
    case 3: return 2
    case 5: return 3
    case 7: return 1
    default:return 0
}
