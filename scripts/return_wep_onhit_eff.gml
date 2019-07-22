var arg_wep=argument0
var arg_sel=argument1
var arg_targ=argument2
switch floor(arg_wep){
    case 18:
        var val=1
        if arg_targ.stats[2,2]-val<=0
            val=arg_targ.stats[2,2]-1
        arg_targ.stats[2,2]-=addStatus(1,1,arg_targ,12,0.03,val)  
    break;
    case 20:
        var val=floor(arg_targ.stats[2,2]/2)
        if arg_targ.stats[2,2]-val<=0
            val=arg_targ.stats[2,2]-1
        arg_targ.stats[2,2]-=addStatus(0,0,arg_targ,12,0.02,val)    
    break
}
