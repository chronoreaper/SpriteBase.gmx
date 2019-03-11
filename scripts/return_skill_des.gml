var arg_skill=argument0
var ex=argument1
var ey=argument2
var str_sep=6
var str=""
var htg=0
switch floor(arg_skill){
    case 1:
        str="heals very little#hp"
        break;
    case 2:
        str="shoots a laser beam#raNge 0-5"
        break;
    case 3:
        str="sprays water#raNge 0-2"
        break;
    case 4:
        str="bites and heals#raNge 1"
        break;
    case 5:
        str="heals all in#a large area#raNge 1#AOE 3"
        break;
    case 6:
        str="creates a copy#of yourself#raNge 1"
        break;
    case 7:
        str="damages then#dash#raNge 1-4"
        break;
    default:return""
}
//drawing
hgt=string_height(str)*8/6
draw_set_colour(c_olive)
draw_rectangle(ex-2,ey-3-hgt,358,ey-4,false)
draw_set_colour(c_black)
draw_text_ext(ex,ey-2-hgt,str,str_sep,358-(ex)-2)
