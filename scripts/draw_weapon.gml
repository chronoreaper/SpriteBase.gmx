///draw weapons
var dir2=abs(dir+round(view_angle/90))
if dir2>=4
    dir2-=4

var wepSprite=blank    
switch floor(item[wep]){
    case 2:wepSprite=dagger break;
    case 4:wepSprite=screwdriver break;
    case 6:wepSprite=rock break;
    case 7:wepSprite=bow break;
    case 8:wepSprite=sword break;
    case 9:wepSprite=club break;
    case 10:wepSprite=stick break;
    case 11:wepSprite=spiritBow break;
    case 12:wepSprite=iron_sword break;
    case 13:wepSprite=kranbit break;
    case 14:wepSprite=great_sword break;
    case 15:wepSprite=great_bow break;
    case 16:wepSprite=cross_bow break;
    case 17:wepSprite=spear break;
    case 18:wepSprite=shurikin break;
    case 19:wepSprite=battle_axe break;
    case 20:wepSprite=gael_bolg break;
    case 21:wepSprite=axe break;
    case 50:wepSprite=xcalabur break;
}
draw_sprite_ext(wepSprite,0,ax+x+7+2*dsin(dir*90)-3*dsin(-view_angle)
        ,ay+y+7+2*dcos(dir*90)-3*dcos(view_angle)
        ,1,1,dir*90-view_angle+round(view_angle/90)*90,-1,1)


