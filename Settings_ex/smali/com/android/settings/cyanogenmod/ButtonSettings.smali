.class public Lcom/android/settings/cyanogenmod/ButtonSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ButtonSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mAppSwitchLongPressAction:Landroid/preference/ListPreference;

.field private mAppSwitchPressAction:Landroid/preference/ListPreference;

.field private mAssistLongPressAction:Landroid/preference/ListPreference;

.field private mAssistPressAction:Landroid/preference/ListPreference;

.field private mCameraMusicControls:Landroid/preference/CheckBoxPreference;

.field private mCameraSleepOnRelease:Landroid/preference/CheckBoxPreference;

.field private mCameraWake:Landroid/preference/CheckBoxPreference;

.field private mDisableNavigationKeys:Landroid/preference/CheckBoxPreference;

.field private mHandler:Landroid/os/Handler;

.field private mHomeDoubleTapAction:Landroid/preference/ListPreference;

.field private mHomeLongPressAction:Landroid/preference/ListPreference;

.field private mMenuLongPressAction:Landroid/preference/ListPreference;

.field private mMenuPressAction:Landroid/preference/ListPreference;

.field private mSwapVolumeButtons:Landroid/preference/CheckBoxPreference;

.field private mVolumeKeyCursorControl:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/cyanogenmod/ButtonSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/ButtonSettings;->mDisableNavigationKeys:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private handleActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4
    .parameter "pref"
    .parameter "newValue"
    .parameter "setting"

    .prologue
    .line 297
    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    .line 298
    .local v1, value:Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 300
    .local v0, index:I
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 301
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/ButtonSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, p3, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 302
    return-void
.end method

.method private initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/ButtonSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 290
    .local v0, list:Landroid/preference/ListPreference;
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 291
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 292
    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 293
    return-object v0
.end method

