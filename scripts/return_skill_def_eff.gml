var arg_source = argument0
var arg_targ = argument1//can be temp targ

switch (arg_targ.unit){
    case orb:
        global.colourSwitch[arg_targ.colourId] = !arg_targ.onOff
        break
    default: break
}

return get_eff(arg_source,arg_targ,arg_source.skillDef)
