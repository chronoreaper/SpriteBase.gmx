var arg_x = argument0
var arg_y = argument1
if instance_exists(oCamera){
oCamera.xx = arg_x
oCamera.yy = arg_y
oCamera.idle=0
}
else 
    show_debug_message("error no cam")
