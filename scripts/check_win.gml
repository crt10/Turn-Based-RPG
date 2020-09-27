if (!instance_exists(battleenemy))
{
    room_goto(world0);
    global.battlecomplete = true;
    global.battleflee = false;
    for (var i = 0; i < ds_list_size(Battle.currplayer); i++)
    {
        (ds_list_find_value(Battle.currplayer, i)).attack = false;
    }
}
