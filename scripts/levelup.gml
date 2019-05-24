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
var unt=id;
with oControler
    if ds_map_find_value(aiTurns, unt.team)>=0
    {
    message_create(unt.name+" Leveled up!")
    message_create("LV:"+string(unt.lv-1)+"->"+string(unt.lv))
    message_create("HP:"+string(floor(unt.mhp))+"->"+string(floor(unt.mhp+stp[0]+unt.hpg/sum)))
    message_create("SP:"+string(floor(unt.msp))+"->"+string(floor(unt.msp+stp[1]+unt.spg/sum)))
    message_create("ATK:"+string(floor(unt.stats[2,0]))+"->"+string(floor(unt.stats[2,0]+stp[2]+unt.strg/sum)))
    message_create("INT:"+string(floor(unt.stats[2,1]))+"->"+string(floor(unt.stats[2,1]+stp[3]+unt.intg/sum)))
    message_create("DEF:"+string(floor(unt.stats[2,2]))+"->"+string(floor(unt.stats[2,2]+stp[4]+unt.defg/sum)))
    message_create("TEC:"+string(floor(unt.stats[2,3]))+"->"+string(floor(unt.stats[2,3]+stp[5]+unt.tecg/sum)))
    message_create("RES:"+string(floor(unt.stats[2,4]))+"->"+string(floor(unt.stats[2,4]+stp[6]+unt.resg/sum)))
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
if lv<100{
var inst=instance_create(x,y,oEff);
inst.sprite_index=levelupsprite
inst.image_index=0
}
