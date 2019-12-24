///draw weapons
var dir2=abs(dir+round(view_angle/90))
if dir2>=4
    dir2-=4

var wepSprite=blank    
switch floor(unit){
    case fighter001_0:wepSprite=sword break;
    case archer001_0:wepSprite=bow break;
    case cyclops001_0:wepSprite=club break;

    case hero001_0:wepSprite=xcalabur break;
}
draw_sprite_ext(wepSprite,0,ax+x+7+2*dsin(dir*90)-3*dsin(-view_angle)
        ,ay+y+7+2*dcos(dir*90)-3*dcos(view_angle)
        ,1,1,dir*90-view_angle+round(view_angle/90)*90,-1,1)


