var ran = random_range(1,101);
if (ran <= argument[0])
{
    return 1;
}
else if (ran <= (argument[0] + argument[1]))
{
    return 2;
}
else if (ran <= (argument[0] + argument[1] + argument[2]))
{
    return 3;
}
else if (ran <= (argument[0] + argument[1] + argument[2] + argument[3]))
{
    return 4;
}
else
{
    return 2;
}
