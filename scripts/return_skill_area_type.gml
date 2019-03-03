var arg_skill=argument0
/*
options
0 - normal
1 - line only
2 - line with width 3
*/
switch floor(arg_skill){
    case 1: return 0
    case 2: return 1
    case 3: return 2
    case 4: return 0
    default:return 0
}
