.class public Lcom/android/settings_ex/profiles/ProfileConfig;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "ProfileConfig.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/profiles/ProfileConfig$AirplaneModeItem;,
        Lcom/android/settings_ex/profiles/ProfileConfig$RingModeItem;,
        Lcom/android/settings_ex/profiles/ProfileConfig$ConnectionItem;,
        Lcom/android/settings_ex/profiles/ProfileConfig$StreamItem;
    }
.end annotation


# instance fields
.field private mAirplaneMode:Lcom/android/settings_ex/profiles/ProfileConfig$AirplaneModeItem;

.field private mConnections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/profiles/ProfileConfig$ConnectionItem;",
            ">;"
        }
    .end annotation
.end field

.field private mExpandedDesktopModePreference:Landroid/preference/ListPreference;

.field private mNamePreference:Lcom/android/settings_ex/profiles/NamePreference;

.field private mProfile:Landroid/app/Profile;

.field private mProfileManager:Landroid/app/ProfileManager;

.field private mRingMode:Lcom/android/settings_ex/profiles/ProfileConfig$RingModeItem;

.field private mScreenLockModePreference:Landroid/preference/ListPreference;

.field private mStreams:[Lcom/android/settings_ex/profiles/ProfileConfig$StreamItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 491
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/profiles/ProfileConfig;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/settings_ex/profiles/ProfileConfig;->doDelete()V

    return-void
.end method

.method private deleteProfile()V
    .locals 3

    .prologue
    .line 421
    iget-object v0, p0, Lcom/android/settings_ex/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    invoke-virtual {v0}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/profiles/ProfileConfig;->mProfileManager:Landroid/app/ProfileManager;

    invoke-virtual {v1}, Landroid/app/ProfileManager;->getActiveProfile()Landroid/app/Profile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    invoke-virtual {p0}, Lcom/android/settings_ex/profiles/ProfileConfig;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0800dd

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/profiles/ProfileConfig;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 424
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 442
    :goto_0
    return-void

    .line 426
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/profiles/ProfileConfig;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 427
    const v1, 0x7f0800bf

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 428
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 429
    const v1, 0x7f0800db

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 430
    const v1, 0x7f080413

    new-instance v2, Lcom/android/settings_ex/profiles/ProfileConfig$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/profiles/ProfileConfig$1;-><init>(Lcom/android/settings_ex/profiles/ProfileConfig;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 435
    const v1, 0x7f0804f7

    new-instance v2, Lcom/android/settings_ex/profiles/ProfileConfig$2;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/profiles/ProfileConfig$2;-><init>(Lcom/android/settings_ex/profiles/ProfileConfig;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 440
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private doDelete()V
    .locals 2

    .prologue
    .line 445
    iget-object v0, p0, Lcom/android/settings_ex/profiles/ProfileConfig;->mProfileManager:Landroid/app/ProfileManager;

    iget-object v1, p0, Lcom/android/settings_ex/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    invoke-virtual {v0, v1}, Landroid/app/ProfileManager;->removeProfile(Landroid/app/Profile;)V

    .line 446
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    .line 447
    invoke-virtual {p0}, Lcom/android/settings_ex/profiles/ProfileConfig;->finish()V

    .line 448
    return-void
.end method

.method private fillList()V
    .locals 27

    .prologue
    .line 205
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/profiles/ProfileConfig;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    .line 208
    .local v15, prefSet:Landroid/preference/PreferenceScreen;
    const-string v24, "profile_general_section"

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceGroup;

    .line 209
    .local v10, generalPrefs:Landroid/preference/PreferenceGroup;
    if-eqz v10, :cond_0

    .line 210
    invoke-virtual {v10}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 213
    new-instance v24, Lcom/android/settings_ex/profiles/NamePreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/profiles/ProfileConfig;->getActivity()Landroid/app/Activity;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/app/Profile;->getName()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v24 .. v26}, Lcom/android/settings_ex/profiles/NamePreference;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/profiles/ProfileConfig;->mNamePreference:Lcom/android/settings_ex/profiles/NamePreference;

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/profiles/ProfileConfig;->mNamePreference:Lcom/android/settings_ex/profiles/NamePreference;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/profiles/NamePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/profiles/ProfileConfig;->mNamePreference:Lcom/android/settings_ex/profiles/NamePreference;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 219
    :cond_0
    const-string v24, "profile_system_settings"

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    check-cast v22, Landroid/preference/PreferenceGroup;

    .line 220
    .local v22, systemPrefs:Landroid/preference/PreferenceGroup;
    if-eqz v22, :cond_6

    .line 221
    invoke-virtual/range {v22 .. v22}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/profiles/ProfileConfig;->mRingMode:Lcom/android/settings_ex/profiles/ProfileConfig$RingModeItem;

    move-object/from16 v24, v0

    if-nez v24, :cond_1

    .line 224
    new-instance v24, Lcom/android/settings_ex/profiles/ProfileConfig$RingModeItem;

    invoke-direct/range {v24 .. v24}, Lcom/android/settings_ex/profiles/ProfileConfig$RingModeItem;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/profiles/ProfileConfig;->mRingMode:Lcom/android/settings_ex/profiles/ProfileConfig$RingModeItem;

    .line 226
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/app/Profile;->getRingMode()Landroid/app/RingModeSettings;

    move-result-object v18

    .line 227
    .local v18, rms:Landroid/app/RingModeSettings;
    if-nez v18, :cond_2

    .line 228
    new-instance v18, Landroid/app/RingModeSettings;

    .end local v18           #rms:Landroid/app/RingModeSettings;
    invoke-direct/range {v18 .. v18}, Landroid/app/RingModeSettings;-><init>()V

    .line 229
    .restart local v18       #rms:Landroid/app/RingModeSettings;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Profile;->setRingMode(Landroid/app/RingModeSettings;)V

    .line 231
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/profiles/ProfileConfig;->mRingMode:Lcom/android/settings_ex/profiles/ProfileConfig$RingModeItem;

    move-object/from16 v24, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/android/settings_ex/profiles/ProfileConfig$RingModeItem;->mSettings:Landroid/app/RingModeSettings;

    .line 232
    new-instance v17, Lcom/android/settings_ex/profiles/ProfileRingModePreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/profiles/ProfileConfig;->getActivity()Landroid/app/Activity;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings_ex/profiles/ProfileRingModePreference;-><init>(Landroid/content/Context;)V

    .line 233
    .local v17, rmp:Lcom/android/settings_ex/profiles/ProfileRingModePreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/profiles/ProfileConfig;->mRingMode:Lcom/android/settings_ex/profiles/ProfileConfig$RingModeItem;

    move-object/from16 v24, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/profiles/ProfileRingModePreference;->setRingModeItem(Lcom/android/settings_ex/profiles/ProfileConfig$RingModeItem;)V

    .line 234
    const v24, 0x7f080113

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/profiles/ProfileRingModePreference;->setTitle(I)V

    .line 235
    const/16 v24, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/profiles/ProfileRingModePreference;->setPersistent(Z)V

    .line 236
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/profiles/ProfileConfig;->getActivity()Landroid/app/Activity;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/profiles/ProfileRingModePreference;->setSummary(Landroid/content/Context;)V

    .line 237
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/profiles/ProfileRingModePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/profiles/ProfileConfig;->mRingMode:Lcom/android/settings_ex/profiles/ProfileConfig$RingModeItem;

    move-object/from16 v24, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/android/settings_ex/profiles/ProfileConfig$RingModeItem;->mCheckbox:Lcom/android/settings_ex/profiles/ProfileRingModePreference;

    .line 239
    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/profiles/ProfileConfig;->mAirplaneMode:Lcom/android/settings_ex/profiles/ProfileConfig$AirplaneModeItem;

    move-object/from16 v24, v0

    if-nez v24, :cond_3

    .line 243
    new-instance v24, Lcom/android/settings_ex/profiles/ProfileConfig$AirplaneModeItem;

    invoke-direct/range {v24 .. v24}, Lcom/android/settings_ex/profiles/ProfileConfig$AirplaneModeItem;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/profiles/ProfileConfig;->mAirplaneMode:Lcom/android/settings_ex/profiles/ProfileConfig$AirplaneModeItem;

    .line 245
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/app/Profile;->getAirplaneMode()Landroid/app/AirplaneModeSettings;

    move-result-object v4

    .line 246
    .local v4, ams:Landroid/app/AirplaneModeSettings;
    if-nez v4, :cond_4

    .line 247
    new-instance v4, Landroid/app/AirplaneModeSettings;

    .end local v4           #ams:Landroid/app/AirplaneModeSettings;
    invoke-direct {v4}, Landroid/app/AirplaneModeSettings;-><init>()V

    .line 248
    .restart local v4       #ams:Landroid/app/AirplaneModeSettings;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/app/Profile;->setAirplaneMode(Landroid/app/AirplaneModeSettings;)V

    .line 250
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/profiles/ProfileConfig;->mAirplaneMode:Lcom/android/settings_ex/profiles/ProfileConfig$AirplaneModeItem;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iput-object v4, v0, Lcom/android/settings_ex/profiles/ProfileConfig$AirplaneModeItem;->mSettings:Landroid/app/AirplaneModeSettings;

    .line 251
    new-instance v3, Lcom/android/settings_ex/profiles/ProfileAirplaneModePreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/profiles/ProfileConfig;->getActivity()Landroid/app/Activity;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v3, v0}, Lcom/android/settings_ex/profiles/ProfileAirplaneModePreference;-><init>(Landroid/content/Context;)V

    .line 252
    .local v3, amp:Lcom/android/settings_ex/profiles/ProfileAirplaneModePreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/profiles/ProfileConfig;->mAirplaneMode:Lcom/android/settings_ex/profiles/ProfileConfig$AirplaneModeItem;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/android/settings_ex/profiles/ProfileAirplaneModePreference;->setAirplaneModeItem(Lcom/android/settings_ex/profiles/ProfileConfig$AirplaneModeItem;)V

    .line 253
    const v24, 0x7f080105

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/android/settings_ex/profiles/ProfileAirplaneModePreference;->setTitle(I)V

    .line 254
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/android/settings_ex/profiles/ProfileAirplaneModePreference;->setPersistent(Z)V

    .line 255
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/profiles/ProfileConfig;->getActivity()Landroid/app/Activity;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/android/settings_ex/profiles/ProfileAirplaneModePreference;->setSummary(Landroid/content/Context;)V

    .line 256
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/settings_ex/profiles/ProfileAirplaneModePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/profiles/ProfileConfig;->mAirplaneMode:Lcom/android/settings_ex/profiles/ProfileConfig$AirplaneModeItem;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iput-object v3, v0, Lcom/android/settings_ex/profiles/ProfileConfig$AirplaneModeItem;->mCheckbox:Lcom/android/settings_ex/profiles/ProfileAirplaneModePreference;

    .line 258
    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 261
    new-instance v24, Landroid/preference/ListPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/profiles/ProfileConfig;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/profiles/ProfileConfig;->mScreenLockModePreference:Landroid/preference/ListPreference;

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/profiles/ProfileConfig;->mScreenLockModePreference:Landroid/preference/ListPreference;

    move-object/from16 v24, v0

    const v25, 0x7f0800fe

    invoke-virtual/range {v24 .. v25}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/profiles/ProfileConfig;->mScreenLockModePreference:Landroid/preference/ListPreference;

    move-object/from16 v24, v0

    const v25, 0x7f0c0079

    invoke-virtual/range {v24 .. v25}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/profiles/ProfileConfig;->mScreenLockModePreference:Landroid/preference/ListPreference;

    move-object/from16 v24, v0

    const v25, 0x7f0c007b

    invoke-virtual/range {v24 .. v25}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/profiles/ProfileConfig;->mScreenLockModePreference:Landroid/preference/ListPreference;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/preference/ListPreference;->setPersistent(Z)V

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/profiles/ProfileConfig;->mScreenLockModePreference:Landroid/preference/ListPreference;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/profiles/ProfileConfig;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0c007a

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/app/Profile;->getScreenLockMode()I

    move-result v26

    aget-object v25, v25, v26

    invoke-virtual/range {v24 .. v25}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/profiles/ProfileConfig;->mScreenLockModePreference:Landroid/preference/ListPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/app/Profile;->getScreenLockMode()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/profiles/ProfileConfig;->mScreenLockModePreference:Landroid/preference/ListPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 271
    const-string v24, "device_policy"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/profiles/ProfileConfig;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/admin/DevicePolicyManager;

    .line 272
    .local v9, dpm:Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v9}, Landroid/app/admin/DevicePolicyManager;->requireSecureKeyguard()Z

    move-result v24

    if-eqz v24, :cond_5

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/profiles/ProfileConfig;->mScreenLockModePreference:Landroid/preference/ListPreference;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/profiles/ProfileConfig;->mScreenLockModePreference:Landroid/preference/ListPreference;

    move-object/from16 v24, v0

    const v25, 0x7f080555

    invoke-virtual/range {v24 .. v25}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 277
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/profiles/ProfileConfig;->mScreenLockModePreference:Landroid/preference/ListPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 280
    new-instance v24, Landroid/preference/ListPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/profiles/ProfileConfig;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/profiles/ProfileConfig;->mExpandedDesktopModePreference:Landroid/preference/ListPreference;

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/profiles/ProfileConfig;->mExpandedDesktopModePreference:Landroid/preference/ListPreference;

    move-object/from16 v24, v0

    const v25, 0x7f080306

    invoke-virtual/range {v24 .. v25}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/profiles/ProfileConfig;->mExpandedDesktopModePreference:Landroid/preference/ListPreference;

    move-object/from16 v24, v0

    const v25, 0x7f0c007c

    invoke-virtual/range {v24 .. v25}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/profiles/ProfileConfig;->mExpandedDesktopModePreference:Landroid/preference/ListPreference;

    move-object/from16 v24, v0

    const v25, 0x7f0c007d

    invoke-virtual/range {v24 .. v25}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/profiles/ProfileConfig;->mExpandedDesktopModePreference:Landroid/preference/ListPreference;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/preference/ListPreference;->setPersistent(Z)V

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/profiles/ProfileConfig;->mExpandedDesktopModePreference:Landroid/preference/ListPreference;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/profiles/ProfileConfig;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0c007c

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/app/Profile;->getExpandedDesktopMode()I

    move-result v26

    aget-object v25, v25, v26

    invoke-virtual/range {v24 .. v25}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/profiles/ProfileConfig;->mExpandedDesktopModePreference:Landroid/preference/ListPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/app/Profile;->getExpandedDesktopMode()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/profiles/ProfileConfig;->mExpandedDesktopModePreference:Landroid/preference/ListPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/profiles/ProfileConfig;->mExpandedDesktopModePreference:Landroid/preference/ListPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 295
    .end local v3           #amp:Lcom/android/settings_ex/profiles/ProfileAirplaneModePreference;
    .end local v4           #ams:Landroid/app/AirplaneModeSettings;
    .end local v9           #dpm:Landroid/app/admin/DevicePolicyManager;
    .end local v17           #rmp:Lcom/android/settings_ex/profiles/ProfileRingModePreference;
    .end local v18           #rms:Landroid/app/RingModeSettings;
    :cond_6
    const-string v24, "audio"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/profiles/ProfileConfig;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 296
    .local v2, am:Landroid/media/AudioManager;
    const-string v24, "profile_volumeoverrides"

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/PreferenceGroup;

    .line 297
    .local v21, streamList:Landroid/preference/PreferenceGroup;
    if-eqz v21, :cond_8

    .line 298
    invoke-virtual/range {v21 .. v21}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 299
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/profiles/ProfileConfig;->mStreams:[Lcom/android/settings_ex/profiles/ProfileConfig$StreamItem;

    .local v5, arr$:[Lcom/android/settings_ex/profiles/ProfileConfig$StreamItem;
    array-length v13, v5

    .local v13, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    :goto_0
    if-ge v12, v13, :cond_8

    aget-object v20, v5, v12

    .line 300
    .local v20, stream:Lcom/android/settings_ex/profiles/ProfileConfig$StreamItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    move-object/from16 v24, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/settings_ex/profiles/ProfileConfig$StreamItem;->mStreamId:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/app/Profile;->getSettingsForStream(I)Landroid/app/StreamSettings;

    move-result-object v19

    .line 301
    .local v19, settings:Landroid/app/StreamSettings;
    if-nez v19, :cond_7

    .line 302
    new-instance v19, Landroid/app/StreamSettings;

    .end local v19           #settings:Landroid/app/StreamSettings;
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/settings_ex/profiles/ProfileConfig$StreamItem;->mStreamId:I

    move/from16 v24, v0

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/app/StreamSettings;-><init>(I)V

    .line 303
    .restart local v19       #settings:Landroid/app/StreamSettings;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Profile;->setStreamSettings(Landroid/app/StreamSettings;)V

    .line 305
    :cond_7
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/settings_ex/profiles/ProfileConfig$StreamItem;->mSettings:Landroid/app/StreamSettings;

    .line 306
    new-instance v14, Lcom/android/settings_ex/profiles/StreamVolumePreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/profiles/ProfileConfig;->getActivity()Landroid/app/Activity;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v14, v0}, Lcom/android/settings_ex/profiles/StreamVolumePreference;-><init>(Landroid/content/Context;)V

    .line 307
    .local v14, pref:Lcom/android/settings_ex/profiles/StreamVolumePreference;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "stream_"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/settings_ex/profiles/ProfileConfig$StreamItem;->mStreamId:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lcom/android/settings_ex/profiles/StreamVolumePreference;->setKey(Ljava/lang/String;)V

    .line 308
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/settings_ex/profiles/ProfileConfig$StreamItem;->mLabel:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lcom/android/settings_ex/profiles/StreamVolumePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 309
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const v25, 0x7f0800e5

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/profiles/ProfileConfig;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v19 .. v19}, Landroid/app/StreamSettings;->getValue()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/settings_ex/profiles/ProfileConfig$StreamItem;->mStreamId:I

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-virtual {v2, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lcom/android/settings_ex/profiles/StreamVolumePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 311
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Lcom/android/settings_ex/profiles/StreamVolumePreference;->setPersistent(Z)V

    .line 312
    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Lcom/android/settings_ex/profiles/StreamVolumePreference;->setStreamItem(Lcom/android/settings_ex/profiles/ProfileConfig$StreamItem;)V

    .line 313
    move-object/from16 v0, v20

    iput-object v14, v0, Lcom/android/settings_ex/profiles/ProfileConfig$StreamItem;->mCheckbox:Lcom/android/settings_ex/profiles/StreamVolumePreference;

    .line 314
    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 299
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 319
    .end local v5           #arr$:[Lcom/android/settings_ex/profiles/ProfileConfig$StreamItem;
    .end local v12           #i$:I
    .end local v13           #len$:I
    .end local v14           #pref:Lcom/android/settings_ex/profiles/StreamVolumePreference;
    .end local v19           #settings:Landroid/app/StreamSettings;
    .end local v20           #stream:Lcom/android/settings_ex/profiles/ProfileConfig$StreamItem;
    :cond_8
    const-string v24, "profile_connectionoverrides"

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceGroup;

    .line 320
    .local v7, connectionList:Landroid/preference/PreferenceGroup;
    if-eqz v7, :cond_a

    .line 321
    invoke-virtual {v7}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/profiles/ProfileConfig;->mConnections:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings_ex/profiles/ProfileConfig$ConnectionItem;

    .line 323
    .local v6, connection:Lcom/android/settings_ex/profiles/ProfileConfig$ConnectionItem;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/profiles/ProfileConfig;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    iget v0, v6, Lcom/android/settings_ex/profiles/ProfileConfig$ConnectionItem;->mChoices:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 324
    .local v8, connectionstrings:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    move-object/from16 v24, v0

    iget v0, v6, Lcom/android/settings_ex/profiles/ProfileConfig$ConnectionItem;->mConnectionId:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/app/Profile;->getSettingsForConnection(I)Landroid/app/ConnectionSettings;

    move-result-object v19

    .line 325
    .local v19, settings:Landroid/app/ConnectionSettings;
    if-nez v19, :cond_9

    .line 326
    new-instance v19, Landroid/app/ConnectionSettings;

    .end local v19           #settings:Landroid/app/ConnectionSettings;
    iget v0, v6, Lcom/android/settings_ex/profiles/ProfileConfig$ConnectionItem;->mConnectionId:I

    move/from16 v24, v0

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/app/ConnectionSettings;-><init>(I)V

    .line 327
    .restart local v19       #settings:Landroid/app/ConnectionSettings;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Profile;->setConnectionSettings(Landroid/app/ConnectionSettings;)V

    .line 329
    :cond_9
    move-object/from16 v0, v19

    iput-object v0, v6, Lcom/android/settings_ex/profiles/ProfileConfig$ConnectionItem;->mSettings:Landroid/app/ConnectionSettings;

    .line 330
    new-instance v14, Lcom/android/settings_ex/profiles/ProfileConnectionPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/profiles/ProfileConfig;->getActivity()Landroid/app/Activity;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v14, v0}, Lcom/android/settings_ex/profiles/ProfileConnectionPreference;-><init>(Landroid/content/Context;)V

    .line 331
    .local v14, pref:Lcom/android/settings_ex/profiles/ProfileConnectionPreference;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "connection_"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget v0, v6, Lcom/android/settings_ex/profiles/ProfileConfig$ConnectionItem;->mConnectionId:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lcom/android/settings_ex/profiles/ProfileConnectionPreference;->setKey(Ljava/lang/String;)V

    .line 332
    iget-object v0, v6, Lcom/android/settings_ex/profiles/ProfileConfig$ConnectionItem;->mLabel:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lcom/android/settings_ex/profiles/ProfileConnectionPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 333
    invoke-virtual/range {v19 .. v19}, Landroid/app/ConnectionSettings;->getValue()I

    move-result v24

    aget-object v24, v8, v24

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lcom/android/settings_ex/profiles/ProfileConnectionPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 334
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Lcom/android/settings_ex/profiles/ProfileConnectionPreference;->setPersistent(Z)V

    .line 335
    invoke-virtual {v14, v6}, Lcom/android/settings_ex/profiles/ProfileConnectionPreference;->setConnectionItem(Lcom/android/settings_ex/profiles/ProfileConfig$ConnectionItem;)V

    .line 336
    iput-object v14, v6, Lcom/android/settings_ex/profiles/ProfileConfig$ConnectionItem;->mCheckbox:Lcom/android/settings_ex/profiles/ProfileConnectionPreference;

    .line 337
    invoke-virtual {v7, v14}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 342
    .end local v6           #connection:Lcom/android/settings_ex/profiles/ProfileConfig$ConnectionItem;
    .end local v8           #connectionstrings:[Ljava/lang/String;
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v14           #pref:Lcom/android/settings_ex/profiles/ProfileConnectionPreference;
    .end local v19           #settings:Landroid/app/ConnectionSettings;
    :cond_a
    const-string v24, "profile_appgroups"

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/PreferenceGroup;

    .line 343
    .local v11, groupList:Landroid/preference/PreferenceGroup;
    if-eqz v11, :cond_b

    .line 344
    invoke-virtual {v11}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/app/Profile;->getProfileGroups()[Landroid/app/ProfileGroup;

    move-result-object v5

    .local v5, arr$:[Landroid/app/ProfileGroup;
    array-length v13, v5

    .restart local v13       #len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    :goto_2
    if-ge v12, v13, :cond_b

    aget-object v16, v5, v12

    .line 346
    .local v16, profileGroup:Landroid/app/ProfileGroup;
    new-instance v14, Landroid/preference/PreferenceScreen;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/profiles/ProfileConfig;->getActivity()Landroid/app/Activity;

    move-result-object v24

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v14, v0, v1}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 347
    .local v14, pref:Landroid/preference/PreferenceScreen;
    invoke-virtual/range {v16 .. v16}, Landroid/app/ProfileGroup;->getUuid()Ljava/util/UUID;

    move-result-object v23

    .line 348
    .local v23, uuid:Ljava/util/UUID;
    invoke-virtual/range {v23 .. v23}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/profiles/ProfileConfig;->mProfileManager:Landroid/app/ProfileManager;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/app/ProfileManager;->getNotificationGroup(Ljava/util/UUID;)Landroid/app/NotificationGroup;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/app/NotificationGroup;->getName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 351
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->setPersistent(Z)V

    .line 352
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->setSelectable(Z)V

    .line 353
    invoke-virtual {v11, v14}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 345
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 356
    .end local v5           #arr$:[Landroid/app/ProfileGroup;
    .end local v12           #i$:I
    .end local v13           #len$:I
    .end local v14           #pref:Landroid/preference/PreferenceScreen;
    .end local v16           #profileGroup:Landroid/app/ProfileGroup;
    .end local v23           #uuid:Ljava/util/UUID;
    :cond_b
    return-void
.end method

.method private startNFCProfileWriter()V
    .locals 4

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/android/settings_ex/profiles/ProfileConfig;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 190
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings_ex/profiles/ProfileConfig;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/settings_ex/profiles/NFCProfileWriter;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 191
    const-string v2, "PROFILE_UUID"

    iget-object v3, p0, Lcom/android/settings_ex/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    invoke-virtual {v3}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    const/high16 v2, 0x2000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 193
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->startActivity(Landroid/content/Intent;)V

    .line 194
    return-void
.end method

.method private startProfileGroupActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 409
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 410
    const-string v0, "ProfileGroup"

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    const-string v0, "Profile"

    iget-object v1, p0, Lcom/android/settings_ex/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings_ex/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    invoke-virtual {v1}, Landroid/app/Profile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 414
    invoke-virtual {p0}, Lcom/android/settings_ex/profiles/ProfileConfig;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 415
    const-class v1, Lcom/android/settings_ex/profiles/ProfileGroupConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v6, 0x1

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 417
    return-void
.end method

.method private startTriggerFragment()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 197
    invoke-virtual {p0}, Lcom/android/settings_ex/profiles/ProfileConfig;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 198
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 199
    const-string v1, "profile"

    iget-object v4, p0, Lcom/android/settings_ex/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    invoke-virtual {v2, v1, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 201
    const-class v1, Lcom/android/settings_ex/profiles/TriggersFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v4, ""

    const/4 v5, 0x0

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 202
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "icicle"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    .line 90
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 92
    new-array v2, v9, [Lcom/android/settings_ex/profiles/ProfileConfig$StreamItem;

    new-instance v3, Lcom/android/settings_ex/profiles/ProfileConfig$StreamItem;

    const v4, 0x7f0806a9

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/profiles/ProfileConfig;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v9, v4}, Lcom/android/settings_ex/profiles/ProfileConfig$StreamItem;-><init>(ILjava/lang/String;)V

    aput-object v3, v2, v10

    new-instance v3, Lcom/android/settings_ex/profiles/ProfileConfig$StreamItem;

    const v4, 0x7f0806a7

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/profiles/ProfileConfig;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v8, v4}, Lcom/android/settings_ex/profiles/ProfileConfig$StreamItem;-><init>(ILjava/lang/String;)V

    aput-object v3, v2, v7

    new-instance v3, Lcom/android/settings_ex/profiles/ProfileConfig$StreamItem;

    const v4, 0x7f0806a3

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/profiles/ProfileConfig;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v6, v4}, Lcom/android/settings_ex/profiles/ProfileConfig$StreamItem;-><init>(ILjava/lang/String;)V

    aput-object v3, v2, v6

    new-instance v3, Lcom/android/settings_ex/profiles/ProfileConfig$StreamItem;

    const/4 v4, 0x5

    const v5, 0x7f0806a4

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/profiles/ProfileConfig;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/settings_ex/profiles/ProfileConfig$StreamItem;-><init>(ILjava/lang/String;)V

    aput-object v3, v2, v8

    iput-object v2, p0, Lcom/android/settings_ex/profiles/ProfileConfig;->mStreams:[Lcom/android/settings_ex/profiles/ProfileConfig$StreamItem;

    .line 99
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/settings_ex/profiles/ProfileConfig;->mConnections:Ljava/util/ArrayList;

    .line 100
    invoke-static {}, Lcom/android/internal/util/cm/QSUtils;->deviceSupportsBluetooth()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    iget-object v2, p0, Lcom/android/settings_ex/profiles/ProfileConfig;->mConnections:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/settings_ex/profiles/ProfileConfig$ConnectionItem;

    const/4 v4, 0x7

    const v5, 0x7f080108

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/profiles/ProfileConfig;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/settings_ex/profiles/ProfileConfig$ConnectionItem;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/profiles/ProfileConfig;->mConnections:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/settings_ex/profiles/ProfileConfig$ConnectionItem;

    const v4, 0x7f080109

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/profiles/ProfileConfig;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v9, v4}, Lcom/android/settings_ex/profiles/ProfileConfig$ConnectionItem;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v2, p0, Lcom/android/settings_ex/profiles/ProfileConfig;->mConnections:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/settings_ex/profiles/ProfileConfig$ConnectionItem;

    const v4, 0x7f080106

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/profiles/ProfileConfig;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v7, v4}, Lcom/android/settings_ex/profiles/ProfileConfig$ConnectionItem;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v2, p0, Lcom/android/settings_ex/profiles/ProfileConfig;->mConnections:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/settings_ex/profiles/ProfileConfig$ConnectionItem;

    const/4 v4, 0x5

    const v5, 0x7f08010b

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/profiles/ProfileConfig;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/settings_ex/profiles/ProfileConfig$ConnectionItem;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-virtual {p0}, Lcom/android/settings_ex/profiles/ProfileConfig;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/util/cm/QSUtils;->deviceSupportsMobileData(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 107
    iget-object v2, p0, Lcom/android/settings_ex/profiles/ProfileConfig;->mConnections:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/settings_ex/profiles/ProfileConfig$ConnectionItem;

    const v4, 0x7f08010a

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/profiles/ProfileConfig;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v10, v4}, Lcom/android/settings_ex/profiles/ProfileConfig$ConnectionItem;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v2, p0, Lcom/android/settings_ex/profiles/ProfileConfig;->mConnections:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/settings_ex/profiles/ProfileConfig$ConnectionItem;

    const v4, 0x7f080107

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/profiles/ProfileConfig;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v6, v4}, Lcom/android/settings_ex/profiles/ProfileConfig$ConnectionItem;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    invoke-virtual {p0}, Lcom/android/settings_ex/profiles/ProfileConfig;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 110
    .local v1, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    if-ne v2, v7, :cond_1

    .line 111
    iget-object v2, p0, Lcom/android/settings_ex/profiles/ProfileConfig;->mConnections:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/settings_ex/profiles/ProfileConfig$ConnectionItem;

    const/16 v4, 0x9

    const v5, 0x7f08010c

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/profiles/ProfileConfig;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0c0075

    invoke-direct {v3, v4, v5, v6}, Lcom/android/settings_ex/profiles/ProfileConfig$ConnectionItem;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    .end local v1           #tm:Landroid/telephony/TelephonyManager;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/profiles/ProfileConfig;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wimax/WimaxHelper;->isWimaxSupported(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 115
    iget-object v2, p0, Lcom/android/settings_ex/profiles/ProfileConfig;->mConnections:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/settings_ex/profiles/ProfileConfig$ConnectionItem;

    const v4, 0x7f08010d

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/profiles/ProfileConfig;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v8, v4}, Lcom/android/settings_ex/profiles/ProfileConfig$ConnectionItem;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/profiles/ProfileConfig;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/util/cm/QSUtils;->deviceSupportsNfc(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 118
    iget-object v2, p0, Lcom/android/settings_ex/profiles/ProfileConfig;->mConnections:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/settings_ex/profiles/ProfileConfig$ConnectionItem;

    const/16 v4, 0x8

    const v5, 0x7f08010e

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/profiles/ProfileConfig;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/settings_ex/profiles/ProfileConfig$ConnectionItem;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_3
    const v2, 0x7f050039

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/profiles/ProfileConfig;->addPreferencesFromResource(I)V

    .line 123
    invoke-virtual {p0}, Lcom/android/settings_ex/profiles/ProfileConfig;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "profile"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ProfileManager;

    iput-object v2, p0, Lcom/android/settings_ex/profiles/ProfileConfig;->mProfileManager:Landroid/app/ProfileManager;

    .line 125
    invoke-virtual {p0}, Lcom/android/settings_ex/profiles/ProfileConfig;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 126
    .local v0, args:Landroid/os/Bundle;
    if-eqz v0, :cond_5

    const-string v2, "Profile"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/app/Profile;

    :goto_0
    iput-object v2, p0, Lcom/android/settings_ex/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    .line 128
    iget-object v2, p0, Lcom/android/settings_ex/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    if-nez v2, :cond_4

    .line 129
    new-instance v2, Landroid/app/Profile;

    const v3, 0x7f0800d4

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/profiles/ProfileConfig;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/Profile;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/settings_ex/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    .line 130
    iget-object v2, p0, Lcom/android/settings_ex/profiles/ProfileConfig;->mProfileManager:Landroid/app/ProfileManager;

    iget-object v3, p0, Lcom/android/settings_ex/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    invoke-virtual {v2, v3}, Landroid/app/ProfileManager;->addProfile(Landroid/app/Profile;)V

    .line 133
    :cond_4
    invoke-virtual {p0, v7}, Lcom/android/settings_ex/profiles/ProfileConfig;->setHasOptionsMenu(Z)V

    .line 135
    return-void

    .line 126
    :cond_5
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 8
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x5

    const/4 v5, 0x0

    .line 139
    invoke-virtual {p0}, Lcom/android/settings_ex/profiles/ProfileConfig;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/util/cm/QSUtils;->deviceSupportsNfc(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 140
    const v3, 0x7f0800c7

    invoke-interface {p1, v5, v7, v5, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f020083

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 142
    .local v1, nfc:Landroid/view/MenuItem;
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 145
    .end local v1           #nfc:Landroid/view/MenuItem;
    :cond_0
    const/4 v3, 0x3

    const v4, 0x7f0800c3

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f020078

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 147
    .local v2, triggers:Landroid/view/MenuItem;
    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 149
    const/4 v3, 0x2

    const v4, 0x7f0800bf

    invoke-interface {p1, v5, v3, v7, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f020088

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 151
    .local v0, delete:Landroid/view/MenuItem;
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 153
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 157
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 168
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 159
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings_ex/profiles/ProfileConfig;->deleteProfile()V

    goto :goto_0

    .line 162
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings_ex/profiles/ProfileConfig;->startNFCProfileWriter()V

    goto :goto_0

    .line 165
    :pswitch_2
    invoke-direct {p0}, Lcom/android/settings_ex/profiles/ProfileConfig;->startTriggerFragment()V

    goto :goto_0

    .line 157
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 181
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 183
    iget-object v0, p0, Lcom/android/settings_ex/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/settings_ex/profiles/ProfileConfig;->mProfileManager:Landroid/app/ProfileManager;

    iget-object v1, p0, Lcom/android/settings_ex/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    invoke-virtual {v0, v1}, Landroid/app/ProfileManager;->updateProfile(Landroid/app/Profile;)V

    .line 186
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v9, 0x1

    .line 360
    instance-of v6, p1, Lcom/android/settings_ex/profiles/StreamVolumePreference;

    if-eqz v6, :cond_1

    .line 361
    iget-object v0, p0, Lcom/android/settings_ex/profiles/ProfileConfig;->mStreams:[Lcom/android/settings_ex/profiles/ProfileConfig$StreamItem;

    .local v0, arr$:[Lcom/android/settings_ex/profiles/ProfileConfig$StreamItem;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_4

    aget-object v5, v0, v2

    .line 362
    .local v5, stream:Lcom/android/settings_ex/profiles/ProfileConfig$StreamItem;
    iget-object v6, v5, Lcom/android/settings_ex/profiles/ProfileConfig$StreamItem;->mCheckbox:Lcom/android/settings_ex/profiles/StreamVolumePreference;

    if-ne p1, v6, :cond_0

    .line 363
    iget-object v7, v5, Lcom/android/settings_ex/profiles/ProfileConfig$StreamItem;->mSettings:Landroid/app/StreamSettings;

    move-object v6, p2

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v7, v6}, Landroid/app/StreamSettings;->setOverride(Z)V

    .line 361
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 366
    .end local v0           #arr$:[Lcom/android/settings_ex/profiles/ProfileConfig$StreamItem;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v5           #stream:Lcom/android/settings_ex/profiles/ProfileConfig$StreamItem;
    :cond_1
    instance-of v6, p1, Lcom/android/settings_ex/profiles/ProfileConnectionPreference;

    if-eqz v6, :cond_3

    .line 367
    iget-object v6, p0, Lcom/android/settings_ex/profiles/ProfileConfig;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/profiles/ProfileConfig$ConnectionItem;

    .line 368
    .local v1, connection:Lcom/android/settings_ex/profiles/ProfileConfig$ConnectionItem;
    iget-object v6, v1, Lcom/android/settings_ex/profiles/ProfileConfig$ConnectionItem;->mCheckbox:Lcom/android/settings_ex/profiles/ProfileConnectionPreference;

    if-ne p1, v6, :cond_2

    .line 369
    iget-object v7, v1, Lcom/android/settings_ex/profiles/ProfileConfig$ConnectionItem;->mSettings:Landroid/app/ConnectionSettings;

    move-object v6, p2

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v7, v6}, Landroid/app/ConnectionSettings;->setOverride(Z)V

    goto :goto_1

    .line 372
    .end local v1           #connection:Lcom/android/settings_ex/profiles/ProfileConfig$ConnectionItem;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_3
    iget-object v6, p0, Lcom/android/settings_ex/profiles/ProfileConfig;->mRingMode:Lcom/android/settings_ex/profiles/ProfileConfig$RingModeItem;

    iget-object v6, v6, Lcom/android/settings_ex/profiles/ProfileConfig$RingModeItem;->mCheckbox:Lcom/android/settings_ex/profiles/ProfileRingModePreference;

    if-ne p1, v6, :cond_5

    .line 373
    iget-object v6, p0, Lcom/android/settings_ex/profiles/ProfileConfig;->mRingMode:Lcom/android/settings_ex/profiles/ProfileConfig$RingModeItem;

    iget-object v6, v6, Lcom/android/settings_ex/profiles/ProfileConfig$RingModeItem;->mSettings:Landroid/app/RingModeSettings;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/app/RingModeSettings;->setOverride(Z)V

    .line 395
    :cond_4
    :goto_2
    return v9

    .line 374
    .restart local p2
    :cond_5
    iget-object v6, p0, Lcom/android/settings_ex/profiles/ProfileConfig;->mAirplaneMode:Lcom/android/settings_ex/profiles/ProfileConfig$AirplaneModeItem;

    iget-object v6, v6, Lcom/android/settings_ex/profiles/ProfileConfig$AirplaneModeItem;->mCheckbox:Lcom/android/settings_ex/profiles/ProfileAirplaneModePreference;

    if-ne p1, v6, :cond_6

    .line 375
    iget-object v6, p0, Lcom/android/settings_ex/profiles/ProfileConfig;->mAirplaneMode:Lcom/android/settings_ex/profiles/ProfileConfig$AirplaneModeItem;

    iget-object v6, v6, Lcom/android/settings_ex/profiles/ProfileConfig$AirplaneModeItem;->mSettings:Landroid/app/AirplaneModeSettings;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/app/AirplaneModeSettings;->setOverride(Z)V

    goto :goto_2

    .line 376
    .restart local p2
    :cond_6
    iget-object v6, p0, Lcom/android/settings_ex/profiles/ProfileConfig;->mNamePreference:Lcom/android/settings_ex/profiles/NamePreference;

    if-ne p1, v6, :cond_8

    .line 377
    iget-object v6, p0, Lcom/android/settings_ex/profiles/ProfileConfig;->mNamePreference:Lcom/android/settings_ex/profiles/NamePreference;

    invoke-virtual {v6}, Lcom/android/settings_ex/profiles/NamePreference;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    .line 378
    .local v4, name:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings_ex/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    invoke-virtual {v6}, Landroid/app/Profile;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 379
    iget-object v6, p0, Lcom/android/settings_ex/profiles/ProfileConfig;->mProfileManager:Landroid/app/ProfileManager;

    invoke-virtual {v6, v4}, Landroid/app/ProfileManager;->profileExists(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 380
    iget-object v6, p0, Lcom/android/settings_ex/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    invoke-virtual {v6, v4}, Landroid/app/Profile;->setName(Ljava/lang/String;)V

    goto :goto_2

    .line 382
    :cond_7
    iget-object v6, p0, Lcom/android/settings_ex/profiles/ProfileConfig;->mNamePreference:Lcom/android/settings_ex/profiles/NamePreference;

    iget-object v7, p0, Lcom/android/settings_ex/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    invoke-virtual {v7}, Landroid/app/Profile;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/settings_ex/profiles/NamePreference;->setName(Ljava/lang/String;)V

    .line 383
    invoke-virtual {p0}, Lcom/android/settings_ex/profiles/ProfileConfig;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0800d7

    invoke-static {v6, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 386
    .end local v4           #name:Ljava/lang/String;
    :cond_8
    iget-object v6, p0, Lcom/android/settings_ex/profiles/ProfileConfig;->mScreenLockModePreference:Landroid/preference/ListPreference;

    if-ne p1, v6, :cond_9

    .line 387
    iget-object v6, p0, Lcom/android/settings_ex/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/app/Profile;->setScreenLockMode(I)V

    .line 388
    iget-object v6, p0, Lcom/android/settings_ex/profiles/ProfileConfig;->mScreenLockModePreference:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/profiles/ProfileConfig;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c007a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    invoke-virtual {v8}, Landroid/app/Profile;->getScreenLockMode()I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 390
    .restart local p2
    :cond_9
    iget-object v6, p0, Lcom/android/settings_ex/profiles/ProfileConfig;->mExpandedDesktopModePreference:Landroid/preference/ListPreference;

    if-ne p1, v6, :cond_4

    .line 391
    iget-object v6, p0, Lcom/android/settings_ex/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/app/Profile;->setExpandedDesktopMode(I)V

    .line 392
    iget-object v6, p0, Lcom/android/settings_ex/profiles/ProfileConfig;->mExpandedDesktopModePreference:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/profiles/ProfileConfig;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c007c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    invoke-virtual {v8}, Landroid/app/Profile;->getExpandedDesktopMode()I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 400
    const-string v0, "ProfileConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceTreeClick(): entered"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    instance-of v0, p2, Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 402
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/profiles/ProfileConfig;->startProfileGroupActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    const/4 v0, 0x1

    .line 405
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 174
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 175
    iget-object v0, p0, Lcom/android/settings_ex/profiles/ProfileConfig;->mProfileManager:Landroid/app/ProfileManager;

    iget-object v1, p0, Lcom/android/settings_ex/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    invoke-virtual {v1}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProfileManager;->getProfile(Ljava/util/UUID;)Landroid/app/Profile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/profiles/ProfileConfig;->mProfile:Landroid/app/Profile;

    .line 176
    invoke-direct {p0}, Lcom/android/settings_ex/profiles/ProfileConfig;->fillList()V

    .line 177
    return-void
.end method
