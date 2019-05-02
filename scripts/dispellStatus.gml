var arg_source=argument0
var arg_pos=argument1
//resets the stats changed by the status
switch arg_source.status[arg_pos]{
    case 6:arg_source.mov=arg_source.mmov break;
    case 10:arg_source.stats[2,0]+=arg_source.statusStr[arg_pos] break;
    case 11:arg_source.stats[2,1]+=arg_source.statusStr[arg_pos] break;
    case 12:arg_source.stats[2,2]+=arg_source.statusStr[arg_pos] break;
    case 13:arg_source.stats[2,4]+=arg_source.statusStr[arg_pos] break;
    case 14:arg_source.stats[2,3]+=arg_source.statusStr[arg_pos] break;
    case 15:arg_source.stats[2,0]+=arg_source.statusStr[arg_pos] break;
    case 16:arg_source.stats[2,1]+=arg_source.statusStr[arg_pos] break;
    case 17:arg_source.stats[2,2]+=arg_source.statusStr[arg_pos] break;
    case 18:arg_source.stats[2,4]+=arg_source.statusStr[arg_pos] break;
    case 19:arg_source.stats[2,3]+=arg_source.statusStr[arg_pos] break;
}
