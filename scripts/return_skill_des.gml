var arg_skill=argument0
var ex=argument1
var ey=argument2
var str_sep=6
var str=""
var htg=0
switch floor(arg_skill){
    case 1:
        str="heals very little#hp. CaNNot move#same turN."
        break;
    case 2:
        str="shoots a laser beam#raNge "+string(abs(return_skill_range(arg_skill)))
        break;
    case 3:
        str="sprays water#raNge "+string(abs(return_skill_range(arg_skill)))
        break;
    case 4:
        str="bites and heals#raNge "+string(abs(return_skill_range(arg_skill)))
        break;
    case 5:
        str="heals all in#a large area#raNge "+string(abs(return_skill_range(arg_skill)))
            +"#AOE 3"
        break;
    case 6:
        str="creates a copy#of yourself#raNge "+string(abs(return_skill_range(arg_skill)))
        break;
    case 7:
        str="damages theN dashs#raNge "+string(abs(return_skill_range(arg_skill)))
        break;
    case 8:
        str="basic fire attack#[iNt]#raNge "+string(abs(return_skill_range(arg_skill)))
        break;
    case 9:
        str="heals aN ally [luc]#raNge "+string(abs(return_skill_range(arg_skill)))
        break;
    case 10:
        str="stroNg<slash>attack#usiNg melee weapoN#raNge "+string(abs(return_skill_range(arg_skill)))
        break;
    case 11:
        str="raNged<stab>attack#usiNg raNge weapoN#raNge "+string(abs(return_skill_range(arg_skill)))
        break;
    case 12:
        str="swaps places with#target ally#raNge "+string(abs(return_skill_range(arg_skill)))
        break;
    case 13:
        str="shields aN ally#for 3 turns#[res]#raNge "+string(abs(return_skill_range(arg_skill)))
        break;
    case 14:
        str="equips a spirit#bow#raNge "+string(abs(return_skill_range(arg_skill)))
        break;
    case 15:
        str="basic ice attack#[iNt]#raNge "+string(abs(return_skill_range(arg_skill)))
        break;
    case 16:
        str="basic thuNder#attack [iNt]#raNge "+string(abs(return_skill_range(arg_skill)))
        break;
    case 17:
        str="basic wiNd attack#[iNt]#raNge "+string(abs(return_skill_range(arg_skill)))
        break;
    case 18:
        str="takes the skills#of those killed"
        break;
    case -1:
        str="spawns vines#blocking exits"
        break;
    default:return""
}
//drawing
hgt=string_height(str)*8/6
draw_set_colour(c_olive)
draw_rectangle(ex-2,ey-3-hgt,358,ey-4,false)
draw_set_colour(c_black)
draw_text_ext(ex,ey-2-hgt,str,str_sep,358-(ex)-2)
