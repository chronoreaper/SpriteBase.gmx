#define getBonusChoice
var chosen;
chosen[0] = argument0;
chosen[1] = argument1;
chosen[2] = argument2;
chosen[3] = argument3;
chosen[4] = argument4;

var rand_list = ds_list_create()
var tax = ds_list_size(oControler.unitList)-1

if oControler.playerGold[0]>=1{//cost 1 no tax
if tryAdding(1,chosen[0],chosen[1],chosen[2],chosen[3],chosen[4])
    ds_list_add(rand_list,1)
if tryAdding(2,chosen[0],chosen[1],chosen[2],chosen[3],chosen[4])
    ds_list_add(rand_list,2)
}

if oControler.playerGold[0]>=1+floor(tax/2){//cost 1
    //if ds_list_size(oControler.unitList)<4
    {
    if !find_char_in_list(oFighter)
    if tryAdding(-1,chosen[0],chosen[1],chosen[2],chosen[3],chosen[4])
        ds_list_add(rand_list,-1)
    if !find_char_in_list(oArcher)
    if tryAdding(-2,chosen[0],chosen[1],chosen[2],chosen[3],chosen[4])
        ds_list_add(rand_list,-2)
    if !find_char_in_list(oMage)
    if tryAdding(-3,chosen[0],chosen[1],chosen[2],chosen[3],chosen[4])
        ds_list_add(rand_list,-3)
    if !find_char_in_list(oHealer)
    if tryAdding(-4,chosen[0],chosen[1],chosen[2],chosen[3],chosen[4])
        ds_list_add(rand_list,-4)
    if !find_char_in_list(oDefender)
    if tryAdding(-6,chosen[0],chosen[1],chosen[2],chosen[3],chosen[4])
        ds_list_add(rand_list,-6)
    if !find_char_in_list(oIceMage)
    if tryAdding(-7,chosen[0],chosen[1],chosen[2],chosen[3],chosen[4])
        ds_list_add(rand_list,-7)
    if !find_char_in_list(oThunderMage)
    if tryAdding(-8,chosen[0],chosen[1],chosen[2],chosen[3],chosen[4])
        ds_list_add(rand_list,-8)
    if !find_char_in_list(oBarrier_Mage)
    if tryAdding(-9,chosen[0],chosen[1],chosen[2],chosen[3],chosen[4])
        ds_list_add(rand_list,-9)
    }
}

if oControler.playerGold[0]>=2+tax{//cost 2

}

if oControler.playerGold[0]>=3+floor(tax/2){//cost 3
    //if ds_list_size(oControler.unitList)<4
    {
    if !find_char_in_list(oHero)
    if tryAdding(-5,chosen[0],chosen[1],chosen[2],chosen[3],chosen[4])
        ds_list_add(rand_list,-5)
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

if chosen[0] != arg_try
if chosen[1] != arg_try
if chosen[2] != arg_try
if chosen[3] != arg_try
if chosen[4] != arg_try
    return true
return false