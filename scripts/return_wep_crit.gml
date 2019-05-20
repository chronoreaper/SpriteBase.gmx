var arg_wep=argument0
var arg_dist=argument1
var arg_sel=argument2
var arg_targ=argument3
switch floor(arg_wep){
    case 10://stick
        if frac(arg_sel.item[arg_sel.wep])=0.01
            return 2
        return 1
    case 13://kranbit
        if arg_targ.hp/arg_targ.mhp <= 0.5
            return 2
        return 1
    case 14://great sword
        if arg_sel.x=arg_sel.xx&&arg_sel.y=arg_sel.yy
            return 2
        return 1
    case 15://great bow
        if arg_sel.x=arg_sel.xx&&arg_sel.y=arg_sel.yy
            return 2
        return 1
    
    //monster weapons
}
return 1