.method public static restoreKeyDisabler(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 418
    invoke-static {}, Lorg/cyanogenmod/hardware/KeyDisabler;->isSupported()Z

    move-result v1

    if-nez v1, :cond_0

    .line 424
    :goto_0
    return-void

    .line 422
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dev_force_show_navbar"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-static {p0, v0}, Lcom/android/settings/cyanogenmod/ButtonSettings;->writeDisableNavkeysOption(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method private updateDisableNavkeysOption()V
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 377
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/ButtonSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "dev_force_show_navbar"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_5

    move v3, v7

    .line 380
    .local v3, enabled:Z
    :goto_0
    iget-object v9, p0, Lcom/android/settings/cyanogenmod/ButtonSettings;->mDisableNavigationKeys:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 382
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/ButtonSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    .line 385
    .local v6, prefScreen:Landroid/preference/PreferenceScreen;
    const-string v9, "home_key"

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    .line 387
    .local v4, homeCategory:Landroid/preference/PreferenceCategory;
    const-string v9, "menu_key"

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    .line 389
    .local v5, menuCategory:Landroid/preference/PreferenceCategory;
    const-string v9, "assist_key"

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 391
    .local v1, assistCategory:Landroid/preference/PreferenceCategory;
    const-string v9, "app_switch_key"

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 393
    .local v0, appSwitchCategory:Landroid/preference/PreferenceCategory;
    const-string v9, "button_backlight"

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;

    .line 398
    .local v2, backlight:Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;
    if-eqz v2, :cond_0

    .line 399
    if-nez v3, :cond_6

    move v9, v7

    :goto_1
    invoke-virtual {v2, v9}, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->setEnabled(Z)V

    .line 403
    :cond_0
    if-eqz v4, :cond_1

    .line 404
    if-nez v3, :cond_7

    move v9, v7

    :goto_2
    invoke-virtual {v4, v9}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 406
    :cond_1
    if-eqz v5, :cond_2

    .line 407
    if-nez v3, :cond_8

    move v9, v7

    :goto_3
    invoke-virtual {v5, v9}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 409
    :cond_2
    if-eqz v1, :cond_3

    .line 410
    if-nez v3, :cond_9

    move v9, v7

    :goto_4
    invoke-virtual {v1, v9}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 412
    :cond_3
    if-eqz v0, :cond_4

    .line 413
    if-nez v3, :cond_a

    :goto_5
    invoke-virtual {v0, v7}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 415
    :cond_4
    return-void

    .end local v0           #appSwitchCategory:Landroid/preference/PreferenceCategory;
    .end local v1           #assistCategory:Landroid/preference/PreferenceCategory;
    .end local v2           #backlight:Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;
    .end local v3           #enabled:Z
    .end local v4           #homeCategory:Landroid/preference/PreferenceCategory;
    .end local v5           #menuCategory:Landroid/preference/PreferenceCategory;
    .end local v6           #prefScreen:Landroid/preference/PreferenceScreen;
    :cond_5
    move v3, v8

    .line 377
    goto :goto_0

    .restart local v0       #appSwitchCategory:Landroid/preference/PreferenceCategory;
    .restart local v1       #assistCategory:Landroid/preference/PreferenceCategory;
    .restart local v2       #backlight:Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;
    .restart local v3       #enabled:Z
    .restart local v4       #homeCategory:Landroid/preference/PreferenceCategory;
    .restart local v5       #menuCategory:Landroid/preference/PreferenceCategory;
    .restart local v6       #prefScreen:Landroid/preference/PreferenceScreen;
    :cond_6
    move v9, v8

    .line 399
    goto :goto_1

    :cond_7
    move v9, v8

    .line 404
    goto :goto_2

    :cond_8
    move v9, v8

    .line 407
    goto :goto_3

    :cond_9
    move v9, v8

    .line 410
    goto :goto_4

    :cond_a
    move v7, v8

    .line 413
    goto :goto_5
.end method

.method private static writeDisableNavkeysOption(Landroid/content/Context;Z)V
    .locals 8
    .parameter "context"
    .parameter "enabled"

    .prologue
    const/4 v5, 0x0

    .line 348
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 349
    .local v3, prefs:Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x10e002e

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 352
    .local v1, defaultBrightness:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dev_force_show_navbar"

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    :goto_0
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 354
    invoke-static {p1}, Lorg/cyanogenmod/hardware/KeyDisabler;->setActive(Z)Z

    .line 357
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 359
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz p1, :cond_2

    .line 360
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "button_brightness"

    invoke-static {v4, v6, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 362
    .local v0, currentBrightness:I
    const-string v4, "pre_navbar_button_backlight"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 363
    const-string v4, "pre_navbar_button_backlight"

    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 365
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "button_brightness"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 373
    .end local v0           #currentBrightness:I
    :goto_1
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 374
    return-void

    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    move v4, v5

    .line 352
    goto :goto_0

    .line 368
    .restart local v2       #editor:Landroid/content/SharedPreferences$Editor;
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "button_brightness"

    const-string v6, "pre_navbar_button_backlight"

    invoke-interface {v3, v6, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 371
    const-string v4, "pre_navbar_button_backlight"

    invoke-interface {v2, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 33
    .parameter "savedInstanceState"

    .prologue
    .line 107
    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 109
    const v30, 0x7f05000f

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/settings/cyanogenmod/ButtonSettings;->addPreferencesFromResource(I)V

    .line 111
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/cyanogenmod/ButtonSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    .line 112
    .local v24, res:Landroid/content/res/Resources;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/cyanogenmod/ButtonSettings;->getActivity()Landroid/app/Activity;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    .line 113
    .local v25, resolver:Landroid/content/ContentResolver;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/cyanogenmod/ButtonSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v22

    .line 115
    .local v22, prefScreen:Landroid/preference/PreferenceScreen;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/cyanogenmod/ButtonSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x10e004d

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    .line 118
    .local v10, deviceKeys:I
    and-int/lit8 v30, v10, 0x1

    if-eqz v30, :cond_8

    const/16 v16, 0x1

    .line 119
    .local v16, hasHomeKey:Z
    :goto_0
    and-int/lit8 v30, v10, 0x4

    if-eqz v30, :cond_9

    const/16 v17, 0x1

    .line 120
    .local v17, hasMenuKey:Z
    :goto_1
    and-int/lit8 v30, v10, 0x8

    if-eqz v30, :cond_a

    const/4 v14, 0x1

    .line 121
    .local v14, hasAssistKey:Z
    :goto_2
    and-int/lit8 v30, v10, 0x10

    if-eqz v30, :cond_b

    const/4 v13, 0x1

    .line 122
    .local v13, hasAppSwitchKey:Z
    :goto_3
    and-int/lit8 v30, v10, 0x20

    if-eqz v30, :cond_c

    const/4 v15, 0x1

    .line 124
    .local v15, hasCameraKey:Z
    :goto_4
    const/4 v12, 0x0

    .line 125
    .local v12, hasAnyBindableKey:Z
    const-string v30, "home_key"

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/PreferenceCategory;

    .line 127
    .local v18, homeCategory:Landroid/preference/PreferenceCategory;
    const-string v30, "menu_key"

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/PreferenceCategory;

    .line 129
    .local v20, menuCategory:Landroid/preference/PreferenceCategory;
    const-string v30, "assist_key"

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    .line 131
    .local v4, assistCategory:Landroid/preference/PreferenceCategory;
    const-string v30, "app_switch_key"

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    .line 133
    .local v3, appSwitchCategory:Landroid/preference/PreferenceCategory;
    const-string v30, "camera_key"

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    .line 135
    .local v6, cameraCategory:Landroid/preference/PreferenceCategory;
    const-string v30, "volume_keys"

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v28

    check-cast v28, Landroid/preference/PreferenceCategory;

    .line 138
    .local v28, volumeCategory:Landroid/preference/PreferenceCategory;
    new-instance v30, Landroid/os/Handler;

    invoke-direct/range {v30 .. v30}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/cyanogenmod/ButtonSettings;->mHandler:Landroid/os/Handler;

    .line 141
    const-string v30, "disable_nav_keys"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/settings/cyanogenmod/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v30

    check-cast v30, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/cyanogenmod/ButtonSettings;->mDisableNavigationKeys:Landroid/preference/CheckBoxPreference;

    .line 145
    const/16 v21, 0x0

    .line 146
    .local v21, needsNavigationBar:Z
    invoke-static {}, Lorg/cyanogenmod/hardware/KeyDisabler;->isSupported()Z

    move-result v30

    if-eqz v30, :cond_e

    .line 148
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v29

    .line 149
    .local v29, wm:Landroid/view/IWindowManager;
    invoke-interface/range {v29 .. v29}, Landroid/view/IWindowManager;->needsNavigationBar()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v21

    .line 153
    .end local v29           #wm:Landroid/view/IWindowManager;
    :goto_5
    if-eqz v21, :cond_d

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/cyanogenmod/ButtonSettings;->mDisableNavigationKeys:Landroid/preference/CheckBoxPreference;

    move-object/from16 v30, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 164
    :goto_6
    if-eqz v16, :cond_f

    .line 165
    const v30, 0x7f0b000a

    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v30

    if-nez v30, :cond_0

    .line 166
    const-string v30, "home_wake_screen"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/settings/cyanogenmod/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v30

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 169
    :cond_0
    const v30, 0x10e0028

    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    .line 171
    .local v9, defaultLongPressAction:I
    if-ltz v9, :cond_1

    const/16 v30, 0x5

    move/from16 v0, v30

    if-le v9, v0, :cond_2

    .line 173
    :cond_1
    const/4 v9, 0x0

    .line 176
    :cond_2
    const v30, 0x10e0029

    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    .line 178
    .local v8, defaultDoubleTapAction:I
    if-ltz v8, :cond_3

    const/16 v30, 0x5

    move/from16 v0, v30

    if-le v8, v0, :cond_4

    .line 180
    :cond_3
    const/4 v8, 0x0

    .line 183
    :cond_4
    const-string v30, "key_home_long_press_action"

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-static {v0, v1, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    .line 186
    .local v19, longPressAction:I
    const-string v30, "hardware_keys_home_long_press"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/settings/cyanogenmod/ButtonSettings;->initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/cyanogenmod/ButtonSettings;->mHomeLongPressAction:Landroid/preference/ListPreference;

    .line 188
    const-string v30, "key_home_double_tap_action"

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-static {v0, v1, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 191
    .local v11, doubleTapAction:I
    const-string v30, "hardware_keys_home_double_tap"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v11}, Lcom/android/settings/cyanogenmod/ButtonSettings;->initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/cyanogenmod/ButtonSettings;->mHomeDoubleTapAction:Landroid/preference/ListPreference;

    .line 193
    const/4 v12, 0x1

    .line 198
    .end local v8           #defaultDoubleTapAction:I
    .end local v9           #defaultLongPressAction:I
    .end local v11           #doubleTapAction:I
    .end local v19           #longPressAction:I
    :goto_7
    if-eqz v17, :cond_11

    .line 199
    const-string v30, "key_menu_action"

    const/16 v31, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v23

    .line 201
    .local v23, pressAction:I
    const-string v30, "hardware_keys_menu_press"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/settings/cyanogenmod/ButtonSettings;->initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/cyanogenmod/ButtonSettings;->mMenuPressAction:Landroid/preference/ListPreference;

    .line 203
    const-string v31, "key_menu_long_press_action"

    if-eqz v14, :cond_10

    const/16 v30, 0x0

    :goto_8
    move-object/from16 v0, v25

    move-object/from16 v1, v31

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    .line 206
    .restart local v19       #longPressAction:I
    const-string v30, "hardware_keys_menu_long_press"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/settings/cyanogenmod/ButtonSettings;->initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/cyanogenmod/ButtonSettings;->mMenuLongPressAction:Landroid/preference/ListPreference;

    .line 208
    const/4 v12, 0x1

    .line 213
    .end local v19           #longPressAction:I
    .end local v23           #pressAction:I
    :goto_9
    if-eqz v14, :cond_12

    .line 214
    const-string v30, "key_assist_action"

    const/16 v31, 0x3

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v23

    .line 216
    .restart local v23       #pressAction:I
    const-string v30, "hardware_keys_assist_press"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/settings/cyanogenmod/ButtonSettings;->initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/cyanogenmod/ButtonSettings;->mAssistPressAction:Landroid/preference/ListPreference;

    .line 218
    const-string v30, "key_assist_long_press_action"

    const/16 v31, 0x4

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    .line 220
    .restart local v19       #longPressAction:I
    const-string v30, "hardware_keys_assist_long_press"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/settings/cyanogenmod/ButtonSettings;->initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/cyanogenmod/ButtonSettings;->mAssistLongPressAction:Landroid/preference/ListPreference;

    .line 222
    const/4 v12, 0x1

    .line 227
    .end local v19           #longPressAction:I
    .end local v23           #pressAction:I
    :goto_a
    if-eqz v13, :cond_13

    .line 228
    const-string v30, "key_app_switch_action"

    const/16 v31, 0x2

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v23

    .line 230
    .restart local v23       #pressAction:I
    const-string v30, "hardware_keys_app_switch_press"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/settings/cyanogenmod/ButtonSettings;->initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/cyanogenmod/ButtonSettings;->mAppSwitchPressAction:Landroid/preference/ListPreference;

    .line 232
    const-string v30, "key_app_switch_long_press_action"

    const/16 v31, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    .line 234
    .restart local v19       #longPressAction:I
    const-string v30, "hardware_keys_app_switch_long_press"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/settings/cyanogenmod/ButtonSettings;->initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/cyanogenmod/ButtonSettings;->mAppSwitchLongPressAction:Landroid/preference/ListPreference;

    .line 236
    const/4 v12, 0x1

    .line 241
    .end local v19           #longPressAction:I
    .end local v23           #pressAction:I
    :goto_b
    if-eqz v15, :cond_15

    .line 242
    const-string v30, "camera_wake_screen"

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v30

    check-cast v30, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/cyanogenmod/ButtonSettings;->mCameraWake:Landroid/preference/CheckBoxPreference;

    .line 244
    const-string v30, "camera_sleep_on_release"

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v30

    check-cast v30, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/cyanogenmod/ButtonSettings;->mCameraSleepOnRelease:Landroid/preference/CheckBoxPreference;

    .line 246
    const-string v30, "camera_music_controls"

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v30

    check-cast v30, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/cyanogenmod/ButtonSettings;->mCameraMusicControls:Landroid/preference/CheckBoxPreference;

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/cyanogenmod/ButtonSettings;->mCameraWake:Landroid/preference/CheckBoxPreference;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v27

    .line 249
    .local v27, value:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/cyanogenmod/ButtonSettings;->mCameraMusicControls:Landroid/preference/CheckBoxPreference;

    move-object/from16 v31, v0

    if-nez v27, :cond_14

    const/16 v30, 0x1

    :goto_c
    move-object/from16 v0, v31

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/cyanogenmod/ButtonSettings;->mCameraSleepOnRelease:Landroid/preference/CheckBoxPreference;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 251
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/cyanogenmod/ButtonSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x1110070

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v30

    if-eqz v30, :cond_5

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/cyanogenmod/ButtonSettings;->mCameraSleepOnRelease:Landroid/preference/CheckBoxPreference;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 259
    .end local v27           #value:Z
    :cond_5
    :goto_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/cyanogenmod/ButtonSettings;->getActivity()Landroid/app/Activity;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/android/settings/Utils;->hasVolumeRocker(Landroid/content/Context;)Z

    move-result v30

    if-eqz v30, :cond_17

    .line 260
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/cyanogenmod/ButtonSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v30

    const-string v31, "swap_volume_keys_on_rotation"

    const/16 v32, 0x0

    invoke-static/range {v30 .. v32}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v26

    .line 262
    .local v26, swapVolumeKeys:I
    const-string v30, "swap_volume_buttons"

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v30

    check-cast v30, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/cyanogenmod/ButtonSettings;->mSwapVolumeButtons:Landroid/preference/CheckBoxPreference;

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/cyanogenmod/ButtonSettings;->mSwapVolumeButtons:Landroid/preference/CheckBoxPreference;

    move-object/from16 v31, v0

    if-lez v26, :cond_16

    const/16 v30, 0x1

    :goto_e
    move-object/from16 v0, v31

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 266
    const-string v30, "volume_key_cursor_control"

    const/16 v31, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 268
    .local v7, cursorControlAction:I
    const-string v30, "volume_key_cursor_control"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v7}, Lcom/android/settings/cyanogenmod/ButtonSettings;->initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/cyanogenmod/ButtonSettings;->mVolumeKeyCursorControl:Landroid/preference/ListPreference;

    .line 271
    const v30, 0x7f0b000c

    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v30

    if-nez v30, :cond_6

    .line 272
    const-string v30, "volume_wake_screen"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/settings/cyanogenmod/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 278
    .end local v7           #cursorControlAction:I
    .end local v26           #swapVolumeKeys:I
    :cond_6
    :goto_f
    const-string v30, "button_backlight"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/settings/cyanogenmod/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;

    .line 280
    .local v5, backlight:Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;
    invoke-virtual {v5}, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->isButtonSupported()Z

    move-result v30

    if-nez v30, :cond_7

    invoke-virtual {v5}, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->isKeyboardSupported()Z

    move-result v30

    if-nez v30, :cond_7

    .line 281
    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 284
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/cyanogenmod/ButtonSettings;->getActivity()Landroid/app/Activity;

    move-result-object v30

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/cyanogenmod/ButtonSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v31

    const-string v32, "bluetooth_input_settings"

    invoke-static/range {v30 .. v32}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityFromMetaDataOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 286
    return-void

    .line 118
    .end local v3           #appSwitchCategory:Landroid/preference/PreferenceCategory;
    .end local v4           #assistCategory:Landroid/preference/PreferenceCategory;
    .end local v5           #backlight:Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;
    .end local v6           #cameraCategory:Landroid/preference/PreferenceCategory;
    .end local v12           #hasAnyBindableKey:Z
    .end local v13           #hasAppSwitchKey:Z
    .end local v14           #hasAssistKey:Z
    .end local v15           #hasCameraKey:Z
    .end local v16           #hasHomeKey:Z
    .end local v17           #hasMenuKey:Z
    .end local v18           #homeCategory:Landroid/preference/PreferenceCategory;
    .end local v20           #menuCategory:Landroid/preference/PreferenceCategory;
    .end local v21           #needsNavigationBar:Z
    .end local v28           #volumeCategory:Landroid/preference/PreferenceCategory;
    :cond_8
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 119
    .restart local v16       #hasHomeKey:Z
    :cond_9
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 120
    .restart local v17       #hasMenuKey:Z
    :cond_a
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 121
    .restart local v14       #hasAssistKey:Z
    :cond_b
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 122
    .restart local v13       #hasAppSwitchKey:Z
    :cond_c
    const/4 v15, 0x0

    goto/16 :goto_4

    .line 157
    .restart local v3       #appSwitchCategory:Landroid/preference/PreferenceCategory;
    .restart local v4       #assistCategory:Landroid/preference/PreferenceCategory;
    .restart local v6       #cameraCategory:Landroid/preference/PreferenceCategory;
    .restart local v12       #hasAnyBindableKey:Z
    .restart local v15       #hasCameraKey:Z
    .restart local v18       #homeCategory:Landroid/preference/PreferenceCategory;
    .restart local v20       #menuCategory:Landroid/preference/PreferenceCategory;
    .restart local v21       #needsNavigationBar:Z
    .restart local v28       #volumeCategory:Landroid/preference/PreferenceCategory;
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/cyanogenmod/ButtonSettings;->updateDisableNavkeysOption()V

    goto/16 :goto_6

    .line 160
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/cyanogenmod/ButtonSettings;->mDisableNavigationKeys:Landroid/preference/CheckBoxPreference;

    move-object/from16 v30, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_6

    .line 195
    :cond_f
    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_7

    .line 203
    .restart local v23       #pressAction:I
    :cond_10
    const/16 v30, 0x3

    goto/16 :goto_8

    .line 210
    .end local v23           #pressAction:I
    :cond_11
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_9

    .line 224
    :cond_12
    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_a

    .line 238
    :cond_13
    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_b

    .line 249
    .restart local v27       #value:Z
    :cond_14
    const/16 v30, 0x0

    goto/16 :goto_c

    .line 256
    .end local v27           #value:Z
    :cond_15
    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_d

    .line 264
    .restart local v26       #swapVolumeKeys:I
    :cond_16
    const/16 v30, 0x0

    goto/16 :goto_e

    .line 275
    .end local v26           #swapVolumeKeys:I
    :cond_17
    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_f

    .line 150
    :catch_0
    move-exception v30

    goto/16 :goto_5
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v0, 0x1

    .line 306
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/ButtonSettings;->mHomeLongPressAction:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_0

    .line 307
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/ButtonSettings;->mHomeLongPressAction:Landroid/preference/ListPreference;

    const-string v2, "key_home_long_press_action"

    invoke-direct {p0, v1, p2, v2}, Lcom/android/settings/cyanogenmod/ButtonSettings;->handleActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    .line 344
    :goto_0
    return v0

    .line 310
    :cond_0
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/ButtonSettings;->mHomeDoubleTapAction:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_1

    .line 311
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/ButtonSettings;->mHomeDoubleTapAction:Landroid/preference/ListPreference;

    const-string v2, "key_home_double_tap_action"

    invoke-direct {p0, v1, p2, v2}, Lcom/android/settings/cyanogenmod/ButtonSettings;->handleActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 314
    :cond_1
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/ButtonSettings;->mMenuPressAction:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_2

    .line 315
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/ButtonSettings;->mMenuPressAction:Landroid/preference/ListPreference;

    const-string v2, "key_menu_action"

    invoke-direct {p0, v1, p2, v2}, Lcom/android/settings/cyanogenmod/ButtonSettings;->handleActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 318
    :cond_2
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/ButtonSettings;->mMenuLongPressAction:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_3

    .line 319
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/ButtonSettings;->mMenuLongPressAction:Landroid/preference/ListPreference;

    const-string v2, "key_menu_long_press_action"

    invoke-direct {p0, v1, p2, v2}, Lcom/android/settings/cyanogenmod/ButtonSettings;->handleActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 322
    :cond_3
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/ButtonSettings;->mAssistPressAction:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_4

    .line 323
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/ButtonSettings;->mAssistPressAction:Landroid/preference/ListPreference;

    const-string v2, "key_assist_action"

    invoke-direct {p0, v1, p2, v2}, Lcom/android/settings/cyanogenmod/ButtonSettings;->handleActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 326
    :cond_4
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/ButtonSettings;->mAssistLongPressAction:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_5

    .line 327
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/ButtonSettings;->mAssistLongPressAction:Landroid/preference/ListPreference;

    const-string v2, "key_assist_long_press_action"

    invoke-direct {p0, v1, p2, v2}, Lcom/android/settings/cyanogenmod/ButtonSettings;->handleActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 330
    :cond_5
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/ButtonSettings;->mAppSwitchPressAction:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_6

    .line 331
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/ButtonSettings;->mAppSwitchPressAction:Landroid/preference/ListPreference;

    const-string v2, "key_app_switch_action"

    invoke-direct {p0, v1, p2, v2}, Lcom/android/settings/cyanogenmod/ButtonSettings;->handleActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 334
    :cond_6
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/ButtonSettings;->mAppSwitchLongPressAction:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_7

    .line 335
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/ButtonSettings;->mAppSwitchLongPressAction:Landroid/preference/ListPreference;

    const-string v2, "key_app_switch_long_press_action"

    invoke-direct {p0, v1, p2, v2}, Lcom/android/settings/cyanogenmod/ButtonSettings;->handleActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 338
    :cond_7
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/ButtonSettings;->mVolumeKeyCursorControl:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_8

    .line 339
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/ButtonSettings;->mVolumeKeyCursorControl:Landroid/preference/ListPreference;

    const-string v2, "volume_key_cursor_control"

    invoke-direct {p0, v1, p2, v2}, Lcom/android/settings/cyanogenmod/ButtonSettings;->handleActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 344
    :cond_8
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 429
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/ButtonSettings;->mSwapVolumeButtons:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_3

    .line 430
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/ButtonSettings;->mSwapVolumeButtons:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/ButtonSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    .line 432
    .local v1, value:I
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/ButtonSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "swap_volume_keys_on_rotation"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 452
    .end local v1           #value:I
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    :goto_2
    return v1

    :cond_2
    move v1, v2

    .line 430
    goto :goto_0

    .line 434
    :cond_3
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/ButtonSettings;->mCameraWake:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_5

    .line 436
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/ButtonSettings;->mCameraWake:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 437
    .local v0, isCameraWakeEnabled:Z
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/ButtonSettings;->mCameraMusicControls:Landroid/preference/CheckBoxPreference;

    if-nez v0, :cond_4

    move v2, v1

    :cond_4
    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 438
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/ButtonSettings;->mCameraSleepOnRelease:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_2

    .line 440
    .end local v0           #isCameraWakeEnabled:Z
    :cond_5
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/ButtonSettings;->mDisableNavigationKeys:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_1

    .line 441
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/ButtonSettings;->mDisableNavigationKeys:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 442
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/ButtonSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/cyanogenmod/ButtonSettings;->mDisableNavigationKeys:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/cyanogenmod/ButtonSettings;->writeDisableNavkeysOption(Landroid/content/Context;Z)V

    .line 443
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/ButtonSettings;->updateDisableNavkeysOption()V

    .line 444
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/ButtonSettings;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/settings/cyanogenmod/ButtonSettings$1;

    invoke-direct {v3, p0}, Lcom/android/settings/cyanogenmod/ButtonSettings$1;-><init>(Lcom/android/settings/cyanogenmod/ButtonSettings;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method
