if (player_turn)
{

(ds_list_find_value(currplayer, con)).final_choice = choice;
(ds_list_find_value(currplayer, con)).final_enemy = enemy_choice;
if (con == ds_list_size(currplayer)-1)
{
    player_turn = false;
    con = 0;
    for (var i = 0; i < ds_list_size(currenemy); i++)
    {
        (ds_list_find_value(currenemy, i)).enemy_turn = true;
    }
}
else
{
    con++;
}
enemy_choice = 0;
with (action_choice)
{
    instance_destroy();
}
if (instance_exists(enemy_select))
{
    with (enemy_select)
    {
        instance_destroy();
    }
}

}
