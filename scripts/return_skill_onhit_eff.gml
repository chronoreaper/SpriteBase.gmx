var arg_source = argument0
var arg_targ = argument1//can be temp targ

switch (arg_source.unit){
    case mage001_0:
            get_eff(arg_source,arg_targ,1)
        break
    case ice_mage001_0:
        if arg_targ.object_index = oTempTarg
            get_eff(arg_source,arg_targ,3)
        break
    case defender001_0:
            get_eff(arg_source,arg_targ,2)
        break
    case barrier_mage001_0:
        //if arg_targ.object_index!=oTempTarg
            get_eff(arg_source,arg_targ,4)
        break
    default: break
}
