.class public Lcom/android/settings_ex/cyanogenmod/LockscreenButtons;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "LockscreenButtons.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mActions:[Landroid/preference/ListPreference;

.field private mCameraUnlock:Landroid/preference/CheckBoxPreference;

.field private mHomeUnlock:Landroid/preference/CheckBoxPreference;

.field private mLongBackAction:Landroid/preference/ListPreference;

.field private mLongHomeAction:Landroid/preference/ListPreference;

.field private mLongMenuAction:Landroid/preference/ListPreference;

.field private mMenuUnlock:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private findEntryForValue(Landroid/preference/ListPreference;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "pref"
    .parameter "value"

    .prologue
    .line 197
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 198
    .local v0, entries:[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 199
    aget-object v2, v0, v1

    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 200
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, v1

    .line 203
    :goto_1
    return-object v2

    .line 198
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 203
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private updateEntry(Landroid/preference/ListPreference;)V
    .locals 4
    .parameter "pref"

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/android/settings_ex/cyanogenmod/LockscreenButtons;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, value:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 185
    const-string v1, ""

    .line 188
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/android/settings_ex/cyanogenmod/LockscreenButtons;->findEntryForValue(Landroid/preference/ListPreference;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 189
    .local v0, entry:Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    .line 190
    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 194
    :cond_1
    return-void
.end method

.method private updateUnlockButtonTypes()V
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 152
    const/4 v0, 0x0

    .line 153
    .local v0, canEnableModLockscreen:Z
    invoke-virtual {p0}, Lcom/android/settings_ex/cyanogenmod/LockscreenButtons;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x10400c8

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 155
    .local v3, keyguardPackage:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/cyanogenmod/LockscreenButtons;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7, v3}, Lcom/android/settings_ex/Utils;->getApplicationMetadata(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 157
    .local v4, keyguard_metadata:Landroid/os/Bundle;
    if-eqz v4, :cond_0

    .line 158
    const-string v7, "com.cyanogenmod.keyguard"

    invoke-virtual {v4, v7, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 161
    :cond_0
    if-nez v0, :cond_2

    .line 180
    :cond_1
    :goto_0
    return-void

    .line 166
    :cond_2
    new-instance v7, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings_ex/cyanogenmod/LockscreenButtons;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v5

    .line 167
    .local v5, secure:Z
    invoke-virtual {p0}, Lcom/android/settings_ex/cyanogenmod/LockscreenButtons;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "lockscreen_modlock_enabled"

    invoke-static {v7, v8, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v1, :cond_3

    .line 170
    .local v1, customKeyguardEnabled:Z
    :goto_1
    if-eqz v5, :cond_1

    if-eqz v1, :cond_1

    .line 171
    iget-object v7, p0, Lcom/android/settings_ex/cyanogenmod/LockscreenButtons;->mHomeUnlock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 172
    iget-object v7, p0, Lcom/android/settings_ex/cyanogenmod/LockscreenButtons;->mCameraUnlock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 173
    iget-object v7, p0, Lcom/android/settings_ex/cyanogenmod/LockscreenButtons;->mMenuUnlock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 175
    const v6, 0x7f080165

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/cyanogenmod/LockscreenButtons;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 176
    .local v2, disabled:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings_ex/cyanogenmod/LockscreenButtons;->mHomeUnlock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v2}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v6, p0, Lcom/android/settings_ex/cyanogenmod/LockscreenButtons;->mCameraUnlock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v2}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v6, p0, Lcom/android/settings_ex/cyanogenmod/LockscreenButtons;->mMenuUnlock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v2}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .end local v1           #customKeyguardEnabled:Z
    .end local v2           #disabled:Ljava/lang/String;
    :cond_3
    move v1, v6

    .line 167
    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 20
    .parameter "savedInstanceState"

    .prologue
    .line 68
    invoke-super/range {p0 .. p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/cyanogenmod/LockscreenButtons;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x10e004d

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 72
    .local v3, deviceKeys:I
    and-int/lit8 v17, v3, 0x1

    if-eqz v17, :cond_1

    const/4 v6, 0x1

    .line 73
    .local v6, hasHomeKey:Z
    :goto_0
    and-int/lit8 v17, v3, 0x2

    if-eqz v17, :cond_2

    const/4 v4, 0x1

    .line 74
    .local v4, hasBackKey:Z
    :goto_1
    and-int/lit8 v17, v3, 0x4

    if-eqz v17, :cond_3

    const/4 v7, 0x1

    .line 75
    .local v7, hasMenuKey:Z
    :goto_2
    and-int/lit8 v17, v3, 0x20

    if-eqz v17, :cond_4

    const/4 v5, 0x1

    .line 77
    .local v5, hasCameraKey:Z
    :goto_3
    const v17, 0x7f050025

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/cyanogenmod/LockscreenButtons;->addPreferencesFromResource(I)V

    .line 79
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/cyanogenmod/LockscreenButtons;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v16

    .line 81
    .local v16, prefSet:Landroid/preference/PreferenceScreen;
    const-string v17, "menu_unlock_screen"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/cyanogenmod/LockscreenButtons;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/cyanogenmod/LockscreenButtons;->mMenuUnlock:Landroid/preference/CheckBoxPreference;

    .line 83
    const-string v17, "home_unlock_screen"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/cyanogenmod/LockscreenButtons;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/cyanogenmod/LockscreenButtons;->mHomeUnlock:Landroid/preference/CheckBoxPreference;

    .line 85
    const-string v17, "camera_unlock_screen"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/cyanogenmod/LockscreenButtons;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/cyanogenmod/LockscreenButtons;->mCameraUnlock:Landroid/preference/CheckBoxPreference;

    .line 89
    if-nez v5, :cond_0

    .line 90
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/cyanogenmod/LockscreenButtons;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/cyanogenmod/LockscreenButtons;->mCameraUnlock:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 93
    :cond_0
    const-string v17, "lockscreen_long_press_back"

    invoke-virtual/range {v16 .. v17}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/ListPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/cyanogenmod/LockscreenButtons;->mLongBackAction:Landroid/preference/ListPreference;

    .line 94
    if-eqz v4, :cond_5

    .line 95
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/cyanogenmod/LockscreenButtons;->mLongBackAction:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    const-string v18, "lockscreen_long_back_action"

    invoke-virtual/range {v17 .. v18}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 100
    :goto_4
    const-string v17, "lockscreen_long_press_home"

    invoke-virtual/range {v16 .. v17}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/ListPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/cyanogenmod/LockscreenButtons;->mLongHomeAction:Landroid/preference/ListPreference;

    .line 101
    if-eqz v6, :cond_6

    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/cyanogenmod/LockscreenButtons;->mLongHomeAction:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    const-string v18, "lockscreen_long_home_action"

    invoke-virtual/range {v17 .. v18}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 108
    :goto_5
    const-string v17, "lockscreen_long_press_menu"

    invoke-virtual/range {v16 .. v17}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/ListPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/cyanogenmod/LockscreenButtons;->mLongMenuAction:Landroid/preference/ListPreference;

    .line 109
    if-eqz v7, :cond_7

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/cyanogenmod/LockscreenButtons;->mLongMenuAction:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    const-string v18, "lockscreen_long_menu_action"

    invoke-virtual/range {v17 .. v18}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 116
    :goto_6
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/cyanogenmod/LockscreenButtons;->mLongBackAction:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    aput-object v19, v17, v18

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/cyanogenmod/LockscreenButtons;->mLongHomeAction:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    aput-object v19, v17, v18

    const/16 v18, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/cyanogenmod/LockscreenButtons;->mLongMenuAction:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    aput-object v19, v17, v18

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/cyanogenmod/LockscreenButtons;->mActions:[Landroid/preference/ListPreference;

    .line 119
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/cyanogenmod/LockscreenButtons;->mActions:[Landroid/preference/ListPreference;

    .local v2, arr$:[Landroid/preference/ListPreference;
    array-length v10, v2

    .local v10, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_7
    if-ge v9, v10, :cond_a

    aget-object v15, v2, v9

    .line 120
    .local v15, pref:Landroid/preference/ListPreference;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/cyanogenmod/LockscreenButtons;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/internal/util/cm/QSUtils;->deviceSupportsTorch(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 121
    invoke-virtual {v15}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v13

    .line 122
    .local v13, oldEntries:[Ljava/lang/CharSequence;
    invoke-virtual {v15}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v14

    .line 123
    .local v14, oldValues:[Ljava/lang/CharSequence;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v11, newEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v12, newValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v8, 0x0

    .local v8, i:I
    :goto_8
    array-length v0, v13

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v8, v0, :cond_8

    .line 126
    aget-object v17, v13, v8

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    aget-object v17, v14, v8

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 72
    .end local v2           #arr$:[Landroid/preference/ListPreference;
    .end local v4           #hasBackKey:Z
    .end local v5           #hasCameraKey:Z
    .end local v6           #hasHomeKey:Z
    .end local v7           #hasMenuKey:Z
    .end local v8           #i:I
    .end local v9           #i$:I
    .end local v10           #len$:I
    .end local v11           #newEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v12           #newValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v13           #oldEntries:[Ljava/lang/CharSequence;
    .end local v14           #oldValues:[Ljava/lang/CharSequence;
    .end local v15           #pref:Landroid/preference/ListPreference;
    .end local v16           #prefSet:Landroid/preference/PreferenceScreen;
    :cond_1
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 73
    .restart local v6       #hasHomeKey:Z
    :cond_2
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 74
    .restart local v4       #hasBackKey:Z
    :cond_3
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 75
    .restart local v7       #hasMenuKey:Z
    :cond_4
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 97
    .restart local v5       #hasCameraKey:Z
    .restart local v16       #prefSet:Landroid/preference/PreferenceScreen;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/cyanogenmod/LockscreenButtons;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/cyanogenmod/LockscreenButtons;->mLongBackAction:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_4

    .line 104
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/cyanogenmod/LockscreenButtons;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/cyanogenmod/LockscreenButtons;->mLongHomeAction:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 105
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/cyanogenmod/LockscreenButtons;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/cyanogenmod/LockscreenButtons;->mHomeUnlock:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_5

    .line 112
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/cyanogenmod/LockscreenButtons;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/cyanogenmod/LockscreenButtons;->mLongMenuAction:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 113
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/cyanogenmod/LockscreenButtons;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/cyanogenmod/LockscreenButtons;->mMenuUnlock:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_6

    .line 129
    .restart local v2       #arr$:[Landroid/preference/ListPreference;
    .restart local v8       #i:I
    .restart local v9       #i$:I
    .restart local v10       #len$:I
    .restart local v11       #newEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .restart local v12       #newValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .restart local v13       #oldEntries:[Ljava/lang/CharSequence;
    .restart local v14       #oldValues:[Ljava/lang/CharSequence;
    .restart local v15       #pref:Landroid/preference/ListPreference;
    :cond_8
    const v17, 0x7f0802e2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/cyanogenmod/LockscreenButtons;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    const-string v17, "FLASHLIGHT"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Ljava/lang/CharSequence;

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 133
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Ljava/lang/CharSequence;

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 136
    .end local v8           #i:I
    .end local v11           #newEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v12           #newValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v13           #oldEntries:[Ljava/lang/CharSequence;
    .end local v14           #oldValues:[Ljava/lang/CharSequence;
    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 119
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_7

    .line 138
    .end local v15           #pref:Landroid/preference/ListPreference;
    :cond_a
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "pref"
    .parameter "newValue"

    .prologue
    .line 209
    move-object v0, p1

    check-cast v0, Landroid/preference/ListPreference;

    .local v0, list:Landroid/preference/ListPreference;
    move-object v1, p2

    .line 210
    check-cast v1, Ljava/lang/String;

    .line 212
    .local v1, value:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/cyanogenmod/LockscreenButtons;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 213
    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/cyanogenmod/LockscreenButtons;->findEntryForValue(Landroid/preference/ListPreference;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 216
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 143
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 145
    iget-object v0, p0, Lcom/android/settings_ex/cyanogenmod/LockscreenButtons;->mActions:[Landroid/preference/ListPreference;

    .local v0, arr$:[Landroid/preference/ListPreference;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 146
    .local v3, pref:Landroid/preference/ListPreference;
    invoke-direct {p0, v3}, Lcom/android/settings_ex/cyanogenmod/LockscreenButtons;->updateEntry(Landroid/preference/ListPreference;)V

    .line 145
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 148
    .end local v3           #pref:Landroid/preference/ListPreference;
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/cyanogenmod/LockscreenButtons;->updateUnlockButtonTypes()V

    .line 149
    return-void
.end method
