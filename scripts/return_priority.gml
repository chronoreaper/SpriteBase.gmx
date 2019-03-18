var arg_char=argument0
var arg_limit=argument1
var choice=0;
var priority=0;
//checks for skills choice = 11-20
for(var i=0;i<10;i++){
    menuSel=i
    //if you can use the skill
    if (return_skill_eff(arg_char,noone)){
        var num=0
        switch (arg_char.skill[i]){
            case 1:if (arg_char.hp+arg_char.lv<arg_char.mhp) num=5 break//rest
            case 2:num=10 break//laser beam
            case 3:num=10 break//water breath
            case 5://redemption
            var inst=return_skill_has_target(5,arg_char)
                if inst!=noone{
                    if inst.mhp-inst.hp>=floor(arg_char.lv*2+5)
                        num=10
                    if inst.hp<=inst.mhp/2
                        num+=10
                }
                break;
            case 6:num=15 break//split
            case 9://heal
                var inst=return_skill_has_target(9,arg_char)
                if inst!=noone{
                    if inst.mhp-inst.hp>=floor(arg_char.stats[2,4])
                        num=15
                    if inst.hp<=inst.mhp/2
                        num+=10
                }
                break;
        }//end switch
        //change priorities
        if num!=0
        if (priority<num){
            if (arg_limit=-1)||(num<arg_limit){
                priority=num
                choice=i+11
            }
        } 
    }//end check skill
}
menuSel=0
priorityLimit=priority
return choice
