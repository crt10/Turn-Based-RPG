var temp = ds_list_create();
ds_list_copy(temp, argument0);
var order = ds_list_create();
for (var i = 0; i < ds_list_size(temp); i++)
{
    var maxspd = ds_list_find_value(temp, i);
    var index = i;
    for (var o = i; o < ds_list_size(temp); o++)
    {
        if ((ds_list_find_value(temp, o)).spd > maxspd.spd)
        {
            maxspd = ds_list_find_value(temp, o);
            index = o;
        }
    }
    ds_list_replace(temp, index, ds_list_find_value(temp, i));
    ds_list_replace(temp, i, maxspd);
    if (ds_list_find_index(order, ds_list_find_index(argument0, maxspd)) != -1)
    {
        var arrtemp = ds_list_create();
        for (var j = 0; j <= ds_list_find_index(argument0, maxspd); j++)
        {
            ds_list_delete(arrtemp, 0);
        }
        ds_list_add(order, ds_list_find_index(arrtemp, maxspd));
    }
    else
    {
        ds_list_add(order, ds_list_find_index(argument0, maxspd));
    }
}
return order;
