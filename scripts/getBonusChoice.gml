#define getBonusChoice
var chosen;
chosen[0] = argument0;
chosen[1] = argument1;
chosen[2] = argument2;
chosen[3] = argument3;
chosen[4] = argument4;

var rand_list = ds_list_create()
var tax = ds_list_size(oControler.unitList)-1 + floor(oControler.level/10)

if oControler.playerGold[0]>=get_bonus_eff(1,2)
if tryAdding(1,chosen[0],chosen[1],chosen[2],chosen[3],chosen[4])
    ds_list_add(rand_list,1)
if oControler.playerGold[0]>=get_bonus_eff(2,2)
if tryAdding(2,chosen[0],chosen[1],chosen[2],chosen[3],chosen[4])
    ds_list_add(rand_list,2)

if ds_list_size(oControler.unitList)<9
{
if oControler.playerGold[0]>=get_bonus_eff(-1,2)
if !find_char_in_list(oFighter)
if tryAdding(-1,chosen[0],chosen[1],chosen[2],chosen[3],chosen[4])
    ds_list_add(rand_list,-1)
if oControler.playerGold[0]>=get_bonus_eff(-2,2)
if !find_char_in_list(oArcher)
if tryAdding(-2,chosen[0],chosen[1],chosen[2],chosen[3],chosen[4])
    ds_list_add(rand_list,-2)
if oControler.playerGold[0]>=get_bonus_eff(-3,2)
if !find_char_in_list(oMage)
if tryAdding(-3,chosen[0],chosen[1],chosen[2],chosen[3],chosen[4])
    ds_list_add(rand_list,-3)
if oControler.playerGold[0]>=get_bonus_eff(-4,2)
if !find_char_in_list(oHealer)
if tryAdding(-4,chosen[0],chosen[1],chosen[2],chosen[3],chosen[4])
    ds_list_add(rand_list,-4)
if oControler.playerGold[0]>=get_bonus_eff(-5,2)
if !find_char_in_list(oHero)
if tryAdding(-5,chosen[0],chosen[1],chosen[2],chosen[3],chosen[4])
    ds_list_add(rand_list,-5)
if oControler.playerGold[0]>=get_bonus_eff(-6,2)
if !find_char_in_list(oDefender)
if tryAdding(-6,chosen[0],chosen[1],chosen[2],chosen[3],chosen[4])
    ds_list_add(rand_list,-6)
if oControler.playerGold[0]>=get_bonus_eff(-7,2)
if !find_char_in_list(oIceMage)
if tryAdding(-7,chosen[0],chosen[1],chosen[2],chosen[3],chosen[4])
    ds_list_add(rand_list,-7)
if oControler.playerGold[0]>=get_bonus_eff(-8,2)
if !find_char_in_list(oThunderMage)
if tryAdding(-8,chosen[0],chosen[1],chosen[2],chosen[3],chosen[4])
    ds_list_add(rand_list,-8)
if oControler.playerGold[0]>=get_bonus_eff(-9,2)
if !find_char_in_list(oBarrier_Mage)
if tryAdding(-9,chosen[0],chosen[1],chosen[2],chosen[3],chosen[4])
    ds_list_add(rand_list,-9)
}


for (var i=0; i<ds_list_size(oControler.unitList); i++){
    var pos = (i*0.01)
    var inst = ds_list_find_value(oControler.unitList, i)
    if (inst!=noone && instance_exists(inst)){
    //HP Plus
    if oControler.playerGold[0]>=get_bonus_eff(3+pos,2)
    if (inst.mhp - inst.defHp + 1
    <= min(oControler.level/2,2 + (inst.defRange==1)))
        if tryAdding(3+pos,chosen[0],chosen[1],chosen[2],chosen[3],chosen[4])
            ds_list_add(rand_list,3+pos)
        
    //Atk Plus
    if oControler.playerGold[0]>=get_bonus_eff(4+pos,2)
    if (abs(inst.pow) - abs(inst.defPow) +1
    <= min(oControler.level/5,2 + (inst.defRange==1)))
    if tryAdding(4+pos,chosen[0],chosen[1],chosen[2],chosen[3],chosen[4])
        ds_list_add(rand_list,4+pos)
        
    //Move plus
    if oControler.playerGold[0]>=get_bonus_eff(5+pos,2)
    if (inst.mov - inst.defMov +1
    <= min(oControler.level/3,2))
    if tryAdding(5+pos,chosen[0],chosen[1],chosen[2],chosen[3],chosen[4])
        ds_list_add(rand_list,5+pos)
        
    //Range Plus
    if oControler.playerGold[0]>=get_bonus_eff(6+pos,2)
    if (inst.defRange>1)
    if (inst.range - inst.defRange +1
    <= min(oControler.level/4,2))
    if tryAdding(6+pos,chosen[0],chosen[1],chosen[2],chosen[3],chosen[4])
        ds_list_add(rand_list,6+pos)
    }
}

if ds_list_size(rand_list)<=0
    ds_list_add(rand_list,0)
var rand = ds_list_find_value(rand_list,irandom(ds_list_size(rand_list)-1));
ds_list_destroy(rand_list)
return rand;

#define tryAdding
var arg_try = argument0
var chosen;
chosen[0] = argument1;
chosen[1] = argument2;
chosen[2] = argument3;
chosen[3] = argument4;
chosen[4] = argument5;

//counts # of char in bonus
var charCount = 0
for (var i =0;i<5;i++)
    if chosen[i] < 0
        charCount ++

if charCount > max(1,5 - ds_list_size(oControler.unitList))
if arg_try < 0
    return false

if chosen[0] != arg_try
if chosen[1] != arg_try
if chosen[2] != arg_try
if chosen[3] != arg_try
if chosen[4] != arg_try
    return true
return false