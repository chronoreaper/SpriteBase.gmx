var arg_source=argument0
var arg_targ=argument1
var arg_status=argument2
var arg_dur=argument3
var arg_str=argument4

var index=findStatus(arg_source,arg_status)

if index=-1{//not in the list yet
    for (var i=0;i<array_length_1d(arg_source.status);i++){
        if arg_source.status[i]=0{
            arg_targ.status[i]=arg_status+arg_dur
            arg_targ.statusStr[i]=arg_str
            index=i
        }
    }
    /*if index=-1//nospace
    {
        var i=array_length_1d(arg_source.status);
        arg_targ.status[i]=floor(arg_targ.status[i])+arg_dur
        arg_targ.statusStr[i]=arg_str
    }*/
}
else{
    if frac(arg_targ.status[index]<arg_dur)
        arg_targ.status[index]=floor(arg_targ.status[index])+arg_dur
    if arg_targ.statusStr[index]<arg_str
        arg_targ.statusStr[index]=arg_str
}
