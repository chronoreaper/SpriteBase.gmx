///draw weapons
var dir2=abs(dir-round(view_angle/90))
if dir2=4
    dir2=3

var wepSprite=blank    
switch floor(item[wep]){
    case 2:wepSprite=dagger break;
    case 4:wepSprite=screwdriver break;
    case 6:wepSprite=rock break;
    case 7:wepSprite=bow break;
    case 8:wepSprite=sword break;
    case 9:wepSprite=club break;
    case 50:wepSprite=xcalabur break;
}
draw_sprite_ext(wepSprite,0,ax+x+7+2*dsin(dir2*90-view_angle)-3*dsin(-view_angle)
        ,ay+y+7+2*dcos(dir2*90-view_angle)-3*dcos(-view_angle)
        ,1,1,dir*90-view_angle+round(view_angle/90)*90,-1,1)


