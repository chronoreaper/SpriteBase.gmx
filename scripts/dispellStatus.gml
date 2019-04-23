var arg_source=argument0
var arg_pos=argument1
//resets the stats changed by the status
switch status[arg_pos]{
    case 6:mov=mmov break;
    case 10:stats[2,0]+=statusStr[arg_pos] break;
    case 11:stats[2,1]+=statusStr[arg_pos] break;
    case 12:stats[2,2]+=statusStr[arg_pos] break;
    case 13:stats[2,4]+=statusStr[arg_pos] break;
    case 14:stats[2,3]+=statusStr[arg_pos] break;
    case 15:stats[2,0]-=statusStr[arg_pos] break;
    case 16:stats[2,1]-=statusStr[arg_pos] break;
    case 17:stats[2,2]-=statusStr[arg_pos] break;
    case 18:stats[2,4]-=statusStr[arg_pos] break;
    case 19:stats[2,3]-=statusStr[arg_pos] break;
}
