var arg_wep=argument0
var arg_sel=argument1
var arg_dist=argument2
switch floor(arg_wep){
    case 2: return floor(arg_sel.stats[2,0])+0;//dagger
    case 4: return floor(arg_sel.stats[2,0])+1;
    case 6: return floor(arg_sel.stats[2,0])+2;
    case 7: return floor(arg_sel.stats[2,3])+2;//bow
    case 8: return floor(arg_sel.stats[2,0])+3;//sword
    case 9: return floor(arg_sel.stats[2,0])+4;//club
    case 11: return floor((arg_sel.stats[2,3]+arg_sel.stats[2,1])/2)+2;//spirit bow
    case 50: 
        var sum=0;
        with arg_sel
            sum=return_power()
        return ceil(sum/5)
    default: return floor(arg_sel.stats[2,0]);
}
