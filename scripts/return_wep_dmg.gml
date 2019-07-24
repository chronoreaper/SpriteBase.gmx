var arg_wep=argument0
var arg_sel=argument1
var arg_dist=max(0,floor(argument2/15)-1)
switch floor(arg_wep){
    case 2: return floor(arg_sel.stats[2,0])+0;//dagger
    case 4: return floor(arg_sel.stats[2,0])+1;
    case 6: return floor(arg_sel.stats[2,0])+2;
    case 7: return (floor(arg_sel.stats[2,3])+2)*power(0.8,arg_dist-1);//bow
    case 8: return floor(arg_sel.stats[2,0])+3;//sword
    case 9: return floor(arg_sel.stats[2,0])+2;//club
    case 11: return (floor((arg_sel.stats[2,3]+arg_sel.stats[2,1])/2)+2)*power(0.8,arg_dist-1);//spirit bow
    case 12: return floor(arg_sel.stats[2,0])+5;//iron Sword
    case 13: return floor(arg_sel.stats[2,3])+1;//kranbit
    case 14: 
        var distMov;
            with arg_sel
                distMov=(abs(x-xx)+abs(y-yy))/15
        return (floor(arg_sel.stats[2,0])+8)*(3/(distMov+2));//great Sword
    case 15: return (floor(arg_sel.stats[2,3])+7)*((arg_dist+2)/5);//great bow
    case 16: return (floor(arg_sel.stats[2,3]/10)+7);//cross bow
    case 17: return floor(arg_sel.stats[2,0])+3;//spear
    case 18: return (floor(arg_sel.stats[2,3]/2));//shurikin
    case 19: return floor(arg_sel.stats[2,0])+5;//battle axe
    case 20: return floor(arg_sel.stats[2,0])+floor(arg_sel.stats[2,3])+5;//gael bolg
    case 21: return floor(arg_sel.stats[2,0])+4;//axe
    case 50: 
        var sum=0;
        with arg_sel
            sum=return_power()
        return ceil(sum/5)
    default: return floor(arg_sel.stats[2,0]);
}
