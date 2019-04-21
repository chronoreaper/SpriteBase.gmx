var arg_skill=argument0
var arg_xx=round(argument1/15)*15
var arg_yy=round(argument2/15)*15
var arg_source=argument3
var drawTime=argument4
draw_set_alpha(1)
switch arg_skill{
    case 1:
        if drawTime=0{
            draw_set_colour(c_lime)
            draw_rectangle(xx,yy,xx+13,yy+13,false)
        }
        else{
            var inst=instance_place(xx,yy,oUnit)
            if inst!=noone
            if (inst.draw>0)
            if return_check_skill_target(arg_source,inst,return_skill_targ_type(arg_skill))
            {
                var c=arg_source
                var targ=inst
                draw_set_font(pixelFont)
                draw_sprite_ext(atkInfo,0,xx+7+10*dsin(view_angle),yy+7-10*dcos(view_angle),1,1,-view_angle,-1,1)
                draw_set_colour(c_black)
                draw_set_halign(fa_center)
                draw_text_transformed(xx+7-26*dsin(-view_angle),yy+7-26*dcos(view_angle),string(return_skill_acc(arg_skill,abs(c.x-inst.x)+abs(c.y-inst.y),arg_source,targ))+"%",1,1,-view_angle)
                draw_text_transformed(xx+7-20*dsin(-view_angle),yy+7-20*dcos(view_angle),ceil(arg_source.lv/2)+2,1,1,-view_angle)
                draw_set_font(pixelBlock)
                draw_set_colour(c_lime)
                draw_text_transformed(xx+7-37*dsin(-view_angle),yy+7-37*dcos(view_angle),"heal",1,1,-view_angle)
                draw_set_halign(fa_left)
            }
        }
    break;
    case 2:
        var xxx=arg_source.x;
        var yyy=arg_source.y
        var angle=point_direction(arg_source.x,arg_source.y,arg_xx,arg_yy)
        if frac(angle/90)==0
        //if arg_xx!=arg_source.x
        //if arg_yy!=arg_source.y
        for(var i=1;i<=5;i++){
            xxx=round((arg_source.x+i*15*dcos(angle))/15)*15
            yyy=round((arg_source.y-i*15*dsin(angle))/15)*15
            if drawTime=0{
            draw_set_colour(c_red)
            draw_rectangle(xxx,yyy,xxx+13,yyy+13,false)
            }
            else{
                var inst=instance_place(xxx,yyy,oUnit)
                if inst!=noone
                if (inst.draw>0)
                if return_check_skill_target(arg_source,inst,return_skill_targ_type(arg_skill))
                {
                    var c=arg_source
                    var targ=inst
                    draw_set_font(pixelFont)
                    draw_sprite_ext(atkInfo,0,xxx+7+10*dsin(view_angle),yyy+7-10*dcos(view_angle),1,1,-view_angle,-1,1)
                    draw_set_colour(c_black)
                    draw_set_halign(fa_center)
                    draw_text_transformed(xxx+7-26*dsin(-view_angle),yyy+7-26*dcos(view_angle),string(return_skill_acc(arg_skill,abs(c.x-inst.x)+abs(c.y-inst.y),arg_source,targ))+"%",1,1,-view_angle)
                    if inst.weakness[return_skill_type(arg_skill)]>1
                        draw_set_colour(c_orange)
                    else if inst.weakness[return_skill_type(arg_skill)]<1
                        draw_set_colour(c_ltgray)
                    draw_text_transformed(xxx+7-20*dsin(-view_angle),yyy+7-20*dcos(view_angle),ceil(return_dmg(10+arg_source.lv,0,inst.stats[2,2],return_skill_type(arg_skill),arg_source,inst)),1,1,-view_angle)
                    draw_set_font(pixelBlock)
                    draw_set_colour(c_red)
                    draw_text_transformed(xxx+7-37*dsin(-view_angle),yyy+7-37*dcos(view_angle),"target",1,1,-view_angle)
                    draw_set_halign(fa_left)
                }
            }
            
        }break;
    case 3:
        var xxx=arg_source.x;
        var yyy=arg_source.y
        var angle=point_direction(arg_source.x,arg_source.y,arg_xx,arg_yy)
        //if frac(angle/90)==0
        //if arg_xx!=arg_source.x
        //if arg_yy!=arg_source.y
        if frac(angle/90)==0
        for(var i=1;i<=2;i++)
        for(var j=-1;j<=1;j++){
            xxx=round((arg_source.x+i*15*dcos(angle)-j*15*dsin(angle))/15)*15
            yyy=round((arg_source.y-i*15*dsin(angle)+j*15*dcos(angle))/15)*15
            if drawTime=0{
            draw_set_colour(c_red)
            draw_rectangle(xxx,yyy,xxx+13,yyy+13,false)
            }
            else{
                var inst=instance_place(xxx,yyy,oUnit)
                if inst!=noone
                if (inst.draw>0)
                if return_check_skill_target(arg_source,inst,return_skill_targ_type(arg_skill))
                {
                    var c=arg_source
                    var targ=inst
                    draw_set_font(pixelFont)
                    draw_sprite_ext(atkInfo,0,xxx+7+10*dsin(view_angle),yyy+7-10*dcos(view_angle),1,1,-view_angle,-1,1)
                    draw_set_colour(c_black)
                    draw_set_halign(fa_center)
                    draw_text_transformed(xxx+7-26*dsin(-view_angle),yyy+7-26*dcos(view_angle),string(return_skill_acc(arg_skill,abs(c.x-inst.x)+abs(c.y-inst.y),arg_source,targ))+"%",1,1,-view_angle)
                    if inst.weakness[return_skill_type(arg_skill)]>1
                        draw_set_colour(c_orange)
                    else if inst.weakness[return_skill_type(arg_skill)]<1
                        draw_set_colour(c_ltgray)
                    draw_text_transformed(xxx+7-20*dsin(-view_angle),yyy+7-20*dcos(view_angle),ceil(return_dmg(10+arg_source.lv,0,inst.stats[2,2],return_skill_type(arg_skill),arg_source,inst)),1,1,-view_angle)
                    draw_set_font(pixelBlock)
                    draw_set_colour(c_red)
                    draw_text_transformed(xxx+7-37*dsin(-view_angle),yyy+7-37*dcos(view_angle),"target",1,1,-view_angle)
                    draw_set_halign(fa_left)
                }
            }
        }break;
    case 4:
        if drawTime=0{
        draw_set_colour(c_red)
        draw_rectangle(xx,yy,xx+13,yy+13,false)
        }
        else{
            var inst=instance_place(xx,yy,oUnit)
            if inst!=noone
            if (inst.draw>0)
            if return_check_skill_target(arg_source,inst,return_skill_targ_type(arg_skill))
            {
                var c=arg_source
                var targ=inst
                draw_set_font(pixelFont)
                draw_sprite_ext(atkInfo,0,xx+7+10*dsin(view_angle),yy+7-10*dcos(view_angle),1,1,-view_angle,-1,1)
                draw_set_colour(c_black)
                draw_set_halign(fa_center)
                draw_text_transformed(xx+7-26*dsin(-view_angle),yy+7-26*dcos(view_angle),string(return_skill_acc(arg_skill,abs(c.x-inst.x)+abs(c.y-inst.y),arg_source,targ))+"%",1,1,-view_angle)
                if inst.weakness[return_skill_type(arg_skill)]>1
                    draw_set_colour(c_orange)
                else if inst.weakness[return_skill_type(arg_skill)]<1
                    draw_set_colour(c_ltgray)
                draw_text_transformed(xx+7-20*dsin(-view_angle),yy+7-20*dcos(view_angle), ceil(return_dmg(return_wep_dmg(c.item[c.wep],c),c.stats[2,3],inst.stats[2,2],return_skill_type(arg_skill),c,inst)),1,1,-view_angle)
                draw_set_font(pixelBlock)
                draw_set_colour(c_red)
                draw_text_transformed(xx+7-37*dsin(-view_angle),yy+7-37*dcos(view_angle),"attack",1,1,-view_angle)
                draw_set_halign(fa_left)
            }
        }
    case 5:
        if drawTime=0{
        if abs(xx-arg_source.x)+abs(yy-arg_source.y)<=1
            draw_sprite_ext(AOE_range2,0,xx,yy,1,1,0,c_lime,1)
        }
        else{
            var inst=instance_place(xx,yy,oUnit)
            if inst!=noone
            if (inst.draw>0)
            if return_check_skill_target(arg_source,inst,return_skill_targ_type(arg_skill))
            {
                var c=arg_source
                var targ=inst
                draw_set_font(pixelFont)
                draw_sprite_ext(atkInfo,0,xx+7+10*dsin(view_angle),yy+7-10*dcos(view_angle),1,1,-view_angle,-1,1)
                draw_set_colour(c_black)
                draw_set_halign(fa_center)
                draw_text_transformed(xx+7-26*dsin(-view_angle),yy+7-26*dcos(view_angle),string(return_skill_acc(arg_skill,abs(c.x-inst.x)+abs(c.y-inst.y),arg_source,targ))+"%",1,1,-view_angle)
                if inst.weakness[return_skill_type(arg_skill)]>1
                    draw_set_colour(c_orange)
                else if inst.weakness[return_skill_type(arg_skill)]<1
                    draw_set_colour(c_ltgray)
                draw_text_transformed(xx+7-20*dsin(-view_angle),yy+7-20*dcos(view_angle),c.lv,1,1,-view_angle)
                draw_set_font(pixelBlock)
                draw_set_colour(c_lime)
                draw_text_transformed(xx+7-37*dsin(-view_angle),yy+7-37*dcos(view_angle),"heal",1,1,-view_angle)
                draw_set_halign(fa_left)
            }
        }
    break;
    case 7:
        var xxx=arg_source.x;
        var yyy=arg_source.y
        var angle=point_direction(arg_source.x,arg_source.y,arg_xx,arg_yy)
        if frac(angle/90)==0
        //if arg_xx!=arg_source.x
        //if arg_yy!=arg_source.y
        for(var i=1;i<=4;i++){
            xxx=round((arg_source.x+i*15*dcos(angle))/15)*15
            yyy=round((arg_source.y-i*15*dsin(angle))/15)*15
            if drawTime=0{
            draw_set_colour(c_red)
            draw_rectangle(xxx,yyy,xxx+13,yyy+13,false)
            }
                        
        }break;
    case 8:
        if drawTime=0{
        draw_set_colour(c_red)
        draw_rectangle(xx,yy,xx+13,yy+13,false)
        }
        else{
            var inst=instance_place(xx,yy,oUnit)
            if inst!=noone
            if (inst.draw>0)
            if return_check_skill_target(arg_source,inst,return_skill_targ_type(arg_skill))
            {
                var c=arg_source
                var targ=inst
                draw_set_font(pixelFont)
                draw_sprite_ext(atkInfo,0,xx+7+10*dsin(view_angle),yy+7-10*dcos(view_angle),1,1,-view_angle,-1,1)
                draw_set_colour(c_black)
                draw_set_halign(fa_center)
                draw_text_transformed(xx+7-26*dsin(-view_angle),yy+7-26*dcos(view_angle),string(return_skill_acc(arg_skill,abs(c.x-inst.x)+abs(c.y-inst.y),arg_source,targ))+"%",1,1,-view_angle)
                if inst.weakness[return_skill_type(arg_skill)]>1
                    draw_set_colour(c_orange)
                else if inst.weakness[return_skill_type(arg_skill)]<1
                    draw_set_colour(c_ltgray)
                draw_text_transformed(xx+7-20*dsin(-view_angle),yy+7-20*dcos(view_angle), ceil(return_dmg(c.stats[2,1]+2,0,inst.stats[2,2],return_skill_type(arg_skill),c,inst)),1,1,-view_angle)
                draw_set_font(pixelBlock)
                draw_set_colour(c_red)
                draw_text_transformed(xx+7-37*dsin(-view_angle),yy+7-37*dcos(view_angle),"attack",1,1,-view_angle)
                draw_set_halign(fa_left)
            }
        }
    break;
    case 9:
        if drawTime=0{
        draw_set_colour(c_lime)
        draw_rectangle(xx,yy,xx+13,yy+13,false)
        }
        else
        {
            var inst=instance_place(xx,yy,oUnit)
            if inst!=noone
            if (inst.draw>0)
            if return_check_skill_target(arg_source,inst,return_skill_targ_type(arg_skill))
            {
                var c=arg_source
                var targ=inst
                draw_set_font(pixelFont)
                draw_sprite_ext(atkInfo,0,xx+7+10*dsin(view_angle),yy+7-10*dcos(view_angle),1,1,-view_angle,-1,1)
                draw_set_colour(c_black)
                draw_set_halign(fa_center)
                draw_text_transformed(xx+7-26*dsin(-view_angle),yy+7-26*dcos(view_angle),string(return_skill_acc(arg_skill,abs(c.x-inst.x)+abs(c.y-inst.y),arg_source,targ))+"%",1,1,-view_angle)
                if inst.weakness[return_skill_type(arg_skill)]>1
                    draw_set_colour(c_orange)
                else if inst.weakness[return_skill_type(arg_skill)]<1
                    draw_set_colour(c_ltgray)
                draw_text_transformed(xx+7-20*dsin(-view_angle),yy+7-20*dcos(view_angle),string(floor(c.stats[2,4]/2)+2),1,1,-view_angle)
                draw_set_font(pixelBlock)
                draw_set_colour(c_lime)
                draw_text_transformed(xx+7-37*dsin(-view_angle),yy+7-37*dcos(view_angle),"heal",1,1,-view_angle)
                draw_set_halign(fa_left)
            }
        }
    break;
    case 10:
        if drawTime=0{
        draw_set_colour(c_red)
        draw_rectangle(xx,yy,xx+13,yy+13,false)
        }
        else{
            var inst=instance_place(xx,yy,oUnit)
            if inst!=noone
            if (inst.draw>0)
            if return_check_skill_target(arg_source,inst,return_skill_targ_type(arg_skill))
            {
                var c=arg_source
                var targ=inst
                draw_set_font(pixelFont)
                draw_sprite_ext(atkInfo,0,xx+7+10*dsin(view_angle),yy+7-10*dcos(view_angle),1,1,-view_angle,-1,1)
                draw_set_colour(c_black)
                draw_set_halign(fa_center)
                draw_text_transformed(xx+7-26*dsin(-view_angle),yy+7-26*dcos(view_angle),string(return_skill_acc(arg_skill,abs(c.x-inst.x)+abs(c.y-inst.y),arg_source,targ))+"%",1,1,-view_angle)
                if inst.weakness[return_skill_type(arg_skill)]>1
                    draw_set_colour(c_orange)
                else if inst.weakness[return_skill_type(arg_skill)]<1
                    draw_set_colour(c_ltgray)
                draw_text_transformed(xx+7-20*dsin(-view_angle),yy+7-20*dcos(view_angle), ceil(return_dmg(return_wep_dmg(c.item[c.wep],c)*2,arg_source.stats[2,3],inst.stats[2,2],return_skill_type(arg_skill),c,inst)),1,1,-view_angle)
                draw_set_font(pixelBlock)
                draw_set_colour(c_red)
                draw_text_transformed(xx+7-37*dsin(-view_angle),yy+7-37*dcos(view_angle),"attack",1,1,-view_angle)
                draw_set_halign(fa_left)
            }
        }
    break
    case 11:
        if drawTime=0{
        draw_set_colour(c_red)
        draw_rectangle(xx,yy,xx+13,yy+13,false)
        }
        else{
            var inst=instance_place(xx,yy,oUnit)
            if inst!=noone
            if (inst.draw>0)
            if return_check_skill_target(arg_source,inst,return_skill_targ_type(arg_skill))
            {
                var c=arg_source
                var targ=inst
                draw_set_font(pixelFont)
                draw_sprite_ext(atkInfo,0,xx+7+10*dsin(view_angle),yy+7-10*dcos(view_angle),1,1,-view_angle,-1,1)
                draw_set_colour(c_black)
                draw_set_halign(fa_center)
                draw_text_transformed(xx+7-26*dsin(-view_angle),yy+7-26*dcos(view_angle),string(return_skill_acc(arg_skill,abs(c.x-inst.x)/15+abs(c.y-inst.y)/15,arg_source,targ))+"%",1,1,-view_angle)
                if inst.weakness[return_skill_type(arg_skill)]>1
                    draw_set_colour(c_orange)
                else if inst.weakness[return_skill_type(arg_skill)]<1
                    draw_set_colour(c_ltgray)
                draw_text_transformed(xx+7-20*dsin(-view_angle),yy+7-20*dcos(view_angle), ceil(return_dmg(return_wep_dmg(c.item[c.wep],c)+2,arg_source.stats[2,3],inst.stats[2,2],return_skill_type(arg_skill),c,inst)),1,1,-view_angle)
                draw_set_font(pixelBlock)
                draw_set_colour(c_red)
                draw_text_transformed(xx+7-37*dsin(-view_angle),yy+7-37*dcos(view_angle),"attack",1,1,-view_angle)
                draw_set_halign(fa_left)
            }
        }
    break
    case 12:
        if drawTime=0{
            draw_set_colour(c_blue)
            draw_rectangle(xx,yy,xx+13,yy+13,false)
        }
        else{
            var inst=instance_place(xx,yy,oUnit)
            if inst!=noone
            if (inst.draw>0)
            if return_check_skill_target(arg_source,inst,return_skill_targ_type(arg_skill))
            {
                var c=arg_source
                var targ=inst
                draw_set_font(pixelFont)
                draw_sprite_ext(atkInfo,0,xx+7+10*dsin(view_angle),yy+7-10*dcos(view_angle),1,1,-view_angle,-1,1)
                draw_set_colour(c_black)
                draw_set_halign(fa_center)
                draw_text_transformed(xx+7-26*dsin(-view_angle),yy+7-26*dcos(view_angle),"-",1,1,-view_angle)
                draw_text_transformed(xx+7-20*dsin(-view_angle),yy+7-20*dcos(view_angle),"-",1,1,-view_angle)
                draw_set_font(pixelBlock)
                draw_set_colour(c_blue)
                draw_text_transformed(xx+7-37*dsin(-view_angle),yy+7-37*dcos(view_angle),"swap",1,1,-view_angle)
                draw_set_halign(fa_left)
            }
        }
    break;
    case 13:
        if drawTime=0{
            draw_set_colour(c_lime)
            draw_rectangle(xx,yy,xx+13,yy+13,false)
        }
        else{
            var inst=instance_place(xx,yy,oUnit)
            if inst!=noone
            if (inst.draw>0)
            if return_check_skill_target(arg_source,inst,return_skill_targ_type(arg_skill))
            {
                var c=arg_source
                var targ=inst
                draw_set_font(pixelFont)
                draw_sprite_ext(atkInfo,0,xx+7+10*dsin(view_angle),yy+7-10*dcos(view_angle),1,1,-view_angle,-1,1)
                draw_set_colour(c_black)
                draw_set_halign(fa_center)
                draw_text_transformed(xx+7-26*dsin(-view_angle),yy+7-26*dcos(view_angle),string(return_skill_acc(arg_skill,abs(c.x-inst.x)+abs(c.y-inst.y),arg_source,targ))+"%",1,1,-view_angle)
                draw_text_transformed(xx+7-20*dsin(-view_angle),yy+7-20*dcos(view_angle),floor(arg_source.stats[2,4]),1,1,-view_angle)
                draw_set_font(pixelBlock)
                draw_set_colour(c_orange)
                draw_text_transformed(xx+7-37*dsin(-view_angle),yy+7-37*dcos(view_angle),"shield",1,1,-view_angle)
                draw_set_halign(fa_left)
            }
        }
    break
    case 14:
        if drawTime=0{
            draw_set_colour(c_lime)
            draw_rectangle(xx,yy,xx+13,yy+13,false)
        }
        else{
            var inst=instance_place(xx,yy,oUnit)
            if inst!=noone
            if (inst.draw>0)
            if return_check_skill_target(arg_source,inst,return_skill_targ_type(arg_skill))
            {
                var c=arg_source
                var targ=inst
                /*draw_set_font(pixelFont)
                draw_sprite_ext(atkInfo,0,xx+7+10*dsin(view_angle),yy+7-10*dcos(view_angle),1,1,-view_angle,-1,1)
                draw_set_colour(c_black)
                draw_text_transformed(xx+7-26*dsin(-view_angle),yy+7-26*dcos(view_angle),string(return_skill_acc(arg_skill,abs(c.x-inst.x)+abs(c.y-inst.y),arg_source,targ))+"%",1,1,-view_angle)
                draw_text_transformed(xx+7-20*dsin(-view_angle),yy+7-20*dcos(view_angle),floor(arg_source.stats[2,4]),1,1,-view_angle)
                */
                draw_set_halign(fa_center)
                draw_set_font(pixelBlock)
                draw_set_colour(c_orange)
                draw_text_transformed(xx+7-20*dsin(-view_angle),yy+7-20*dcos(view_angle),"equip",1,1,-view_angle)
                draw_set_halign(fa_left)
            }
        }
    break;
    case 15:
        if drawTime=0{
        draw_set_colour(c_red)
        draw_rectangle(xx,yy,xx+13,yy+13,false)
        }
        else{
            var inst=instance_place(xx,yy,oUnit)
            if inst!=noone
            if (inst.draw>0)
            if return_check_skill_target(arg_source,inst,return_skill_targ_type(arg_skill))
            {
                var c=arg_source
                var targ=inst
                draw_set_font(pixelFont)
                draw_sprite_ext(atkInfo,0,xx+7+10*dsin(view_angle),yy+7-10*dcos(view_angle),1,1,-view_angle,-1,1)
                draw_set_colour(c_black)
                draw_set_halign(fa_center)
                draw_text_transformed(xx+7-26*dsin(-view_angle),yy+7-26*dcos(view_angle),string(return_skill_acc(arg_skill,abs(c.x-inst.x)+abs(c.y-inst.y),arg_source,targ))+"%",1,1,-view_angle)
                if inst.weakness[return_skill_type(arg_skill)]>1
                    draw_set_colour(c_orange)
                else if inst.weakness[return_skill_type(arg_skill)]<1
                    draw_set_colour(c_ltgray)
                draw_text_transformed(xx+7-20*dsin(-view_angle),yy+7-20*dcos(view_angle), ceil(return_dmg(c.stats[2,1]+2,0,inst.stats[2,2],return_skill_type(arg_skill),c,inst)),1,1,-view_angle)
                draw_set_font(pixelBlock)
                draw_set_colour(c_red)
                draw_text_transformed(xx+7-37*dsin(-view_angle),yy+7-37*dcos(view_angle),"attack",1,1,-view_angle)
                draw_set_halign(fa_left)
            }
        }
    break;
    case 16:
        if drawTime=0{
        draw_set_colour(c_red)
        draw_rectangle(xx,yy,xx+13,yy+13,false)
        }
        else{
            var inst=instance_place(xx,yy,oUnit)
            if inst!=noone
            if (inst.draw>0)
            if return_check_skill_target(arg_source,inst,return_skill_targ_type(arg_skill))
            {
                var c=arg_source
                var targ=inst
                draw_set_font(pixelFont)
                draw_sprite_ext(atkInfo,0,xx+7+10*dsin(view_angle),yy+7-10*dcos(view_angle),1,1,-view_angle,-1,1)
                draw_set_colour(c_black)
                draw_set_halign(fa_center)
                draw_text_transformed(xx+7-26*dsin(-view_angle),yy+7-26*dcos(view_angle),string(return_skill_acc(arg_skill,abs(c.x-inst.x)+abs(c.y-inst.y),arg_source,targ))+"%",1,1,-view_angle)
                if inst.weakness[return_skill_type(arg_skill)]>1
                    draw_set_colour(c_orange)
                else if inst.weakness[return_skill_type(arg_skill)]<1
                    draw_set_colour(c_ltgray)
                draw_text_transformed(xx+7-20*dsin(-view_angle),yy+7-20*dcos(view_angle), ceil(return_dmg(c.stats[2,1]+2,0,inst.stats[2,2],return_skill_type(arg_skill),c,inst)),1,1,-view_angle)
                draw_set_font(pixelBlock)
                draw_set_colour(c_red)
                draw_text_transformed(xx+7-37*dsin(-view_angle),yy+7-37*dcos(view_angle),"attack",1,1,-view_angle)
                draw_set_halign(fa_left)
            }
        }
    break;
    case 17:
        if drawTime=0{
        draw_set_colour(c_red)
        draw_rectangle(xx,yy,xx+13,yy+13,false)
        }
        else{
            var inst=instance_place(xx,yy,oUnit)
            if inst!=noone
            if (inst.draw>0)
            if return_check_skill_target(arg_source,inst,return_skill_targ_type(arg_skill))
            {
                var c=arg_source
                var targ=inst
                draw_set_font(pixelFont)
                draw_sprite_ext(atkInfo,0,xx+7+10*dsin(view_angle),yy+7-10*dcos(view_angle),1,1,-view_angle,-1,1)
                draw_set_colour(c_black)
                draw_set_halign(fa_center)
                draw_text_transformed(xx+7-26*dsin(-view_angle),yy+7-26*dcos(view_angle),string(return_skill_acc(arg_skill,abs(c.x-inst.x)+abs(c.y-inst.y),arg_source,targ))+"%",1,1,-view_angle)
                if inst.weakness[return_skill_type(arg_skill)]>1
                    draw_set_colour(c_orange)
                else if inst.weakness[return_skill_type(arg_skill)]<1
                    draw_set_colour(c_ltgray)
                draw_text_transformed(xx+7-20*dsin(-view_angle),yy+7-20*dcos(view_angle), ceil(return_dmg(c.stats[2,1]+2,0,inst.stats[2,2],return_skill_type(arg_skill),c,inst)),1,1,-view_angle)
                draw_set_font(pixelBlock)
                draw_set_colour(c_red)
                draw_text_transformed(xx+7-37*dsin(-view_angle),yy+7-37*dcos(view_angle),"attack",1,1,-view_angle)
                draw_set_halign(fa_left)
            }
        }
    break;
}
