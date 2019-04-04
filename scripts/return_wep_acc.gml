var arg_wep=argument0
var arg_dis=floor(argument1/15)//15
var arg_source=argument2
var arg_targ=argument3
var total=0;
switch floor(arg_wep){
    case 2:total=80; break;//dagger
    case 7:total=90-(arg_dis-1)*3;break;//bow
    case 8:total=90; break;//sword
    case 9:total=75; break;//club
    case 10:total=85; break;//stick
    case 11:total=90-(arg_dis-1)*3;break;//spirit bow
    case 50:total=95; break;//xcalabur
    default: total=80; break;//no wep
}
total+=ceil(arg_source.stats[2,4]/2-arg_targ.stats[2,4]/2)
return total;

