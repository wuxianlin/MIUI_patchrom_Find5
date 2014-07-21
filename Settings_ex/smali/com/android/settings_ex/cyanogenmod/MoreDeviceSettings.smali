.class public Lcom/android/settings_ex/cyanogenmod/MoreDeviceSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "MoreDeviceSettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method public static hasItems()Z
    .locals 1

    .prologue
    .line 65
    invoke-static {}, Lcom/android/settings_ex/hardware/DisplayColor;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings_ex/hardware/DisplayGamma;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings_ex/hardware/VibratorIntensity;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v2, 0x7f050029

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/cyanogenmod/MoreDeviceSettings;->addPreferencesFromResource(I)V

    .line 44
    const-string v2, "vibrator"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/cyanogenmod/MoreDeviceSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    .line 45
    .local v1, vibrator:Landroid/os/Vibrator;
    invoke-static {}, Lcom/android/settings_ex/hardware/VibratorIntensity;->isSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v2

    if-nez v2, :cond_1

    .line 46
    :cond_0
    const-string v2, "sensors_motors_category"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/cyanogenmod/MoreDeviceSettings;->removePreference(Ljava/lang/String;)V

    .line 49
    :cond_1
    const-string v2, "display_calibration_category"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/cyanogenmod/MoreDeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 52
    .local v0, calibrationCategory:Landroid/preference/PreferenceGroup;
    invoke-static {}, Lcom/android/settings_ex/hardware/DisplayColor;->isSupported()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/android/settings_ex/hardware/DisplayGamma;->isSupported()Z

    move-result v2

    if-nez v2, :cond_3

    .line 53
    invoke-virtual {p0}, Lcom/android/settings_ex/cyanogenmod/MoreDeviceSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 62
    :cond_2
    :goto_0
    return-void

    .line 55
    :cond_3
    invoke-static {}, Lcom/android/settings_ex/hardware/DisplayColor;->isSupported()Z

    move-result v2

    if-nez v2, :cond_4

    .line 56
    const-string v2, "color_calibration"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/cyanogenmod/MoreDeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 58
    :cond_4
    invoke-static {}, Lcom/android/settings_ex/hardware/DisplayGamma;->isSupported()Z

    move-result v2

    if-nez v2, :cond_2

    .line 59
    const-string v2, "gamma_tuning"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/cyanogenmod/MoreDeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method
