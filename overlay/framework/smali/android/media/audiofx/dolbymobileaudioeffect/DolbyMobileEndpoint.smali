.class public final enum Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;
.super Ljava/lang/Enum;
.source "DolbyMobileEndpoint.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

.field public static final enum AUX_DIGITAL:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

.field public static final enum HEADPHONES:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

.field public static final enum SPEAKERS:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;


# instance fields
.field private _device:Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 39
    new-instance v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    const-string v1, "SPEAKERS"

    sget-object v2, Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;->DEVICE_SPEAKER:Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;

    invoke-direct {v0, v1, v3, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;-><init>(Ljava/lang/String;ILandroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;)V

    sput-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->SPEAKERS:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    .line 43
    new-instance v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    const-string v1, "HEADPHONES"

    sget-object v2, Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;->DEVICE_WIRED_HEADPHONE:Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;

    invoke-direct {v0, v1, v4, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;-><init>(Ljava/lang/String;ILandroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;)V

    sput-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->HEADPHONES:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    .line 47
    new-instance v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    const-string v1, "AUX_DIGITAL"

    sget-object v2, Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;->DEVICE_AUX_DIGITAL:Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;

    invoke-direct {v0, v1, v5, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;-><init>(Ljava/lang/String;ILandroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;)V

    sput-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->AUX_DIGITAL:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    .line 34
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    sget-object v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->SPEAKERS:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    aput-object v1, v0, v3

    sget-object v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->HEADPHONES:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    aput-object v1, v0, v4

    sget-object v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->AUX_DIGITAL:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    aput-object v1, v0, v5

    sput-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->$VALUES:[Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILandroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;)V
    .locals 0
    .parameter
    .parameter
    .parameter "device"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;",
            ")V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->_device:Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;
    .locals 1
    .parameter "name"

    .prologue
    .line 34
    const-class v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    return-object v0
.end method

.method public static values()[Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->$VALUES:[Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    invoke-virtual {v0}, [Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    return-object v0
.end method


# virtual methods
.method public toDevice()Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->_device:Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;

    return-object v0
.end method
