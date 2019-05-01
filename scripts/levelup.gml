while xp>=mxp&&lv<100{
lv+=1
xp-=mxp
mxp+=1//+lv*2
var sum = hpg+spg+strg+intg+defg+tecg+resg;
if sum=0
    sum=1
var stp;
for (var i=0;i<7;i++)
    stp[i]=0
stp[0]=floor(random(hpp)*10)/10
stp[1]=floor(random(spp)*10)/10
for (var i=0;i<5;i++)
    stp[i+2]=floor(random(stats[1,i]*10))/10
var cTurn=-1
with oControler
    cTurn=ds_map_find_value(aiTurns, currentTurn)
if cTurn>=0{
show_debug_message(object_get_name(object_index)+" Leveled up!")
show_debug_message("level:"+string(lv-1)+"->"+string(lv))
show_debug_message("HP:"+string(mhp)+" + "+string(stp[0])+" + "+string(hpg/sum))
show_debug_message("SP:"+string(msp)+" + "+string(stp[1])+" + "+string(spg/sum))
show_debug_message("ATK:"+string(stats[2,0])+" + "+string(stp[2])+" + "+string(strg/sum))
show_debug_message("INT:"+string(stats[2,1])+" + "+string(stp[3])+" + "+string(intg/sum))
show_debug_message("DEF:"+string(stats[2,2])+" + "+string(stp[4])+" + "+string(defg/sum))
show_debug_message("TEC:"+string(stats[2,3])+" + "+string(stp[5])+" + "+string(tecg/sum))
show_debug_message("RES:"+string(stats[2,4])+" + "+string(stp[6])+" + "+string(resg/sum))
}
hp+=stp[0]
mhp+=stp[0]
sp+=stp[1]
msp+=stp[1]
for (var i=0;i<5;i++)
    stats[2,i]+=stp[i+2]
mhp+=hpg/sum
hp+=hpg/sum
msp+=spg/sum
msp+=spg/sum
stats[2,0]+=strg/sum
stats[2,1]+=intg/sum
stats[2,2]+=defg/sum
stats[2,3]+=tecg/sum
stats[2,4]+=resg/sum
hpg=0
spg=0
strg=0
intg=0
defg=0
tecg=0
resg=0
gain_skill_per_level(id)

}
var inst=instance_create(x,y,oEff);
inst.sprite_index=levelupsprite
inst.image_index=0

