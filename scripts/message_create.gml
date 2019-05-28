var arg_string=argument0
if logVisable<=0
    logVisable=4
logVisable=min(logVisable+1,12)

for (i=array_length_1d(log)-2;i>=0;i--)
    log[i+1]=log[i]
log[0]=arg_string
