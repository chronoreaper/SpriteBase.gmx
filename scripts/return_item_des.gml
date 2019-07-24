var arg_item=argument0
var ex=argument1
var ey=argument2
var str_sep=6
var str=""
var htg=0
switch floor(arg_item){
    case 1:
        str="restores 4 hp#wt: "+string(return_item_wt(arg_item))
        break;
    case 2://dagger
        str="Basic weapon#mt: 0#wt: "+string(return_item_wt(arg_item))+"#2 hits"
        break;
    case 3:
        str="restores 10 hp#wt: "+string(return_item_wt(arg_item))
        break;
    case 4:
        str="screws things#mt: 1#wt: "+string(return_item_wt(arg_item))
        break;
    case 5:
        str="restores 5 hp#wt: "+string(return_item_wt(arg_item))
        break;
    case 6:
        str="It's a rock#mt: 2#wt: "+string(return_item_wt(arg_item))
        break;
    case 7://bow
        draw_set_colour(c_olive)
        str="ranged weapon#[tec]#mt: 2#wt: "+string(return_item_wt(arg_item))
            +"#range 3"
        break;
    case 8://sword
        str="Basic weapon#[atk]#mt: 3#wt: "+string(return_item_wt(arg_item))
        break;
    case 9://club
        str="very big stick#[atk]#mt: 4#wt: "+string(return_item_wt(arg_item))
        break;
    case 10://stick
        str="a stick#[atk]#mt: 0#wt: "+string(return_item_wt(arg_item))
        break;
    case 11://spirit bow
        str="a bow made out of pure energy#mt: 0#[int][tec]#wt: "+string(return_item_wt(arg_item))
        break;
    case 12://iron sword
        str="a stronger sword#[atk]#mt: 5#wt: "+string(return_item_wt(arg_item))
        break;
    case 13://kranbit
        str="critical hit when target is below 50%#[tec]#mt: 1#wt: "+string(return_item_wt(arg_item))
        break;
    case 14://great sword
        str="deals more damage the less you move.#critical hit when standing still.#[atk]#mt: 8#wt: "+string(return_item_wt(arg_item))
        break;
    case 15://great bow
        str="deals more damage the further the target.#critical hit when standing still.#[tec]#mt: 7#wt: "+string(return_item_wt(arg_item))+"#range 5"
        break;
    case 16://cross bow
        str="hits twice#does not scale high with lv.#[tec]#mt: 7#wt: "+string(return_item_wt(arg_item))
        break;
    case 17://spear
        str="basic weapon#[atk]#mt: 3#wt: "+string(return_item_wt(arg_item))
        break;
    case 18://shurikin
        str="lowers target [def]per hit.#2 hits#[tec]#mt: 0#wt: "+string(return_item_wt(arg_item))
        break;
    case 19://battle axe
        str="a strong axe.#[atk]#mt: 5#wt: "+string(return_item_wt(arg_item))
        break;
    case 20://gael bolg
        str="legendary weapon.#halves targ [def].#[atk][tec]#mt: 7#wt: "+string(return_item_wt(arg_item))
        break;
    case 21://axe
        str="basic weapon#[atk]#mt: 4#wt: "+string(return_item_wt(arg_item))
        break;
    case 22://herb
        str="restores 7 hp#wt: "+string(return_item_wt(arg_item))
        break;
    case 50://excalabur
        str="Legendary Sword wielded by the hero#mt: ???#wt: ???#range 2"
        break;
    case 51://aegis
        str="Legendary Shield#reduce dmg by 50%#wt: ???"
        break;
    default:return""
}
//drawing
hgt=string_height_ext(str,str_sep,358-(ex)-2)
draw_set_colour(c_olive)
draw_rectangle(ex-2,ey-3-hgt,358+ex-273,ey-4,false)
draw_set_colour(c_black)
draw_text_ext(ex,ey-2-hgt,str,str_sep,358-(ex)-2)
