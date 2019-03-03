var arg_source=argument0
var arg_targ=argument1
var arg_slot=menuSel
var arg_skill=arg_source.skill[arg_slot]
/* 1 = usable
 0 = cant use
*/
switch floor(arg_skill){
    case 1:
        if arg_source.sp>=4 {
        if arg_targ!=noone{
            arg_targ.hp+=arg_source.lv
            arg_source.sp-=4
            arg_source.xp+=3
            arg_source.spg+=0.1
            with arg_targ{
            if hp>mhp
                hp=mhp
            }
            var txt=instance_create(arg_targ.x+7,arg_targ.y-11,DmgWord);
            txt.text=arg_source.lv
            txt.colour=c_lime
            }
        return 1
        }
        return 0
    case 2:
        if arg_source.sp>=10 {
        if arg_targ!=noone{
            arg_source.dir=floor(point_direction(arg_source.x+7,arg_source.y+7,arg_targ.x+7,arg_targ.y+7)/90);
            if arg_source.dir>3
                arg_source.dir=0
            arg_source.sp-=10
            arg_source.spg+=0.1
            var inst=instance_create(arg_source.x+7,arg_source.y+7,oEff);
            inst.sprite_index=laser_beam
            inst.image_blend=c_aqua
            inst.image_angle=point_direction(arg_source.x+7,arg_source.y+7,arg_targ.x+7,arg_targ.y+7)
            inst.rotate=0
            with inst{
                var cinst=instance_place(x,y,oUnit);
                while cinst!=noone{
                    if (cinst!=arg_source){
                        var dmg=return_dmg(20,0,cinst.stats[2,2]);
                        calculate_damage(arg_source,cinst,dmg,return_skill_acc(arg_skill,0),0,1,1)
                    }
                    instance_deactivate_object(cinst);
                    cinst=instance_place(x,y,oUnit);
                    } 
                    instance_activate_all()               
                }
            }
        return 1
        }
        return 0
    case 3:
        if arg_source.sp>=8 {
        if arg_targ!=noone{
            arg_source.dir=floor(point_direction(arg_source.x+7,arg_source.y+7,arg_targ.x+7,arg_targ.y+7)/90);
            if arg_source.dir>3
                arg_source.dir=0
            arg_source.sp-=8
            arg_source.spg+=0.1
            var inst=instance_create(arg_source.x+7,arg_source.y+7,oEff);
            inst.sprite_index=water_breath
            inst.image_angle=point_direction(arg_source.x+7,arg_source.y+7,arg_targ.x+7,arg_targ.y+7)
            inst.rotate=0
            with inst{
                var cinst=instance_place(x,y,oUnit);
                while cinst!=noone{
                    if (cinst!=arg_source){
                        var dmg=return_dmg(15,0,cinst.stats[2,2]);
                        calculate_damage(arg_source,cinst,dmg,return_skill_acc(arg_skill,0),0,1,1)
                    }
                    instance_deactivate_object(cinst);
                    cinst=instance_place(x,y,oUnit);
                    } 
                    instance_activate_all()               
                }
            }
        return 1
        }
        return 0
    case 4:
        if arg_source.sp>=3 {
        if arg_targ!=noone{
            arg_source.sp-=3
            arg_source.ax=cos(degtorad(point_direction(arg_source.x+7,arg_source.y+7,arg_targ.x+7,arg_targ.y+7)))*5
            arg_source.ay=-sin(degtorad(point_direction(arg_source.x+7,arg_source.y+7,arg_targ.x+7,arg_targ.y+7)))*5
            arg_source.alarm[0]=6
            var base =return_dmg(arg_source.stats[2,0],0,arg_targ.stats[2,2]);
            var dmg =calculate_damage(arg_source,arg_targ,base,return_skill_acc(arg_skill,0),0,3,1)
                if dmg>0{
                //effect
                var eff=instance_create(arg_targ.x+7,arg_targ.y+7,oEff);
                eff.sprite_index=bite
                arg_source.hp+=floor(dmg/2)
                with arg_source{
                if hp>mhp
                    hp=mhp
                }
                var txt=instance_create(arg_source.x+7,arg_source.y-11,DmgWord);
                txt.text=floor(dmg/2)
                txt.colour=c_lime
                }
            }
        return 1
        }
        return 0
    default:return 0
}
