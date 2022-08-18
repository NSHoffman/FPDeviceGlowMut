class FleshpoundDeviceLight extends Engine.Light;

function ChangeToRed() 
{
    LightHue = 255;
}

function ChangeToYellow() 
{
    LightHue = 36;
}

defaultproperties
{
    LightHue=36
    LightSaturation=0
    LightBrightness=255.00000
    LightRadius=3.000000
    LightCone=255
    LightType=LT_Steady
    CollisionRadius=5.000000
    CollisionHeight=5.000000
    bMovable=true
    bStatic=false
    bDynamicLight=true
    bLightChanged=true
    bNoDelete=false
    bHidden=false
    Texture=None
}
