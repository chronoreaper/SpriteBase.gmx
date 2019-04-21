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
            if arg_source.draw>0
                audio_play_sound(sHeal,50,false)
            }
        return 1
        }
        return 0
    case 2:
        if arg_source.sp>=10 {
        if arg_targ!=noone{
            arg_source.dir=round(point_direction(arg_source.x+7,arg_source.y+7,arg_targ.x+7,arg_targ.y+7)/90);
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
                        var dmg=return_dmg(10+arg_source.lv,0,cinst.stats[2,2],return_skill_type(arg_skill),arg_source,cinst);
                        calculate_damage(arg_source,cinst,dmg,return_skill_acc(arg_skill,0,arg_source,cinst),return_skill_type(arg_skill),1,1)
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
            arg_source.dir=round(point_direction(arg_source.x+7,arg_source.y+7,arg_targ.x+7,arg_targ.y+7)/90);
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
                        var dmg=return_dmg(10+arg_source.lv,0,cinst.stats[2,2],return_skill_type(arg_skill),arg_source,cinst);
                        calculate_damage(arg_source,cinst,dmg,return_skill_acc(arg_skill,0,arg_source,cinst),return_skill_type(arg_skill),1,1)
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
            arg_source.dir=round(point_direction(arg_source.x+7,arg_source.y+7,arg_targ.x+7,arg_targ.y+7)/90);
            arg_source.ax=cos(degtorad(point_direction(arg_source.x+7,arg_source.y+7,arg_targ.x+7,arg_targ.y+7)))*5
            arg_source.ay=-sin(degtorad(point_direction(arg_source.x+7,arg_source.y+7,arg_targ.x+7,arg_targ.y+7)))*5
            arg_source.alarm[0]=6
            var base =return_dmg(arg_source.stats[2,0],0,arg_targ.stats[2,2],return_skill_type(arg_skill),arg_source,cinst);
            var dmg =calculate_damage(arg_source,arg_targ,base,return_skill_acc(arg_skill,0,arg_source,arg_targ),return_skill_type(arg_skill),5,1)
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
                if arg_source.draw>0
                    audio_play_sound(sHitSlash,50,false)
                }else if arg_source.draw>0
                    audio_play_sound(sMiss,50,false)
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
                temp.team=arg_source.team
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
            arg_source.dir=round(point_direction(arg_source.x+7,arg_source.y+7,arg_targ.x+7,arg_targ.y+7)/90);
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
                        calculate_damage(arg_source,cinst,arg_source.stats[2,0]+7,return_skill_acc(arg_skill,0,arg_source,cinst),return_skill_type(arg_skill),3,1)
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
            arg_source.dir=round(point_direction(arg_source.x+7,arg_source.y+7,arg_targ.x+7,arg_targ.y+7)/90)
            arg_source.ax=cos(degtorad(point_direction(arg_source.x+7,arg_source.y+7,arg_targ.x+7,arg_targ.y+7)))*5
            arg_source.ay=-sin(degtorad(point_direction(arg_source.x+7,arg_source.y+7,arg_targ.x+7,arg_targ.y+7)))*5
            arg_source.alarm[0]=6
            arg_source.intg+=1
            arg_source.spg+=1
            var base =return_dmg(arg_source.stats[2,1]+2,0,arg_targ.stats[2,2],return_skill_type(arg_skill),arg_source,arg_targ);
            var dmg =calculate_damage(arg_source,arg_targ,base,return_skill_acc(arg_skill,0,arg_source,arg_targ),return_skill_type(arg_skill),5,1)
            //effect
            var eff=instance_create(arg_targ.x+7,arg_targ.y+7,oEff);
            eff.sprite_index=sourcedir2
            eff.image_blend=c_red
            eff.rotate=false
            eff.image_angle=point_direction(arg_targ.x,arg_targ.y,arg_source.x,arg_source.y)
            eff=instance_create(arg_targ.x+7,arg_targ.y+7,oEff);
            eff.sprite_index=magicBurnEff
            if arg_source.draw>0
            {
                if dmg>0
                    audio_play_sound(sFire,50,false)   
                else
                    audio_play_sound(sMiss,50,false)   
            } 
            }
        return 1
        }
        return 0
    case 9:
        if arg_source.sp>=8 {
        if arg_targ!=noone{
            //var base =-floor(arg_source.stats[2,4]);
            //calculate_damage(arg_source,arg_targ,base,return_skill_acc(arg_skill,0),return_skill_type(arg_skill),8,1)
            var value=floor(arg_source.stats[2,4]/2)+2;
            arg_targ.hp+=value
            arg_source.sp-=8
            arg_source.xp+=8
            arg_source.spg+=1
            arg_source.lucg+=1
            with arg_targ{
            if hp>mhp
                hp=mhp
            if draw>0
                audio_play_sound(sHeal,50,false)
            }
            var txt=instance_create(arg_targ.x+7,arg_targ.y-11,DmgWord);
            txt.text=value
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
            arg_source.dir=round(point_direction(arg_source.x+7,arg_source.y+7,arg_targ.x+7,arg_targ.y+7)/90);
            arg_source.item[arg_source.wep]-=0.03
            return_wep_dur(arg_source,0)
            arg_source.xp+=5
            arg_source.strg+=1
            arg_source.ax=cos(degtorad(point_direction(arg_source.x+7,arg_source.y+7,arg_targ.x+7,arg_targ.y+7)))*5
            arg_source.ay=-sin(degtorad(point_direction(arg_source.x+7,arg_source.y+7,arg_targ.x+7,arg_targ.y+7)))*5
            arg_source.alarm[0]=6
            var eff=instance_create(arg_targ.x+7,arg_targ.y+7,oEff);
            eff.sprite_index=crossSlash
            var base =return_dmg(return_wep_dmg(arg_source.item[arg_source.wep],arg_source,abs(arg_source.x-arg_targ.x)+abs(arg_source.y-arg_targ.y))*2
                                ,arg_source.stats[2,3],arg_targ.stats[2,2],return_skill_type(arg_skill),arg_source,arg_targ);
            var dmg =calculate_damage(arg_source,arg_targ,base,return_skill_acc(arg_skill,0,arg_source,arg_targ),return_skill_type(arg_skill),5,1)
            if arg_source.draw>0{
                if dmg>0
                    audio_play_sound(sHitSlash,50,false)
                else
                    audio_play_sound(sMiss,50,false)
            }
            }
        return 1
        }
        return 0
    case 11:
        if frac(arg_source.item[arg_source.wep])>=0.02 
        if return_wep_range(arg_source.item[arg_source.wep])>1{
        if arg_targ!=noone{
            arg_source.dir=round(point_direction(arg_source.x+7,arg_source.y+7,arg_targ.x+7,arg_targ.y+7)/90);
            arg_source.item[arg_source.wep]-=0.01
            return_wep_dur(arg_source,0)//this has an additional -0.01
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
            var base =return_dmg(return_wep_dmg(arg_source.item[arg_source.wep],arg_source,abs(arg_source.x-arg_targ.x)+abs(arg_source.y-arg_targ.y))+2
                                ,arg_source.stats[2,3],arg_targ.stats[2,2],return_skill_type(arg_skill),arg_source,arg_targ);
            var dmg =calculate_damage(arg_source,arg_targ,base,
                return_skill_acc(arg_skill,abs(arg_source.x-arg_targ.x)/15+abs(arg_source.y-arg_targ.y)/15,arg_source,arg_targ)
                ,return_skill_type(arg_skill),5,1)
            if arg_source.draw>0{
                if dmg>0
                    audio_play_sound(sHitSlash,50,false)
                else
                    audio_play_sound(sMiss,50,false)
            }
            }
        return 1
        }
        return 0
    case 12:
        if arg_source.sp>=2
        if arg_source!=arg_targ{
        if arg_targ!=noone{
                arg_source.sp-=2
                arg_source.xx=arg_targ.x
                arg_source.yy=arg_targ.y
                arg_targ.xx=arg_source.x
                arg_targ.yy=arg_source.y
                mp_grid_clear_all(grid)
                mp_grid_path(grid,arg_source.path,arg_source.x+7.5,arg_source.y+7.5,arg_targ.x+7.5,arg_targ.y+7.5,false)
                with arg_source{
                   path_start(path,3,path_action_stop,false)
                }
                mp_grid_path(grid,arg_targ.path,arg_targ.x+7.5,arg_targ.y+7.5,arg_source.x+7.5,arg_source.y+7.5,false)
                with arg_targ{
                   path_start(path,3,path_action_stop,false)
                }
            }
        return 1
        }
        return 0
    case 13://shield
        if arg_source.sp>=5 {
        if arg_targ!=noone{
            addStatus(arg_source,arg_targ,1,0.03,floor(arg_source.stats[2,4]))
            arg_source.sp-=5
            arg_source.xp+=4
            arg_source.spg+=1
            arg_source.lucg+=1

            var txt=instance_create(arg_targ.x+7,arg_targ.y-11,DmgWord);
            txt.text=value
            txt.colour=c_orange
            
            //effect
            var eff=instance_create(arg_targ.x+7,arg_targ.y+7,oEff);
            eff.sprite_index=sourcedir2
            eff.image_blend=c_orange
            eff.rotate=false
            eff.image_angle=point_direction(arg_targ.x,arg_targ.y,arg_source.x,arg_source.y)
            
            if arg_source.draw>0
                audio_play_sound(sUp,50,false)
            }
        return 1
        }
        return 0
    case 14:{
        if arg_source.sp>=5 
        if arg_source.item[10]=0{
        if arg_targ!=noone{
            arg_source.sp-=5
            arg_source.wep=10
            arg_source.item[10]=11+return_item_usage_default(11)
            }
        return 1
        }
        return 0
    }
    case 15:
        if arg_source.sp>=3 {
        if arg_targ!=noone{
            arg_source.sp-=3
            arg_source.dir=round(point_direction(arg_source.x+7,arg_source.y+7,arg_targ.x+7,arg_targ.y+7)/90)
            arg_source.ax=cos(degtorad(point_direction(arg_source.x+7,arg_source.y+7,arg_targ.x+7,arg_targ.y+7)))*5
            arg_source.ay=-sin(degtorad(point_direction(arg_source.x+7,arg_source.y+7,arg_targ.x+7,arg_targ.y+7)))*5
            arg_source.alarm[0]=6
            arg_source.intg+=1
            arg_source.spg+=1
            var base =return_dmg(arg_source.stats[2,1]+2,0,arg_targ.stats[2,2],return_skill_type(arg_skill),arg_source,arg_targ);
            var dmg =calculate_damage(arg_source,arg_targ,base,return_skill_acc(arg_skill,0,arg_source,arg_targ),return_skill_type(arg_skill),5,1)
            //effect
            var eff=instance_create(arg_targ.x+7,arg_targ.y+7,oEff);
            eff.sprite_index=sourcedir2
            eff.image_blend=c_red
            eff.rotate=false
            eff.image_angle=point_direction(arg_targ.x,arg_targ.y,arg_source.x,arg_source.y)
            eff=instance_create(arg_targ.x+7,arg_targ.y+7,oEff);
            eff.sprite_index=freezeEff
            if arg_source.draw>0
            {
                if dmg>0
                    audio_play_sound(sHitSlash,50,false)   
                else
                    audio_play_sound(sMiss,50,false)   
            } 
            }
        return 1
        }
        return 0
    case 16:
        if arg_source.sp>=3 {
        if arg_targ!=noone{
            arg_source.sp-=3
            arg_source.dir=round(point_direction(arg_source.x+7,arg_source.y+7,arg_targ.x+7,arg_targ.y+7)/90)
            arg_source.ax=cos(degtorad(point_direction(arg_source.x+7,arg_source.y+7,arg_targ.x+7,arg_targ.y+7)))*5
            arg_source.ay=-sin(degtorad(point_direction(arg_source.x+7,arg_source.y+7,arg_targ.x+7,arg_targ.y+7)))*5
            arg_source.alarm[0]=6
            arg_source.intg+=1
            arg_source.spg+=1
            var base =return_dmg(arg_source.stats[2,1]+2,0,arg_targ.stats[2,2],return_skill_type(arg_skill),arg_source,arg_targ);
            var dmg =calculate_damage(arg_source,arg_targ,base,return_skill_acc(arg_skill,0,arg_source,arg_targ),return_skill_type(arg_skill),5,1)
            //effect
            var eff=instance_create(arg_targ.x+7,arg_targ.y+7,oEff);
            eff.sprite_index=sourcedir2
            eff.image_blend=c_red
            eff.rotate=false
            eff.image_angle=point_direction(arg_targ.x,arg_targ.y,arg_source.x,arg_source.y)
            eff=instance_create(arg_targ.x+7,arg_targ.y+7,oEff);
            eff.sprite_index=shockEff
            if arg_source.draw>0
            {
                if dmg>0
                    audio_play_sound(sThunder,50,false)   
                else
                    audio_play_sound(sMiss,50,false)   
            } 
            }
        return 1
        }
        return 0  
    case 17:
        if arg_source.sp>=3 {
        if arg_targ!=noone{
            arg_source.sp-=3
            arg_source.dir=round(point_direction(arg_source.x+7,arg_source.y+7,arg_targ.x+7,arg_targ.y+7)/90)
            arg_source.ax=cos(degtorad(point_direction(arg_source.x+7,arg_source.y+7,arg_targ.x+7,arg_targ.y+7)))*5
            arg_source.ay=-sin(degtorad(point_direction(arg_source.x+7,arg_source.y+7,arg_targ.x+7,arg_targ.y+7)))*5
            arg_source.alarm[0]=6
            arg_source.intg+=1
            arg_source.spg+=1
            var base =return_dmg(arg_source.stats[2,1]+2,0,arg_targ.stats[2,2],return_skill_type(arg_skill),arg_source,arg_targ);
            var dmg =calculate_damage(arg_source,arg_targ,base,return_skill_acc(arg_skill,0,arg_source,arg_targ),return_skill_type(arg_skill),5,1)
            //effect
            var eff=instance_create(arg_targ.x+7,arg_targ.y+7,oEff);
            eff.sprite_index=sourcedir2
            eff.image_blend=c_red
            eff.rotate=false
            eff.image_angle=point_direction(arg_targ.x,arg_targ.y,arg_source.x,arg_source.y)
            eff=instance_create(arg_targ.x+7,arg_targ.y+7,oEff);
            eff.sprite_index=windEff
            if arg_source.draw>0
            {
                if dmg>0
                    audio_play_sound(sWindDmg,50,false)   
                else
                    audio_play_sound(sMiss,50,false)   
            } 
            }
        return 1
        }
        return 0     
    ///boss skills       
    case -1://spawn vine
        //if arg_source.ai=6 
        {
        if arg_targ!=noone{
                var m=arg_source.lv-1;
                var temp
                var k=0
                repeat(3){
                    var rx=irandom_range(-5,6)
                    var ry=irandom_range(-5,6)
                    var atarg=instance_place(arg_source.x+rx*15,arg_source.y+ry*15,oUnit)
                    if atarg!=noone{
                        if atarg.team!=arg_source.team{
                            var base=return_dmg(arg_source.stats[2,1],0,atarg.stats[2,2],return_skill_type(arg_skill),arg_source,atarg)
                            calculate_damage(arg_source,atarg,base,return_skill_acc(arg_skill,0,arg_source,atarg),return_skill_type(arg_skill),5,1)
                        }
                    }else{
                        if k=0&&irandom(1)
                            temp=instance_create(arg_source.x+rx*15,arg_source.y+ry*15,oPrant);
                        else
                            temp=instance_create(arg_source.x+rx*15,arg_source.y+ry*15,oVine);
                        temp.team=arg_source.team
                        //temp.lv=m+1
                        temp.link=arg_source
                        temp.ai=8
                        temp.summon=1
                        with temp{
                            repeat(m){
                                xp=mxp
                                levelup()
                                }
                        }
                        var inst=instance_create(temp.x,temp.y,oEff);
                        inst.sprite_index=spawn_eff
                    }
                k++
                }
                //add it to the list of current units
            }
        return 1
        }
        return 0 
    default:return 0
}
