.class public Lcom/android/settings/SecuritySettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "SecuritySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mIsPrimary:Z

.field private mKeyStore:Landroid/security/KeyStore;

.field private mLockAfter:Landroid/preference/ListPreference;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNotificationAccess:Landroid/preference/Preference;

.field private mPM:Landroid/content/pm/PackageManager;

.field private mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

.field private mResetCredentials:Landroid/preference/Preference;

.field private mShowPassword:Landroid/preference/CheckBoxPreference;

.field private mSlideLockScreenOffDelay:Landroid/preference/ListPreference;

.field private mSlideLockTimeoutDelay:Landroid/preference/ListPreference;

.field private mSmsSecurityCheck:Landroid/preference/ListPreference;

.field private mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

.field private mToggleVerifyApps:Landroid/preference/CheckBoxPreference;

.field private mVisibleDots:Landroid/preference/CheckBoxPreference;

.field private mVisibleErrorPattern:Landroid/preference/CheckBoxPreference;

.field private mVisiblePattern:Landroid/preference/CheckBoxPreference;

.field private mWarnInstallApps:Landroid/content/DialogInterface;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method private checkPowerInstantLockDependency()V
    .locals 6

    .prologue
    .line 603
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    .line 604
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_screen_lock_after_timeout"

    const-wide/16 v4, 0x1388

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 606
    .local v0, timeout:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 607
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 612
    .end local v0           #timeout:J
    :cond_0
    :goto_0
    return-void

    .line 609
    .restart local v0       #timeout:J
    :cond_1
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 38

    .prologue
    .line 153
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v21

    .line 154
    .local v21, root:Landroid/preference/PreferenceScreen;
    if-eqz v21, :cond_0

    .line 155
    invoke-virtual/range {v21 .. v21}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 157
    :cond_0
    const v32, 0x7f05003f

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v21

    .line 161
    const/4 v11, 0x0

    .line 162
    .local v11, isCmSecurity:Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    .line 163
    .local v4, args:Landroid/os/Bundle;
    if-eqz v4, :cond_1

    .line 164
    const-string v32, "cm_security"

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    .line 167
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    .line 168
    .local v20, resolver:Landroid/content/ContentResolver;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    .line 171
    .local v18, res:Landroid/content/res/Resources;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    .line 174
    .local v16, pm:Landroid/content/pm/PackageManager;
    const/16 v19, 0x0

    .line 175
    .local v19, resid:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v32

    if-nez v32, :cond_c

    .line 177
    const-string v32, "user"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/UserManager;

    .line 178
    .local v12, mUm:Landroid/os/UserManager;
    const/16 v32, 0x1

    move/from16 v0, v32

    invoke-virtual {v12, v0}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v31

    .line 179
    .local v31, users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_a

    const/16 v23, 0x1

    .line 181
    .local v23, singleUser:Z
    :goto_0
    if-eqz v23, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v32

    if-eqz v32, :cond_b

    .line 182
    const v19, 0x7f050045

    .line 204
    .end local v12           #mUm:Landroid/os/UserManager;
    .end local v23           #singleUser:Z
    .end local v31           #users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 208
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v32

    if-nez v32, :cond_e

    const/16 v32, 0x1

    :goto_2
    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/SecuritySettings;->mIsPrimary:Z

    .line 210
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SecuritySettings;->mIsPrimary:Z

    move/from16 v32, v0

    if-nez v32, :cond_2

    .line 212
    const-string v32, "owner_info_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    .line 213
    .local v15, ownerInfoPref:Landroid/preference/Preference;
    if-eqz v15, :cond_2

    .line 214
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v32

    if-eqz v32, :cond_f

    .line 215
    const v32, 0x7f080529

    move/from16 v0, v32

    invoke-virtual {v15, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 222
    .end local v15           #ownerInfoPref:Landroid/preference/Preference;
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SecuritySettings;->mIsPrimary:Z

    move/from16 v32, v0

    if-eqz v32, :cond_3

    if-nez v11, :cond_3

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v32

    packed-switch v32, :pswitch_data_0

    .line 236
    :cond_3
    :goto_4
    :pswitch_0
    const-string v32, "lock_after_timeout"

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v32

    check-cast v32, Landroid/preference/ListPreference;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v32, v0

    if-eqz v32, :cond_10

    .line 238
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->setupLockAfterPreference()V

    .line 239
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->updateLockAfterPreferenceSummary()V

    .line 260
    :cond_4
    :goto_5
    if-eqz v11, :cond_5

    .line 262
    const-string v32, "power_button_instantly_locks"

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v32

    check-cast v32, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    .line 264
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->checkPowerInstantLockDependency()V

    .line 268
    :cond_5
    const-string v32, "biometric_weak_liveliness"

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v32

    check-cast v32, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    .line 272
    const-string v32, "visiblepattern"

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v32

    check-cast v32, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    .line 275
    const-string v32, "visible_error_pattern"

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v32

    check-cast v32, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mVisibleErrorPattern:Landroid/preference/CheckBoxPreference;

    .line 278
    const-string v32, "visibledots"

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v32

    check-cast v32, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mVisibleDots:Landroid/preference/CheckBoxPreference;

    .line 281
    const-string v32, "power_button_instantly_locks"

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v32

    check-cast v32, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    .line 285
    const v32, 0x7f050041

    move/from16 v0, v19

    move/from16 v1, v32

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v32

    const/high16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_8

    .line 288
    const-string v32, "security_category"

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    check-cast v22, Landroid/preference/PreferenceGroup;

    .line 290
    .local v22, securityCategory:Landroid/preference/PreferenceGroup;
    if-eqz v22, :cond_8

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    move-object/from16 v32, v0

    if-eqz v32, :cond_6

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    move-object/from16 v32, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 294
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mVisibleErrorPattern:Landroid/preference/CheckBoxPreference;

    move-object/from16 v32, v0

    if-eqz v32, :cond_7

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mVisibleErrorPattern:Landroid/preference/CheckBoxPreference;

    move-object/from16 v32, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 297
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mVisibleDots:Landroid/preference/CheckBoxPreference;

    move-object/from16 v32, v0

    if-eqz v32, :cond_8

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mVisibleDots:Landroid/preference/CheckBoxPreference;

    move-object/from16 v32, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 304
    .end local v22           #securityCategory:Landroid/preference/PreferenceGroup;
    :cond_8
    if-nez v11, :cond_14

    .line 305
    const v32, 0x7f050047

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 307
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v32

    if-eqz v32, :cond_18

    .line 308
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v28

    .line 309
    .local v28, tm:Landroid/telephony/MSimTelephonyManager;
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v14

    .line 310
    .local v14, numPhones:I
    const/4 v7, 0x1

    .line 311
    .local v7, disableLock:Z
    const/16 v17, 0x1

    .line 312
    .local v17, removeLock:Z
    const/4 v8, 0x0

    .local v8, i:I
    :goto_6
    if-ge v8, v14, :cond_11

    .line 314
    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Landroid/telephony/MSimTelephonyManager;->hasIccCard(I)Z

    move-result v32

    if-eqz v32, :cond_9

    .line 316
    const/16 v17, 0x0

    .line 317
    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Landroid/telephony/MSimTelephonyManager;->getSimState(I)I

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_9

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Landroid/telephony/MSimTelephonyManager;->getSimState(I)I

    move-result v32

    if-eqz v32, :cond_9

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Landroid/telephony/MSimTelephonyManager;->getSimState(I)I

    move-result v32

    const/16 v33, 0x6

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_9

    .line 320
    const/4 v7, 0x0

    .line 312
    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 179
    .end local v7           #disableLock:Z
    .end local v8           #i:I
    .end local v14           #numPhones:I
    .end local v17           #removeLock:Z
    .end local v28           #tm:Landroid/telephony/MSimTelephonyManager;
    .restart local v12       #mUm:Landroid/os/UserManager;
    .restart local v31       #users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_a
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 184
    .restart local v23       #singleUser:Z
    :cond_b
    const v19, 0x7f050042

    goto/16 :goto_1

    .line 186
    .end local v12           #mUm:Landroid/os/UserManager;
    .end local v23           #singleUser:Z
    .end local v31           #users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v32

    if-eqz v32, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v32

    if-eqz v32, :cond_d

    .line 188
    const v19, 0x7f050041

    goto/16 :goto_1

    .line 190
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v32

    sparse-switch v32, :sswitch_data_0

    goto/16 :goto_1

    .line 192
    :sswitch_0
    const v19, 0x7f050049

    .line 193
    goto/16 :goto_1

    .line 195
    :sswitch_1
    const v19, 0x7f05004c

    .line 196
    goto/16 :goto_1

    .line 200
    :sswitch_2
    const v19, 0x7f050048

    goto/16 :goto_1

    .line 208
    :cond_e
    const/16 v32, 0x0

    goto/16 :goto_2

    .line 217
    .restart local v15       #ownerInfoPref:Landroid/preference/Preference;
    :cond_f
    const v32, 0x7f080527

    move/from16 v0, v32

    invoke-virtual {v15, v0}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_3

    .line 226
    .end local v15           #ownerInfoPref:Landroid/preference/Preference;
    :pswitch_1
    const v32, 0x7f050044

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    goto/16 :goto_4

    .line 230
    :pswitch_2
    const v32, 0x7f05004e

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    goto/16 :goto_4

    .line 240
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v32

    if-nez v32, :cond_4

    if-eqz v11, :cond_4

    .line 241
    const v32, 0x7f05004d

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 243
    const-string v32, "slide_lock_timeout_delay"

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v32

    check-cast v32, Landroid/preference/ListPreference;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mSlideLockTimeoutDelay:Landroid/preference/ListPreference;

    .line 245
    const-string v32, "screen_lock_slide_timeout_delay"

    const/16 v33, 0x1388

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v25

    .line 247
    .local v25, slideTimeoutDelay:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mSlideLockTimeoutDelay:Landroid/preference/ListPreference;

    move-object/from16 v32, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 248
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->updateSlideAfterTimeoutSummary()V

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mSlideLockTimeoutDelay:Landroid/preference/ListPreference;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 251
    const-string v32, "slide_lock_screenoff_delay"

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v32

    check-cast v32, Landroid/preference/ListPreference;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mSlideLockScreenOffDelay:Landroid/preference/ListPreference;

    .line 253
    const-string v32, "screen_lock_slide_screenoff_delay"

    const/16 v33, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v24

    .line 255
    .local v24, slideScreenOffDelay:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mSlideLockScreenOffDelay:Landroid/preference/ListPreference;

    move-object/from16 v32, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 256
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->updateSlideAfterScreenOffSummary()V

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mSlideLockScreenOffDelay:Landroid/preference/ListPreference;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_5

    .line 324
    .end local v24           #slideScreenOffDelay:I
    .end local v25           #slideTimeoutDelay:I
    .restart local v7       #disableLock:Z
    .restart local v8       #i:I
    .restart local v14       #numPhones:I
    .restart local v17       #removeLock:Z
    .restart local v28       #tm:Landroid/telephony/MSimTelephonyManager;
    :cond_11
    if-eqz v17, :cond_17

    .line 325
    const-string v32, "sim_lock"

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v32

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 348
    .end local v7           #disableLock:Z
    .end local v8           #i:I
    .end local v14           #numPhones:I
    .end local v17           #removeLock:Z
    .end local v28           #tm:Landroid/telephony/MSimTelephonyManager;
    :cond_12
    :goto_7
    const-string v32, "show_password"

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v32

    check-cast v32, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    .line 349
    const-string v32, "reset_credentials"

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    .line 351
    const-string v32, "sim_lock"

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v32

    if-eqz v32, :cond_13

    .line 353
    const-string v32, "sim_lock_settings"

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    .line 355
    .local v9, iccLock:Landroid/preference/Preference;
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 356
    .local v10, intent:Landroid/content/Intent;
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v32

    if-eqz v32, :cond_1c

    .line 357
    const-string v32, "com.android.settings"

    const-string v33, "com.android.settings.SelectSubscription"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 359
    const-string v32, "PACKAGE"

    const-string v33, "com.android.settings"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 360
    const-string v32, "TARGET_CLASS"

    const-string v33, "com.android.settings.IccLockSettings"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 365
    :goto_8
    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 369
    .end local v9           #iccLock:Landroid/preference/Preference;
    .end local v10           #intent:Landroid/content/Intent;
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v32

    const-string v33, "user"

    invoke-virtual/range {v32 .. v33}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/os/UserManager;

    .line 370
    .local v30, um:Landroid/os/UserManager;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mKeyStore:Landroid/security/KeyStore;

    .line 371
    const-string v32, "no_config_credentials"

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_1e

    .line 372
    const-string v32, "credential_storage_type"

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 374
    .local v5, credentialStorageType:Landroid/preference/Preference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/security/KeyStore;->isHardwareBacked()Z

    move-result v32

    if-eqz v32, :cond_1d

    const v27, 0x7f080a17

    .line 377
    .local v27, storageSummaryRes:I
    :goto_9
    move/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 384
    .end local v5           #credentialStorageType:Landroid/preference/Preference;
    .end local v27           #storageSummaryRes:I
    :goto_a
    const-string v32, "device_admin_category"

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceGroup;

    .line 386
    .local v6, deviceAdminCategory:Landroid/preference/PreferenceGroup;
    const-string v32, "toggle_install_applications"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v32

    check-cast v32, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    move-object/from16 v32, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->isNonMarketAppsAllowed()Z

    move-result v33

    invoke-virtual/range {v32 .. v33}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SecuritySettings;->mIsPrimary:Z

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 394
    const-string v32, "toggle_verify_applications"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v32

    check-cast v32, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mToggleVerifyApps:Landroid/preference/CheckBoxPreference;

    .line 395
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SecuritySettings;->mIsPrimary:Z

    move/from16 v32, v0

    if-eqz v32, :cond_20

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->showVerifierSetting()Z

    move-result v32

    if-eqz v32, :cond_20

    .line 396
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->isVerifierInstalled()Z

    move-result v32

    if-eqz v32, :cond_1f

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mToggleVerifyApps:Landroid/preference/CheckBoxPreference;

    move-object/from16 v32, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->isVerifyAppsEnabled()Z

    move-result v33

    invoke-virtual/range {v32 .. v33}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 411
    :goto_b
    const v32, 0x7f050040

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 412
    const-string v32, "sms_security_check_limit"

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v32

    check-cast v32, Landroid/preference/ListPreference;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mSmsSecurityCheck:Landroid/preference/ListPreference;

    .line 414
    const-string v32, "android.hardware.telephony"

    move-object/from16 v0, v16

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_22

    .line 415
    const-string v32, "sms_security_check_limit"

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v32

    check-cast v32, Landroid/preference/ListPreference;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mSmsSecurityCheck:Landroid/preference/ListPreference;

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mSmsSecurityCheck:Landroid/preference/ListPreference;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mSmsSecurityCheck:Landroid/preference/ListPreference;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v26

    .line 418
    .local v26, smsSecurityCheck:I
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/settings/SecuritySettings;->updateSmsSecuritySummary(I)V

    .line 428
    .end local v6           #deviceAdminCategory:Landroid/preference/PreferenceGroup;
    .end local v26           #smsSecurityCheck:I
    .end local v30           #um:Landroid/os/UserManager;
    :cond_14
    :goto_c
    const-string v32, "manage_notification_access"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mNotificationAccess:Landroid/preference/Preference;

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mNotificationAccess:Landroid/preference/Preference;

    move-object/from16 v32, v0

    if-eqz v32, :cond_15

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mPM:Landroid/content/pm/PackageManager;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/settings/NotificationAccessSettings;->getListenersCount(Landroid/content/pm/PackageManager;)I

    move-result v29

    .line 431
    .local v29, total:I
    if-nez v29, :cond_23

    .line 432
    const-string v32, "device_admin_category"

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceGroup;

    .line 434
    .restart local v6       #deviceAdminCategory:Landroid/preference/PreferenceGroup;
    if-eqz v6, :cond_15

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mNotificationAccess:Landroid/preference/Preference;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 450
    .end local v6           #deviceAdminCategory:Landroid/preference/PreferenceGroup;
    .end local v29           #total:I
    :cond_15
    :goto_d
    const-string v32, "restrictions_pin_set"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->shouldBePinProtected(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_16

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->protectByRestrictions(Landroid/preference/Preference;)V

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mToggleVerifyApps:Landroid/preference/CheckBoxPreference;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->protectByRestrictions(Landroid/preference/Preference;)V

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->protectByRestrictions(Landroid/preference/Preference;)V

    .line 454
    const-string v32, "credentials_install"

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->protectByRestrictions(Landroid/preference/Preference;)V

    .line 456
    :cond_16
    return-object v21

    .line 327
    .restart local v7       #disableLock:Z
    .restart local v8       #i:I
    .restart local v14       #numPhones:I
    .restart local v17       #removeLock:Z
    .restart local v28       #tm:Landroid/telephony/MSimTelephonyManager;
    :cond_17
    if-eqz v7, :cond_12

    .line 328
    const-string v32, "sim_lock"

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v32

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_7

    .line 333
    .end local v7           #disableLock:Z
    .end local v8           #i:I
    .end local v14           #numPhones:I
    .end local v17           #removeLock:Z
    .end local v28           #tm:Landroid/telephony/MSimTelephonyManager;
    :cond_18
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v28

    .line 334
    .local v28, tm:Landroid/telephony/TelephonyManager;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SecuritySettings;->mIsPrimary:Z

    move/from16 v32, v0

    if-eqz v32, :cond_19

    invoke-virtual/range {v28 .. v28}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v32

    if-nez v32, :cond_1a

    .line 335
    :cond_19
    const-string v32, "sim_lock"

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v32

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_7

    .line 338
    :cond_1a
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_1b

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v32

    if-nez v32, :cond_12

    .line 342
    :cond_1b
    const-string v32, "sim_lock"

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v32

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_7

    .line 363
    .end local v28           #tm:Landroid/telephony/TelephonyManager;
    .restart local v9       #iccLock:Landroid/preference/Preference;
    .restart local v10       #intent:Landroid/content/Intent;
    :cond_1c
    const-string v32, "com.android.settings"

    const-string v33, "com.android.settings.IccLockSettings"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_8

    .line 374
    .end local v9           #iccLock:Landroid/preference/Preference;
    .end local v10           #intent:Landroid/content/Intent;
    .restart local v5       #credentialStorageType:Landroid/preference/Preference;
    .restart local v30       #um:Landroid/os/UserManager;
    :cond_1d
    const v27, 0x7f080a18

    goto/16 :goto_9

    .line 380
    .end local v5           #credentialStorageType:Landroid/preference/Preference;
    :cond_1e
    const-string v32, "credentials_management"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 399
    .restart local v6       #deviceAdminCategory:Landroid/preference/PreferenceGroup;
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mToggleVerifyApps:Landroid/preference/CheckBoxPreference;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mToggleVerifyApps:Landroid/preference/CheckBoxPreference;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_b

    .line 403
    :cond_20
    if-eqz v6, :cond_21

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mToggleVerifyApps:Landroid/preference/CheckBoxPreference;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_b

    .line 406
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mToggleVerifyApps:Landroid/preference/CheckBoxPreference;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_b

    .line 421
    :cond_22
    const-string v32, "app_security"

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceGroup;

    .line 423
    .local v3, appCategory:Landroid/preference/PreferenceGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mSmsSecurityCheck:Landroid/preference/ListPreference;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 424
    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_c

    .line 438
    .end local v3           #appCategory:Landroid/preference/PreferenceGroup;
    .end local v6           #deviceAdminCategory:Landroid/preference/PreferenceGroup;
    .end local v30           #um:Landroid/os/UserManager;
    .restart local v29       #total:I
    :cond_23
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getNumEnabledNotificationListeners()I

    move-result v13

    .line 439
    .local v13, n:I
    if-nez v13, :cond_24

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mNotificationAccess:Landroid/preference/Preference;

    move-object/from16 v32, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v34, 0x7f080579

    invoke-virtual/range {v33 .. v34}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 443
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mNotificationAccess:Landroid/preference/Preference;

    move-object/from16 v32, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v34, 0x7f0e0009

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    aput-object v37, v35, v36

    move-object/from16 v0, v33

    move/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v13, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    const/16 v34, 0x0

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    invoke-static/range {v33 .. v34}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 223
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 190
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_2
        0x60000 -> :sswitch_2
    .end sparse-switch
.end method

.method private disableUnusableTimeouts(J)V
    .locals 10
    .parameter "maxTimeout"

    .prologue
    .line 615
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 616
    .local v0, entries:[Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v7

    .line 617
    .local v7, values:[Ljava/lang/CharSequence;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 618
    .local v2, revisedEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 619
    .local v3, revisedValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v8, v7

    if-ge v1, v8, :cond_1

    .line 620
    aget-object v8, v7, v1

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 621
    .local v4, timeout:J
    cmp-long v8, v4, p1

    if-gtz v8, :cond_0

    .line 622
    aget-object v8, v0, v1

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 623
    aget-object v8, v7, v1

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 619
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 626
    .end local v4           #timeout:J
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    array-length v9, v0

    if-ne v8, v9, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    array-length v9, v7

    if-eq v8, v9, :cond_3

    .line 627
    :cond_2
    iget-object v9, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/CharSequence;

    invoke-virtual {v9, v8}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 629
    iget-object v9, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/CharSequence;

    invoke-virtual {v9, v8}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 631
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 632
    .local v6, userPreference:I
    int-to-long v8, v6

    cmp-long v8, v8, p1

    if-gtz v8, :cond_3

    .line 633
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 640
    .end local v6           #userPreference:I
    :cond_3
    iget-object v9, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_4

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {v9, v8}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 641
    return-void

    .line 640
    :cond_4
    const/4 v8, 0x0

    goto :goto_1
.end method

.method private getNumEnabledNotificationListeners()I
    .locals 4

    .prologue
    .line 460
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enabled_notification_listeners"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 462
    .local v1, flat:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    .line 464
    :goto_0
    return v2

    .line 463
    :cond_1
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 464
    .local v0, components:[Ljava/lang/String;
    array-length v2, v0

    goto :goto_0
.end method

.method private isNonMarketAppsAllowed()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 468
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "install_non_market_apps"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isToggled(Landroid/preference/Preference;)Z
    .locals 1
    .parameter "pref"

    .prologue
    .line 753
    check-cast p1, Landroid/preference/CheckBoxPreference;

    .end local p1
    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    return v0
.end method

.method private isVerifierInstalled()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 488
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 489
    .local v0, pm:Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 490
    .local v2, verification:Landroid/content/Intent;
    const-string v5, "application/vnd.android.package-archive"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 491
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 492
    invoke-virtual {v0, v2, v4}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 493
    .local v1, receivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method private isVerifyAppsEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 483
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "package_verifier_enable"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setNonMarketAppsAllowed(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 473
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 474
    .local v0, um:Landroid/os/UserManager;
    const-string v1, "no_install_unknown_sources"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 480
    :goto_0
    return-void

    .line 478
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "install_non_market_apps"

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private setupLockAfterPreference()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const-wide/16 v6, 0x0

    .line 571
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_screen_lock_after_timeout"

    const-wide/16 v10, 0x1388

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 573
    .local v2, currentTimeout:J
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 574
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 575
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v0

    .line 576
    .local v0, adminTimeout:J
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "screen_off_timeout"

    invoke-static {v8, v9, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-long v4, v8

    .line 578
    .local v4, displayTimeout:J
    cmp-long v8, v0, v6

    if-lez v8, :cond_0

    .line 582
    sub-long v8, v0, v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/android/settings/SecuritySettings;->disableUnusableTimeouts(J)V

    .line 584
    :cond_0
    return-void

    .end local v0           #adminTimeout:J
    .end local v4           #displayTimeout:J
    :cond_1
    move-wide v0, v6

    .line 575
    goto :goto_0
.end method

.method private showVerifierSetting()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 497
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "verifier_setting_visible"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateLockAfterPreferenceSummary()V
    .locals 13

    .prologue
    .line 588
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_screen_lock_after_timeout"

    const-wide/16 v10, 0x1388

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    .line 590
    .local v1, currentTimeout:J
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 591
    .local v3, entries:[Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v7

    .line 592
    .local v7, values:[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 593
    .local v0, best:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v8, v7

    if-ge v4, v8, :cond_1

    .line 594
    aget-object v8, v7, v4

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 595
    .local v5, timeout:J
    cmp-long v8, v1, v5

    if-ltz v8, :cond_0

    .line 596
    move v0, v4

    .line 593
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 599
    .end local v5           #timeout:J
    :cond_1
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    const v9, 0x7f08051f

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v12, v3, v0

    aput-object v12, v10, v11

    invoke-virtual {p0, v9, v10}, Lcom/android/settings/SecuritySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 600
    return-void
.end method

.method private updateSlideAfterScreenOffSummary()V
    .locals 11

    .prologue
    .line 548
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "screen_lock_slide_screenoff_delay"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    int-to-long v1, v8

    .line 550
    .local v1, currentTimeout:J
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mSlideLockScreenOffDelay:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 551
    .local v3, entries:[Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mSlideLockScreenOffDelay:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v7

    .line 552
    .local v7, values:[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 553
    .local v0, best:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v8, v7

    if-ge v4, v8, :cond_1

    .line 554
    aget-object v8, v7, v4

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 555
    .local v5, timeout:J
    cmp-long v8, v1, v5

    if-ltz v8, :cond_0

    .line 556
    move v0, v4

    .line 553
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 559
    .end local v5           #timeout:J
    :cond_1
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mSlideLockScreenOffDelay:Landroid/preference/ListPreference;

    aget-object v9, v3, v0

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 560
    return-void
.end method

.method private updateSlideAfterTimeoutSummary()V
    .locals 11

    .prologue
    .line 532
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "screen_lock_slide_timeout_delay"

    const/16 v10, 0x1388

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    int-to-long v1, v8

    .line 534
    .local v1, currentTimeout:J
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mSlideLockTimeoutDelay:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 535
    .local v3, entries:[Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mSlideLockTimeoutDelay:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v7

    .line 536
    .local v7, values:[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 537
    .local v0, best:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v8, v7

    if-ge v4, v8, :cond_1

    .line 538
    aget-object v8, v7, v4

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 539
    .local v5, timeout:J
    cmp-long v8, v1, v5

    if-ltz v8, :cond_0

    .line 540
    move v0, v4

    .line 537
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 543
    .end local v5           #timeout:J
    :cond_1
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mSlideLockTimeoutDelay:Landroid/preference/ListPreference;

    aget-object v9, v3, v0

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 544
    return-void
.end method

.method private updateSmsSecuritySummary(I)V
    .locals 5
    .parameter "selection"

    .prologue
    .line 563
    if-lez p1, :cond_0

    const v1, 0x7f0802a7

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/SecuritySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 566
    .local v0, message:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mSmsSecurityCheck:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 567
    return-void

    .line 563
    .end local v0           #message:Ljava/lang/String;
    :cond_0
    const v1, 0x7f0802a8

    invoke-virtual {p0, v1}, Lcom/android/settings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private warnAppInstallation()V
    .locals 3

    .prologue
    .line 503
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080769

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080806

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    .line 510
    return-void
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 811
    const v0, 0x7f080b92

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v2, -0x1

    .line 761
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 762
    const/16 v1, 0x7c

    if-ne p1, v1, :cond_0

    if-ne p2, v2, :cond_0

    .line 764
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->startBiometricWeakImprove()V

    .line 776
    :goto_0
    return-void

    .line 766
    :cond_0
    const/16 v1, 0x7d

    if-ne p1, v1, :cond_1

    if-ne p2, v2, :cond_1

    .line 768
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    .line 769
    .local v0, lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricWeakLivelinessEnabled(Z)V

    goto :goto_0

    .line 775
    .end local v0           #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x1

    .line 514
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 515
    invoke-direct {p0, v1}, Lcom/android/settings/SecuritySettings;->setNonMarketAppsAllowed(Z)V

    .line 516
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 520
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 142
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 144
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 146
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mPM:Landroid/content/pm/PackageManager;

    .line 147
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 149
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    .line 150
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 524
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onDestroy()V

    .line 525
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 528
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 780
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_1

    .line 781
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 783
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_lock_after_timeout"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 788
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->updateLockAfterPreferenceSummary()V

    .line 789
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->checkPowerInstantLockDependency()V

    .line 806
    :cond_0
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 785
    :catch_0
    move-exception v0

    .line 786
    const-string v1, "SecuritySettings"

    const-string v2, "could not persist lockAfter timeout setting"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 790
    :cond_1
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mSlideLockTimeoutDelay:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_2

    .line 791
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 792
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_lock_slide_timeout_delay"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 794
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->updateSlideAfterTimeoutSummary()V

    goto :goto_1

    .line 795
    :cond_2
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mSlideLockScreenOffDelay:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_3

    .line 796
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 797
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_lock_slide_screenoff_delay"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 799
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->updateSlideAfterScreenOffSummary()V

    goto :goto_1

    .line 800
    :cond_3
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mSmsSecurityCheck:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_0

    .line 801
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 802
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sms_outgoing_check_max_count"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 804
    invoke-direct {p0, v0}, Lcom/android/settings/SecuritySettings;->updateSmsSecuritySummary(I)V

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 681
    invoke-virtual {p0, p2}, Lcom/android/settings/SecuritySettings;->ensurePinRestrictedPreference(Landroid/preference/Preference;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 749
    :cond_0
    :goto_0
    return v4

    .line 684
    :cond_1
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 686
    .local v1, key:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v5}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    .line 687
    .local v2, lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    const-string v5, "unlock_set_or_change"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 688
    const-string v3, "com.android.settings.ChooseLockGeneric$ChooseLockGenericFragment"

    const/16 v5, 0x7b

    invoke-virtual {p0, p0, v3, v5, v6}, Lcom/android/settings/SecuritySettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_0

    .line 690
    :cond_2
    const-string v5, "biometric_weak_improve_matching"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 691
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 693
    .local v0, helper:Lcom/android/settings/ChooseLockSettingsHelper;
    const/16 v3, 0x7c

    invoke-virtual {v0, v3, v6, v6}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 699
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->startBiometricWeakImprove()V

    goto :goto_0

    .line 701
    .end local v0           #helper:Lcom/android/settings/ChooseLockSettingsHelper;
    :cond_3
    const-string v5, "biometric_weak_liveliness"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 702
    invoke-direct {p0, p2}, Lcom/android/settings/SecuritySettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 703
    invoke-virtual {v2, v4}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricWeakLivelinessEnabled(Z)V

    goto :goto_0

    .line 708
    :cond_4
    iget-object v5, p0, Lcom/android/settings/SecuritySettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 709
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 711
    .restart local v0       #helper:Lcom/android/settings/ChooseLockSettingsHelper;
    const/16 v5, 0x7d

    invoke-virtual {v0, v5, v6, v6}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 717
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricWeakLivelinessEnabled(Z)V

    .line 718
    iget-object v5, p0, Lcom/android/settings/SecuritySettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 721
    .end local v0           #helper:Lcom/android/settings/ChooseLockSettingsHelper;
    :cond_5
    const-string v5, "lockenabled"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 722
    invoke-direct {p0, p2}, Lcom/android/settings/SecuritySettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    goto :goto_0

    .line 723
    :cond_6
    const-string v5, "visiblepattern"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 724
    invoke-direct {p0, p2}, Lcom/android/settings/SecuritySettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(Z)V

    goto/16 :goto_0

    .line 725
    :cond_7
    const-string v5, "visible_error_pattern"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 726
    invoke-direct {p0, p2}, Lcom/android/settings/SecuritySettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setShowErrorPath(Z)V

    goto/16 :goto_0

    .line 727
    :cond_8
    const-string v5, "visibledots"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 728
    invoke-direct {p0, p2}, Lcom/android/settings/SecuritySettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setVisibleDotsEnabled(Z)V

    goto/16 :goto_0

    .line 729
    :cond_9
    const-string v5, "power_button_instantly_locks"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 730
    invoke-direct {p0, p2}, Lcom/android/settings/SecuritySettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setPowerButtonInstantlyLocks(Z)V

    goto/16 :goto_0

    .line 731
    :cond_a
    iget-object v5, p0, Lcom/android/settings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    if-ne p2, v5, :cond_c

    .line 732
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "show_password"

    iget-object v7, p0, Lcom/android/settings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_b

    move v3, v4

    :cond_b
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 734
    :cond_c
    iget-object v5, p0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    if-ne p2, v5, :cond_e

    .line 735
    iget-object v5, p0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 736
    iget-object v5, p0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 737
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->warnAppInstallation()V

    goto/16 :goto_0

    .line 739
    :cond_d
    invoke-direct {p0, v3}, Lcom/android/settings/SecuritySettings;->setNonMarketAppsAllowed(Z)V

    goto/16 :goto_0

    .line 741
    :cond_e
    const-string v5, "toggle_verify_applications"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 742
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "package_verifier_enable"

    iget-object v7, p0, Lcom/android/settings/SecuritySettings;->mToggleVerifyApps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_f

    move v3, v4

    :cond_f
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 746
    :cond_10
    invoke-super {p0, p1, p2}, Lcom/android/settings/RestrictedSettingsFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v4

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 645
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    .line 649
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 651
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    .line 652
    .local v0, lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    .line 653
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakLivelinessEnabled()Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 656
    :cond_0
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_1

    .line 657
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled()Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 659
    :cond_1
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mVisibleErrorPattern:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_2

    .line 660
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mVisibleErrorPattern:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isShowErrorPath()Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 662
    :cond_2
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mVisibleDots:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_3

    .line 663
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mVisibleDots:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isVisibleDotsEnabled()Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 665
    :cond_3
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_4

    .line 666
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks()Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 669
    :cond_4
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_5

    .line 670
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "show_password"

    invoke-static {v1, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_7

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 674
    :cond_5
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    if-eqz v1, :cond_6

    .line 675
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v4}, Landroid/security/KeyStore;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    :goto_1
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 677
    :cond_6
    return-void

    :cond_7
    move v1, v3

    .line 670
    goto :goto_0

    :cond_8
    move v2, v3

    .line 675
    goto :goto_1
.end method

.method public startBiometricWeakImprove()V
    .locals 3

    .prologue
    .line 815
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 816
    const-string v1, "com.android.facelock"

    const-string v2, "com.android.facelock.AddToSetup"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 817
    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->startActivity(Landroid/content/Intent;)V

    .line 818
    return-void
.end method
