var arg_item=argument0
var ex=argument1
var ey=argument2
switch floor(arg_item){
    case 1:
        draw_set_colour(c_olive)
        draw_rectangle(ex-2,ey-17+7*1,365,ey-4,false)
        draw_set_colour(c_black)
        draw_text_ext(ex,ey-9-7*0,"heals very little hp",0,100)
        break;
    case 2:
        draw_set_colour(c_olive)
        draw_rectangle(ex-2,ey-17+7*0,365,ey-4,false)
        draw_set_colour(c_black)
        draw_text_ext(ex,ey-9-7*1,"shoots a laser beam",0,100)
        draw_text_ext(ex,ey-9-7*0,"raNge 0-5",0,100)
        break;
    case 3:
        draw_set_colour(c_olive)
        draw_rectangle(ex-2,ey-17+7*0,365,ey-4,false)
        draw_set_colour(c_black)
        draw_text_ext(ex,ey-9-7*1,"sprays water",0,100)
        draw_text_ext(ex,ey-9-7*0,"raNge 0-2",0,100)
        break;
    case 4:
        draw_set_colour(c_olive)
        draw_rectangle(ex-2,ey-17+7*0,365,ey-4,false)
        draw_set_colour(c_black)
        draw_text_ext(ex,ey-9-7*1,"bites and heals",0,100)
        draw_text_ext(ex,ey-9-7*0,"raNge 1",0,100)
        break;
    case 5:
        draw_set_colour(c_olive)
        draw_rectangle(ex-2,ey-17+7*0,365,ey-4,false)
        draw_set_colour(c_black)
        draw_text_ext(ex,ey-9-7*1,"heals all in a large area",0,100)
        draw_text_ext(ex,ey-9-7*0,"raNge 1",0,100)
        break;
    case 6:
        draw_set_colour(c_olive)
        draw_rectangle(ex-2,ey-17+7*0,365,ey-4,false)
        draw_set_colour(c_black)
        draw_text_ext(ex,ey-9-7*1,"creates a copy of yourself",0,100)
        draw_text_ext(ex,ey-9-7*0,"raNge 1",0,100)
        break;
    case 7:
        draw_set_colour(c_olive)
        draw_rectangle(ex-2,ey-17+7*0,365,ey-4,false)
        draw_set_colour(c_black)
        draw_text_ext(ex,ey-9-7*1,"damages then dash",0,100)
        draw_text_ext(ex,ey-9-7*0,"raNge 1-4",0,100)
        break;
    default:return""
}
