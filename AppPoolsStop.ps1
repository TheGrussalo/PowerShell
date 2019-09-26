$appPools = dir IIS:\AppPools 
ForEach ($appPool in $appPools)
{

    if ($appPool.state -eq "Started")
    {
        Stop-WebAppPool $appPool.Name
    }
} 


