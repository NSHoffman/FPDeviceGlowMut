class FPDeviceGlowMut extends Engine.Mutator;

var protected config const string ZombieFleshpoundDefaultClass;
var protected const string ZombieFleshpoundGlowingClass;

event PostBeginPlay() 
{
    local KFGameType KFGT;

    KFGT = KFGameType(Level.Game);

    if (KFGT == None) 
    {
        Destroy();
        return;
    }

    ReplaceFleshpoundInMonsterClasses(KFGT);
    ReplaceFleshpoundInSquads(KFGT);
}

protected function ReplaceFleshpoundInMonsterClasses(KFGameType KFGT)
{
    local int i, DefaultMonsterClassesLength;
    local string CurrentMonsterClass;

    DefaultMonsterClassesLength = KFGT.default.SpecialEventMonsterCollections[0].default.MonsterClasses.Length;
    for (i = 0; i < DefaultMonsterClassesLength; i++)
    {
        CurrentMonsterClass = KFGT.default.SpecialEventMonsterCollections[0].default.MonsterClasses[i].MClassName;
        if (CurrentMonsterClass ~= ZombieFleshpoundDefaultClass)
        {
            KFGT.default.SpecialEventMonsterCollections[0].default.MonsterClasses[i].MClassName = ZombieFleshpoundGlowingClass;
        }
    }

    DefaultMonsterClassesLength = KFGT.default.SpecialEventMonsterCollections[0].default.StandardMonsterClasses.Length;
    for (i = 0; i < DefaultMonsterClassesLength; i++)
    {
        CurrentMonsterClass = KFGT.default.SpecialEventMonsterCollections[0].default.StandardMonsterClasses[i].MClassName;
        if (CurrentMonsterClass ~= ZombieFleshpoundDefaultClass)
        {
            KFGT.default.SpecialEventMonsterCollections[0].default.StandardMonsterClasses[i].MClassName = ZombieFleshpoundGlowingClass;
        }
    }
}

protected function ReplaceFleshpoundInSquads(KFGameType KFGT)
{
    local int i, j, SquadsLength, ZedClassLength;
    local string CurrentMonsterClass;

    SquadsLength = KFGT.default.SpecialEventMonsterCollections[0].default.ShortSpecialSquads.Length;
    for (i = 0; i < SquadsLength; i++)
    {
        ZedClassLength = KFGT.default.SpecialEventMonsterCollections[0].default.ShortSpecialSquads[i].ZedClass.Length;
        for (j = 0; j < ZedClassLength; j++)
        {
            CurrentMonsterClass = KFGT.default.SpecialEventMonsterCollections[0].default.ShortSpecialSquads[i].ZedClass[j];

            if (CurrentMonsterClass ~= ZombieFleshpoundDefaultClass)
            {
                KFGT.default.SpecialEventMonsterCollections[0].default.ShortSpecialSquads[i].ZedClass[j] = ZombieFleshpoundGlowingClass;
            }
        }
    }

    SquadsLength = KFGT.default.SpecialEventMonsterCollections[0].default.NormalSpecialSquads.Length;
    for (i = 0; i < SquadsLength; i++)
    {
        ZedClassLength = KFGT.default.SpecialEventMonsterCollections[0].default.NormalSpecialSquads[i].ZedClass.Length;
        for (j = 0; j < ZedClassLength; j++)
        {
            CurrentMonsterClass = KFGT.default.SpecialEventMonsterCollections[0].default.NormalSpecialSquads[i].ZedClass[j];

            if (CurrentMonsterClass ~= ZombieFleshpoundDefaultClass)
            {
                KFGT.default.SpecialEventMonsterCollections[0].default.NormalSpecialSquads[i].ZedClass[j] = ZombieFleshpoundGlowingClass;
            }
        }
    }

    SquadsLength = KFGT.default.SpecialEventMonsterCollections[0].default.LongSpecialSquads.Length;
    for (i = 0; i < SquadsLength; i++)
    {
        ZedClassLength = KFGT.default.SpecialEventMonsterCollections[0].default.LongSpecialSquads[i].ZedClass.Length;
        for (j = 0; j < ZedClassLength; j++)
        {
            CurrentMonsterClass = KFGT.default.SpecialEventMonsterCollections[0].default.LongSpecialSquads[i].ZedClass[j];

            if (CurrentMonsterClass ~= ZombieFleshpoundDefaultClass)
            {
                KFGT.default.SpecialEventMonsterCollections[0].default.LongSpecialSquads[i].ZedClass[j] = ZombieFleshpoundGlowingClass;
            }
        }
    }

    SquadsLength = KFGT.default.SpecialEventMonsterCollections[0].default.FinalSquads.Length;
    for (i = 0; i < SquadsLength; i++)
    {
        ZedClassLength = KFGT.default.SpecialEventMonsterCollections[0].default.FinalSquads[i].ZedClass.Length;
        for (j = 0; j < ZedClassLength; j++)
        {
            CurrentMonsterClass = KFGT.default.SpecialEventMonsterCollections[0].default.FinalSquads[i].ZedClass[j];

            if (CurrentMonsterClass ~= ZombieFleshpoundDefaultClass)
            {
                KFGT.default.SpecialEventMonsterCollections[0].default.FinalSquads[i].ZedClass[j] = ZombieFleshpoundGlowingClass;
            }
        }
    }
}

defaultproperties 
{
    FriendlyName="Fleshpound Device Glow"
    Description="Adds glow to Fleshpound's device. Changing color according to temper. For this to work Dynamic Lighting must be enabled in your graphics settings."
    GroupName="KF-FPDeviceGlowMut"

    ZombieFleshpoundDefaultClass="KFChar.ZombieFleshpound_STANDARD"
    ZombieFleshpoundGlowingClass="FPDeviceGlowMut.ZombieFleshpound_GLOWING"
}
