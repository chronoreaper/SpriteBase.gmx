//need to shorten

var arg_path=argument0
var index=0
//if path_get_number(arg_path)>1
if path_get_length(arg_path)>2
//if path_get_number(arg_path)>2
    {
    for (var i=0;i<path_get_number(arg_path);i++)
        {
        index=0
        if i=0{
            if path_get_point_x(arg_path,i)>path_get_point_x(arg_path,i+1)
                index=12
            else if path_get_point_x(arg_path,i)<path_get_point_x(arg_path,i+1)
                index=10
            else if path_get_point_y(arg_path,i)<path_get_point_y(arg_path,i+1)
                index=13
            else if path_get_point_y(arg_path,i)>path_get_point_y(arg_path,i+1)
                index=11
        }
        else if i!=path_get_number(arg_path)-1
            {
                if path_get_point_y(arg_path,i-1)=path_get_point_y(arg_path,i+1)
                    index=1
                if path_get_point_x(arg_path,i-1)=path_get_point_x(arg_path,i)
                {
                    if path_get_point_y(arg_path,i-1)<path_get_point_y(arg_path,i+1)
                        {
                            if path_get_point_x(arg_path,i-1)<path_get_point_x(arg_path,i+1)
                                index=4
                            else if path_get_point_x(arg_path,i-1)>path_get_point_x(arg_path,i+1)
                                index=5
                        }
                    else if path_get_point_y(arg_path,i-1)>path_get_point_y(arg_path,i+1)
                        {
                            if path_get_point_x(arg_path,i-1)<path_get_point_x(arg_path,i+1)
                                index=2
                            else if path_get_point_x(arg_path,i-1)>path_get_point_x(arg_path,i+1)
                                index=3
                        }
                }
                //x
                else if path_get_point_y(arg_path,i-1)=path_get_point_y(arg_path,i)
                {
                    if path_get_point_x(arg_path,i-1)<path_get_point_x(arg_path,i+1)
                        {
                            if path_get_point_y(arg_path,i-1)<path_get_point_y(arg_path,i+1)
                                index=3
                            else if path_get_point_y(arg_path,i-1)>path_get_point_y(arg_path,i+1)
                                index=5
                        }
                    else if path_get_point_x(arg_path,i-1)>path_get_point_x(arg_path,i+1)
                        {
                            if path_get_point_y(arg_path,i-1)<path_get_point_y(arg_path,i+1)
                                index=2
                            else if path_get_point_y(arg_path,i-1)>path_get_point_y(arg_path,i+1)
                                index=4
                        }
                }
            }
            else
                {
                if path_get_point_x(arg_path,i-1)>path_get_point_x(arg_path,i)
                    index=8
                else if path_get_point_x(arg_path,i-1)<path_get_point_x(arg_path,i)
                    index=6
                else if path_get_point_y(arg_path,i-1)<path_get_point_y(arg_path,i)
                    index=7
                else if path_get_point_y(arg_path,i-1)>path_get_point_y(arg_path,i)
                    index=9
                }
            draw_sprite(controlerArrow,index,path_get_point_x(arg_path,i),path_get_point_y(arg_path,i))
        }
    }
