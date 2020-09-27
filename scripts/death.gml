for (var i = 0; i < ds_list_size(argument0); i++)
{
    with (ds_list_find_value(argument0, i))
    {
        if (hp <= 0)
        {
            Battle.died = true;
            instance_destroy();
        }
    }
    if (Battle.died = true)
    {
        for (var o = i; o < ds_list_size(argument0)-1; o++)
        {
            ds_list_replace(argument0, o, (ds_list_find_value(argument0, o+1)));
        }
        ds_list_delete(argument0, ds_list_size(argument0)-1);
        Battle.died = false;
    }
}
for (var i = 0; i < ds_list_size(Battle.currplayer); i++)
{
    if ((ds_list_find_value(Battle.currplayer, i)).final_enemy == ds_list_size(Battle.currenemy))
    {
        (ds_list_find_value(Battle.currplayer, i)).final_enemy--;
    }
}
for (var i = 0; i < ds_list_size(Battle.currenemy); i++)
{
    if ((ds_list_find_value(Battle.currenemy, i)).final_player == ds_list_size(Battle.currplayer))
    {
        (ds_list_find_value(Battle.currenemy, i)).final_player--;
    }
}
return argument0;
