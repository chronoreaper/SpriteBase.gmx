while xp>=mxp{
lv+=1
xp-=mxp
mxp+=1//+lv*2
var sum = (hpg+spg+strg+intg+defg+tecg+lucg+1);
if team>=0{
show_debug_message(object_get_name(object_index)+" Leveled up!")
show_debug_message("level:"+string(lv-1)+"->"+string(lv))
show_debug_message("HP:"+string(mhp)+" + "+string(hpp)+" + "+string(hpg/sum))
show_debug_message("SP:"+string(msp)+" + "+string(spp)+" + "+string(spg/sum))
show_debug_message("ATK:"+string(stats[2,0])+" + "+string(stats[1,0])+" + "+string(strg/sum))
show_debug_message("INT:"+string(stats[2,1])+" + "+string(stats[1,1])+" + "+string(intg/sum))
show_debug_message("DEF:"+string(stats[2,2])+" + "+string(stats[1,2])+" + "+string(defg/sum))
show_debug_message("TEC:"+string(stats[2,3])+" + "+string(stats[1,3])+" + "+string(tecg/sum))
show_debug_message("LUC:"+string(stats[2,4])+" + "+string(stats[1,4])+" + "+string(lucg/sum))
}
hp+=hpp
mhp+=hpp
sp+=spp
msp+=spp
for (var i=0;i<5;i++)
    stats[2,i]+=stats[1,i]
mhp+=hpg/sum
hp+=hpg/sum
msp+=spg/sum
msp+=spg/sum
stats[2,0]+=strg/sum
stats[2,1]+=intg/sum
stats[2,2]+=defg/sum
stats[2,3]+=tecg/sum
stats[2,4]+=lucg/sum
hpg=0
spg=0
strg=0
intg=0
defg=0
tecg=0
lucg=0

}
var inst=instance_create(x,y,oEff);
inst.sprite_index=levelupsprite
inst.image_index=0

