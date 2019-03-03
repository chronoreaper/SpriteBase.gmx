var arg_wep=argument0
var arg_sel=argument1
switch floor(arg_wep){
    case 2: return floor(arg_sel.stats[2,0])+2;
    case 4: return floor(arg_sel.stats[2,0])+1;
    case 6: return floor(arg_sel.stats[2,0])+2;
    default: return floor(arg_sel.stats[2,0]);
}
