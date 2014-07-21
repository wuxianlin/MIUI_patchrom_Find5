.class public Lcom/android/settings_ex/hardware/VibratorIntensity;
.super Lcom/android/settings_ex/hardware/HWValueSliderPreference;
.source "VibratorIntensity.java"


# static fields
.field private static final HW_INTERFACE:Lcom/android/settings_ex/hardware/HWValueSliderPreference$HardwareInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/android/settings_ex/hardware/VibratorIntensity$1;

    invoke-direct {v0}, Lcom/android/settings_ex/hardware/VibratorIntensity$1;-><init>()V

    sput-object v0, Lcom/android/settings_ex/hardware/VibratorIntensity;->HW_INTERFACE:Lcom/android/settings_ex/hardware/HWValueSliderPreference$HardwareInterface;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 60
    invoke-static {}, Lcom/android/settings_ex/hardware/VibratorIntensity;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings_ex/hardware/VibratorIntensity;->HW_INTERFACE:Lcom/android/settings_ex/hardware/HWValueSliderPreference$HardwareInterface;

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings_ex/hardware/HWValueSliderPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/settings_ex/hardware/HWValueSliderPreference$HardwareInterface;)V

    .line 62
    const v0, 0x7f0400de

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/hardware/VibratorIntensity;->setDialogLayoutResource(I)V

    .line 63
    return-void

    .line 60
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupported()Z
    .locals 2

    .prologue
    .line 73
    :try_start_0
    invoke-static {}, Lorg/cyanogenmod/hardware/VibratorHW;->isSupported()Z
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 76
    :goto_0
    return v1

    .line 74
    :catch_0
    move-exception v0

    .line 76
    .local v0, e:Ljava/lang/NoClassDefFoundError;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static restore(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 81
    invoke-static {}, Lcom/android/settings_ex/hardware/VibratorIntensity;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    :goto_0
    return-void

    .line 84
    :cond_0
    sget-object v0, Lcom/android/settings_ex/hardware/VibratorIntensity;->HW_INTERFACE:Lcom/android/settings_ex/hardware/HWValueSliderPreference$HardwareInterface;

    invoke-static {p0, v0}, Lcom/android/settings_ex/hardware/HWValueSliderPreference;->restore(Landroid/content/Context;Lcom/android/settings_ex/hardware/HWValueSliderPreference$HardwareInterface;)V

    goto :goto_0
.end method


# virtual methods
.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .parameter "seekBar"

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/android/settings_ex/hardware/VibratorIntensity;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 68
    .local v0, vib:Landroid/os/Vibrator;
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 69
    return-void
.end method
