//instance_activate_all()
//show_debug_message("char"+string(instance_number(oChar)))
var fin=1
var ct=currentTurn
var list=ds_list_create()
for (var i=0;i<ds_list_size(unitList);i++){
    var char=ds_list_find_value(unitList,i)
        if instance_exists(char){
        instance_activate_object(char)
        if char.hp>0{
        if char.wait=0
            fin=0
        }
        ds_list_add(list,char)
        }
}
/*with (oChar)
{
    if team=ct
    if hp>0{
        if wait=0
            fin=0
        ds_list_add(list,id)
    }
}*/
if fin=1{
    turnTime=0
    currentNumber=0
    if currentTurn>=0{
    timePhase0=0
    timePhase1=0
    timePhase2=0
    timePhase3=0
    timePhase4=0
    timePhase5=0}
    //if currentTurn=0
    //show_debug_message(ds_list_size(list))
    for(i=0;i<ds_list_size(list);i++){
        var inst=ds_list_find_value(list,i);
        instance_activate_object(inst)
        inst.wait=0
        }
    if currentTurn=-1{
         ds_grid_set_grid_region(gridF1,gridF2,0,0,ds_grid_width(gridF2),ds_grid_height(gridF1),0,0)
        }
    currentTurn++
    if currentTurn>playerMax{//end of round
        turnsSurvive++
        currentTurn=playerMin
        //add time
        minu+=1;
        if minu>=6{
            minu=0;
            hour+=1
            if hour>=24
                hour=0
        }
        
    //spawn monsters
    var rx=irandom(room_width/15)//room_width/15);
    var ry=irandom(room_height/15)//room_height/15);
    if irandom(2)=0
    if !place_meeting(rx*15,ry*15,oUnit)
    if ds_grid_get(gridF1,rx,ry)<1
    if !tile_layer_find(10000,rx*15,ry*15)
        {
        var inst;
        if irandom(2){
        inst=instance_create(rx*15,ry*15,
        choose(oSlime,oBoar,oFrog,oTurt,oShroom,oCyclops));
        inst.team=-1
        }
        else{
            if irandom(1){
            inst=instance_create(rx*15,ry*15,
            choose(oFighter,oArcher,oMage,oHealer,oMerchant));
            inst.team=1
            inst.ai=2
            }
            else{
                inst=instance_create(rx*15,ry*15,
                choose(oChest));
                inst.team=0.1
            }
        }
        inst.view=0
        inst.draw=0
        //stats
        inst.xp+=irandom(turnsSurvive*2)+turnsSurvive
        inst.hpg+=random(turnsSurvive*0.1)
        inst.spg+=random(turnsSurvive*0.1)
        inst.strg+=random(turnsSurvive*0.1)
        inst.intg+=random(turnsSurvive*0.1)
        inst.tecg+=random(turnsSurvive*0.1)
        }
    }
    //clear old units
    ds_list_clear(unitList)
    var turn=currentTurn
    //show_debug_message("unit")
    //show_debug_message(ds_list_size(allUnits))
    //add units to list
    //with(oChar)
    for(var i=0;i<ds_list_size(allUnits);i++){
        var c=ds_list_find_value(allUnits,i);
        instance_activate_object(c)
        with c
        if round(team)=turn{
            var unit=id
            with (oControler){
                ds_list_add(unitList,unit)
                selected=unit
                update_fog()
                selected=noone
                }
            //start of every turn action
            sp+=1
            aggro=noone
            if sp>msp
                sp=msp
            if combat>0
                combat--
            wait=0
            for (var j=0;j<10;j++)
                if status[j]!=0
                    status[j]-=sign(status[j])
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
                view_xview=inst.xx-view_wview/2
                view_yview=inst.yy-view_hview/2
            }
        }
    }
    else{
         alarm[10]=1//currentTurn++;//next turn
    }
}
ds_list_destroy(list)
