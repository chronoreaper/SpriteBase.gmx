var arg_skill=argument0
var ex=argument1
var ey=argument2
var str_sep=6
var str=""
var htg=0
switch floor(arg_skill){
    case 1:
        str="heals very little hp. Cannot move same turn."
        break;
    case 2:
        str="shoots a laser beam#range "+string(abs(return_skill_range(arg_skill)))
        break;
    case 3:
        str="sprays water#range "+string(abs(return_skill_range(arg_skill)))
        break;
    case 4:
        str="bites and heals#range "+string(abs(return_skill_range(arg_skill)))
        break;
    case 5:
        str="heals all in a large area#range "+string(abs(return_skill_range(arg_skill)))
            +"#AOE 3"
        break;
    case 6:
        str="creates a copy of yourself#range "+string(abs(return_skill_range(arg_skill)))
        break;
    case 7:
        str="damages then dashs#range "+string(abs(return_skill_range(arg_skill)))
        break;
    case 8:
        str="burns target#<Mag>#[int]#range "+string(abs(return_skill_range(arg_skill)))
        break;
    case 9:
        str="heals an ally [res]#range "+string(abs(return_skill_range(arg_skill)))
        break;
    case 10:
        str="strong<Phy>attack using melee weapon#range "+string(abs(return_skill_range(arg_skill)))
        break;
    case 11:
        str="ranged<phy>attack using range weapon#range "+string(abs(return_skill_range(arg_skill)))
        break;
    case 12:
        str="swaps places with target ally range "+string(abs(return_skill_range(arg_skill)))
        break;
    case 13:
        str="shields an ally for 3 turns#[res]#range "+string(abs(return_skill_range(arg_skill)))
        break;
    case 14:
        str="equips a spirit bow#range "+string(abs(return_skill_range(arg_skill)))
        break;
    case 15:
        str="lowers target movement#<Mag>#[int]#range "+string(abs(return_skill_range(arg_skill)))
        break;
    case 16:
        str="lowers target [atk] and [int]#<Mag>#[int]#range "+string(abs(return_skill_range(arg_skill)))
        break;
    case 17:
        str="lowers target [def] and [res]#<Mag>#[int]#range "+string(abs(return_skill_range(arg_skill)))
        break;
    case 18:
        str="takes the skills#of those killed"
        break;
    case 19:str="lowers [res]#<Mag>#[int]#range "+string(abs(return_skill_range(arg_skill)))
        break;
    case 20:str="gains 1 hp per kill"
        break;
    case 21:str="increase all stats [int]#range "+string(abs(return_skill_range(arg_skill)))
        break;
    case -1:
        str="spawns vines#blocking exits"
        break;
    default:return""
}
//drawing
hgt=string_height_ext(str,str_sep,358-(ex)-2)
draw_set_colour(c_olive)
draw_rectangle(ex-2,ey-3-hgt,358,ey-4,false)
draw_set_colour(c_black)
draw_text_ext(ex,ey-2-hgt,str,str_sep,358-(ex)-2)
