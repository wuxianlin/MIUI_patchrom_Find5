.class public Lcom/android/settings/cyanogenmod/LockscreenInterface;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "LockscreenInterface.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mBatteryStatus:Landroid/preference/ListPreference;

.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mEnableCameraWidget:Landroid/preference/CheckBoxPreference;

.field private mEnableKeyguardWidgets:Landroid/preference/CheckBoxPreference;

.field private mEnableMaximizeWidgets:Landroid/preference/CheckBoxPreference;

.field private mEnableModLock:Landroid/preference/CheckBoxPreference;

.field private mLockUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockscreenTargets:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private checkDisabledByPolicy(Landroid/preference/Preference;I)Z
    .locals 2
    .parameter "preference"
    .parameter "feature"

    .prologue
    .line 246
    invoke-direct {p0, p2}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->featureIsDisabled(I)Z

    move-result v0

    .line 248
    .local v0, disabled:Z
    if-eqz v0, :cond_0

    .line 249
    const v1, 0x7f080523

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 252
    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 253
    return v0

    .line 252
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private featureIsDisabled(I)Z
    .locals 2
    .parameter "feature"

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;)I

    move-result v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateAvailableModLockPreferences()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 169
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mEnableModLock:Landroid/preference/CheckBoxPreference;

    if-nez v2, :cond_1

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mEnableModLock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 174
    .local v0, enabled:Z
    :goto_1
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mEnableKeyguardWidgets:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_2

    .line 176
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mEnableKeyguardWidgets:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v2, v1}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->checkDisabledByPolicy(Landroid/preference/Preference;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 178
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mEnableKeyguardWidgets:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 181
    :cond_2
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mEnableMaximizeWidgets:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_3

    .line 182
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mEnableMaximizeWidgets:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 184
    :cond_3
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mLockscreenTargets:Landroid/preference/Preference;

    if-eqz v1, :cond_4

    .line 185
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mLockscreenTargets:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 187
    :cond_4
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mBatteryStatus:Landroid/preference/ListPreference;

    if-eqz v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mBatteryStatus:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_0

    .line 173
    .end local v0           #enabled:Z
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public hasButtons()Z
    .locals 2

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 64
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const v5, 0x7f050026

    invoke-virtual {p0, v5}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->addPreferencesFromResource(I)V

    .line 67
    new-instance v5, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v5, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    .line 68
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v5}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mLockUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 69
    const-string v5, "device_policy"

    invoke-virtual {p0, v5}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/admin/DevicePolicyManager;

    iput-object v5, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 72
    const-string v5, "lockscreen_general_category"

    invoke-virtual {p0, v5}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 74
    .local v1, generalCategory:Landroid/preference/PreferenceCategory;
    const-string v5, "lockscreen_widgets_category"

    invoke-virtual {p0, v5}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    .line 78
    .local v4, widgetsCategory:Landroid/preference/PreferenceCategory;
    const-string v5, "keyguard_enable_widgets"

    invoke-virtual {p0, v5}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mEnableKeyguardWidgets:Landroid/preference/CheckBoxPreference;

    .line 79
    const-string v5, "keyguard_enable_camera"

    invoke-virtual {p0, v5}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mEnableCameraWidget:Landroid/preference/CheckBoxPreference;

    .line 80
    const-string v5, "lockscreen_maximize_widgets"

    invoke-virtual {p0, v5}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mEnableMaximizeWidgets:Landroid/preference/CheckBoxPreference;

    .line 81
    const-string v5, "lockscreen_targets"

    invoke-virtual {p0, v5}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mLockscreenTargets:Landroid/preference/Preference;

    .line 83
    const-string v5, "lockscreen_modlock_enabled"

    invoke-virtual {p0, v5}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mEnableModLock:Landroid/preference/CheckBoxPreference;

    .line 84
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mEnableModLock:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_0

    .line 85
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mEnableModLock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 88
    :cond_0
    const-string v5, "lockscreen_battery_status"

    invoke-virtual {p0, v5}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mBatteryStatus:Landroid/preference/ListPreference;

    .line 89
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mBatteryStatus:Landroid/preference/ListPreference;

    if-eqz v5, :cond_1

    .line 90
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mBatteryStatus:Landroid/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 94
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->hasButtons()Z

    move-result v5

    if-nez v5, :cond_2

    .line 95
    const-string v5, "lockscreen_buttons"

    invoke-virtual {p0, v5}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 99
    :cond_2
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v5

    if-nez v5, :cond_8

    .line 100
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mEnableCameraWidget:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 101
    iput-object v8, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mEnableCameraWidget:Landroid/preference/CheckBoxPreference;

    .line 102
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mLockUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, v7}, Lcom/android/internal/widget/LockPatternUtils;->setCameraEnabled(Z)V

    .line 108
    :cond_3
    :goto_0
    const/4 v0, 0x0

    .line 109
    .local v0, canEnableModLockscreen:Z
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x10400c8

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, keyguardPackage:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/android/settings/Utils;->getApplicationMetadata(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 113
    .local v3, keyguard_metadata:Landroid/os/Bundle;
    if-eqz v3, :cond_4

    .line 114
    const-string v5, "com.cyanogenmod.keyguard"

    invoke-virtual {v3, v5, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 118
    :cond_4
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mEnableModLock:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_5

    if-nez v0, :cond_5

    .line 119
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mEnableModLock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 120
    iput-object v8, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mEnableModLock:Landroid/preference/CheckBoxPreference;

    .line 124
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "com.cyanogenmod.lockclock"

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 125
    const-string v5, "lock_clock"

    invoke-virtual {p0, v5}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 129
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isPhone(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 130
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mEnableMaximizeWidgets:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 133
    :cond_7
    return-void

    .line 103
    .end local v0           #canEnableModLockscreen:Z
    .end local v2           #keyguardPackage:Ljava/lang/String;
    .end local v3           #keyguard_metadata:Landroid/os/Bundle;
    :cond_8
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mLockUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 104
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mEnableCameraWidget:Landroid/preference/CheckBoxPreference;

    const/4 v6, 0x2

    invoke-direct {p0, v5, v6}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->checkDisabledByPolicy(Landroid/preference/Preference;I)Z

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 209
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 210
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mBatteryStatus:Landroid/preference/ListPreference;

    if-ne p1, v5, :cond_0

    move-object v3, p2

    .line 211
    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 212
    .local v2, value:I
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mBatteryStatus:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v3, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 213
    .local v1, index:I
    const-string v3, "lockscreen_always_show_battery"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 214
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mBatteryStatus:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mBatteryStatus:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 226
    .end local v1           #index:I
    .end local v2           #value:I
    .end local p1
    :goto_0
    return v4

    .line 216
    .restart local p1
    .restart local p2
    :cond_0
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mEnableModLock:Landroid/preference/CheckBoxPreference;

    if-ne p1, v5, :cond_2

    .line 217
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 218
    .local v2, value:Z
    const-string v5, "lockscreen_modlock_enabled"

    if-eqz v2, :cond_1

    move v3, v4

    :cond_1
    invoke-static {v0, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 221
    check-cast p1, Landroid/preference/CheckBoxPreference;

    .end local p1
    invoke-virtual {p1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 222
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->updateAvailableModLockPreferences()V

    goto :goto_0

    .end local v2           #value:Z
    .restart local p1
    .restart local p2
    :cond_2
    move v4, v3

    .line 226
    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    .line 194
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, key:Ljava/lang/String;
    const-string v2, "keyguard_enable_widgets"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 197
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mLockUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mEnableKeyguardWidgets:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setWidgetsEnabled(Z)V

    .line 204
    :goto_0
    return v1

    .line 199
    :cond_0
    const-string v2, "keyguard_enable_camera"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 200
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mLockUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mEnableCameraWidget:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setCameraEnabled(Z)V

    goto :goto_0

    .line 204
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 137
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 140
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mEnableKeyguardWidgets:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_0

    .line 141
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mEnableKeyguardWidgets:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mLockUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->getWidgetsEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 144
    :cond_0
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mEnableCameraWidget:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_1

    .line 145
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mEnableCameraWidget:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mLockUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->getCameraEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 149
    :cond_1
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mBatteryStatus:Landroid/preference/ListPreference;

    if-eqz v4, :cond_2

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 151
    .local v2, cr:Landroid/content/ContentResolver;
    const-string v4, "lockscreen_always_show_battery"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 153
    .local v0, batteryStatus:I
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mBatteryStatus:Landroid/preference/ListPreference;

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 154
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mBatteryStatus:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mBatteryStatus:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 158
    .end local v0           #batteryStatus:I
    .end local v2           #cr:Landroid/content/ContentResolver;
    :cond_2
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mEnableModLock:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_3

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 160
    .restart local v2       #cr:Landroid/content/ContentResolver;
    const-string v4, "lockscreen_modlock_enabled"

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_4

    .line 162
    .local v1, checked:Z
    :goto_0
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/LockscreenInterface;->mEnableModLock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 165
    .end local v1           #checked:Z
    .end local v2           #cr:Landroid/content/ContentResolver;
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/LockscreenInterface;->updateAvailableModLockPreferences()V

    .line 166
    return-void

    .restart local v2       #cr:Landroid/content/ContentResolver;
    :cond_4
    move v1, v3

    .line 160
    goto :goto_0
.end method
