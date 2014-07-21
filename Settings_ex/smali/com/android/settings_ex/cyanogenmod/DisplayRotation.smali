.class public Lcom/android/settings_ex/cyanogenmod/DisplayRotation;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "DisplayRotation.java"


# instance fields
.field private mAccelerometer:Landroid/preference/CheckBoxPreference;

.field private mAccelerometerRotationObserver:Landroid/database/ContentObserver;

.field private mRotation0Pref:Landroid/preference/CheckBoxPreference;

.field private mRotation180Pref:Landroid/preference/CheckBoxPreference;

.field private mRotation270Pref:Landroid/preference/CheckBoxPreference;

.field private mRotation90Pref:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 53
    new-instance v0, Lcom/android/settings_ex/cyanogenmod/DisplayRotation$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/cyanogenmod/DisplayRotation$1;-><init>(Lcom/android/settings_ex/cyanogenmod/DisplayRotation;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/cyanogenmod/DisplayRotation;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/cyanogenmod/DisplayRotation;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/settings_ex/cyanogenmod/DisplayRotation;->updateAccelerometerRotationCheckbox()V

    return-void
.end method

.method private getRotationBitmask()I
    .locals 2

    .prologue
    .line 133
    const/4 v0, 0x0

    .line 134
    .local v0, mode:I
    iget-object v1, p0, Lcom/android/settings_ex/cyanogenmod/DisplayRotation;->mRotation0Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    or-int/lit8 v0, v0, 0x1

    .line 137
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/cyanogenmod/DisplayRotation;->mRotation90Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 138
    or-int/lit8 v0, v0, 0x2

    .line 140
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/cyanogenmod/DisplayRotation;->mRotation180Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 141
    or-int/lit8 v0, v0, 0x4

    .line 143
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/cyanogenmod/DisplayRotation;->mRotation270Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 144
    or-int/lit8 v0, v0, 0x8

    .line 146
    :cond_3
    return v0
.end method

.method private updateAccelerometerRotationCheckbox()V
    .locals 2

    .prologue
    .line 129
    iget-object v1, p0, Lcom/android/settings_ex/cyanogenmod/DisplayRotation;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/cyanogenmod/DisplayRotation;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 130
    return-void

    .line 129
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateState()V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/settings_ex/cyanogenmod/DisplayRotation;->updateAccelerometerRotationCheckbox()V

    .line 126
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 62
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v5, 0x7f05001b

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/cyanogenmod/DisplayRotation;->addPreferencesFromResource(I)V

    .line 66
    invoke-virtual {p0}, Lcom/android/settings_ex/cyanogenmod/DisplayRotation;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 68
    .local v4, prefSet:Landroid/preference/PreferenceScreen;
    const-string v5, "accelerometer"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/cyanogenmod/DisplayRotation;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings_ex/cyanogenmod/DisplayRotation;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    .line 69
    iget-object v5, p0, Lcom/android/settings_ex/cyanogenmod/DisplayRotation;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v7}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 71
    const-string v5, "display_rotation_0"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings_ex/cyanogenmod/DisplayRotation;->mRotation0Pref:Landroid/preference/CheckBoxPreference;

    .line 72
    const-string v5, "display_rotation_90"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings_ex/cyanogenmod/DisplayRotation;->mRotation90Pref:Landroid/preference/CheckBoxPreference;

    .line 73
    const-string v5, "display_rotation_180"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings_ex/cyanogenmod/DisplayRotation;->mRotation180Pref:Landroid/preference/CheckBoxPreference;

    .line 74
    const-string v5, "display_rotation_270"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings_ex/cyanogenmod/DisplayRotation;->mRotation270Pref:Landroid/preference/CheckBoxPreference;

    .line 76
    invoke-virtual {p0}, Lcom/android/settings_ex/cyanogenmod/DisplayRotation;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "accelerometer_rotation_angles"

    const/16 v9, 0xb

    invoke-static {v5, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 80
    .local v3, mode:I
    iget-object v8, p0, Lcom/android/settings_ex/cyanogenmod/DisplayRotation;->mRotation0Pref:Landroid/preference/CheckBoxPreference;

    and-int/lit8 v5, v3, 0x1

    if-eqz v5, :cond_2

    move v5, v6

    :goto_0
    invoke-virtual {v8, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 81
    iget-object v8, p0, Lcom/android/settings_ex/cyanogenmod/DisplayRotation;->mRotation90Pref:Landroid/preference/CheckBoxPreference;

    and-int/lit8 v5, v3, 0x2

    if-eqz v5, :cond_3

    move v5, v6

    :goto_1
    invoke-virtual {v8, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 82
    iget-object v8, p0, Lcom/android/settings_ex/cyanogenmod/DisplayRotation;->mRotation180Pref:Landroid/preference/CheckBoxPreference;

    and-int/lit8 v5, v3, 0x4

    if-eqz v5, :cond_4

    move v5, v6

    :goto_2
    invoke-virtual {v8, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 83
    iget-object v5, p0, Lcom/android/settings_ex/cyanogenmod/DisplayRotation;->mRotation270Pref:Landroid/preference/CheckBoxPreference;

    and-int/lit8 v8, v3, 0x8

    if-eqz v8, :cond_5

    :goto_3
    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 85
    invoke-virtual {p0}, Lcom/android/settings_ex/cyanogenmod/DisplayRotation;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1110068

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 88
    .local v1, hasRotationLock:Z
    if-eqz v1, :cond_0

    .line 90
    iget-object v5, p0, Lcom/android/settings_ex/cyanogenmod/DisplayRotation;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 91
    iget-object v5, p0, Lcom/android/settings_ex/cyanogenmod/DisplayRotation;->mRotation0Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v10}, Landroid/preference/CheckBoxPreference;->setDependency(Ljava/lang/String;)V

    .line 92
    iget-object v5, p0, Lcom/android/settings_ex/cyanogenmod/DisplayRotation;->mRotation90Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v10}, Landroid/preference/CheckBoxPreference;->setDependency(Ljava/lang/String;)V

    .line 93
    iget-object v5, p0, Lcom/android/settings_ex/cyanogenmod/DisplayRotation;->mRotation180Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v10}, Landroid/preference/CheckBoxPreference;->setDependency(Ljava/lang/String;)V

    .line 94
    iget-object v5, p0, Lcom/android/settings_ex/cyanogenmod/DisplayRotation;->mRotation270Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v10}, Landroid/preference/CheckBoxPreference;->setDependency(Ljava/lang/String;)V

    .line 97
    :cond_0
    const-string v5, "lockscreen_rotation"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/cyanogenmod/DisplayRotation;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    .line 99
    .local v2, lockScreenRotation:Landroid/preference/CheckBoxPreference;
    invoke-virtual {p0}, Lcom/android/settings_ex/cyanogenmod/DisplayRotation;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1110031

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 102
    .local v0, canRotateLockscreen:Z
    if-eqz v2, :cond_1

    if-nez v0, :cond_1

    .line 103
    invoke-virtual {p0}, Lcom/android/settings_ex/cyanogenmod/DisplayRotation;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 105
    :cond_1
    return-void

    .end local v0           #canRotateLockscreen:Z
    .end local v1           #hasRotationLock:Z
    .end local v2           #lockScreenRotation:Landroid/preference/CheckBoxPreference;
    :cond_2
    move v5, v7

    .line 80
    goto :goto_0

    :cond_3
    move v5, v7

    .line 81
    goto :goto_1

    :cond_4
    move v5, v7

    .line 82
    goto :goto_2

    :cond_5
    move v6, v7

    .line 83
    goto :goto_3
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 119
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 121
    invoke-virtual {p0}, Lcom/android/settings_ex/cyanogenmod/DisplayRotation;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/cyanogenmod/DisplayRotation;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 122
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    .line 152
    iget-object v2, p0, Lcom/android/settings_ex/cyanogenmod/DisplayRotation;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_2

    .line 153
    invoke-virtual {p0}, Lcom/android/settings_ex/cyanogenmod/DisplayRotation;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/cyanogenmod/DisplayRotation;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_1

    :goto_0
    invoke-static {v2, v1}, Lcom/android/internal/view/RotationPolicy;->setRotationLockForAccessibility(Landroid/content/Context;Z)V

    .line 169
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    :goto_1
    return v1

    .line 153
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 155
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/cyanogenmod/DisplayRotation;->mRotation0Pref:Landroid/preference/CheckBoxPreference;

    if-eq p2, v2, :cond_3

    iget-object v2, p0, Lcom/android/settings_ex/cyanogenmod/DisplayRotation;->mRotation90Pref:Landroid/preference/CheckBoxPreference;

    if-eq p2, v2, :cond_3

    iget-object v2, p0, Lcom/android/settings_ex/cyanogenmod/DisplayRotation;->mRotation180Pref:Landroid/preference/CheckBoxPreference;

    if-eq p2, v2, :cond_3

    iget-object v2, p0, Lcom/android/settings_ex/cyanogenmod/DisplayRotation;->mRotation270Pref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_0

    .line 159
    :cond_3
    invoke-direct {p0}, Lcom/android/settings_ex/cyanogenmod/DisplayRotation;->getRotationBitmask()I

    move-result v0

    .line 160
    .local v0, mode:I
    if-nez v0, :cond_4

    .line 161
    or-int/lit8 v0, v0, 0x1

    .line 162
    iget-object v2, p0, Lcom/android/settings_ex/cyanogenmod/DisplayRotation;->mRotation0Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 164
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings_ex/cyanogenmod/DisplayRotation;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accelerometer_rotation_angles"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 109
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 111
    invoke-direct {p0}, Lcom/android/settings_ex/cyanogenmod/DisplayRotation;->updateState()V

    .line 112
    invoke-virtual {p0}, Lcom/android/settings_ex/cyanogenmod/DisplayRotation;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings_ex/cyanogenmod/DisplayRotation;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 115
    return-void
.end method
