.class public Lcom/android/settings/DisplaySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DisplaySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mAccelerometerRotationObserver:Landroid/database/ContentObserver;

.field private mAdaptiveBacklight:Landroid/preference/CheckBoxPreference;

.field private mBatteryPulse:Landroid/preference/PreferenceScreen;

.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mDisplayRotationPreference:Landroid/preference/PreferenceScreen;

.field private mFontSizePref:Lcom/android/settings/FontDialogPreference;

.field private mNotificationPulse:Landroid/preference/PreferenceScreen;

.field private final mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

.field private mScreenAnimationStylePreference:Landroid/preference/ListPreference;

.field private mScreenColorSettings:Landroid/preference/PreferenceScreen;

.field private mScreenOffAnimation:Landroid/preference/CheckBoxPreference;

.field private mScreenSaverPreference:Landroid/preference/Preference;

.field private mScreenTimeoutPreference:Landroid/preference/ListPreference;

.field private mTapToWake:Landroid/preference/CheckBoxPreference;

.field private mWakeWhenPluggedOrUnplugged:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 96
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    .line 104
    new-instance v0, Lcom/android/settings/DisplaySettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/DisplaySettings$1;-><init>(Lcom/android/settings/DisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    .line 112
    new-instance v0, Lcom/android/settings/DisplaySettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/DisplaySettings$2;-><init>(Lcom/android/settings/DisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/DisplaySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateDisplayRotationPreferenceDescription()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/DisplaySettings;)Lcom/android/settings/FontDialogPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mFontSizePref:Lcom/android/settings/FontDialogPreference;

    return-object v0
.end method

.method private disableUnusableTimeouts(Landroid/preference/ListPreference;)V
    .locals 13
    .parameter "screenTimeoutPreference"

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const-string v12, "device_policy"

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 313
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_0

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v3

    .line 314
    .local v3, maxTimeout:J
    :goto_0
    const-wide/16 v11, 0x0

    cmp-long v11, v3, v11

    if-nez v11, :cond_1

    .line 348
    :goto_1
    return-void

    .line 313
    .end local v3           #maxTimeout:J
    :cond_0
    const-wide/16 v3, 0x0

    goto :goto_0

    .line 317
    .restart local v3       #maxTimeout:J
    :cond_1
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 318
    .local v1, entries:[Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v10

    .line 319
    .local v10, values:[Ljava/lang/CharSequence;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 320
    .local v5, revisedEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 321
    .local v6, revisedValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    array-length v11, v10

    if-ge v2, v11, :cond_3

    .line 322
    aget-object v11, v10, v2

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 323
    .local v7, timeout:J
    cmp-long v11, v7, v3

    if-gtz v11, :cond_2

    .line 324
    aget-object v11, v1, v2

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    aget-object v11, v10, v2

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 328
    .end local v7           #timeout:J
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    array-length v12, v1

    if-ne v11, v12, :cond_4

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    array-length v12, v10

    if-eq v11, v12, :cond_5

    .line 329
    :cond_4
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 330
    .local v9, userPreference:I
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/CharSequence;

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 332
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/CharSequence;

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 334
    int-to-long v11, v9

    cmp-long v11, v11, v3

    if-gtz v11, :cond_6

    .line 335
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 347
    .end local v9           #userPreference:I
    :cond_5
    :goto_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_7

    const/4 v11, 0x1

    :goto_4
    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_1

    .line 336
    .restart local v9       #userPreference:I
    :cond_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_5

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    cmp-long v11, v11, v3

    if-nez v11, :cond_5

    .line 340
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_3

    .line 347
    .end local v9           #userPreference:I
    :cond_7
    const/4 v11, 0x0

    goto :goto_4
.end method

.method private static isAdaptiveBacklightSupported()Z
    .locals 2

    .prologue
    .line 596
    :try_start_0
    invoke-static {}, Lorg/cyanogenmod/hardware/AdaptiveBacklight;->isSupported()Z
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 599
    :goto_0
    return v1

    .line 597
    :catch_0
    move-exception v0

    .line 599
    .local v0, e:Ljava/lang/NoClassDefFoundError;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isPostProcessingSupported()Z
    .locals 5

    .prologue
    .line 584
    const/4 v2, 0x1

    .line 585
    .local v2, ret:Z
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 587
    .local v1, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v3, "com.qualcomm.display"

    const/16 v4, 0x80

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 591
    :goto_0
    return v2

    .line 588
    :catch_0
    move-exception v0

    .line 589
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isTapToWakeSupported()Z
    .locals 2

    .prologue
    .line 605
    :try_start_0
    invoke-static {}, Lorg/cyanogenmod/hardware/TapToWake;->isSupported()Z
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 608
    :goto_0
    return v1

    .line 606
    :catch_0
    move-exception v0

    .line 608
    .local v0, e:Ljava/lang/NoClassDefFoundError;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static restore(Landroid/content/Context;)V
    .locals 5
    .parameter "ctx"

    .prologue
    const/4 v4, 0x1

    .line 563
    invoke-static {}, Lcom/android/settings/DisplaySettings;->isAdaptiveBacklightSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 564
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 565
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v2, "adaptive_backlight"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 566
    .local v0, enabled:Z
    invoke-static {v0}, Lorg/cyanogenmod/hardware/AdaptiveBacklight;->setEnabled(Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 567
    const-string v2, "DisplaySettings"

    const-string v3, "Failed to restore adaptive backlight settings."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    .end local v0           #enabled:Z
    .end local v1           #prefs:Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/settings/DisplaySettings;->isTapToWakeSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 573
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 574
    .restart local v1       #prefs:Landroid/content/SharedPreferences;
    const-string v2, "double_tap_wake_gesture"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 575
    .restart local v0       #enabled:Z
    invoke-static {v0}, Lorg/cyanogenmod/hardware/TapToWake;->setEnabled(Z)Z

    move-result v2

    if-nez v2, :cond_3

    .line 576
    const-string v2, "DisplaySettings"

    const-string v3, "Failed to restore tap-to-wake settings."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    .end local v0           #enabled:Z
    .end local v1           #prefs:Landroid/content/SharedPreferences;
    :cond_1
    :goto_1
    return-void

    .line 569
    .restart local v0       #enabled:Z
    .restart local v1       #prefs:Landroid/content/SharedPreferences;
    :cond_2
    const-string v2, "DisplaySettings"

    const-string v3, "Adaptive backlight settings restored."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 578
    :cond_3
    const-string v2, "DisplaySettings"

    const-string v3, "Tap-to-wake settings restored."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private updateBatteryPulseSummary()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 453
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mBatteryPulse:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 454
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "battery_light_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 456
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mBatteryPulse:Landroid/preference/PreferenceScreen;

    const v1, 0x7f08012e

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 461
    :cond_0
    :goto_0
    return-void

    .line 458
    :cond_1
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mBatteryPulse:Landroid/preference/PreferenceScreen;

    const v1, 0x7f08012f

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0
.end method

.method private updateDisplayRotationPreferenceDescription()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 236
    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mDisplayRotationPreference:Landroid/preference/PreferenceScreen;

    if-nez v6, :cond_0

    .line 281
    :goto_0
    return-void

    .line 242
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "accelerometer_rotation"

    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_1

    const/4 v3, 0x1

    .line 245
    .local v3, rotationEnabled:Z
    :cond_1
    if-nez v3, :cond_2

    .line 246
    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mDisplayRotationPreference:Landroid/preference/PreferenceScreen;

    const v7, 0x7f0801dc

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    .line 250
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 251
    .local v5, summary:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "accelerometer_rotation_angles"

    const/16 v8, 0xb

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 256
    .local v2, mode:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 257
    .local v4, rotationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v0, ""

    .line 259
    .local v0, delim:Ljava/lang/String;
    and-int/lit8 v6, v2, 0x1

    if-eqz v6, :cond_3

    .line 260
    const-string v6, "0"

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    :cond_3
    and-int/lit8 v6, v2, 0x2

    if-eqz v6, :cond_4

    .line 263
    const-string v6, "90"

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    :cond_4
    and-int/lit8 v6, v2, 0x4

    if-eqz v6, :cond_5

    .line 266
    const-string v6, "180"

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    :cond_5
    and-int/lit8 v6, v2, 0x8

    if-eqz v6, :cond_6

    .line 269
    const-string v6, "270"

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    :cond_6
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_8

    .line 272
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v1

    const/4 v7, 0x2

    if-le v6, v7, :cond_7

    .line 274
    const-string v0, ", "

    .line 271
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 276
    :cond_7
    const-string v0, " & "

    goto :goto_2

    .line 279
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f0801dd

    invoke-virtual {p0, v7}, Lcom/android/settings/DisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mDisplayRotationPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v5}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private updateLightPulseSummary()V
    .locals 3

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mNotificationPulse:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 443
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_light_pulse"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 445
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mNotificationPulse:Landroid/preference/PreferenceScreen;

    const v1, 0x7f08012e

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 450
    :cond_0
    :goto_0
    return-void

    .line 447
    :cond_1
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mNotificationPulse:Landroid/preference/PreferenceScreen;

    const v1, 0x7f08012f

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0
.end method

.method private updateScreenAnimationStylePreferenceDescription(I)V
    .locals 5
    .parameter "currentAnimation"

    .prologue
    .line 351
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mScreenAnimationStylePreference:Landroid/preference/ListPreference;

    .line 353
    .local v1, preference:Landroid/preference/ListPreference;
    if-gez p1, :cond_0

    .line 355
    const-string v2, ""

    .line 365
    .local v2, summary:Ljava/lang/String;
    :goto_0
    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 366
    return-void

    .line 357
    .end local v2           #summary:Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 358
    .local v0, entries:[Ljava/lang/CharSequence;
    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 359
    .local v3, values:[Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    array-length v4, v0

    if-nez v4, :cond_2

    .line 360
    :cond_1
    const-string v2, ""

    .restart local v2       #summary:Ljava/lang/String;
    goto :goto_0

    .line 362
    .end local v2           #summary:Ljava/lang/String;
    :cond_2
    aget-object v4, v0, p1

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #summary:Ljava/lang/String;
    goto :goto_0
.end method

.method private updateScreenSaverSummary()V
    .locals 2

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/DreamSettings;->getSummaryTextWithDreamName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 439
    :cond_0
    return-void
.end method

.method private updateState()V
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mFontSizePref:Lcom/android/settings/FontDialogPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->readFontSizePreference(Landroid/preference/Preference;)V

    .line 429
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateScreenSaverSummary()V

    .line 430
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateLightPulseSummary()V

    .line 431
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateBatteryPulseSummary()V

    .line 432
    return-void
.end method

.method private updateTimeoutPreferenceDescription(J)V
    .locals 13
    .parameter "currentTimeout"

    .prologue
    .line 284
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    .line 286
    .local v3, preference:Landroid/preference/ListPreference;
    const-wide/16 v8, 0x0

    cmp-long v8, p1, v8

    if-gez v8, :cond_0

    .line 288
    const-string v4, ""

    .line 306
    .local v4, summary:Ljava/lang/String;
    :goto_0
    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 307
    return-void

    .line 290
    .end local v4           #summary:Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 291
    .local v1, entries:[Ljava/lang/CharSequence;
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v7

    .line 292
    .local v7, values:[Ljava/lang/CharSequence;
    if-eqz v1, :cond_1

    array-length v8, v1

    if-nez v8, :cond_2

    .line 293
    :cond_1
    const-string v4, ""

    .restart local v4       #summary:Ljava/lang/String;
    goto :goto_0

    .line 295
    .end local v4           #summary:Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    .line 296
    .local v0, best:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v8, v7

    if-ge v2, v8, :cond_4

    .line 297
    aget-object v8, v7, v2

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 298
    .local v5, timeout:J
    cmp-long v8, p1, v5

    if-ltz v8, :cond_3

    .line 299
    move v0, v2

    .line 296
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 302
    .end local v5           #timeout:J
    :cond_4
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0806cf

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v12, v1, v0

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #summary:Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 17
    .parameter "savedInstanceState"

    .prologue
    .line 122
    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 123
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    .line 124
    .local v13, resolver:Landroid/content/ContentResolver;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 126
    .local v12, res:Landroid/content/res/Resources;
    const v14, 0x7f05001c

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/DisplaySettings;->addPreferencesFromResource(I)V

    .line 128
    const-string v14, "display_prefs"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceCategory;

    .line 130
    .local v7, displayPrefs:Landroid/preference/PreferenceCategory;
    const-string v14, "display_rotation"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/DisplaySettings;->mDisplayRotationPreference:Landroid/preference/PreferenceScreen;

    .line 132
    const-string v14, "screensaver"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    .line 133
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    if-eqz v14, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1110054

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    if-nez v14, :cond_0

    .line 136
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    invoke-virtual {v7, v14}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 139
    :cond_0
    const-string v14, "screen_timeout"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    .line 140
    const-string v14, "screen_off_timeout"

    const-wide/16 v15, 0x7530

    invoke-static/range {v13 .. v16}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v5

    .line 142
    .local v5, currentTimeout:J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 143
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 144
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/DisplaySettings;->disableUnusableTimeouts(Landroid/preference/ListPreference;)V

    .line 145
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/settings/DisplaySettings;->updateTimeoutPreferenceDescription(J)V

    .line 146
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->updateDisplayRotationPreferenceDescription()V

    .line 148
    const-string v14, "font_size"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Lcom/android/settings/FontDialogPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/DisplaySettings;->mFontSizePref:Lcom/android/settings/FontDialogPreference;

    .line 149
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/DisplaySettings;->mFontSizePref:Lcom/android/settings/FontDialogPreference;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Lcom/android/settings/FontDialogPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 150
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/DisplaySettings;->mFontSizePref:Lcom/android/settings/FontDialogPreference;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Lcom/android/settings/FontDialogPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 152
    const-string v14, "advanced_display_prefs"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 154
    .local v1, advancedPrefs:Landroid/preference/PreferenceCategory;
    const-string v14, "adaptive_backlight"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/DisplaySettings;->mAdaptiveBacklight:Landroid/preference/CheckBoxPreference;

    .line 155
    invoke-static {}, Lcom/android/settings/DisplaySettings;->isAdaptiveBacklightSupported()Z

    move-result v14

    if-nez v14, :cond_1

    .line 156
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/DisplaySettings;->mAdaptiveBacklight:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v14}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 157
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/DisplaySettings;->mAdaptiveBacklight:Landroid/preference/CheckBoxPreference;

    .line 160
    :cond_1
    const-string v14, "double_tap_wake_gesture"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/DisplaySettings;->mTapToWake:Landroid/preference/CheckBoxPreference;

    .line 161
    invoke-static {}, Lcom/android/settings/DisplaySettings;->isTapToWakeSupported()Z

    move-result v14

    if-nez v14, :cond_2

    .line 162
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/DisplaySettings;->mTapToWake:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v14}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 163
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/DisplaySettings;->mTapToWake:Landroid/preference/CheckBoxPreference;

    .line 166
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const-string v15, "advanced_display_settings"

    invoke-static {v14, v1, v15}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityFromMetaDataOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 169
    const-string v14, "wake_when_plugged_or_unplugged"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/DisplaySettings;->mWakeWhenPluggedOrUnplugged:Landroid/preference/CheckBoxPreference;

    .line 172
    const-string v14, "screencolor_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/DisplaySettings;->mScreenColorSettings:Landroid/preference/PreferenceScreen;

    .line 173
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->isPostProcessingSupported()Z

    move-result v14

    if-nez v14, :cond_3

    .line 174
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/DisplaySettings;->mScreenColorSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v14}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 177
    :cond_3
    const v14, 0x1110067

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 179
    .local v2, allowsScreenOffAnimation:Z
    const v14, 0x1110020

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    .line 181
    .local v11, requiresFadeAnimation:Z
    const-string v14, "screen_off_animation"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/DisplaySettings;->mScreenOffAnimation:Landroid/preference/CheckBoxPreference;

    .line 183
    const-string v14, "screen_animation_style"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/DisplaySettings;->mScreenAnimationStylePreference:Landroid/preference/ListPreference;

    .line 186
    if-eqz v2, :cond_b

    .line 187
    if-nez v11, :cond_a

    .line 188
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/DisplaySettings;->mScreenOffAnimation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v14}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 189
    const-string v14, "screen_off_animation"

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    if-eqz v14, :cond_8

    const/4 v3, 0x1

    .line 192
    .local v3, animationEnabled:Z
    :goto_0
    const-string v14, "screen_animation_style"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 195
    .local v4, currentAnimation:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/DisplaySettings;->mScreenAnimationStylePreference:Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 196
    if-eqz v3, :cond_9

    .line 197
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/DisplaySettings;->mScreenAnimationStylePreference:Landroid/preference/ListPreference;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 198
    add-int/lit8 v14, v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/DisplaySettings;->updateScreenAnimationStylePreferenceDescription(I)V

    .line 210
    .end local v3           #animationEnabled:Z
    .end local v4           #currentAnimation:I
    :goto_1
    const v14, 0x111002c

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    .line 212
    .local v9, hasNotificationLed:Z
    const v14, 0x111002d

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    .line 214
    .local v8, hasBatteryLed:Z
    const-string v14, "lights_prefs"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceCategory;

    .line 216
    .local v10, lightPrefs:Landroid/preference/PreferenceCategory;
    if-nez v9, :cond_4

    if-eqz v8, :cond_c

    .line 217
    :cond_4
    const-string v14, "battery_light"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/DisplaySettings;->mBatteryPulse:Landroid/preference/PreferenceScreen;

    .line 218
    const-string v14, "notification_pulse"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/DisplaySettings;->mNotificationPulse:Landroid/preference/PreferenceScreen;

    .line 221
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v14

    if-nez v14, :cond_5

    if-nez v8, :cond_6

    .line 222
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/DisplaySettings;->mBatteryPulse:Landroid/preference/PreferenceScreen;

    invoke-virtual {v10, v14}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 223
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/DisplaySettings;->mBatteryPulse:Landroid/preference/PreferenceScreen;

    .line 226
    :cond_6
    if-nez v9, :cond_7

    .line 227
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/DisplaySettings;->mNotificationPulse:Landroid/preference/PreferenceScreen;

    invoke-virtual {v10, v14}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 228
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/DisplaySettings;->mNotificationPulse:Landroid/preference/PreferenceScreen;

    .line 233
    :cond_7
    :goto_2
    return-void

    .line 189
    .end local v8           #hasBatteryLed:Z
    .end local v9           #hasNotificationLed:Z
    .end local v10           #lightPrefs:Landroid/preference/PreferenceCategory;
    :cond_8
    const/4 v3, 0x0

    goto :goto_0

    .line 200
    .restart local v3       #animationEnabled:Z
    .restart local v4       #currentAnimation:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/DisplaySettings;->mScreenAnimationStylePreference:Landroid/preference/ListPreference;

    const/4 v15, -0x1

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 201
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/DisplaySettings;->updateScreenAnimationStylePreferenceDescription(I)V

    goto :goto_1

    .line 204
    .end local v3           #animationEnabled:Z
    .end local v4           #currentAnimation:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/DisplaySettings;->mScreenAnimationStylePreference:Landroid/preference/ListPreference;

    invoke-virtual {v1, v14}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 207
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/DisplaySettings;->mScreenAnimationStylePreference:Landroid/preference/ListPreference;

    invoke-virtual {v1, v14}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 231
    .restart local v8       #hasBatteryLed:Z
    .restart local v9       #hasNotificationLed:Z
    .restart local v10       #lightPrefs:Landroid/preference/PreferenceCategory;
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    invoke-virtual {v14, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_2
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "dialogId"

    .prologue
    .line 415
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 416
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f080b77

    new-instance v2, Lcom/android/settings/DisplaySettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings/DisplaySettings$3;-><init>(Lcom/android/settings/DisplaySettings;)V

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->buildGlobalChangeWarningDialog(Landroid/content/Context;ILjava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    .line 424
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 404
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 406
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->unregisterRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 410
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 411
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v6, 0x1

    .line 505
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 506
    .local v1, key:Ljava/lang/String;
    const-string v3, "screen_timeout"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, p2

    .line 507
    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 509
    .local v2, value:I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_off_timeout"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 510
    int-to-long v3, v2

    invoke-direct {p0, v3, v4}, Lcom/android/settings/DisplaySettings;->updateTimeoutPreferenceDescription(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 515
    .end local v2           #value:I
    :cond_0
    :goto_0
    const-string v3, "font_size"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 516
    invoke-virtual {p0, p2}, Lcom/android/settings/DisplaySettings;->writeFontSizePreference(Ljava/lang/Object;)V

    .line 518
    :cond_1
    const-string v3, "screen_animation_style"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 519
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 521
    .restart local v2       #value:I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 523
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_off_animation"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 525
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/settings/DisplaySettings;->updateScreenAnimationStylePreferenceDescription(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 542
    .end local v2           #value:I
    :cond_2
    :goto_1
    return v6

    .line 511
    .restart local v2       #value:I
    .restart local p2
    :catch_0
    move-exception v0

    .line 512
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v3, "DisplaySettings"

    const-string v4, "could not persist screen timeout setting"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 528
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local p2
    :cond_3
    :try_start_2
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_off_animation"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 530
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_animation_style"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 535
    add-int/lit8 v3, v2, 0x1

    invoke-direct {p0, v3}, Lcom/android/settings/DisplaySettings;->updateScreenAnimationStylePreferenceDescription(I)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 537
    :catch_1
    move-exception v0

    .line 538
    .restart local v0       #e:Ljava/lang/NumberFormatException;
    const-string v3, "DisplaySettings"

    const-string v4, "could not persist screen animation style setting"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preference"

    .prologue
    const/4 v0, 0x1

    .line 547
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mFontSizePref:Lcom/android/settings/FontDialogPreference;

    if-ne p1, v1, :cond_1

    .line 548
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->hasMultipleUsers(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 549
    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->showDialog(I)V

    .line 555
    :goto_0
    return v0

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mFontSizePref:Lcom/android/settings/FontDialogPreference;

    invoke-virtual {v0}, Lcom/android/settings/FontDialogPreference;->click()V

    .line 555
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    .line 490
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAdaptiveBacklight:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAdaptiveBacklight:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-static {v0}, Lorg/cyanogenmod/hardware/AdaptiveBacklight;->setEnabled(Z)Z

    move-result v1

    .line 500
    :goto_0
    return v1

    .line 492
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mWakeWhenPluggedOrUnplugged:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_2

    .line 493
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wake_when_plugged_or_unplugged"

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mWakeWhenPluggedOrUnplugged:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 497
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mTapToWake:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_3

    .line 498
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mTapToWake:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-static {v0}, Lorg/cyanogenmod/hardware/TapToWake;->setEnabled(Z)Z

    move-result v1

    goto :goto_0

    .line 500
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 370
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 371
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateDisplayRotationPreferenceDescription()V

    .line 373
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v2, v5}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 376
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 379
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v2, "accelerometer_rotation"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 383
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mAdaptiveBacklight:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    .line 384
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mAdaptiveBacklight:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lorg/cyanogenmod/hardware/AdaptiveBacklight;->isEnabled()Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 387
    :cond_0
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mTapToWake:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_1

    .line 388
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mTapToWake:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lorg/cyanogenmod/hardware/TapToWake;->isEnabled()Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 392
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x111001f

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 395
    .local v1, wakeUpWhenPluggedOrUnpluggedConfig:Z
    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mWakeWhenPluggedOrUnplugged:Landroid/preference/CheckBoxPreference;

    const-string v6, "wake_when_plugged_or_unplugged"

    if-eqz v1, :cond_2

    move v2, v3

    :goto_0
    invoke-static {v0, v6, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_3

    :goto_1
    invoke-virtual {v5, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 399
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateState()V

    .line 400
    return-void

    :cond_2
    move v2, v4

    .line 395
    goto :goto_0

    :cond_3
    move v3, v4

    goto :goto_1
.end method

.method public readFontSizePreference(Landroid/preference/Preference;)V
    .locals 6
    .parameter "pref"

    .prologue
    .line 468
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 475
    .local v2, res:Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {v2, v3}, Lcom/android/settings/FontDialogPreference;->getFontSizeDescription(Landroid/content/res/Resources;F)Ljava/lang/String;

    move-result-object v1

    .line 476
    .local v1, fontDesc:Ljava/lang/String;
    const v3, 0x7f0806de

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 477
    return-void

    .line 469
    .end local v1           #fontDesc:Ljava/lang/String;
    .end local v2           #res:Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 470
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "DisplaySettings"

    const-string v4, "Unable to retrieve font size"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public writeFontSizePreference(Ljava/lang/Object;)V
    .locals 3
    .parameter "objValue"

    .prologue
    .line 481
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 482
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    :goto_0
    return-void

    .line 483
    :catch_0
    move-exception v0

    .line 484
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "DisplaySettings"

    const-string v2, "Unable to save font size"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
