var fin=1
var ct=currentTurn
var list=ds_list_create()
for (var i=0;i<ds_list_size(unitList);i++){
    var char=ds_list_find_value(unitList,i)
        if char.hp>0{
        if char.wait=0
            fin=0
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
    for(i=0;i<ds_list_size(list);i++){
        var inst=ds_list_find_value(list,i);
        inst.wait=0
        }
    currentTurn++
    if currentTurn=0
        turnsSurvive++
    if currentTurn>0{//end of round
        currentTurn=-1
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
        {
        var inst=instance_create(rx*15,ry*15,
        choose(oSlime,oBoar,oFrog,oTurt));
        inst.team=-1
        inst.view=0
        inst.draw=0
        //stats
        inst.xp+=turnsSurvive
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
    //add units to list
    with(oChar){
        if round(team)=turn{
            var unit=id
            with (oControler)
                ds_list_add(unitList,unit)
            //start of every turn action
            sp+=1
            if sp>msp
                sp=msp
        }
    }
    if ds_list_size(unitList)>0{
        if currentTurn>=0
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
         currentTurn++;//next turn
    }
}
ds_list_destroy(list)
