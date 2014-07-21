.class public Lcom/android/settings_ex/cyanogenmod/QuietHours;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "QuietHours.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final KEY_QUIET_HOURS_RINGER:Ljava/lang/CharSequence;


# instance fields
.field private mQuietHoursRinger:Landroid/preference/ListPreference;

.field private mQuietHoursTimeRange:Lcom/android/settings_ex/cyanogenmod/TimeRangePreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "quiet_hours_ringer"

    sput-object v0, Lcom/android/settings_ex/cyanogenmod/QuietHours;->KEY_QUIET_HOURS_RINGER:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x0

    .line 44
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v5, 0x7f05003e

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/cyanogenmod/QuietHours;->addPreferencesFromResource(I)V

    .line 47
    invoke-virtual {p0}, Lcom/android/settings_ex/cyanogenmod/QuietHours;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 48
    .local v1, res:Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/settings_ex/cyanogenmod/QuietHours;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 51
    .local v2, resolver:Landroid/content/ContentResolver;
    const-string v5, "quiet_hours_timerange"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/cyanogenmod/QuietHours;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings_ex/cyanogenmod/TimeRangePreference;

    iput-object v5, p0, Lcom/android/settings_ex/cyanogenmod/QuietHours;->mQuietHoursTimeRange:Lcom/android/settings_ex/cyanogenmod/TimeRangePreference;

    .line 53
    iget-object v5, p0, Lcom/android/settings_ex/cyanogenmod/QuietHours;->mQuietHoursTimeRange:Lcom/android/settings_ex/cyanogenmod/TimeRangePreference;

    const-string v6, "quiet_hours_start"

    invoke-static {v2, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    const-string v7, "quiet_hours_end"

    invoke-static {v2, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/android/settings_ex/cyanogenmod/TimeRangePreference;->setTimeRange(II)V

    .line 56
    iget-object v5, p0, Lcom/android/settings_ex/cyanogenmod/QuietHours;->mQuietHoursTimeRange:Lcom/android/settings_ex/cyanogenmod/TimeRangePreference;

    invoke-virtual {v5, p0}, Lcom/android/settings_ex/cyanogenmod/TimeRangePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 59
    sget-object v5, Lcom/android/settings_ex/cyanogenmod/QuietHours;->KEY_QUIET_HOURS_RINGER:Ljava/lang/CharSequence;

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/cyanogenmod/QuietHours;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/android/settings_ex/cyanogenmod/QuietHours;->mQuietHoursRinger:Landroid/preference/ListPreference;

    .line 60
    const-string v5, "phone"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/cyanogenmod/QuietHours;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 62
    .local v3, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v5

    if-nez v5, :cond_3

    .line 63
    invoke-virtual {p0}, Lcom/android/settings_ex/cyanogenmod/QuietHours;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/cyanogenmod/QuietHours;->mQuietHoursRinger:Landroid/preference/ListPreference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 64
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/settings_ex/cyanogenmod/QuietHours;->mQuietHoursRinger:Landroid/preference/ListPreference;

    .line 73
    :goto_0
    const v5, 0x111002c

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 74
    const-string v5, "quiet_hours_dim"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/cyanogenmod/QuietHours;->removePreference(Ljava/lang/String;)V

    .line 78
    :cond_0
    const-string v5, "vibrator"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/cyanogenmod/QuietHours;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    .line 79
    .local v4, vibrator:Landroid/os/Vibrator;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v5

    if-nez v5, :cond_2

    .line 80
    :cond_1
    const-string v5, "quiet_hours_still"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/cyanogenmod/QuietHours;->removePreference(Ljava/lang/String;)V

    .line 81
    const-string v5, "quiet_hours_haptic"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/cyanogenmod/QuietHours;->removePreference(Ljava/lang/String;)V

    .line 83
    :cond_2
    return-void

    .line 66
    .end local v4           #vibrator:Landroid/os/Vibrator;
    :cond_3
    const-string v5, "quiet_hours_ringer"

    invoke-static {v2, v5, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 67
    .local v0, muteType:I
    iget-object v5, p0, Lcom/android/settings_ex/cyanogenmod/QuietHours;->mQuietHoursRinger:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 68
    iget-object v5, p0, Lcom/android/settings_ex/cyanogenmod/QuietHours;->mQuietHoursRinger:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/android/settings_ex/cyanogenmod/QuietHours;->mQuietHoursRinger:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v5, p0, Lcom/android/settings_ex/cyanogenmod/QuietHours;->mQuietHoursRinger:Landroid/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v4, 0x1

    .line 87
    invoke-virtual {p0}, Lcom/android/settings_ex/cyanogenmod/QuietHours;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 88
    .local v1, resolver:Landroid/content/ContentResolver;
    iget-object v3, p0, Lcom/android/settings_ex/cyanogenmod/QuietHours;->mQuietHoursTimeRange:Lcom/android/settings_ex/cyanogenmod/TimeRangePreference;

    if-ne p1, v3, :cond_0

    .line 89
    const-string v3, "quiet_hours_start"

    iget-object v5, p0, Lcom/android/settings_ex/cyanogenmod/QuietHours;->mQuietHoursTimeRange:Lcom/android/settings_ex/cyanogenmod/TimeRangePreference;

    invoke-virtual {v5}, Lcom/android/settings_ex/cyanogenmod/TimeRangePreference;->getStartTime()I

    move-result v5

    invoke-static {v1, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 91
    const-string v3, "quiet_hours_end"

    iget-object v5, p0, Lcom/android/settings_ex/cyanogenmod/QuietHours;->mQuietHoursTimeRange:Lcom/android/settings_ex/cyanogenmod/TimeRangePreference;

    invoke-virtual {v5}, Lcom/android/settings_ex/cyanogenmod/TimeRangePreference;->getEndTime()I

    move-result v5

    invoke-static {v1, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v3, v4

    .line 101
    .end local p2
    :goto_0
    return v3

    .line 94
    .restart local p2
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/cyanogenmod/QuietHours;->mQuietHoursRinger:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_1

    move-object v3, p2

    .line 95
    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 96
    .local v2, ringerMuteType:I
    iget-object v3, p0, Lcom/android/settings_ex/cyanogenmod/QuietHours;->mQuietHoursRinger:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v3, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 97
    .local v0, index:I
    const-string v3, "quiet_hours_ringer"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 98
    iget-object v3, p0, Lcom/android/settings_ex/cyanogenmod/QuietHours;->mQuietHoursRinger:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/settings_ex/cyanogenmod/QuietHours;->mQuietHoursRinger:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    move v3, v4

    .line 99
    goto :goto_0

    .line 101
    .end local v0           #index:I
    .end local v2           #ringerMuteType:I
    .restart local p2
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method
