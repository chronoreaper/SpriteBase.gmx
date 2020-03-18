var arg_source=argument0
var arg_pos=argument1
//resets the stats changed by the status
switch arg_source.status[arg_pos]{
    case 7:arg_source.range=arg_source.mRange break;
    case 8:arg_source.mov=arg_source.mmov break;
    //case 19:arg_source.stats[2,3]+=arg_source.statusStr[arg_pos] break;
}
