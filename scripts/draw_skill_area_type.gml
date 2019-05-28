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
                var itext="heal "+string(ceil(return_skill_num(arg_source,targ)))
                draw_sprite_ext(infoSprite,0,xx+7,yy+7,1,1,-view_angle,-1,1)
                draw_set_font(pixelBlock)
                draw_set_colour(c_lime)
                draw_text_transformed(xx+7+15*dcos(45-view_angle),yy+7-15*dsin(45-view_angle),itext
                    ,1,1,-view_angle)        
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
                    var itext=""
                    if xxx==arg_xx&&yyy==arg_yy
                        itext="attack "+string(ceil(return_skill_num(arg_source,targ)))
                    else
                        itext=string(ceil(return_skill_num(arg_source,targ)))
                    draw_sprite_ext(infoSprite,0,xxx+7,yyy+7,1,1,-view_angle,-1,1)
                    draw_set_font(pixelBlock)
                    draw_set_colour(c_ltgray)
                    draw_text_transformed(xxx+7+15*dcos(45-view_angle),yyy+7-15*dsin(45-view_angle),itext
                        ,1,1,-view_angle)    
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
                    var itext=""
                    if xxx==arg_xx&&yyy==arg_yy
                        itext="attack "+string(ceil(return_skill_num(arg_source,targ)))
                    else
                        itext=string(ceil(return_skill_num(arg_source,targ)))
                    draw_sprite_ext(infoSprite,0,xxx+7,yyy+7,1,1,-view_angle,-1,1)
                    draw_set_font(pixelBlock)
                    draw_set_colour(c_ltgray)
                    draw_text_transformed(xxx+7+15*dcos(45-view_angle),yyy+7-15*dsin(45-view_angle),itext
                        ,1,1,-view_angle)   
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
                var itext="attack "+string(ceil(return_skill_num(arg_source,targ)))
                draw_sprite_ext(infoSprite,0,xx+7,yy+7,1,1,-view_angle,-1,1)
                draw_set_font(pixelBlock)
                draw_set_colour(c_ltgray)
                draw_text_transformed(xx+7+15*dcos(45-view_angle),yy+7-15*dsin(45-view_angle),itext
                    ,1,1,-view_angle) 
                      
                itext="heal "+string(floor(0.5*return_dmg(arg_source.stats[2,0],0,return_skill_type(arg_skill),arg_source,inst)))
                draw_sprite_ext(infoSprite,0,c.x+7,c.y+7,1,1,-view_angle,-1,1)
                draw_text_transformed(c.x+7+15*dcos(45-view_angle),c.y+7-15*dsin(45-view_angle),itext
                    ,1,1,-view_angle)   
            }
        }
    case 5:
        if drawTime=0{
        if abs(xx-arg_source.x)+abs(yy-arg_source.y)<=1
            draw_sprite_ext(AOE_range2,0,xx,yy,1,1,0,c_lime,1)
        }
        else{
            for (var xxx=-15*3+xx;xxx<=15*3+xx;xxx+=15)
            for (var yyy=-15*3+yy;yyy<=15*3+yy;yyy+=15)
            {
                var inst=instance_place(xxx,yyy,oUnit)
                if inst!=noone
                if (inst.draw>0)
                if return_check_skill_target(arg_source,inst,return_skill_targ_type(arg_skill))
                {
                    var c=arg_source
                    var targ=inst
                    draw_set_font(pixelBlock)
                    draw_set_colour(c_lime)
                    var itext=""
                    if xxx==arg_xx&&yyy==arg_yy
                        itext="heal "+string(ceil(return_skill_num(arg_source,targ)))
                    else
                        itext=string(ceil(return_skill_num(arg_source,targ)))
                    draw_sprite_ext(infoSprite,0,xxx+7,yyy+7,1,1,-view_angle,-1,1)
                    draw_text_transformed(xxx+7+15*dcos(45-view_angle),yyy+7-15*dsin(45-view_angle),itext
                        ,1,1,-view_angle)  
                }
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
                var itext="heal "+string(ceil(return_skill_num(arg_source,inst)))
                draw_sprite_ext(infoSprite,0,xx+7,yy+7,1,1,-view_angle,-1,1)
                draw_set_font(pixelBlock)
                draw_set_colour(c_lime)
                draw_text_transformed(xx+7+15*dcos(45-view_angle),yy+7-15*dsin(45-view_angle),itext
                    ,1,1,-view_angle)   
            }
        }
    break;
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
                var itext="swap"
                draw_sprite_ext(infoSprite,0,xx+7,yy+7,1,1,-view_angle,-1,1)
                draw_set_font(pixelBlock)
                draw_set_colour(c_ltgray)
                draw_text_transformed(xx+7+15*dcos(45-view_angle),yy+7-15*dsin(45-view_angle),itext
                    ,1,1,-view_angle)   
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
                var itext="shield "+string(ceil(return_skill_num(arg_source,inst)))
                draw_sprite_ext(infoSprite,0,xx+7,yy+7,1,1,-view_angle,-1,1)
                draw_set_font(pixelBlock)
                draw_set_colour(c_orange)
                draw_text_transformed(xx+7+15*dcos(45-view_angle),yy+7-15*dsin(45-view_angle),itext
                    ,1,1,-view_angle)  
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
                var itext="equip"
                draw_sprite_ext(infoSprite,0,xx+7,yy+7,1,1,-view_angle,-1,1)
                draw_set_font(pixelBlock)
                draw_set_colour(c_orange)
                draw_text_transformed(xx+7+15*dcos(45-view_angle),yy+7-15*dsin(45-view_angle),itext
                    ,1,1,-view_angle)   
            }
        }
    break;
    case 21:
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
                var itext="boost "+string(ceil(return_skill_num(arg_source,inst)))
                draw_sprite_ext(infoSprite,0,xx+7,yy+7,1,1,-view_angle,-1,1)
                draw_set_font(pixelBlock)
                draw_set_colour(c_orange)
                draw_text_transformed(xx+7+15*dcos(45-view_angle),yy+7-15*dsin(45-view_angle),itext
                    ,1,1,-view_angle)   
            }
        }
    break;
    default:
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
                var itext="attack "+string(ceil(return_skill_num(arg_source,inst)))
                draw_sprite_ext(infoSprite,0,xx+7,yy+7,1,1,-view_angle,-1,1)
                draw_set_font(pixelBlock)
                draw_set_colour(c_ltgray)
                draw_text_transformed(xx+7+15*dcos(45-view_angle),yy+7-15*dsin(45-view_angle),itext
                    ,1,1,-view_angle)   
            }
        }
    break;
}
