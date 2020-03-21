var arg_source = argument0
var arg_targ = argument1//can be temp targ
var arg_eff = argument2
/**
1 - fire
2 - push
3 - freeze
4 - shield
5 - shock
*/

switch arg_eff{
    case 1://fire
        var statPos = findStatus(arg_targ,4)
        if statPos > -1{
            dispellStatus(arg_targ,statPos)
            arg_targ.status[statPos]=0
            arg_targ.statusStr[statPos]=0
            instance_create(arg_targ.x,arg_targ.y,oTempTarg)
            //apply to adjacent units
            for(var i = -1;i<=1;i++)
            for(var j = -1;j<=1;j++)
            {
                if(abs(i)+abs(j) < 2)&&!((i=0&&abs(j)==2)||(j=0&&abs(i)=2))
                {
                    var inst = instance_place(arg_targ.x+i*15,arg_targ.y+j*15,oUnit)
                    if inst!=noone
                    if inst.team!=arg_source.team
                    if object_is_ancestor(inst.object_index,oChar)
                    if !place_meeting(arg_targ.x+i*15,arg_targ.y+j*15,oTempTarg)
                    {
                        calculate_damage(arg_source,inst,0)
                    }
                }
            }
            return 1//deal 1 more damage
        }
        else{
            addStatus(1,arg_targ,4,2)
        }
        break;
    case 2://push
        var c=-1
        var inst = noone;
        for (var i = 1 ;i <= arg_source.pow;i++){
            if c==-1{
                inst  = instance_place(round((arg_targ.x + 15*i*dcos(arg_source.dir*90))/15)*15,
                                        round((arg_targ.y - 15*i*dsin(arg_source.dir*90))/15)*15,
                                          oUnit)
                if inst!=noone&&inst!=arg_targ&&inst!=arg_source
                {//collision
                    c=i  
                }
            }
        }
        
        if inst!=noone&&inst!=arg_targ&&inst!=arg_source//collision
        {
            c-=1
            var posx = (arg_targ.x + (15*c + 4)*dcos(arg_source.dir*90))
            var posy = (arg_targ.y - (15*c + 4)*dsin(arg_source.dir*90))
            with arg_targ{
                move_towards_point( posx, posy, 5 );
                //mp_linear_path(path2,posx,posy,1,0)
                //path_start(path2,5,0,0)
            }
            arg_targ.xx = posx
            arg_targ.yy = posy
            calculate_damage(arg_source,arg_targ,arg_source.pow-c)
            if !object_is_ancestor(inst.object_index,oBlock)
                calculate_damage(arg_source,inst,arg_source.pow-c)
                
            if (!(arg_source.draw=0
            && ds_grid_get(gridF1,arg_targ.x/15,arg_targ.y/15)<0.2)
            ||debugging){
                audio_play_sound(sHitSlash,50,false)
            }
            
        }
        else{//no colision
            c = arg_source.pow
            var posx = round((arg_targ.x + 15*c*dcos(arg_source.dir*90))/15)*15
            var posy = round((arg_targ.y - 15*c*dsin(arg_source.dir*90))/15)*15
            with arg_targ{
                move_towards_point( posx, posy, 5 );
                //mp_linear_path(path2,posx,posy,1,0)
                //path_start(path2,5,0,0)
                }
            arg_targ.xx = posx
            arg_targ.yy = posy
            
            if (!(arg_source.draw=0
            && ds_grid_get(gridF1,arg_targ.x/15,arg_targ.y/15)<0.2)
            ||debugging){
                audio_play_sound(sMiss,50,false)
            }
            
        }
        arg_targ.alarm[2]=7//snap to grid alarm
    break;
    case 3://freeze
        var statPos = findStatus(arg_targ,6)
        if statPos > -1{
            dispellStatus(arg_targ,statPos)
            arg_targ.status[statPos]=0
            arg_targ.statusStr[statPos]=0
            arg_targ.mov=0
            addStatus(1,arg_targ,8,2)
            return 1
        }
        else{
            addStatus(1,arg_targ,6,2)
        }
        break;
    case 4://shield
        addStatus(1,arg_targ,3,abs(arg_source.pow))
        audio_play_sound(sHeal,50,false)
        break;
    case 5://shock
        var statPos = findStatus(arg_targ,5)
        if statPos > -1{
            dispellStatus(arg_targ,statPos)
            arg_targ.status[statPos]=0
            arg_targ.statusStr[statPos]=0
            arg_targ.range=0
            addStatus(1,arg_targ,7,2)
            return 1
        }
        else{
            addStatus(1,arg_targ,5,2)
        }
        break;
    default: break;
}
return 0
