.class public Lcom/android/settings/cyanogenmod/StatusBar;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "StatusBar.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mStatusBarBattery:Landroid/preference/ListPreference;

.field private mStatusBarBatteryShowPercent:Lcom/android/settings/cyanogenmod/SystemSettingCheckBoxPreference;

.field private mStatusBarCmSignal:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private enableStatusBarBatteryDependents(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 116
    const-string v1, "6"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "4"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 118
    .local v0, enabled:Z
    :goto_0
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/StatusBar;->mStatusBarBatteryShowPercent:Lcom/android/settings/cyanogenmod/SystemSettingCheckBoxPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/cyanogenmod/SystemSettingCheckBoxPreference;->setEnabled(Z)V

    .line 119
    return-void

    .line 116
    .end local v0           #enabled:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    .line 50
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const v5, 0x7f050054

    invoke-virtual {p0, v5}, Lcom/android/settings/cyanogenmod/StatusBar;->addPreferencesFromResource(I)V

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/StatusBar;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 55
    .local v1, prefSet:Landroid/preference/PreferenceScreen;
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/StatusBar;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 57
    .local v2, resolver:Landroid/content/ContentResolver;
    const-string v5, "status_bar_battery"

    invoke-virtual {p0, v5}, Lcom/android/settings/cyanogenmod/StatusBar;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/android/settings/cyanogenmod/StatusBar;->mStatusBarBattery:Landroid/preference/ListPreference;

    .line 58
    const-string v5, "status_bar_battery_show_percent"

    invoke-virtual {p0, v5}, Lcom/android/settings/cyanogenmod/StatusBar;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/cyanogenmod/SystemSettingCheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/cyanogenmod/StatusBar;->mStatusBarBatteryShowPercent:Lcom/android/settings/cyanogenmod/SystemSettingCheckBoxPreference;

    .line 60
    const-string v5, "status_bar_signal"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/android/settings/cyanogenmod/StatusBar;->mStatusBarCmSignal:Landroid/preference/ListPreference;

    .line 62
    const-string v5, "status_bar_brightness_control"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    .line 66
    .local v4, statusBarBrightnessControl:Landroid/preference/CheckBoxPreference;
    :try_start_0
    const-string v5, "screen_brightness_mode"

    invoke-static {v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 68
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 69
    const v5, 0x7f080353

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setSummary(I)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :cond_0
    :goto_0
    const-string v5, "status_bar_battery"

    invoke-static {v2, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 76
    .local v0, batteryStyle:I
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/StatusBar;->mStatusBarBattery:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 77
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/StatusBar;->mStatusBarBattery:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/android/settings/cyanogenmod/StatusBar;->mStatusBarBattery:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/StatusBar;->mStatusBarBattery:Landroid/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 80
    const-string v5, "status_bar_signal"

    invoke-static {v2, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 81
    .local v3, signalStyle:I
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/StatusBar;->mStatusBarCmSignal:Landroid/preference/ListPreference;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 82
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/StatusBar;->mStatusBarCmSignal:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/android/settings/cyanogenmod/StatusBar;->mStatusBarCmSignal:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/StatusBar;->mStatusBarCmSignal:Landroid/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/StatusBar;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 87
    :cond_1
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/StatusBar;->mStatusBarCmSignal:Landroid/preference/ListPreference;

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 90
    :cond_2
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/StatusBar;->mStatusBarBattery:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/cyanogenmod/StatusBar;->enableStatusBarBatteryDependents(Ljava/lang/String;)V

    .line 91
    return-void

    .line 71
    .end local v0           #batteryStyle:I
    .end local v3           #signalStyle:I
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v5, 0x1

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/StatusBar;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 96
    .local v2, resolver:Landroid/content/ContentResolver;
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/StatusBar;->mStatusBarBattery:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_0

    move-object v4, p2

    .line 97
    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 98
    .local v0, batteryStyle:I
    iget-object v6, p0, Lcom/android/settings/cyanogenmod/StatusBar;->mStatusBarBattery:Landroid/preference/ListPreference;

    move-object v4, p2

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 99
    .local v1, index:I
    const-string v4, "status_bar_battery"

    invoke-static {v2, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 100
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/StatusBar;->mStatusBarBattery:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/android/settings/cyanogenmod/StatusBar;->mStatusBarBattery:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-virtual {v4, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 102
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-direct {p0, p2}, Lcom/android/settings/cyanogenmod/StatusBar;->enableStatusBarBatteryDependents(Ljava/lang/String;)V

    move v4, v5

    .line 112
    .end local v0           #batteryStyle:I
    .end local v1           #index:I
    :goto_0
    return v4

    .line 104
    .restart local p2
    :cond_0
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/StatusBar;->mStatusBarCmSignal:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_1

    move-object v4, p2

    .line 105
    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 106
    .local v3, signalStyle:I
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/StatusBar;->mStatusBarCmSignal:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v4, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 107
    .restart local v1       #index:I
    const-string v4, "status_bar_signal"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 108
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/StatusBar;->mStatusBarCmSignal:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/android/settings/cyanogenmod/StatusBar;->mStatusBarCmSignal:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-virtual {v4, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    move v4, v5

    .line 109
    goto :goto_0

    .line 112
    .end local v1           #index:I
    .end local v3           #signalStyle:I
    .restart local p2
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method
