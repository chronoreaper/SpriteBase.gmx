var arg_source = argument0
var arg_targ = argument1//can be temp targ

switch (arg_source.unit){
    case mage001_0:
        if !place_meeting(arg_targ.x,arg_targ.y,oFire)
        instance_create(arg_targ.x,arg_targ.y,oFire)
        break
    default: break
}
