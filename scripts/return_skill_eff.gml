var arg_source=argument0
var arg_targ=argument1
var arg_slot=menuSel
var arg_skill=arg_source.skill[arg_slot]
/* 1 = usable
 0 = cant use
*/
switch floor(arg_skill){
    case 1:
        if arg_source.sp>=4 
        if arg_source.x=arg_source.xx
        if arg_source.y=arg_source.yy{
        if arg_targ!=noone{
            arg_targ.hp+=ceil(arg_source.lv/2)+2
            arg_source.sp-=4
            arg_source.xp+=1
            arg_source.spg+=0.1
            with arg_targ{
            if hp>mhp
                hp=mhp
            }
            var txt=instance_create(arg_targ.x+7,arg_targ.y-11,DmgWord);
            txt.text=ceil(arg_source.lv/2)+2
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
            inst.image_angle=arg_source.dir*90
            inst.rotate=0
            with inst{
                var cinst=instance_place(x,y,oUnit);
                while cinst!=noone{
                    if (cinst!=arg_source){
                        var dmg=return_dmg(10+arg_source.lv,0,cinst.stats[2,2]);
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
            inst.image_angle=arg_source.dir*90
            inst.rotate=0
            with inst{
                var cinst=instance_place(x,y,oUnit);
                while cinst!=noone{
                    if (cinst!=arg_source){
                        var dmg=return_dmg(10+arg_source.lv,0,cinst.stats[2,2]);
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
            arg_source.dir=floor(point_direction(arg_source.x+7,arg_source.y+7,arg_targ.x+7,arg_targ.y+7)/90);
            arg_source.ax=cos(degtorad(point_direction(arg_source.x+7,arg_source.y+7,arg_targ.x+7,arg_targ.y+7)))*5
            arg_source.ay=-sin(degtorad(point_direction(arg_source.x+7,arg_source.y+7,arg_targ.x+7,arg_targ.y+7)))*5
            arg_source.alarm[0]=6
            var base =return_dmg(arg_source.stats[2,0],0,arg_targ.stats[2,2]);
            var dmg =calculate_damage(arg_source,arg_targ,base,return_skill_acc(arg_skill,0),0,5,1)
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
    case 5:
        if arg_source.sp>=15 {
        if arg_targ!=noone{
            //arg_source.dir=floor(point_direction(arg_source.x+7,arg_source.y+7,arg_targ.x+7,arg_targ.y+7)/90);
            if arg_source.dir>3
                arg_source.dir=0
            arg_source.sp-=15
            arg_source.spg+=1
            var inst=instance_create(arg_source.x+7,arg_source.y+7,oEff);
            inst.sprite_index=angelic
            inst.image_speed=0.5
            inst=instance_create(arg_source.x,arg_source.y,oEff);
            inst.sprite_index=AOE_range2
            inst.visible=false
            //inst.image_angle=point_direction(arg_source.x+7,arg_source.y+7,arg_targ.x+7,arg_targ.y+7)
            inst.rotate=0
            with inst{
                var cinst=instance_place(x,y,oChar);
                while cinst!=noone{
                    if (cinst.team==arg_source.team){
                        var txt=instance_create(cinst.x+7,cinst.y-11,DmgWord);
                        txt.text=arg_source.lv*2+5
                        txt.colour=c_lime   
                        
                        cinst.hp+=arg_source.lv*2+5
                        with cinst{
                        if hp>mhp
                            hp=mhp
                        } 
                    }
                    instance_deactivate_object(cinst);
                    cinst=instance_place(x,y,oChar);
                    } 
                    instance_activate_all()               
                }
            }
        return 1
        }
        return 0
    case 6:
        if arg_source.sp>=4 
        &&arg_source.hp>1{
        if arg_targ!=noone{
                arg_source.sp-=4
                var total_sp=arg_source.sp
                var total_hp=arg_source.hp;
                arg_source.hp=ceil(total_hp/2)
                 arg_source.sp=ceil(total_sp/2)
                var temp=instance_create(arg_source.x,arg_source.y,arg_source.object_index);
                temp.hp=floor(total_hp/2)
                temp.sp=floor(total_sp/2)
                temp.mhp=arg_source.mhp
                temp.msp=arg_source.msp
                temp.lv=arg_source.lv
                temp.mov=arg_source.mov
                temp.xx=arg_targ.x
                temp.yy=arg_targ.y
                //so it cant move the same turn
                temp.wait=1
                //add it to the list of current units
                with oControler
                    ds_list_add(unitList,temp)
                for (var i=0;i<10;i++)
                {
                    temp.skill[i]=arg_source.skill[i]
                }
                for (var j=0;j<=4;j++)
                    temp.stats[2,j]=arg_source.stats[2,j]
                mp_grid_clear_all(grid)
                mp_grid_path(grid,temp.path,temp.x+7.5,temp.y+7.5,arg_targ.x+7.5,arg_targ.y+7.5,false)
                with temp{
                   path_start(path,3,path_action_stop,false)
                }
            }
        return 1
        }
        return 0
    case 7:
        if arg_source.sp>=5 {
        if arg_targ!=noone{
            arg_source.dir=floor(point_direction(arg_source.x+7,arg_source.y+7,arg_targ.x+7,arg_targ.y+7)/90);
            if arg_source.dir>3
                arg_source.dir=0
            arg_source.sp-=5
            arg_source.strg+=0.1
            var inst=instance_create(arg_source.x+7,arg_source.y+7,oEff);
            inst.sprite_index=dashSlash
            inst.image_blend=c_orange
            inst.image_angle=arg_source.dir*90
            inst.rotate=0
            arg_source.x=arg_targ.x
            arg_source.y=arg_targ.y
            with inst{
                var cinst=instance_place(x,y,oUnit);
                while cinst!=noone{
                    if (cinst!=arg_source){
                        //var dmg=return_dmg(20,0,cinst.stats[2,2]);
                        calculate_damage(arg_source,cinst,arg_source.stats[2,0]+7,return_skill_acc(arg_skill,0),0,3,1)
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
    case 8:
        if arg_source.sp>=3 {
        if arg_targ!=noone{
            arg_source.sp-=3
            arg_source.ax=cos(degtorad(point_direction(arg_source.x+7,arg_source.y+7,arg_targ.x+7,arg_targ.y+7)))*5
            arg_source.ay=-sin(degtorad(point_direction(arg_source.x+7,arg_source.y+7,arg_targ.x+7,arg_targ.y+7)))*5
            arg_source.alarm[0]=6
            arg_source.intg+=1
            arg_source.spg+=1
            var base =return_dmg(arg_source.stats[2,1]+2,0,arg_targ.stats[2,2]);
            var dmg =calculate_damage(arg_source,arg_targ,base,return_skill_acc(arg_skill,0),4,5,1)
            //effect
            var eff=instance_create(arg_targ.x+7,arg_targ.y+7,oEff);
            eff.sprite_index=sourcedir2
            eff.image_blend=c_red
            eff.rotate=false
            eff.image_angle=point_direction(arg_targ.x,arg_targ.y,arg_source.x,arg_source.y)
            eff=instance_create(arg_targ.x+7,arg_targ.y+7,oEff);
            eff.sprite_index=magicBurnEff    
            }
        return 1
        }
        return 0
    case 9:
        if arg_source.sp>=8 {
        if arg_targ!=noone{
            arg_targ.hp+=floor(arg_source.stats[2,4])
            arg_source.sp-=8
            arg_source.xp+=8
            arg_source.spg+=1
            arg_source.lucg+=1
            with arg_targ{
            if hp>mhp
                hp=mhp
            }
            var txt=instance_create(arg_targ.x+7,arg_targ.y-11,DmgWord);
            txt.text=floor(arg_source.stats[2,4])
            txt.colour=c_lime
            
            //effect
            var eff=instance_create(arg_targ.x+7,arg_targ.y+7,oEff);
            eff.sprite_index=sourcedir2
            eff.image_blend=c_lime
            eff.rotate=false
            eff.image_angle=point_direction(arg_targ.x,arg_targ.y,arg_source.x,arg_source.y)
            var k=0
            repeat(5){
            eff=instance_create(arg_targ.x+2+irandom(11),arg_targ.y+2+irandom(11),oEff);
            eff.sprite_index=healEff 
            eff.image_speed=0.5
            eff.image_index=5-k;
            k++
            }
            }
        return 1
        }
        return 0
    case 10:
        if frac(arg_source.item[arg_source.wep])>=0.03 
        if return_wep_range(arg_source.item[arg_source.wep])=1{
        if arg_targ!=noone{
            arg_source.dir=floor(point_direction(arg_source.x+7,arg_source.y+7,arg_targ.x+7,arg_targ.y+7)/90);
            arg_source.item[arg_source.wep]-=0.03
            return_wep_dur(arg_source,0)
            arg_source.xp+=5
            arg_source.strg+=1
            arg_source.ax=cos(degtorad(point_direction(arg_source.x+7,arg_source.y+7,arg_targ.x+7,arg_targ.y+7)))*5
            arg_source.ay=-sin(degtorad(point_direction(arg_source.x+7,arg_source.y+7,arg_targ.x+7,arg_targ.y+7)))*5
            arg_source.alarm[0]=6
            var eff=instance_create(arg_targ.x+7,arg_targ.y+7,oEff);
            eff.sprite_index=crossSlash
            var base =return_dmg(return_wep_dmg(arg_source.item[arg_source.wep],arg_source)*2,0,arg_targ.stats[2,2]);
            var dmg =calculate_damage(arg_source,arg_targ,base,return_skill_acc(arg_skill,0),0,5,1)
            }
        return 1
        }
        return 0
    case 11:
        if frac(arg_source.item[arg_source.wep])>=0.02 
        if return_wep_range(arg_source.item[arg_source.wep])>1{
        if arg_targ!=noone{
            arg_source.dir=floor(point_direction(arg_source.x+7,arg_source.y+7,arg_targ.x+7,arg_targ.y+7)/90);
            arg_source.item[arg_source.wep]-=0.02
            return_wep_dur(arg_source,0)
            arg_source.xp+=5
            arg_source.tecg+=1
            arg_source.ax=cos(degtorad(point_direction(arg_source.x+7,arg_source.y+7,arg_targ.x+7,arg_targ.y+7)))*5
            arg_source.ay=-sin(degtorad(point_direction(arg_source.x+7,arg_source.y+7,arg_targ.x+7,arg_targ.y+7)))*5
            arg_source.alarm[0]=6
            var eff=instance_create(arg_targ.x+7,arg_targ.y+7,oEff);
            eff.sprite_index=stab
            eff.image_blend=c_orange
            eff.image_angle=point_direction(arg_source.x,arg_source.y,arg_targ.x,arg_targ.y)
            eff=instance_create(arg_targ.x+7,arg_targ.y+7,oEff);
            eff.sprite_index=sourcedir2
            eff.image_blend=c_red
            eff.rotate=false
            eff.image_angle=point_direction(arg_targ.x,arg_targ.y,arg_source.x,arg_source.y)
            var base =return_dmg(return_wep_dmg(arg_source.item[arg_source.wep],arg_source)+2,0,arg_targ.stats[2,2]);
            var dmg =calculate_damage(arg_source,arg_targ,base,return_skill_acc(arg_skill,abs(arg_source.x-arg_targ.x)/15+abs(arg_source.y-arg_targ.y)/15),0,5,1)
            }
        return 1
        }
        return 0
    default:return 0
}
