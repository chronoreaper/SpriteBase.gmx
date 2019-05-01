var arg_skill=argument0
var arg_source=argument1
var targ=noone
var toTarg=-1
//returns a target
//for ai
/*
options
0 - normal
1 - line only
2 - line with width 3
3 - same area as a range of 2
*/
switch floor(arg_skill){
    case 1: return noone//heal
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
                        if !collision_line(arg_source.x,arg_source.y,cinst.x,cinst.y,oBlock,false,true)
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
    case 5:
        var range=3
        for(var i=-range;i<=range;i++)
        for(var j=-range;j<=range;j++){
            var cinst=instance_place(arg_source.x+i*15,arg_source.y+j*15,oChar);
            if (abs(i)+abs(j))<=range
            if cinst!=noone
            if return_check_skill_target(arg_source,cinst,1)
            if toTarg<cinst.mhp-cinst.hp||toTarg=-1
            {
                toTarg=cinst.mhp-cinst.hp
                targ=cinst
            }
        }
        break;
    case 8:
        var range=2
        for(var i=-range;i<=range;i++)
        for(var j=-range;j<=range;j++){
            var cinst=instance_place(arg_source.x+i*15,arg_source.y+j*15,oChar);
            if (abs(i)+abs(j))<=range
            if cinst!=noone
            if return_check_skill_target(arg_source,cinst,2)
            if toTarg<cinst.mhp-cinst.hp||toTarg=-1
            {
                toTarg=cinst.mhp-cinst.hp
                targ=cinst
            }
        }
        break;
    case 9:
        var range=return_skill_range(arg_skill)
        for(var i=-range;i<=range;i++)
        for(var j=-range;j<=range;j++){
            var cinst=instance_place(arg_source.x+i*15,arg_source.y+j*15,oChar);
            if (abs(i)+abs(j))<=range
            if cinst!=noone
            if return_check_skill_target(arg_source,cinst,1)
            if toTarg<cinst.mhp-cinst.hp
            {
                toTarg=cinst.mhp-cinst.hp
                targ=cinst
            }
        }
        break;
    case 12:
        var range=return_skill_range(arg_skill)
        for(var i=-range;i<=range;i++)
        for(var j=-range;j<=range;j++){
            var cinst=instance_place(arg_source.x+i*15,arg_source.y+j*15,oChar);
            if (abs(i)+abs(j))<=range
            if i!=0||j!=0
            if cinst!=noone
            if return_check_skill_target(arg_source,cinst,1){
                toTarg=get_random()+1
                targ=cinst
                }
        }
        break;
    case -1:
        {
            toTarg=1
            targ=arg_source
        }break;
    case -2:
        {
            toTarg=1
            targ=arg_source
        }break;
    //default:return noone
    
    default:
        var range=return_skill_range(arg_skill)
        for(var i=-range;i<=range;i++)
        for(var j=-range;j<=range;j++){
            var cinst=instance_place(arg_source.x+i*15,arg_source.y+j*15,oChar);
            if (abs(i)+abs(j))<=range
            if cinst!=noone
            if return_check_skill_target(arg_source,cinst,return_skill_targ_type(arg_skill))
            if toTarg<cinst.mhp-cinst.hp||toTarg=-1
            {
                toTarg=cinst.mhp-cinst.hp
                targ=cinst
            }
        }
        break;
}
if toTarg>=0
    return targ
