.class public Lcom/android/settings/WirelessSettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "WirelessSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final VOICE_PLUS_SETUP:Landroid/content/ComponentName;


# instance fields
.field private mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

.field private mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

.field private mCm:Landroid/net/ConnectivityManager;

.field private mManageMobilePlanMessage:Ljava/lang/String;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

.field private mNsdEnabler:Lcom/android/settings/NsdEnabler;

.field private mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

.field private mTm:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 77
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "org.cyanogenmod.voiceplus"

    const-string v2, "org.cyanogenmod.voiceplus.VoicePlusSetup"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/WirelessSettings;->VOICE_PLUS_SETUP:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/WirelessSettings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/settings/WirelessSettings;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/settings/WirelessSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    return-object p1
.end method

.method private initSmsApplicationSetting()V
    .locals 11

    .prologue
    .line 198
    const-string v10, "initSmsApplicationSetting:"

    invoke-direct {p0, v10}, Lcom/android/settings/WirelessSettings;->log(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollection(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v9

    .line 203
    .local v9, smsApplications:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;>;"
    invoke-interface {v9}, Ljava/util/Collection;->size()I

    move-result v0

    .line 204
    .local v0, count:I
    new-array v2, v0, [Ljava/lang/CharSequence;

    .line 205
    .local v2, entries:[Ljava/lang/CharSequence;
    new-array v4, v0, [Ljava/lang/CharSequence;

    .line 206
    .local v4, entryValues:[Ljava/lang/CharSequence;
    new-array v3, v0, [Landroid/graphics/drawable/Drawable;

    .line 208
    .local v3, entryImages:[Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 209
    .local v7, packageManager:Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    .line 210
    .local v5, i:I
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 211
    .local v8, smsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    iget-object v10, v8, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    aput-object v10, v2, v5

    .line 212
    iget-object v10, v8, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    aput-object v10, v4, v5

    .line 214
    :try_start_0
    iget-object v10, v8, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v10}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v3, v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 215
    :catch_0
    move-exception v1

    .line 216
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v7}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v3, v5

    goto :goto_1

    .line 220
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v8           #smsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_0
    iget-object v10, p0, Lcom/android/settings/WirelessSettings;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    invoke-virtual {v10, v2}, Lcom/android/settings/SmsListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 221
    iget-object v10, p0, Lcom/android/settings/WirelessSettings;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    invoke-virtual {v10, v4}, Lcom/android/settings/SmsListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 222
    iget-object v10, p0, Lcom/android/settings/WirelessSettings;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    invoke-virtual {v10, v3}, Lcom/android/settings/SmsListPreference;->setEntryDrawables([Landroid/graphics/drawable/Drawable;)V

    .line 223
    invoke-direct {p0}, Lcom/android/settings/WirelessSettings;->updateSmsApplicationSetting()V

    .line 224
    return-void
.end method

.method public static isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "type"

    .prologue
    const/4 v1, 0x1

    .line 252
    invoke-static {p0}, Lcom/android/settings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 258
    :cond_0
    :goto_0
    return v1

    .line 256
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_toggleable_radios"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, toggleable:Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSmsSupported()Z
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v0

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 248
    const-string v0, "WirelessSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    return-void
.end method

.method private updateSmsApplicationSetting()V
    .locals 6

    .prologue
    .line 181
    const-string v4, "updateSmsApplicationSetting:"

    invoke-direct {p0, v4}, Lcom/android/settings/WirelessSettings;->log(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v0

    .line 183
    .local v0, appName:Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 186
    .local v2, packageName:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/WirelessSettings;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    invoke-virtual {v4}, Lcom/android/settings/SmsListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 187
    .local v3, values:[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 188
    aget-object v4, v3, v1

    invoke-virtual {v2, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 189
    iget-object v4, p0, Lcom/android/settings/WirelessSettings;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    invoke-virtual {v4, v1}, Lcom/android/settings/SmsListPreference;->setValueIndex(I)V

    .line 190
    iget-object v4, p0, Lcom/android/settings/WirelessSettings;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    iget-object v5, p0, Lcom/android/settings/WirelessSettings;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    invoke-virtual {v5}, Lcom/android/settings/SmsListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Lcom/android/settings/SmsListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 195
    .end local v1           #i:I
    .end local v2           #packageName:Ljava/lang/String;
    .end local v3           #values:[Ljava/lang/CharSequence;
    :cond_0
    return-void

    .line 187
    .restart local v1       #i:I
    .restart local v2       #packageName:Ljava/lang/String;
    .restart local v3       #values:[Ljava/lang/CharSequence;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 494
    const v0, 0x7f080b87

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 483
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 484
    const-string v1, "exit_ecm_result"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 486
    .local v0, isChoiceYes:Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/AirplaneModeEnabler;->setAirplaneModeInECM(ZZ)V

    .line 489
    .end local v0           #isChoiceYes:Ljava/lang/Boolean;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 490
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 24
    .parameter "savedInstanceState"

    .prologue
    .line 268
    invoke-super/range {p0 .. p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 269
    if-eqz p1, :cond_0

    .line 270
    const-string v22, "mManageMobilePlanMessage"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    .line 272
    :cond_0
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "onCreate: mManageMobilePlanMessage="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/settings/WirelessSettings;->log(Ljava/lang/String;)V

    .line 274
    const-string v22, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/net/ConnectivityManager;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mCm:Landroid/net/ConnectivityManager;

    .line 275
    const-string v22, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    .line 277
    const v22, 0x7f050069

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->addPreferencesFromResource(I)V

    .line 279
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v22

    if-eqz v22, :cond_14

    const/4 v9, 0x1

    .line 281
    .local v9, isSecondaryUser:Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 282
    .local v2, activity:Landroid/app/Activity;
    const-string v22, "toggle_airplane"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    check-cast v22, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    .line 284
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v22

    if-eqz v22, :cond_1

    .line 286
    const-string v22, "mobile_network_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/PreferenceScreen;

    .line 289
    .local v13, manageSub:Landroid/preference/PreferenceScreen;
    if-eqz v13, :cond_1

    .line 290
    invoke-virtual {v13}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 291
    .local v6, intent:Landroid/content/Intent;
    const-string v22, "com.android.phone"

    const-string v23, "com.android.phone.SelectSubscription"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    const-string v22, "PACKAGE"

    const-string v23, "com.android.phone"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    const-string v22, "TARGET_CLASS"

    const-string v23, "com.android.phone.MSimMobileNetworkSubSettings"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    .end local v6           #intent:Landroid/content/Intent;
    .end local v13           #manageSub:Landroid/preference/PreferenceScreen;
    :cond_1
    const-string v22, "toggle_nfc"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/CheckBoxPreference;

    .line 301
    .local v14, nfc:Landroid/preference/CheckBoxPreference;
    const-string v22, "android_beam_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    .line 302
    .local v3, androidBeam:Landroid/preference/PreferenceScreen;
    const-string v22, "toggle_nsd"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/CheckBoxPreference;

    .line 304
    .local v15, nsd:Landroid/preference/CheckBoxPreference;
    new-instance v22, Lcom/android/settings/AirplaneModeEnabler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v2, v1}, Lcom/android/settings/AirplaneModeEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    .line 305
    new-instance v22, Lcom/android/settings/nfc/NfcEnabler;

    move-object/from16 v0, v22

    invoke-direct {v0, v2, v14, v3}, Lcom/android/settings/nfc/NfcEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    .line 307
    const-string v22, "sms_application"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    check-cast v22, Lcom/android/settings/SmsListPreference;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/SmsListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 309
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->initSmsApplicationSetting()V

    .line 312
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 315
    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "airplane_mode_toggleable_radios"

    invoke-static/range {v22 .. v23}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 319
    .local v21, toggleable:Ljava/lang/String;
    if-nez v9, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x1110053

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v22

    if-eqz v22, :cond_15

    const/4 v10, 0x1

    .line 321
    .local v10, isWimaxEnabled:Z
    :goto_1
    if-nez v10, :cond_16

    .line 322
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    .line 323
    .local v20, root:Landroid/preference/PreferenceScreen;
    const-string v22, "wimax_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    .line 324
    .local v19, ps:Landroid/preference/Preference;
    if-eqz v19, :cond_2

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 332
    .end local v19           #ps:Landroid/preference/Preference;
    .end local v20           #root:Landroid/preference/PreferenceScreen;
    :cond_2
    :goto_2
    const-string v22, "wimax_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->protectByRestrictions(Ljava/lang/String;)V

    .line 335
    if-eqz v21, :cond_3

    const-string v22, "wifi"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_4

    .line 336
    :cond_3
    const-string v22, "vpn_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    const-string v23, "toggle_airplane"

    invoke-virtual/range {v22 .. v23}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 338
    :cond_4
    if-eqz v9, :cond_5

    .line 339
    const-string v22, "vpn_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 341
    :cond_5
    const-string v22, "vpn_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->protectByRestrictions(Ljava/lang/String;)V

    .line 343
    if-eqz v21, :cond_6

    const-string v22, "bluetooth"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_6

    .line 348
    :cond_6
    if-eqz v21, :cond_7

    const-string v22, "nfc"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_8

    .line 349
    :cond_7
    const-string v22, "toggle_nfc"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    const-string v23, "toggle_airplane"

    invoke-virtual/range {v22 .. v23}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 350
    const-string v22, "android_beam_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    const-string v23, "toggle_airplane"

    invoke-virtual/range {v22 .. v23}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 354
    :cond_8
    invoke-static {v2}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    move-object/from16 v22, v0

    if-nez v22, :cond_9

    .line 356
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 357
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 358
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    .line 362
    :cond_9
    if-nez v9, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v22

    if-eqz v22, :cond_b

    .line 363
    :cond_a
    const-string v22, "mobile_network_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 364
    const-string v22, "manage_mobile_plan"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 368
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0b0008

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    .line 370
    .local v8, isMobilePlanEnabled:Z
    if-nez v8, :cond_c

    .line 371
    const-string v22, "manage_mobile_plan"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    .line 372
    .local v18, pref:Landroid/preference/Preference;
    if-eqz v18, :cond_c

    .line 373
    const-string v22, "manage_mobile_plan"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 376
    .end local v18           #pref:Landroid/preference/Preference;
    :cond_c
    const-string v22, "mobile_network_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->protectByRestrictions(Ljava/lang/String;)V

    .line 377
    const-string v22, "manage_mobile_plan"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->protectByRestrictions(Ljava/lang/String;)V

    .line 380
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->isSmsSupported()Z

    move-result v22

    if-nez v22, :cond_d

    .line 381
    const-string v22, "sms_application"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 385
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v22

    const-string v23, "com.google.android.apps.googlevoice"

    invoke-static/range {v22 .. v23}, Lcom/android/settings/Utils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_e

    .line 386
    const-string v22, "voice_plus"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 390
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    const-string v23, "android.hardware.type.television"

    invoke-virtual/range {v22 .. v23}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_f

    .line 391
    const-string v22, "toggle_airplane"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 395
    :cond_f
    const-string v22, "proxy_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    .line 396
    .local v12, mGlobalProxy:Landroid/preference/Preference;
    const-string v22, "device_policy"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/admin/DevicePolicyManager;

    .line 399
    .local v11, mDPM:Landroid/app/admin/DevicePolicyManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 400
    invoke-virtual {v11}, Landroid/app/admin/DevicePolicyManager;->getGlobalProxyAdmin()Landroid/content/ComponentName;

    move-result-object v22

    if-nez v22, :cond_18

    const/16 v22, 0x1

    :goto_3
    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 403
    const-string v22, "connectivity"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 405
    .local v4, cm:Landroid/net/ConnectivityManager;
    if-nez v9, :cond_10

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v22

    if-nez v22, :cond_19

    .line 406
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v22

    const-string v23, "tether_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 411
    :goto_4
    const-string v22, "tether_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->protectByRestrictions(Ljava/lang/String;)V

    .line 414
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    .line 416
    .local v17, pm:Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    .line 417
    .local v7, isCellBroadcastAppLinkEnabled:Z
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->isSmsSupported()Z

    move-result v22

    if-eqz v22, :cond_11

    .line 418
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x1110059

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    .line 421
    if-eqz v7, :cond_11

    .line 422
    :try_start_0
    const-string v22, "com.android.cellbroadcastreceiver"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v22

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_11

    .line 424
    const/4 v7, 0x0

    .line 431
    :cond_11
    :goto_5
    if-nez v9, :cond_12

    if-nez v7, :cond_13

    .line 432
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    .line 433
    .restart local v20       #root:Landroid/preference/PreferenceScreen;
    const-string v22, "cell_broadcast_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    .line 434
    .restart local v19       #ps:Landroid/preference/Preference;
    if-eqz v19, :cond_13

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 436
    .end local v19           #ps:Landroid/preference/Preference;
    .end local v20           #root:Landroid/preference/PreferenceScreen;
    :cond_13
    const-string v22, "cell_broadcast_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->protectByRestrictions(Ljava/lang/String;)V

    .line 437
    return-void

    .line 279
    .end local v2           #activity:Landroid/app/Activity;
    .end local v3           #androidBeam:Landroid/preference/PreferenceScreen;
    .end local v4           #cm:Landroid/net/ConnectivityManager;
    .end local v7           #isCellBroadcastAppLinkEnabled:Z
    .end local v8           #isMobilePlanEnabled:Z
    .end local v9           #isSecondaryUser:Z
    .end local v10           #isWimaxEnabled:Z
    .end local v11           #mDPM:Landroid/app/admin/DevicePolicyManager;
    .end local v12           #mGlobalProxy:Landroid/preference/Preference;
    .end local v14           #nfc:Landroid/preference/CheckBoxPreference;
    .end local v15           #nsd:Landroid/preference/CheckBoxPreference;
    .end local v17           #pm:Landroid/content/pm/PackageManager;
    .end local v21           #toggleable:Ljava/lang/String;
    :cond_14
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 319
    .restart local v2       #activity:Landroid/app/Activity;
    .restart local v3       #androidBeam:Landroid/preference/PreferenceScreen;
    .restart local v9       #isSecondaryUser:Z
    .restart local v14       #nfc:Landroid/preference/CheckBoxPreference;
    .restart local v15       #nsd:Landroid/preference/CheckBoxPreference;
    .restart local v21       #toggleable:Ljava/lang/String;
    :cond_15
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 326
    .restart local v10       #isWimaxEnabled:Z
    :cond_16
    if-eqz v21, :cond_17

    const-string v22, "wimax"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_2

    if-eqz v10, :cond_2

    .line 328
    :cond_17
    const-string v22, "wimax_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    .line 329
    .restart local v19       #ps:Landroid/preference/Preference;
    const-string v22, "toggle_airplane"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 400
    .end local v19           #ps:Landroid/preference/Preference;
    .restart local v8       #isMobilePlanEnabled:Z
    .restart local v11       #mDPM:Landroid/app/admin/DevicePolicyManager;
    .restart local v12       #mGlobalProxy:Landroid/preference/Preference;
    :cond_18
    const/16 v22, 0x0

    goto/16 :goto_3

    .line 408
    .restart local v4       #cm:Landroid/net/ConnectivityManager;
    :cond_19
    const-string v22, "tether_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    .line 409
    .local v16, p:Landroid/preference/Preference;
    invoke-static {v4}, Lcom/android/settings/Utils;->getTetheringLabel(Landroid/net/ConnectivityManager;)I

    move-result v22

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_4

    .line 427
    .end local v16           #p:Landroid/preference/Preference;
    .restart local v7       #isCellBroadcastAppLinkEnabled:Z
    .restart local v17       #pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v5

    .line 428
    .local v5, ignored:Ljava/lang/IllegalArgumentException;
    const/4 v7, 0x0

    goto :goto_5
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "dialogId"

    .prologue
    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreateDialog: dialogId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/WirelessSettings;->log(Ljava/lang/String;)V

    .line 229
    packed-switch p1, :pswitch_data_0

    .line 244
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 231
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/WirelessSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/WirelessSettings$1;-><init>(Lcom/android/settings/WirelessSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 229
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onManageMobilePlanClick()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const v9, 0x7f0807a6

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 134
    const-string v6, "onManageMobilePlanClick:"

    invoke-direct {p0, v6}, Lcom/android/settings/WirelessSettings;->log(Ljava/lang/String;)V

    .line 135
    iput-object v10, p0, Lcom/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 138
    .local v4, resources:Landroid/content/res/Resources;
    iget-object v6, p0, Lcom/android/settings/WirelessSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getProvisioningOrActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 139
    .local v2, ni:Landroid/net/NetworkInfo;
    iget-object v6, p0, Lcom/android/settings/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v6

    if-eqz v6, :cond_4

    if-eqz v2, :cond_4

    .line 141
    iget-object v6, p0, Lcom/android/settings/WirelessSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getMobileProvisioningUrl()Ljava/lang/String;

    move-result-object v5

    .line 142
    .local v5, url:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 143
    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.android.server.connectivityservice.CONNECTED_TO_PROVISIONING_NETWORK_ACTION"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 144
    .local v1, intent:Landroid/content/Intent;
    const-string v6, "EXTRA_URL"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 146
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 147
    iput-object v10, p0, Lcom/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    .line 174
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v5           #url:Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lcom/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 175
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onManageMobilePlanClick: message="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settings/WirelessSettings;->log(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0, v8}, Lcom/android/settings/WirelessSettings;->showDialog(I)V

    .line 178
    :cond_0
    return-void

    .line 150
    .restart local v5       #url:Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/android/settings/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v3

    .line 151
    .local v3, operatorName:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 154
    iget-object v6, p0, Lcom/android/settings/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v3

    .line 155
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 156
    const v6, 0x7f0807a5

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    goto :goto_0

    .line 159
    :cond_2
    new-array v6, v8, [Ljava/lang/Object;

    aput-object v3, v6, v7

    invoke-virtual {v4, v9, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    goto :goto_0

    .line 163
    :cond_3
    new-array v6, v8, [Ljava/lang/Object;

    aput-object v3, v6, v7

    invoke-virtual {v4, v9, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    goto :goto_0

    .line 167
    .end local v3           #operatorName:Ljava/lang/String;
    .end local v5           #url:Ljava/lang/String;
    :cond_4
    iget-object v6, p0, Lcom/android/settings/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v6

    if-nez v6, :cond_5

    .line 169
    const v6, 0x7f0807a7

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    goto :goto_0

    .line 172
    :cond_5
    const v6, 0x7f0807a8

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 470
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onPause()V

    .line 472
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirplaneModeEnabler;->pause()V

    .line 473
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcEnabler;->pause()V

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mNsdEnabler:Lcom/android/settings/NsdEnabler;

    if-eqz v0, :cond_1

    .line 477
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mNsdEnabler:Lcom/android/settings/NsdEnabler;

    invoke-virtual {v0}, Lcom/android/settings/NsdEnabler;->pause()V

    .line 479
    :cond_1
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 499
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 500
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V

    .line 501
    invoke-direct {p0}, Lcom/android/settings/WirelessSettings;->updateSmsApplicationSetting()V

    .line 502
    const/4 v0, 0x1

    .line 504
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    .line 107
    invoke-virtual {p0, p2}, Lcom/android/settings/WirelessSettings;->ensurePinRestrictedPreference(Landroid/preference/Preference;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 127
    :goto_0
    return v1

    .line 110
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceTreeClick: preference="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/WirelessSettings;->log(Ljava/lang/String;)V

    .line 111
    iget-object v2, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_1

    const-string v2, "ril.cdma.inecmmode"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 114
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/WirelessSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 118
    :cond_1
    const-string v1, "manage_mobile_plan"

    invoke-virtual {p0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-ne p2, v1, :cond_3

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->onManageMobilePlanClick()V

    .line 127
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/RestrictedSettingsFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_0

    .line 120
    :cond_3
    const-string v1, "voice_plus"

    invoke-virtual {p0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-ne p2, v1, :cond_2

    .line 121
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 122
    .local v0, chooseVoicePlusAccount:Landroid/content/Intent;
    sget-object v1, Lcom/android/settings/WirelessSettings;->VOICE_PLUS_SETUP:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 123
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 124
    invoke-virtual {p0, v0}, Lcom/android/settings/WirelessSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 448
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    .line 450
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirplaneModeEnabler;->resume()V

    .line 451
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcEnabler;->resume()V

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mNsdEnabler:Lcom/android/settings/NsdEnabler;

    if-eqz v0, :cond_1

    .line 455
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mNsdEnabler:Lcom/android/settings/NsdEnabler;

    invoke-virtual {v0}, Lcom/android/settings/NsdEnabler;->resume()V

    .line 457
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 461
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 463
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 464
    const-string v0, "mManageMobilePlanMessage"

    iget-object v1, p0, Lcom/android/settings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 441
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onStart()V

    .line 443
    invoke-direct {p0}, Lcom/android/settings/WirelessSettings;->initSmsApplicationSetting()V

    .line 444
    return-void
.end method
