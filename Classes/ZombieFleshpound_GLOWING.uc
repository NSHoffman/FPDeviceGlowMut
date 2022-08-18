class ZombieFleshpound_GLOWING extends KFChar.ZombieFleshpound_STANDARD;

var FleshpoundDeviceLight TemperLight;

simulated function PostNetBeginPlay()
{
    TemperLight = Spawn(Class'FleshpoundDeviceLight', Self);

    if (TemperLight != None) 
    {
        AttachToBone(TemperLight, SpineBone1);
        TemperLight.SetRelativeLocation(vect(5, -35, 0));
    }

    Super.PostNetBeginPlay();
}

simulated function DeviceGoRed()
{
    Super.DeviceGoRed();
    TemperLight.ChangeToRed();
}

simulated function DeviceGoNormal()
{
    Super.DeviceGoNormal();
    TemperLight.ChangeToYellow();
}

simulated function Destroyed() 
{
    Super.Destroyed();

    if (TemperLight != None) 
    {
        TemperLight.Destroy();
    }
}

defaultproperties {}
