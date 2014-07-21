.class final Lcom/android/settings_ex/hardware/VibratorIntensity$1;
.super Ljava/lang/Object;
.source "VibratorIntensity.java"

# interfaces
.implements Lcom/android/settings_ex/hardware/HWValueSliderPreference$HardwareInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/hardware/VibratorIntensity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentValue()I
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Lorg/cyanogenmod/hardware/VibratorHW;->getCurIntensity()I

    move-result v0

    return v0
.end method

.method public getDefaultValue()I
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Lorg/cyanogenmod/hardware/VibratorHW;->getDefaultIntensity()I

    move-result v0

    return v0
.end method

.method public getMaxValue()I
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lorg/cyanogenmod/hardware/VibratorHW;->getMaxIntensity()I

    move-result v0

    return v0
.end method

.method public getMinValue()I
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lorg/cyanogenmod/hardware/VibratorHW;->getMinIntensity()I

    move-result v0

    return v0
.end method

.method public getPreferenceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    const-string v0, "vibration_intensity"

    return-object v0
.end method

.method public getWarningThreshold()I
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Lorg/cyanogenmod/hardware/VibratorHW;->getWarningThreshold()I

    move-result v0

    return v0
.end method

.method public setValue(I)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 51
    invoke-static {p1}, Lorg/cyanogenmod/hardware/VibratorHW;->setIntensity(I)Z

    move-result v0

    return v0
.end method
