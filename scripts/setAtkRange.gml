var c = argument0
var range = c.range
var wepAOE = return_wep_aoe(c.unit)
var aGridW=ceil(ds_grid_width(atkArea)/2)

ds_grid_clear(atkArea,0)

//set wep range
switch wepAOE{
    case 0:
        for(var i=-range;i<=range;i++)
        for(var j=-range;j<=range;j++)
        {
            if(abs(i)+abs(j)<=range){
                ds_grid_set(atkArea,aGridW+i,aGridW+j,2)
            }
        }
        break;
    case 1:
        range = 3
        for(var i=-range;i<=range;i++)
        for(var j=-range;j<=range;j++)
        {
            if(abs(i)+abs(j)<=range)
            if !( (abs(i)=3&&j=0)
            || (abs(j)=3&&i=0) ){
                ds_grid_set(atkArea,aGridW+i,aGridW+j,2)
            }
        }
        break;
}
