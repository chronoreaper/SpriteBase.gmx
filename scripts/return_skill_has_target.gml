var arg_skill=argument0
var arg_source=argument1
var targ=noone
var toTarg=-1
//for ai
/*
options
0 - normal
1 - line only
2 - line with width 3
3 - same area as a range of 2
*/
switch floor(arg_skill){
    case 1: return 0//heal
    case 2: 
        var inst=instance_create(arg_source.x+7,arg_source.y+7,oEff);
        inst.sprite_index=laser_beam
        inst.visible=false
        for(var i=0;i<3;i++){
            inst.image_angle=i*90
            with inst{
                var cinst=instance_place(x,y,oChar);
                while cinst!=noone{
                    if (cinst!=arg_source)
                    if return_check_skill_target(arg_source,cinst,2){
                        var dist=point_distance(arg_source.x,arg_source.y,cinst.x,cinst.y)
                        if toTarg=-1||dist<toTarg{
                            toTarg=dist
                            targ=cinst
                        }
                    }
                    instance_deactivate_object(cinst);
                    cinst=instance_place(x,y,oChar);
                    } 
                    instance_activate_all()               
                }
        }
        with inst instance_destroy()
        break
    case 3: 
        var inst=instance_create(arg_source.x+7,arg_source.y+7,oEff);
        inst.sprite_index=water_breath
        inst.visible=false
        for(var i=0;i<3;i++){
            inst.image_angle=i*90
            with inst{
                var cinst=instance_place(x,y,oChar);
                while cinst!=noone{
                    if (cinst!=arg_source)
                    if return_check_skill_target(arg_source,cinst,2){
                        var dist=point_distance(arg_source.x,arg_source.y,cinst.x,cinst.y)
                        if toTarg=-1||dist<toTarg{
                            toTarg=dist
                            targ=cinst
                        }
                    }
                    instance_deactivate_object(cinst);
                    cinst=instance_place(x,y,oChar);
                    } 
                    instance_activate_all()               
                }
        }
        with inst instance_destroy()
        break
    case 4: return 0
    case 5: return 0
    default:return 0
}
if toTarg>=0
    return targ
