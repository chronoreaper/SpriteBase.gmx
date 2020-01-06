var arg_source = argument0
var arg_targ = argument1//can be temp targ

switch (arg_source.unit){
    case mage001_0:
            get_eff(arg_source,arg_targ,1)
        break
    case defender001_0:
            get_eff(arg_source,arg_targ,2)
        break
    default: break
}
