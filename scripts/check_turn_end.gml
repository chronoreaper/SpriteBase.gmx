//instance_activate_all()
//show_debug_message("char"+string(instance_number(oChar)))
actionFlag=false  
var fin=1
var ct=currentTurn
var list=ds_list_create()
for (var i=0;i<ds_list_size(unitList);i++){
    var char=ds_list_find_value(unitList,i)
        if instance_exists(char){
        instance_activate_object(char)
        char.x = round(char.x/15)*15
        char.y = round(char.y/15)*15 
        if char.hp>0{
        if char.wait=0
            fin=0
        }
        ds_list_add(list,char)
        }
}
if fin=1{
    turnTime=0
    currentNumber=0
    if ds_map_find_value(aiTurns, currentTurn)>=0{
    timePhase0=0
    timePhase1=0
    timePhase3=0
    timePhase4=0
    timePhase5=0
    timePhase8=0
    timePhase11=0}
    //if currentTurn=0
    //show_debug_message(ds_list_size(list))
    //ds_grid_set_grid_region(gridF1,gridF2,0,0,ds_grid_width(gridF2),ds_grid_height(gridF1),0,0)
    //set wait to 0
    for(i=0;i<ds_list_size(list);i++){//end of turn
        var inst=ds_list_find_value(list,i);
        instance_activate_object(inst)
        inst.wait=0
        inst.mov=inst.mmov
        selected=inst
        //snap to grid
        inst.x = round(inst.x/15)*15
        inst.y = round(inst.y/15)*15 
        
        update_fog()
        selected=noone
        for (var j=0;j<array_length_1d(inst.status);j++){
                if inst.status[j]!=0{
                    //status effects
                    switch floor(inst.status[j]){
                        default: break
                            
                    }
                    if inst.statusStr[j]==0
                    {
                        dispellStatus(inst,j)
                        inst.status[j]=0
                        inst.statusStr[j]=0
                    }
                }
            }
    }
    currentTurn++
    if currentTurn>playerMax//ds_map_find_value(aiTurns, currentTurn)>=0
    {
         ds_grid_set_grid_region(gridF1,gridF2,0,0,ds_grid_width(gridF2),ds_grid_height(gridF1),0,0)
    }
    if currentTurn>playerMax{//end of round
        turnsSurvive+=1
        currentTurn=playerMin
        //add time
        minu+=1
        if minu>=6{
            minu=0;
            hour+=1
            if hour>=24
                hour=0
        }
        
    //spawn monsters
    var rx=irandom(room_width/15)//room_width/15);
    var ry=irandom(room_height/15)//room_height/15);
    var count=0;
    while ((place_meeting(rx*15,ry*15,oUnit)
    ||ds_grid_get(map,rx,ry)<0)
    ||ds_grid_get(gridF1,rx,ry)>=1)
    &&count<1000{
        rx=1+irandom(room_width/15-2)
        ry=1+irandom(room_height/15-2)
        count++
    }
        //rx=irandom(room_width/15)//room_width/15);
        //ry=irandom(room_height/15)//room_height/15);
        if turnsSurvive > 9 + floor(level/2)
        if turnsSurvive%2 == 0
        if !place_meeting(rx*15,ry*15,oUnit)
        if ds_grid_get(gridF1,rx,ry)<=0.2
        if !tile_layer_find(10000,rx*15,ry*15)
        if ds_grid_get(map,rx,ry)>=0
            {
            var inst;
            inst=instance_create(rx*15,ry*15,
                get_monster_spawn(level,0));
            inst.team=2
            inst.draw=0
            }
      
    }
    //clear old units
    ds_list_clear(unitList)
    var turn=currentTurn
    //show_debug_message("unit")
    //show_debug_message(ds_list_size(allUnits))
    //add units to list
    //with(oChar)
    instance_activate_all()
    for(var i=0;i<ds_list_size(allUnits);i++){
        var c=ds_list_find_value(allUnits,i);
        instance_activate_object(c)
        with c
        if round(team)=turn{
            var unit=id
            //start of every turn action
            
            //snap to grid
            
            x = round(x/15)*15
            y = round(y/15)*15
            
           
            //check if near a passive object
            var inst=instance_create(x,y,oEff);
            inst.sprite_index=AOE_range1s
            inst.visible=false
            var near_camp=0
            with inst{
                if place_meeting(x,y,oCampfire)
                    near_camp=1
            }
            if near_camp{
                hp=min(mhp,hp+2)
                var txt=instance_create(x+7-23*dsin(-view_angle),y+7-23*dcos(-view_angle),DmgWord);
                txt.text=string(2)
                txt.colour=c_lime
            }
            //check for events
            inst = instance_place(x,y,oEvent)
            if inst!=noone{
                switch inst.object_index{
                    case oFire:
                        hp--
                        var txt=instance_create(x+7-23*dsin(-view_angle),y+7-23*dcos(-view_angle),DmgWord);
                        txt.text = "1"
                        break;
                }
            }
            
            
            aggro=noone
            wait=0
            for (var j=0;j<array_length_1d(status);j++){
                if status[j]!=0{
                    //status effects
                    switch floor(status[j]){
                        case 3:statusStr[j]--;
                        default: break;
                    }
                    if statusStr[j]==0
                    {
                        dispellStatus(id,j)
                        status[j]=0
                        statusStr[j]=0
                    }
                }
            }
            if hp>0
            with (oControler){
                ds_list_add(unitList,unit)
                selected=unit
                update_fog()
                selected=noone
                }
        }
    }
    ds_list_sort(unitList,true)
    if ds_list_size(unitList)>0{
        if ds_map_find_value(aiTurns, currentTurn)>=0
        {
            var inst=ds_list_find_value(unitList,0)
            if inst!=noone
            if instance_exists(inst){
                x=inst.xx
                y=inst.yy
                xx=x
                yy=y
                move_camera(inst.xx,inst.yy)
            }
        }
    }
    else{
         alarm[10]=1//currentTurn++;//next turn
    }
}
ds_list_destroy(list)
