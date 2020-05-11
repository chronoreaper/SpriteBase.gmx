//ran at the end of the turn
//instance_activate_all()
 //alarm[9]=3
 //alarm[4]=2
 with selected{
 wait=1

 xx=x
 yy=y
 //move_camera(x,y)
 
 //end of turn effects
 var heal = get_eff(id,id,skillEnd)
 if heal < 0{
     calculate_damage(id,id,heal)
 }
 
 }
 
 
 //events  
 var inst = instance_place(selected.x,selected.y,oKey)
 if inst!=noone
 if findStatus(selected,1)<0{
     with inst
         instance_destroy()
     addStatus(1,selected,1,1)
 }
 
 inst = instance_place(selected.x,selected.y,oCoin)
 if inst!=noone
 if findStatus(selected,2)<0{
     with inst
         instance_destroy()
         audio_play_sound(sCoin,50,false)
     addStatus(1,selected,2,1)
 }
 
 inst = instance_place(selected.x,selected.y,oHealthPack)
 if inst!=noone{
     with inst
         instance_destroy()
         audio_play_sound(sHeal,50,false)
     selected.hp=min(selected.hp+1,selected.mhp)
     var txt=instance_create(selected.x+7-23*dsin(-view_angle),selected.y+7-23*dcos(-view_angle),DmgWord);
     txt.text="1"
     txt.colour=c_lime
     selected.image_blend=c_lime
     selected.alarm[1]=4
 }
 
 //stairs
 if floor(selected.team)=0
 if place_meeting(selected.x,selected.y,oStairs){
     audio_play_sound(sStairs,50,false)
     global.cur_score+=level * difficulty
     level++;
     menu = NEXTFLOORMENU;
     instance_create(x,y,oNextFloor)
     x=0
     y=0
     xx=0
     yy=0
     for (var i=0;i<ds_list_size(unitList);i++){
         var char=ds_list_find_value(unitList,i)
         if instance_exists(char){
             instance_activate_object(char)
             if findStatus(char,2)>=0{
                 playerGold[0]+=1
                 global.cur_score += 5 * difficulty
             }
         }
     }
 }
 
 inst = instance_place(selected.x,selected.y,oTeleporter)
 var c = selected
 if inst!=noone{
     with (oTeleporter){
         if id != inst
         if !place_meeting(x,y,oUnit)
         if colourId = inst.colourId{
             audio_play_sound(sHeal,50,false)
             c.x = x
             c.y = y
             c.xx=c.x
             c.yy=c.y
             if c.draw>0
                 move_camera(c.xx,c.yy)
             var temp=instance_create(c.x+7,c.y+7,oEff);
             temp.sprite_index=spawn_eff
             oControler.x = c.x
             oControler.y = c.y
             oControler.xx = c.x
             oControler.yy =c.y
         }
     }
 }
