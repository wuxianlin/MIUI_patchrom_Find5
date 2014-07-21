.class public Lcom/android/settings_ex/DevelopmentSettings;
.super Lcom/android/settings_ex/RestrictedSettingsFragment;
.source "DevelopmentSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/DevelopmentSettings$SystemPropPoker;
    }
.end annotation


# instance fields
.field private mAdbDialog:Landroid/app/Dialog;

.field private mAdbKeysDialog:Landroid/app/Dialog;

.field private mAdbNotify:Landroid/preference/CheckBoxPreference;

.field private mAdbOverNetwork:Landroid/preference/CheckBoxPreference;

.field private mAdbTcpDialog:Landroid/app/Dialog;

.field private mAdvancedReboot:Landroid/preference/CheckBoxPreference;

.field private final mAllPrefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowMockLocation:Landroid/preference/CheckBoxPreference;

.field private mAllowMockSMS:Landroid/preference/CheckBoxPreference;

.field private mAnimatorDurationScale:Lcom/android/settings_ex/AnimationScalePreference;

.field private mAppProcessLimit:Landroid/preference/ListPreference;

.field private mBackupManager:Landroid/app/backup/IBackupManager;

.field private mBtHciSnoopLog:Landroid/preference/CheckBoxPreference;

.field private mBugreport:Landroid/preference/Preference;

.field private mBugreportInPower:Landroid/preference/CheckBoxPreference;

.field private mClearAdbKeys:Landroid/preference/Preference;

.field private mDebugApp:Ljava/lang/String;

.field private mDebugAppPref:Landroid/preference/Preference;

.field private mDebugHwOverdraw:Landroid/preference/ListPreference;

.field private mDebugLayout:Landroid/preference/CheckBoxPreference;

.field private mDevelopmentShortcut:Landroid/preference/CheckBoxPreference;

.field private mDevelopmentTools:Landroid/preference/PreferenceScreen;

.field private mDialogClicked:Z

.field private mDisableOverlays:Landroid/preference/CheckBoxPreference;

.field private final mDisabledPrefs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mDontPokeProperties:Z

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mEnableAdb:Landroid/preference/CheckBoxPreference;

.field private mEnableDialog:Landroid/app/Dialog;

.field private mEnableTerminal:Landroid/preference/CheckBoxPreference;

.field private mEnabledSwitch:Landroid/widget/Switch;

.field private mForceHardwareUi:Landroid/preference/CheckBoxPreference;

.field private mForceMsaa:Landroid/preference/CheckBoxPreference;

.field private mForceRtlLayout:Landroid/preference/CheckBoxPreference;

.field private mHaveDebugSettings:Z

.field private mImmediatelyDestroyActivities:Landroid/preference/CheckBoxPreference;

.field private mKeepScreenOn:Landroid/preference/CheckBoxPreference;

.field private mKillAppLongpressBack:Landroid/preference/CheckBoxPreference;

.field private mLastEnabledState:Z

.field private mOpenGLTraces:Landroid/preference/ListPreference;

.field private mOverlayDisplayDevices:Landroid/preference/ListPreference;

.field private mPassword:Landroid/preference/PreferenceScreen;

.field private mPointerLocation:Landroid/preference/CheckBoxPreference;

.field private mQuickBoot:Landroid/preference/CheckBoxPreference;

.field private final mResetCbPrefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/CheckBoxPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mRootAccess:Landroid/preference/ListPreference;

.field private mRootDialog:Landroid/app/Dialog;

.field private mSelectedRootValue:Ljava/lang/Object;

.field private mShowAllANRs:Landroid/preference/CheckBoxPreference;

.field private mShowCpuUsage:Landroid/preference/CheckBoxPreference;

.field private mShowHwLayersUpdates:Landroid/preference/CheckBoxPreference;

.field private mShowHwScreenUpdates:Landroid/preference/CheckBoxPreference;

.field private mShowNonRectClip:Landroid/preference/ListPreference;

.field private mShowScreenUpdates:Landroid/preference/CheckBoxPreference;

.field private mShowTouches:Landroid/preference/CheckBoxPreference;

.field private mStrictMode:Landroid/preference/CheckBoxPreference;

.field private mTrackFrameTime:Landroid/preference/ListPreference;

.field private mTransitionAnimationScale:Lcom/android/settings_ex/AnimationScalePreference;

.field private mUnavailable:Z

.field private mUpdateRecovery:Landroid/preference/CheckBoxPreference;

.field private mVerifyAppsOverUsb:Landroid/preference/CheckBoxPreference;

.field private mWaitForDebugger:Landroid/preference/CheckBoxPreference;

.field private mWifiDisplayCertification:Landroid/preference/CheckBoxPreference;

.field private mWindowAnimationScale:Lcom/android/settings_ex/AnimationScalePreference;

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 261
    const-string v0, "restrictions_pin_set"

    invoke-direct {p0, v0}, Lcom/android/settings_ex/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 244
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    .line 245
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mResetCbPrefs:Ljava/util/ArrayList;

    .line 248
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    .line 262
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/DevelopmentSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateRuntimeValue()V

    return-void
.end method

.method private addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;
    .locals 2
    .parameter "prefKey"

    .prologue
    .line 399
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 400
    .local v0, pref:Landroid/preference/ListPreference;
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 402
    return-object v0
.end method

.method private currentRuntimeValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 714
    const-string v0, "persist.sys.dalvik.vm.lib"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static currentStrictModeActiveIndex()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 936
    const-string v1, "persist.sys.strictmode.visual"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 940
    :goto_0
    return v0

    .line 939
    :cond_0
    const-string v1, "persist.sys.strictmode.visual"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 940
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private disableForUser(Landroid/preference/Preference;)V
    .locals 1
    .parameter "pref"

    .prologue
    .line 406
    if-eqz p1, :cond_0

    .line 407
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 408
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 410
    :cond_0
    return-void
.end method

.method private dismissDialogs()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1632
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 1633
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1634
    iput-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    .line 1636
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 1637
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1638
    iput-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    .line 1640
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbTcpDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    .line 1641
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbTcpDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1642
    iput-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbTcpDialog:Landroid/app/Dialog;

    .line 1644
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_3

    .line 1645
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1646
    iput-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    .line 1648
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mRootDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_4

    .line 1649
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mRootDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1650
    iput-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mRootDialog:Landroid/app/Dialog;

    .line 1652
    :cond_4
    return-void
.end method

.method private enableVerifierSetting()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 887
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 888
    const-string v3, "adb_enabled"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1

    .line 903
    :cond_0
    :goto_0
    return v0

    .line 891
    :cond_1
    const-string v3, "package_verifier_enable"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    .line 894
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 895
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 896
    const-string v4, "application/vnd.android.package-archive"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 897
    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 898
    invoke-virtual {v2, v3, v0}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 899
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 903
    goto :goto_0
.end method

.method private findAndInitAnimationScalePreference(Ljava/lang/String;)Lcom/android/settings_ex/AnimationScalePreference;
    .locals 2
    .parameter "key"

    .prologue
    .line 413
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/AnimationScalePreference;

    .line 414
    .local v0, pref:Lcom/android/settings_ex/AnimationScalePreference;
    invoke-virtual {v0, p0}, Lcom/android/settings_ex/AnimationScalePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 415
    invoke-virtual {v0, p0}, Lcom/android/settings_ex/AnimationScalePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 416
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    return-object v0
.end method

.method private findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;
    .locals 4
    .parameter "key"

    .prologue
    .line 421
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 422
    .local v0, pref:Landroid/preference/CheckBoxPreference;
    if-nez v0, :cond_0

    .line 423
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find preference with key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 425
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mResetCbPrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    return-object v0
.end method

.method static isRootForAppsEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 744
    const-string v1, "persist.sys.root_access"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 745
    if-eq v1, v0, :cond_0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removePreference(Landroid/preference/Preference;)V
    .locals 1
    .parameter "preference"

    .prologue
    .line 488
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 489
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 490
    return-void
.end method

.method private removePreferenceForProduction(Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preference"

    .prologue
    .line 480
    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    invoke-direct {p0, p1}, Lcom/android/settings_ex/DevelopmentSettings;->removePreference(Landroid/preference/Preference;)V

    .line 482
    const/4 v0, 0x1

    .line 484
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeRootOptionsIfRequired()Z
    .locals 2

    .prologue
    .line 432
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v0, :cond_0

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mRootAccess:Landroid/preference/ListPreference;

    if-eqz v0, :cond_0

    .line 434
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mRootAccess:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 435
    const/4 v0, 0x1

    .line 439
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetAdbNotifyOptions()V
    .locals 3

    .prologue
    .line 776
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_notify"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 778
    return-void
.end method

.method private resetDangerousOptions()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 665
    iput-boolean v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDontPokeProperties:Z

    .line 666
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mResetCbPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 667
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mResetCbPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 668
    .local v0, cb:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 669
    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 670
    invoke-virtual {p0, v4, v0}, Lcom/android/settings_ex/DevelopmentSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 666
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 673
    .end local v0           #cb:Landroid/preference/CheckBoxPreference;
    :cond_1
    invoke-static {}, Lcom/android/settings_ex/DevelopmentSettings;->resetDebuggerOptions()V

    .line 674
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->resetRootAccessOptions()V

    .line 675
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->resetAdbNotifyOptions()V

    .line 676
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->resetVerifyAppsOverUsbOptions()V

    .line 677
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->resetDevelopmentShortcutOptions()V

    .line 678
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWindowAnimationScale:Lcom/android/settings_ex/AnimationScalePreference;

    invoke-direct {p0, v5, v2, v4}, Lcom/android/settings_ex/DevelopmentSettings;->writeAnimationScaleOption(ILcom/android/settings_ex/AnimationScalePreference;Ljava/lang/Object;)V

    .line 679
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mTransitionAnimationScale:Lcom/android/settings_ex/AnimationScalePreference;

    invoke-direct {p0, v3, v2, v4}, Lcom/android/settings_ex/DevelopmentSettings;->writeAnimationScaleOption(ILcom/android/settings_ex/AnimationScalePreference;Ljava/lang/Object;)V

    .line 680
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAnimatorDurationScale:Lcom/android/settings_ex/AnimationScalePreference;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/settings_ex/DevelopmentSettings;->writeAnimationScaleOption(ILcom/android/settings_ex/AnimationScalePreference;Ljava/lang/Object;)V

    .line 681
    invoke-direct {p0, v4}, Lcom/android/settings_ex/DevelopmentSettings;->writeOverlayDisplayDevicesOptions(Ljava/lang/Object;)V

    .line 682
    invoke-direct {p0, v4}, Lcom/android/settings_ex/DevelopmentSettings;->writeAppProcessLimitOptions(Ljava/lang/Object;)V

    .line 683
    iput-boolean v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 684
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateAllOptions()V

    .line 685
    iput-boolean v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDontPokeProperties:Z

    .line 686
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->pokeSystemProperties()V

    .line 687
    return-void
.end method

.method private static resetDebuggerOptions()V
    .locals 4

    .prologue
    .line 840
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IActivityManager;->setDebugApp(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 844
    :goto_0
    return-void

    .line 842
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private resetDevelopmentShortcutOptions()V
    .locals 3

    .prologue
    .line 621
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "development_shortcut"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 623
    return-void
.end method

.method private resetRootAccessOptions()V
    .locals 3

    .prologue
    .line 763
    const-string v0, "persist.sys.root_access"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 764
    const-string v1, "persist.sys.root_access"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "1"

    const-string v1, "service.adb.root"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 766
    const-string v0, "service.adb.root"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 769
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 772
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateRootAccessOptions()V

    .line 773
    return-void
.end method

.method private resetVerifyAppsOverUsbOptions()V
    .locals 3

    .prologue
    .line 871
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "verifier_verify_adb_installs"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 873
    return-void
.end method

.method private setPrefsEnabledState(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 493
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 494
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference;

    .line 495
    .local v1, pref:Landroid/preference/Preference;
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 493
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 495
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 497
    .end local v1           #pref:Landroid/preference/Preference;
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateAllOptions()V

    .line 498
    return-void
.end method

.method private showVerifierSetting()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 907
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

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

.method private updateAdbOverNetwork()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 637
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "adb_port"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 639
    if-lez v2, :cond_0

    const/4 v0, 0x1

    .line 641
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbOverNetwork:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ex/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 643
    const/4 v1, 0x0

    .line 645
    if-eqz v0, :cond_1

    .line 646
    const-string v0, "wifi"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v0

    .line 649
    :try_start_0
    invoke-interface {v0}, Landroid/net/wifi/IWifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 655
    :goto_0
    if-eqz v0, :cond_2

    .line 656
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    invoke-static {v0}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 658
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbOverNetwork:Landroid/preference/CheckBoxPreference;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 662
    :goto_1
    return-void

    .line 650
    :catch_0
    move-exception v0

    .line 651
    const-string v3, "DevelopmentSettings"

    const-string v4, "wifiManager, getConnectionInfo()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    move-object v0, v1

    goto :goto_0

    .line 660
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbOverNetwork:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f080293

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_1
.end method

.method private updateAdvancedRebootOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 616
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdvancedReboot:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "advanced_reboot"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 618
    return-void
.end method

.method private updateAllOptions()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 551
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 552
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 553
    .local v1, cr:Landroid/content/ContentResolver;
    iput-boolean v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 554
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    const-string v2, "adb_enabled"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {p0, v5, v2}, Lcom/android/settings_ex/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 556
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbNotify:Landroid/preference/CheckBoxPreference;

    const-string v2, "adb_notify"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 558
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableTerminal:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    .line 559
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableTerminal:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v6, "com.android.terminal"

    invoke-virtual {v2, v6}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_3

    move v2, v3

    :goto_2
    invoke-virtual {p0, v5, v2}, Lcom/android/settings_ex/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 563
    :cond_0
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mBugreportInPower:Landroid/preference/CheckBoxPreference;

    const-string v2, "bugreport_in_power_menu"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    :goto_3
    invoke-virtual {p0, v5, v2}, Lcom/android/settings_ex/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 565
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/CheckBoxPreference;

    const-string v2, "stay_on_while_plugged_in"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_5

    move v2, v3

    :goto_4
    invoke-virtual {p0, v5, v2}, Lcom/android/settings_ex/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 567
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mBtHciSnoopLog:Landroid/preference/CheckBoxPreference;

    const-string v2, "bluetooth_hci_log"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_6

    move v2, v3

    :goto_5
    invoke-virtual {p0, v5, v2}, Lcom/android/settings_ex/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 569
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateAdbOverNetwork()V

    .line 570
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAllowMockLocation:Landroid/preference/CheckBoxPreference;

    const-string v2, "mock_location"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_7

    move v2, v3

    :goto_6
    invoke-virtual {p0, v5, v2}, Lcom/android/settings_ex/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 572
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAllowMockSMS:Landroid/preference/CheckBoxPreference;

    const-string v2, "mock_sms"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_8

    move v2, v3

    :goto_7
    invoke-virtual {p0, v5, v2}, Lcom/android/settings_ex/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 574
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mQuickBoot:Landroid/preference/CheckBoxPreference;

    const-string v5, "enable_quickboot"

    invoke-static {v1, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_9

    :goto_8
    invoke-virtual {p0, v2, v3}, Lcom/android/settings_ex/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 576
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateRuntimeValue()V

    .line 577
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateHdcpValues()V

    .line 578
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updatePasswordSummary()V

    .line 579
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateDebuggerOptions()V

    .line 580
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateStrictModeVisualOptions()V

    .line 581
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updatePointerLocationOptions()V

    .line 582
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateShowTouchesOptions()V

    .line 583
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateFlingerOptions()V

    .line 584
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateCpuUsageOptions()V

    .line 585
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateHardwareUiOptions()V

    .line 586
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateMsaaOptions()V

    .line 587
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateTrackFrameTimeOptions()V

    .line 588
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateShowNonRectClipOptions()V

    .line 589
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateShowHwScreenUpdatesOptions()V

    .line 590
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateShowHwLayersUpdatesOptions()V

    .line 591
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateDebugHwOverdrawOptions()V

    .line 592
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateDebugLayoutOptions()V

    .line 593
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateAnimationScaleOptions()V

    .line 594
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateOverlayDisplayDevicesOptions()V

    .line 595
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateOpenGLTracesOptions()V

    .line 596
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateImmediatelyDestroyActivitiesOptions()V

    .line 597
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateAppProcessLimitOptions()V

    .line 598
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateShowAllANRsOptions()V

    .line 599
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateVerifyAppsOverUsbOptions()V

    .line 600
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateBugreportOptions()V

    .line 601
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateForceRtlOptions()V

    .line 602
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateWifiDisplayCertificationOptions()V

    .line 603
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateRootAccessOptions()V

    .line 604
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateAdvancedRebootOptions()V

    .line 605
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateDevelopmentShortcutOptions()V

    .line 606
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateUpdateRecoveryOptions()V

    .line 607
    return-void

    :cond_1
    move v2, v4

    .line 554
    goto/16 :goto_0

    :cond_2
    move v2, v4

    .line 556
    goto/16 :goto_1

    :cond_3
    move v2, v4

    .line 559
    goto/16 :goto_2

    :cond_4
    move v2, v4

    .line 563
    goto/16 :goto_3

    :cond_5
    move v2, v4

    .line 565
    goto/16 :goto_4

    :cond_6
    move v2, v4

    .line 567
    goto/16 :goto_5

    :cond_7
    move v2, v4

    .line 570
    goto/16 :goto_6

    :cond_8
    move v2, v4

    .line 572
    goto/16 :goto_7

    :cond_9
    move v3, v4

    .line 574
    goto :goto_8
.end method

.method private updateAnimationScaleOptions()V
    .locals 2

    .prologue
    .line 1230
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWindowAnimationScale:Lcom/android/settings_ex/AnimationScalePreference;

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/DevelopmentSettings;->updateAnimationScaleValue(ILcom/android/settings_ex/AnimationScalePreference;)V

    .line 1231
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mTransitionAnimationScale:Lcom/android/settings_ex/AnimationScalePreference;

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/DevelopmentSettings;->updateAnimationScaleValue(ILcom/android/settings_ex/AnimationScalePreference;)V

    .line 1232
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAnimatorDurationScale:Lcom/android/settings_ex/AnimationScalePreference;

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/DevelopmentSettings;->updateAnimationScaleValue(ILcom/android/settings_ex/AnimationScalePreference;)V

    .line 1233
    return-void
.end method

.method private updateAnimationScaleValue(ILcom/android/settings_ex/AnimationScalePreference;)V
    .locals 2
    .parameter "which"
    .parameter "pref"

    .prologue
    .line 1220
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v1, p1}, Landroid/view/IWindowManager;->getAnimationScale(I)F

    move-result v0

    .line 1221
    .local v0, scale:F
    const/high16 v1, 0x3f80

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 1222
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 1224
    :cond_0
    invoke-virtual {p2, v0}, Lcom/android/settings_ex/AnimationScalePreference;->setScale(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1227
    .end local v0           #scale:F
    :goto_0
    return-void

    .line 1225
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private updateAppProcessLimitOptions()V
    .locals 7

    .prologue
    .line 1296
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->getProcessLimit()I

    move-result v1

    .line 1297
    .local v1, limit:I
    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 1298
    .local v3, values:[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 1299
    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1300
    .local v2, val:I
    if-lt v2, v1, :cond_1

    .line 1301
    if-eqz v0, :cond_0

    .line 1302
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 1304
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1305
    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1313
    .end local v0           #i:I
    .end local v1           #limit:I
    .end local v2           #val:I
    .end local v3           #values:[Ljava/lang/CharSequence;
    :goto_1
    return-void

    .line 1298
    .restart local v0       #i:I
    .restart local v1       #limit:I
    .restart local v2       #val:I
    .restart local v3       #values:[Ljava/lang/CharSequence;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1309
    .end local v2           #val:I
    :cond_2
    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1310
    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1311
    .end local v0           #i:I
    .end local v1           #limit:I
    .end local v3           #values:[Ljava/lang/CharSequence;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private updateBugreportOptions()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 912
    const-string v4, "user"

    sget-object v5, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 913
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 914
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v4, "adb_enabled"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    move v0, v2

    .line 916
    .local v0, adbEnabled:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 917
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mBugreport:Landroid/preference/Preference;

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 918
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mBugreportInPower:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 928
    .end local v0           #adbEnabled:Z
    .end local v1           #resolver:Landroid/content/ContentResolver;
    :goto_1
    return-void

    .restart local v1       #resolver:Landroid/content/ContentResolver;
    :cond_0
    move v0, v3

    .line 914
    goto :goto_0

    .line 920
    .restart local v0       #adbEnabled:Z
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mBugreport:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 921
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mBugreportInPower:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 922
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mBugreportInPower:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 923
    const-string v2, "bugreport_in_power_menu"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 926
    .end local v0           #adbEnabled:Z
    .end local v1           #resolver:Landroid/content/ContentResolver;
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mBugreportInPower:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_1
.end method

.method private updateCpuUsageOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1188
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowCpuUsage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_processes"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ex/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 1190
    return-void
.end method

.method private updateDebugHwOverdrawOptions()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1127
    const-string v0, "debug.hwui.overdraw"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1128
    if-nez v0, :cond_0

    .line 1129
    const-string v0, ""

    .line 1132
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    move v1, v2

    .line 1133
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 1134
    aget-object v4, v3, v1

    invoke-virtual {v0, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1135
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1136
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1142
    :goto_1
    return-void

    .line 1133
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1140
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1141
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updateDebugLayoutOptions()V
    .locals 3

    .prologue
    .line 1152
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugLayout:Landroid/preference/CheckBoxPreference;

    const-string v1, "debug.layout"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 1154
    return-void
.end method

.method private updateDebuggerOptions()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 847
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "debug_app"

    invoke-static {v0, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    .line 849
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "wait_for_debugger"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v3, v0}, Lcom/android/settings_ex/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 851
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 854
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    const/16 v4, 0x200

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 856
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 857
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 861
    :goto_1
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugAppPref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080a9d

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v0, v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 862
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 863
    iput-boolean v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 868
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 849
    goto :goto_0

    .line 857
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugApp:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 858
    :catch_0
    move-exception v0

    .line 859
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    goto :goto_1

    .line 865
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugAppPref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f080a9c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 866
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_2
.end method

.method private updateDevelopmentShortcutOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 632
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDevelopmentShortcut:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "development_shortcut"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 634
    return-void
.end method

.method private updateFlingerOptions()V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 978
    :try_start_0
    const-string v2, "SurfaceFlinger"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 979
    if-eqz v2, :cond_0

    .line 980
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 981
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 982
    const-string v5, "android.ui.ISurfaceComposer"

    invoke-virtual {v3, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 983
    const/16 v5, 0x3f2

    const/4 v6, 0x0

    invoke-interface {v2, v5, v3, v4, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 985
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    .line 987
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    .line 988
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 989
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowScreenUpdates:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_1

    move v2, v0

    :goto_0
    invoke-virtual {p0, v5, v2}, Lcom/android/settings_ex/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 991
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    .line 992
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 993
    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDisableOverlays:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_2

    :goto_1
    invoke-virtual {p0, v5, v0}, Lcom/android/settings_ex/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 994
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 995
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 999
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v2, v1

    .line 989
    goto :goto_0

    :cond_2
    move v0, v1

    .line 993
    goto :goto_1

    .line 997
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method private updateForceRtlOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1163
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mForceRtlLayout:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "debug.force_rtl"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ex/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 1165
    return-void
.end method

.method private updateHardwareUiOptions()V
    .locals 3

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mForceHardwareUi:Landroid/preference/CheckBoxPreference;

    const-string v1, "persist.sys.ui.hw"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 1037
    return-void
.end method

.method private updateHdcpValues()V
    .locals 7

    .prologue
    .line 781
    const-string v0, "hdcp_checking"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 782
    if-eqz v0, :cond_0

    .line 783
    const-string v1, "persist.sys.hdcp_checking"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 784
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0048

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 785
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0049

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 786
    const/4 v2, 0x1

    .line 787
    const/4 v1, 0x0

    :goto_0
    array-length v6, v4

    if-ge v1, v6, :cond_2

    .line 788
    aget-object v6, v4, v1

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 793
    :goto_1
    aget-object v2, v4, v1

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 794
    aget-object v1, v5, v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 795
    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 797
    :cond_0
    return-void

    .line 787
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method private updateImmediatelyDestroyActivitiesOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1214
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "always_finish_activities"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ex/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 1216
    return-void
.end method

.method private updateKillAppLongpressBackOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 806
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mKillAppLongpressBack:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "kill_app_longpress_back"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 808
    return-void
.end method

.method private updateMsaaOptions()V
    .locals 3

    .prologue
    .line 1045
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mForceMsaa:Landroid/preference/CheckBoxPreference;

    const-string v1, "debug.egl.force_msaa"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 1046
    return-void
.end method

.method private updateOpenGLTracesOptions()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1271
    const-string v0, "debug.egl.trace"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1272
    if-nez v0, :cond_0

    .line 1273
    const-string v0, ""

    .line 1276
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    move v1, v2

    .line 1277
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 1278
    aget-object v4, v3, v1

    invoke-virtual {v0, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1279
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1280
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1286
    :goto_1
    return-void

    .line 1277
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1284
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1285
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updateOverlayDisplayDevicesOptions()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1246
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "overlay_display_devices"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1248
    if-nez v0, :cond_0

    .line 1249
    const-string v0, ""

    .line 1252
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    move v1, v2

    .line 1253
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 1254
    aget-object v4, v3, v1

    invoke-virtual {v0, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1255
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1256
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1262
    :goto_1
    return-void

    .line 1253
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1260
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1261
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updatePasswordSummary()V
    .locals 2

    .prologue
    .line 812
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v0}, Landroid/app/backup/IBackupManager;->hasBackupPassword()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 813
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mPassword:Landroid/preference/PreferenceScreen;

    const v1, 0x7f080a35

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 820
    :goto_0
    return-void

    .line 815
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mPassword:Landroid/preference/PreferenceScreen;

    const v1, 0x7f080a34

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 817
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updatePointerLocationOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 961
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mPointerLocation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pointer_location"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ex/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 963
    return-void
.end method

.method private updateRootAccessOptions()V
    .locals 4

    .prologue
    .line 737
    const-string v0, "persist.sys.root_access"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 738
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mRootAccess:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 739
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mRootAccess:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0096

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 741
    return-void
.end method

.method private updateRuntimeValue()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 718
    const-string v0, "select_runtime"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 719
    if-eqz v0, :cond_0

    .line 720
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->currentRuntimeValue()Ljava/lang/String;

    move-result-object v3

    .line 721
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0c0045

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 722
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0c0046

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    move v1, v2

    .line 724
    :goto_0
    array-length v6, v4

    if-ge v1, v6, :cond_2

    .line 725
    aget-object v6, v4, v1

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 730
    :goto_1
    aget-object v2, v4, v1

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 731
    aget-object v1, v5, v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 732
    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 734
    :cond_0
    return-void

    .line 724
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method private updateShowAllANRsOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1331
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowAllANRs:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "anr_show_background"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ex/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 1333
    return-void
.end method

.method private updateShowHwLayersUpdatesOptions()V
    .locals 3

    .prologue
    .line 1116
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowHwLayersUpdates:Landroid/preference/CheckBoxPreference;

    const-string v1, "debug.hwui.show_layers_updates"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 1118
    return-void
.end method

.method private updateShowHwScreenUpdatesOptions()V
    .locals 3

    .prologue
    .line 1105
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowHwScreenUpdates:Landroid/preference/CheckBoxPreference;

    const-string v1, "debug.hwui.show_dirty_regions"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 1107
    return-void
.end method

.method private updateShowNonRectClipOptions()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1079
    const-string v0, "debug.hwui.show_non_rect_clip"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1081
    if-nez v0, :cond_0

    .line 1082
    const-string v0, "hide"

    .line 1085
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    move v1, v2

    .line 1086
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 1087
    aget-object v4, v3, v1

    invoke-virtual {v0, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1088
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1089
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1095
    :goto_1
    return-void

    .line 1086
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1093
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1094
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updateShowTouchesOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 971
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowTouches:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_touches"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ex/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 973
    return-void
.end method

.method private updateStrictModeVisualOptions()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 952
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mStrictMode:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/android/settings_ex/DevelopmentSettings;->currentStrictModeActiveIndex()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ex/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 953
    return-void

    .line 952
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateTrackFrameTimeOptions()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1054
    const-string v0, "debug.hwui.profile"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1055
    if-nez v0, :cond_0

    .line 1056
    const-string v0, ""

    .line 1059
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    move v1, v2

    .line 1060
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 1061
    aget-object v4, v3, v1

    invoke-virtual {v0, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1062
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1063
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1069
    :goto_1
    return-void

    .line 1060
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1067
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1068
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updateUpdateRecoveryOptions()V
    .locals 3

    .prologue
    .line 1336
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mUpdateRecovery:Landroid/preference/CheckBoxPreference;

    const-string v1, "persist.sys.recovery_update"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 1337
    return-void
.end method

.method private updateVerifyAppsOverUsbOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 876
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "verifier_verify_adb_installs"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ex/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 878
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->enableVerifierSetting()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 879
    return-void

    .line 876
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateWifiDisplayCertificationOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1176
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiDisplayCertification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_display_certification_on"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ex/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 1179
    return-void
.end method

.method private writeAdvancedRebootOptions()V
    .locals 3

    .prologue
    .line 610
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "advanced_reboot"

    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdvancedReboot:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 613
    return-void

    .line 610
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeAnimationScaleOption(ILcom/android/settings_ex/AnimationScalePreference;Ljava/lang/Object;)V
    .locals 2
    .parameter "which"
    .parameter "pref"
    .parameter "newValue"

    .prologue
    .line 1238
    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 1239
    .local v0, scale:F
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v1, p1, v0}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    .line 1240
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/DevelopmentSettings;->updateAnimationScaleValue(ILcom/android/settings_ex/AnimationScalePreference;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1243
    .end local v0           #scale:F
    :goto_1
    return-void

    .line 1238
    :cond_0
    const/high16 v0, 0x3f80

    goto :goto_0

    .line 1241
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private writeAppProcessLimitOptions(Ljava/lang/Object;)V
    .locals 2
    .parameter "newValue"

    .prologue
    .line 1317
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1318
    .local v0, limit:I
    :goto_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->setProcessLimit(I)V

    .line 1319
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateAppProcessLimitOptions()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1322
    .end local v0           #limit:I
    :goto_1
    return-void

    .line 1317
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 1320
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private writeBtHciSnoopLogOptions()V
    .locals 4

    .prologue
    .line 823
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 824
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mBtHciSnoopLog:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->configHciSnoopLog(Z)Z

    .line 825
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "bluetooth_hci_log"

    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mBtHciSnoopLog:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 828
    return-void

    .line 825
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private writeCpuUsageOptions()V
    .locals 4

    .prologue
    .line 1193
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowCpuUsage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    .line 1194
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_processes"

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1196
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.LoadAverageService"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1198
    if-eqz v1, :cond_1

    .line 1199
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1203
    :goto_1
    return-void

    .line 1194
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1201
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    goto :goto_1
.end method

.method private writeDebugHwOverdrawOptions(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 1145
    const-string v1, "debug.hwui.overdraw"

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->pokeSystemProperties()V

    .line 1148
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateDebugHwOverdrawOptions()V

    .line 1149
    return-void

    .line 1145
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private writeDebugLayoutOptions()V
    .locals 2

    .prologue
    .line 1157
    const-string v1, "debug.layout"

    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugLayout:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->pokeSystemProperties()V

    .line 1160
    return-void

    .line 1157
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method private writeDebuggerOptions()V
    .locals 4

    .prologue
    .line 832
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IActivityManager;->setDebugApp(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 836
    :goto_0
    return-void

    .line 834
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private writeDevelopmentShortcutOptions()V
    .locals 3

    .prologue
    .line 626
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "development_shortcut"

    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDevelopmentShortcut:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 629
    return-void

    .line 626
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeDisableOverlaysOption()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1020
    :try_start_0
    const-string v1, "SurfaceFlinger"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1021
    if-eqz v1, :cond_1

    .line 1022
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1023
    const-string v3, "android.ui.ISurfaceComposer"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1024
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDisableOverlays:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 1025
    :cond_0
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1026
    const/16 v0, 0x3f0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v0, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1027
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1029
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateFlingerOptions()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1033
    :cond_1
    :goto_0
    return-void

    .line 1031
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private writeForceRtlOptions()V
    .locals 4

    .prologue
    .line 1168
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mForceRtlLayout:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    .line 1169
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "debug.force_rtl"

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1171
    const-string v2, "debug.force_rtl"

    if-eqz v1, :cond_1

    const-string v0, "1"

    :goto_1
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Lcom/android/settings_ex/LocalePicker;->updateLocale(Ljava/util/Locale;)V

    .line 1173
    return-void

    .line 1169
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1171
    :cond_1
    const-string v0, "0"

    goto :goto_1
.end method

.method private writeHardwareUiOptions()V
    .locals 2

    .prologue
    .line 1040
    const-string v1, "persist.sys.ui.hw"

    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mForceHardwareUi:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->pokeSystemProperties()V

    .line 1042
    return-void

    .line 1040
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method private writeImmediatelyDestroyActivitiesOptions()V
    .locals 2

    .prologue
    .line 1207
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->setAlwaysFinish(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1211
    :goto_0
    return-void

    .line 1209
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private writeKillAppLongpressBackOptions()V
    .locals 3

    .prologue
    .line 800
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "kill_app_longpress_back"

    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mKillAppLongpressBack:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 803
    return-void

    .line 800
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeMsaaOptions()V
    .locals 2

    .prologue
    .line 1049
    const-string v1, "debug.egl.force_msaa"

    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mForceMsaa:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->pokeSystemProperties()V

    .line 1051
    return-void

    .line 1049
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method private writeOpenGLTracesOptions(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 1289
    const-string v1, "debug.egl.trace"

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1290
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->pokeSystemProperties()V

    .line 1291
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateOpenGLTracesOptions()V

    .line 1292
    return-void

    .line 1289
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private writeOverlayDisplayDevicesOptions(Ljava/lang/Object;)V
    .locals 2
    .parameter "newValue"

    .prologue
    .line 1265
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "overlay_display_devices"

    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1267
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateOverlayDisplayDevicesOptions()V

    .line 1268
    return-void
.end method

.method private writePointerLocationOptions()V
    .locals 3

    .prologue
    .line 956
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pointer_location"

    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mPointerLocation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 958
    return-void

    .line 956
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeRootAccessOptions(Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    .line 749
    const-string v0, "persist.sys.root_access"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 750
    const-string v1, "persist.sys.root_access"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "1"

    const-string v1, "service.adb.root"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 753
    const-string v0, "service.adb.root"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 756
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 759
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateRootAccessOptions()V

    .line 760
    return-void
.end method

.method private writeShowAllANRsOptions()V
    .locals 3

    .prologue
    .line 1325
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "anr_show_background"

    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowAllANRs:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1328
    return-void

    .line 1325
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowHwLayersUpdatesOptions()V
    .locals 2

    .prologue
    .line 1121
    const-string v1, "debug.hwui.show_layers_updates"

    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowHwLayersUpdates:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->pokeSystemProperties()V

    .line 1124
    return-void

    .line 1121
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowHwScreenUpdatesOptions()V
    .locals 2

    .prologue
    .line 1110
    const-string v1, "debug.hwui.show_dirty_regions"

    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowHwScreenUpdates:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->pokeSystemProperties()V

    .line 1113
    return-void

    .line 1110
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowNonRectClipOptions(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 1098
    const-string v1, "debug.hwui.show_non_rect_clip"

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->pokeSystemProperties()V

    .line 1101
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateShowNonRectClipOptions()V

    .line 1102
    return-void

    .line 1098
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private writeShowTouchesOptions()V
    .locals 3

    .prologue
    .line 966
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "show_touches"

    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowTouches:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 968
    return-void

    .line 966
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowUpdatesOption()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1003
    :try_start_0
    const-string v1, "SurfaceFlinger"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1004
    if-eqz v1, :cond_1

    .line 1005
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1006
    const-string v3, "android.ui.ISurfaceComposer"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1007
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowScreenUpdates:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 1008
    :cond_0
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1009
    const/16 v0, 0x3ea

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v0, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1010
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1012
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateFlingerOptions()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1016
    :cond_1
    :goto_0
    return-void

    .line 1014
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private writeStrictModeVisualOptions()V
    .locals 2

    .prologue
    .line 945
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mStrictMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/IWindowManager;->setStrictModeVisualIndicatorPreference(Ljava/lang/String;)V

    .line 949
    :goto_1
    return-void

    .line 945
    :cond_0
    const-string v0, ""
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 947
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private writeTrackFrameTimeOptions(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 1072
    const-string v1, "debug.hwui.profile"

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->pokeSystemProperties()V

    .line 1075
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateTrackFrameTimeOptions()V

    .line 1076
    return-void

    .line 1072
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private writeUpdateRecoveryOptions()V
    .locals 2

    .prologue
    .line 1340
    const-string v1, "persist.sys.recovery_update"

    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mUpdateRecovery:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1341
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->pokeSystemProperties()V

    .line 1342
    return-void

    .line 1340
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method private writeVerifyAppsOverUsbOptions()V
    .locals 3

    .prologue
    .line 882
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "verifier_verify_adb_installs"

    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 884
    return-void

    .line 882
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeWifiDisplayCertificationOptions()V
    .locals 3

    .prologue
    .line 1182
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_display_certification_on"

    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiDisplayCertification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1185
    return-void

    .line 1182
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method filterRuntimeOptions(Landroid/preference/Preference;)V
    .locals 11
    .parameter

    .prologue
    .line 690
    move-object v0, p1

    check-cast v0, Landroid/preference/ListPreference;

    .line 691
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 692
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 693
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0c0045

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 694
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0c0046

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 695
    const/4 v1, 0x0

    :goto_0
    array-length v6, v4

    if-ge v1, v6, :cond_1

    .line 696
    aget-object v6, v4, v1

    .line 697
    aget-object v7, v5, v1

    .line 698
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/system/lib/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 699
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 700
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 695
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 703
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 704
    const/4 v1, 0x1

    if-gt v4, v1, :cond_2

    .line 706
    invoke-direct {p0, p1}, Lcom/android/settings_ex/DevelopmentSettings;->removePreference(Landroid/preference/Preference;)V

    .line 711
    :goto_1
    return-void

    .line 708
    :cond_2
    new-array v1, v4, [Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 709
    new-array v1, v4, [Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 444
    invoke-super {p0, p1}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 446
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 447
    .local v0, activity:Landroid/app/Activity;
    new-instance v2, Landroid/widget/Switch;

    invoke-direct {v2, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnabledSwitch:Landroid/widget/Switch;

    .line 449
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 451
    .local v1, padding:I
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnabledSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4, v4, v1, v4}, Landroid/widget/Switch;->setPaddingRelative(IIII)V

    .line 452
    iget-boolean v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mUnavailable:Z

    if-eqz v2, :cond_0

    .line 453
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnabledSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 457
    :goto_0
    return-void

    .line 456
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnabledSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1380
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1

    .line 1381
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1382
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    .line 1383
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeDebuggerOptions()V

    .line 1384
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateDebuggerOptions()V

    .line 1389
    :cond_0
    :goto_0
    return-void

    .line 1387
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1346
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnabledSwitch:Landroid/widget/Switch;

    if-ne p1, v0, :cond_1

    .line 1347
    iget-boolean v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLastEnabledState:Z

    if-eq p2, v0, :cond_1

    .line 1348
    if-eqz p2, :cond_2

    .line 1349
    iput-boolean v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDialogClicked:Z

    .line 1350
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 1351
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->dismissDialogs()V

    .line 1353
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0808f8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0808f7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    .line 1361
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1376
    :cond_1
    :goto_0
    return-void

    .line 1363
    :cond_2
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->resetDangerousOptions()V

    .line 1364
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "development_settings_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1366
    iput-boolean p2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLastEnabledState:Z

    .line 1367
    iget-boolean v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLastEnabledState:Z

    invoke-direct {p0, v0}, Lcom/android/settings_ex/DevelopmentSettings;->setPrefsEnabledState(Z)V

    .line 1370
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "development"

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "show"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    const/4 v3, 0x1

    .line 1655
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_1

    .line 1656
    if-ne p2, v1, :cond_0

    .line 1657
    iput-boolean v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDialogClicked:Z

    .line 1658
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1660
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1661
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateVerifyAppsOverUsbOptions()V

    .line 1662
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateBugreportOptions()V

    .line 1702
    :cond_0
    :goto_0
    return-void

    .line 1664
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbTcpDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_2

    .line 1665
    if-ne p2, v1, :cond_0

    .line 1666
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_port"

    const/16 v2, 0x15b3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 1669
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_3

    .line 1670
    if-ne p2, v1, :cond_0

    .line 1672
    :try_start_0
    const-string v0, "usb"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1673
    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v0

    .line 1674
    invoke-interface {v0}, Landroid/hardware/usb/IUsbManager;->clearUsbDebuggingKeys()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1675
    :catch_0
    move-exception v0

    .line 1676
    const-string v1, "DevelopmentSettings"

    const-string v2, "Unable to clear adb keys"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1679
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_4

    .line 1680
    if-ne p2, v1, :cond_0

    .line 1681
    iput-boolean v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDialogClicked:Z

    .line 1682
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "development_settings_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1684
    iput-boolean v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLastEnabledState:Z

    .line 1685
    iget-boolean v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLastEnabledState:Z

    invoke-direct {p0, v0}, Lcom/android/settings_ex/DevelopmentSettings;->setPrefsEnabledState(Z)V

    .line 1690
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "development"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "show"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 1694
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mRootDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_0

    .line 1695
    if-ne p2, v1, :cond_5

    .line 1696
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mSelectedRootValue:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/DevelopmentSettings;->writeRootAccessOptions(Ljava/lang/Object;)V

    goto :goto_0

    .line 1699
    :cond_5
    const-string v0, "0"

    invoke-direct {p0, v0}, Lcom/android/settings_ex/DevelopmentSettings;->writeRootAccessOptions(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 266
    invoke-super {p0, p1}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 268
    const-string v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    .line 269
    const-string v3, "backup"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    .line 271
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "device_policy"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    iput-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 273
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    if-eqz v3, :cond_0

    .line 274
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mUnavailable:Z

    .line 275
    new-instance v3, Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4, v6}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/DevelopmentSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 396
    :goto_0
    return-void

    .line 279
    :cond_0
    const v3, 0x7f050013

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/DevelopmentSettings;->addPreferencesFromResource(I)V

    .line 281
    const-string v3, "debug_debugging_category"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 284
    .local v0, debugDebuggingCategory:Landroid/preference/PreferenceGroup;
    const-string v3, "enable_adb"

    invoke-direct {p0, v3}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    .line 285
    const-string v3, "adb_notify"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbNotify:Landroid/preference/CheckBoxPreference;

    .line 286
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbNotify:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    const-string v3, "clear_adb_keys"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mClearAdbKeys:Landroid/preference/Preference;

    .line 288
    const-string v3, "ro.adb.secure"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    .line 289
    if-eqz v0, :cond_1

    .line 290
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mClearAdbKeys:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 293
    :cond_1
    const-string v3, "enable_terminal"

    invoke-direct {p0, v3}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableTerminal:Landroid/preference/CheckBoxPreference;

    .line 294
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "com.android.terminal"

    invoke-static {v3, v4}, Lcom/android/settings_ex/Utils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 295
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableTerminal:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 296
    iput-object v6, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableTerminal:Landroid/preference/CheckBoxPreference;

    .line 299
    :cond_2
    const-string v3, "bugreport"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mBugreport:Landroid/preference/Preference;

    .line 300
    const-string v3, "bugreport_in_power"

    invoke-direct {p0, v3}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mBugreportInPower:Landroid/preference/CheckBoxPreference;

    .line 301
    const-string v3, "adb_over_network"

    invoke-direct {p0, v3}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbOverNetwork:Landroid/preference/CheckBoxPreference;

    .line 302
    const-string v3, "keep_screen_on"

    invoke-direct {p0, v3}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/CheckBoxPreference;

    .line 303
    const-string v3, "bt_hci_snoop_log"

    invoke-direct {p0, v3}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mBtHciSnoopLog:Landroid/preference/CheckBoxPreference;

    .line 304
    const-string v3, "enable_quickboot"

    invoke-direct {p0, v3}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mQuickBoot:Landroid/preference/CheckBoxPreference;

    .line 305
    const-string v3, "allow_mock_location"

    invoke-direct {p0, v3}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAllowMockLocation:Landroid/preference/CheckBoxPreference;

    .line 306
    const-string v3, "allow_mock_sms"

    invoke-direct {p0, v3}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAllowMockSMS:Landroid/preference/CheckBoxPreference;

    .line 307
    const-string v3, "local_backup_password"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mPassword:Landroid/preference/PreferenceScreen;

    .line 308
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mPassword:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    const-string v3, "advanced_reboot"

    invoke-direct {p0, v3}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdvancedReboot:Landroid/preference/CheckBoxPreference;

    .line 310
    const-string v3, "update_recovery"

    invoke-direct {p0, v3}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mUpdateRecovery:Landroid/preference/CheckBoxPreference;

    .line 311
    const-string v3, "development_shortcut"

    invoke-direct {p0, v3}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDevelopmentShortcut:Landroid/preference/CheckBoxPreference;

    .line 313
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v3, v4}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 314
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v3}, Lcom/android/settings_ex/DevelopmentSettings;->disableForUser(Landroid/preference/Preference;)V

    .line 315
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mClearAdbKeys:Landroid/preference/Preference;

    invoke-direct {p0, v3}, Lcom/android/settings_ex/DevelopmentSettings;->disableForUser(Landroid/preference/Preference;)V

    .line 316
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableTerminal:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v3}, Lcom/android/settings_ex/DevelopmentSettings;->disableForUser(Landroid/preference/Preference;)V

    .line 317
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mPassword:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v3}, Lcom/android/settings_ex/DevelopmentSettings;->disableForUser(Landroid/preference/Preference;)V

    .line 318
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdvancedReboot:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v3}, Lcom/android/settings_ex/DevelopmentSettings;->disableForUser(Landroid/preference/Preference;)V

    .line 319
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mUpdateRecovery:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v3}, Lcom/android/settings_ex/DevelopmentSettings;->disableForUser(Landroid/preference/Preference;)V

    .line 320
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDevelopmentShortcut:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v3}, Lcom/android/settings_ex/DevelopmentSettings;->disableForUser(Landroid/preference/Preference;)V

    .line 321
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mQuickBoot:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v3}, Lcom/android/settings_ex/DevelopmentSettings;->disableForUser(Landroid/preference/Preference;)V

    .line 324
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "com.qapp.quickboot"

    invoke-static {v3, v4}, Lcom/android/settings_ex/Utils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 325
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mQuickBoot:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v3}, Lcom/android/settings_ex/DevelopmentSettings;->removePreference(Landroid/preference/Preference;)V

    .line 328
    :cond_4
    const-string v3, "debug_app"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugAppPref:Landroid/preference/Preference;

    .line 329
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugAppPref:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    const-string v3, "wait_for_debugger"

    invoke-direct {p0, v3}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/CheckBoxPreference;

    .line 331
    const-string v3, "verify_apps_over_usb"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/CheckBoxPreference;

    .line 332
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->showVerifierSetting()Z

    move-result v3

    if-nez v3, :cond_5

    .line 334
    if-eqz v0, :cond_9

    .line 335
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 340
    :cond_5
    :goto_1
    const-string v3, "strict_mode"

    invoke-direct {p0, v3}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mStrictMode:Landroid/preference/CheckBoxPreference;

    .line 341
    const-string v3, "pointer_location"

    invoke-direct {p0, v3}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mPointerLocation:Landroid/preference/CheckBoxPreference;

    .line 342
    const-string v3, "show_touches"

    invoke-direct {p0, v3}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowTouches:Landroid/preference/CheckBoxPreference;

    .line 343
    const-string v3, "show_screen_updates"

    invoke-direct {p0, v3}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowScreenUpdates:Landroid/preference/CheckBoxPreference;

    .line 344
    const-string v3, "disable_overlays"

    invoke-direct {p0, v3}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDisableOverlays:Landroid/preference/CheckBoxPreference;

    .line 345
    const-string v3, "show_cpu_usage"

    invoke-direct {p0, v3}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowCpuUsage:Landroid/preference/CheckBoxPreference;

    .line 346
    const-string v3, "force_hw_ui"

    invoke-direct {p0, v3}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mForceHardwareUi:Landroid/preference/CheckBoxPreference;

    .line 347
    const-string v3, "force_msaa"

    invoke-direct {p0, v3}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mForceMsaa:Landroid/preference/CheckBoxPreference;

    .line 348
    const-string v3, "track_frame_time"

    invoke-direct {p0, v3}, Lcom/android/settings_ex/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    .line 349
    const-string v3, "show_non_rect_clip"

    invoke-direct {p0, v3}, Lcom/android/settings_ex/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    .line 350
    const-string v3, "show_hw_screen_udpates"

    invoke-direct {p0, v3}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowHwScreenUpdates:Landroid/preference/CheckBoxPreference;

    .line 351
    const-string v3, "show_hw_layers_udpates"

    invoke-direct {p0, v3}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowHwLayersUpdates:Landroid/preference/CheckBoxPreference;

    .line 352
    const-string v3, "debug_layout"

    invoke-direct {p0, v3}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugLayout:Landroid/preference/CheckBoxPreference;

    .line 353
    const-string v3, "force_rtl_layout_all_locales"

    invoke-direct {p0, v3}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mForceRtlLayout:Landroid/preference/CheckBoxPreference;

    .line 354
    const-string v3, "debug_hw_overdraw"

    invoke-direct {p0, v3}, Lcom/android/settings_ex/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    .line 355
    const-string v3, "wifi_display_certification"

    invoke-direct {p0, v3}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiDisplayCertification:Landroid/preference/CheckBoxPreference;

    .line 356
    const-string v3, "overlay_display_devices"

    invoke-direct {p0, v3}, Lcom/android/settings_ex/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    .line 357
    const-string v3, "enable_opengl_traces"

    invoke-direct {p0, v3}, Lcom/android/settings_ex/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    .line 359
    const-string v3, "window_animation_scale"

    invoke-direct {p0, v3}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitAnimationScalePreference(Ljava/lang/String;)Lcom/android/settings_ex/AnimationScalePreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWindowAnimationScale:Lcom/android/settings_ex/AnimationScalePreference;

    .line 360
    const-string v3, "transition_animation_scale"

    invoke-direct {p0, v3}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitAnimationScalePreference(Ljava/lang/String;)Lcom/android/settings_ex/AnimationScalePreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mTransitionAnimationScale:Lcom/android/settings_ex/AnimationScalePreference;

    .line 361
    const-string v3, "animator_duration_scale"

    invoke-direct {p0, v3}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitAnimationScalePreference(Ljava/lang/String;)Lcom/android/settings_ex/AnimationScalePreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAnimatorDurationScale:Lcom/android/settings_ex/AnimationScalePreference;

    .line 363
    const-string v3, "immediately_destroy_activities"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/CheckBoxPreference;

    .line 365
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mResetCbPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    const-string v3, "app_process_limit"

    invoke-direct {p0, v3}, Lcom/android/settings_ex/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    .line 369
    const-string v3, "show_all_anrs"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowAllANRs:Landroid/preference/CheckBoxPreference;

    .line 371
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowAllANRs:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mResetCbPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowAllANRs:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    const-string v3, "kill_app_longpress_back"

    invoke-direct {p0, v3}, Lcom/android/settings_ex/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mKillAppLongpressBack:Landroid/preference/CheckBoxPreference;

    .line 376
    const-string v3, "select_runtime"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 377
    .local v2, selectRuntime:Landroid/preference/Preference;
    if-eqz v2, :cond_6

    .line 378
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/DevelopmentSettings;->filterRuntimeOptions(Landroid/preference/Preference;)V

    .line 382
    :cond_6
    const-string v3, "hdcp_checking"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 383
    .local v1, hdcpChecking:Landroid/preference/Preference;
    if-eqz v1, :cond_7

    .line 384
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    invoke-direct {p0, v1}, Lcom/android/settings_ex/DevelopmentSettings;->removePreferenceForProduction(Landroid/preference/Preference;)Z

    .line 388
    :cond_7
    const-string v3, "root_access"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mRootAccess:Landroid/preference/ListPreference;

    .line 389
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mRootAccess:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 390
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->removeRootOptionsIfRequired()Z

    move-result v3

    if-nez v3, :cond_8

    .line 391
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mRootAccess:Landroid/preference/ListPreference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    :cond_8
    const-string v3, "development_tools"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDevelopmentTools:Landroid/preference/PreferenceScreen;

    .line 395
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDevelopmentTools:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 337
    .end local v1           #hdcpChecking:Landroid/preference/Preference;
    .end local v2           #selectRuntime:Landroid/preference/Preference;
    :cond_9
    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 1726
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->dismissDialogs()V

    .line 1727
    invoke-super {p0}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onDestroy()V

    .line 1728
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1706
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_2

    .line 1707
    iget-boolean v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDialogClicked:Z

    if-nez v0, :cond_0

    .line 1708
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1710
    :cond_0
    iput-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    .line 1722
    :cond_1
    :goto_0
    return-void

    .line 1712
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbTcpDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_3

    .line 1713
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateAdbOverNetwork()V

    .line 1714
    iput-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbTcpDialog:Landroid/app/Dialog;

    goto :goto_0

    .line 1716
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_1

    .line 1717
    iget-boolean v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDialogClicked:Z

    if-nez v0, :cond_4

    .line 1718
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnabledSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1720
    :cond_4
    iput-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1538
    const-string v2, "select_runtime"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1539
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    invoke-virtual {v2}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v2

    .line 1540
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1541
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1542
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 1543
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1544
    const-string v6, "libart.so"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1545
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0808ef

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v2, v8, v0

    aput-object v3, v8, v1

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1555
    :goto_0
    const v0, 0x104000a

    new-instance v2, Lcom/android/settings_ex/DevelopmentSettings$1;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/settings_ex/DevelopmentSettings$1;-><init>(Lcom/android/settings_ex/DevelopmentSettings;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v5, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1565
    const/high16 v0, 0x104

    new-instance v2, Lcom/android/settings_ex/DevelopmentSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/DevelopmentSettings$2;-><init>(Lcom/android/settings_ex/DevelopmentSettings;)V

    invoke-virtual {v5, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1571
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1572
    const v2, 0x102000b

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_0
    move v0, v1

    .line 1628
    :cond_1
    :goto_1
    return v0

    .line 1549
    :cond_2
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080362

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v2, v8, v0

    aput-object v3, v8, v1

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1552
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f080361

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1576
    :cond_3
    const-string v2, "hdcp_checking"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1577
    const-string v0, "persist.sys.hdcp_checking"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1578
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateHdcpValues()V

    .line 1579
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->pokeSystemProperties()V

    move v0, v1

    .line 1580
    goto :goto_1

    .line 1581
    :cond_4
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWindowAnimationScale:Lcom/android/settings_ex/AnimationScalePreference;

    if-ne p1, v2, :cond_5

    .line 1582
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWindowAnimationScale:Lcom/android/settings_ex/AnimationScalePreference;

    invoke-direct {p0, v0, v2, p2}, Lcom/android/settings_ex/DevelopmentSettings;->writeAnimationScaleOption(ILcom/android/settings_ex/AnimationScalePreference;Ljava/lang/Object;)V

    move v0, v1

    .line 1583
    goto :goto_1

    .line 1584
    :cond_5
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mTransitionAnimationScale:Lcom/android/settings_ex/AnimationScalePreference;

    if-ne p1, v2, :cond_6

    .line 1585
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mTransitionAnimationScale:Lcom/android/settings_ex/AnimationScalePreference;

    invoke-direct {p0, v1, v0, p2}, Lcom/android/settings_ex/DevelopmentSettings;->writeAnimationScaleOption(ILcom/android/settings_ex/AnimationScalePreference;Ljava/lang/Object;)V

    move v0, v1

    .line 1586
    goto :goto_1

    .line 1587
    :cond_6
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAnimatorDurationScale:Lcom/android/settings_ex/AnimationScalePreference;

    if-ne p1, v2, :cond_7

    .line 1588
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAnimatorDurationScale:Lcom/android/settings_ex/AnimationScalePreference;

    invoke-direct {p0, v8, v0, p2}, Lcom/android/settings_ex/DevelopmentSettings;->writeAnimationScaleOption(ILcom/android/settings_ex/AnimationScalePreference;Ljava/lang/Object;)V

    move v0, v1

    .line 1589
    goto :goto_1

    .line 1590
    :cond_7
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_8

    .line 1591
    invoke-direct {p0, p2}, Lcom/android/settings_ex/DevelopmentSettings;->writeOverlayDisplayDevicesOptions(Ljava/lang/Object;)V

    move v0, v1

    .line 1592
    goto :goto_1

    .line 1593
    :cond_8
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_9

    .line 1594
    invoke-direct {p0, p2}, Lcom/android/settings_ex/DevelopmentSettings;->writeOpenGLTracesOptions(Ljava/lang/Object;)V

    move v0, v1

    .line 1595
    goto :goto_1

    .line 1596
    :cond_9
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_a

    .line 1597
    invoke-direct {p0, p2}, Lcom/android/settings_ex/DevelopmentSettings;->writeTrackFrameTimeOptions(Ljava/lang/Object;)V

    move v0, v1

    .line 1598
    goto :goto_1

    .line 1599
    :cond_a
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_b

    .line 1600
    invoke-direct {p0, p2}, Lcom/android/settings_ex/DevelopmentSettings;->writeDebugHwOverdrawOptions(Ljava/lang/Object;)V

    move v0, v1

    .line 1601
    goto/16 :goto_1

    .line 1602
    :cond_b
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_c

    .line 1603
    invoke-direct {p0, p2}, Lcom/android/settings_ex/DevelopmentSettings;->writeShowNonRectClipOptions(Ljava/lang/Object;)V

    move v0, v1

    .line 1604
    goto/16 :goto_1

    .line 1605
    :cond_c
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_d

    .line 1606
    invoke-direct {p0, p2}, Lcom/android/settings_ex/DevelopmentSettings;->writeAppProcessLimitOptions(Ljava/lang/Object;)V

    move v0, v1

    .line 1607
    goto/16 :goto_1

    .line 1608
    :cond_d
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mRootAccess:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_1

    .line 1609
    const-string v2, "0"

    const-string v3, "persist.sys.root_access"

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "0"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 1611
    iput-object p2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mSelectedRootValue:Ljava/lang/Object;

    .line 1612
    iput-boolean v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDialogClicked:Z

    .line 1613
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mRootDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_e

    .line 1614
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->dismissDialogs()V

    .line 1616
    :cond_e
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0801e9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0801e8

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x1010355

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x1040013

    invoke-virtual {v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x1040009

    invoke-virtual {v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mRootDialog:Landroid/app/Dialog;

    .line 1622
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mRootDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :goto_2
    move v0, v1

    .line 1626
    goto/16 :goto_1

    .line 1624
    :cond_f
    invoke-direct {p0, p2}, Lcom/android/settings_ex/DevelopmentSettings;->writeRootAccessOptions(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preference"

    .prologue
    .line 1393
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWindowAnimationScale:Lcom/android/settings_ex/AnimationScalePreference;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mTransitionAnimationScale:Lcom/android/settings_ex/AnimationScalePreference;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAnimatorDurationScale:Lcom/android/settings_ex/AnimationScalePreference;

    if-ne p1, v0, :cond_1

    .line 1396
    :cond_0
    check-cast p1, Lcom/android/settings_ex/AnimationScalePreference;

    .end local p1
    invoke-virtual {p1}, Lcom/android/settings_ex/AnimationScalePreference;->click()V

    .line 1398
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const v6, 0x1040013

    const v5, 0x1040009

    const v4, 0x1010355

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1403
    invoke-static {}, Lcom/android/settings_ex/Utils;->isMonkeyRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1533
    :goto_0
    return v1

    .line 1407
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_3

    .line 1408
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1409
    iput-boolean v1, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDialogClicked:Z

    .line 1410
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 1411
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->dismissDialogs()V

    .line 1413
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0808f5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0808f4

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    .line 1420
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 1422
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "adb_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1424
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1425
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1426
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateBugreportOptions()V

    goto :goto_0

    .line 1428
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbNotify:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_5

    .line 1429
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "adb_notify"

    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbNotify:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_4

    :goto_1
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    .line 1432
    :cond_5
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mClearAdbKeys:Landroid/preference/Preference;

    if-ne p2, v2, :cond_7

    .line 1433
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->dismissDialogs()V

    .line 1434
    :cond_6
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0808f6

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x104000a

    invoke-virtual {v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v2, 0x104

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    goto/16 :goto_0

    .line 1439
    :cond_7
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableTerminal:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_9

    .line 1440
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1441
    const-string v3, "com.android.terminal"

    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnableTerminal:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_8

    :goto_2
    invoke-virtual {v2, v3, v0, v1}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    goto/16 :goto_0

    :cond_8
    move v0, v1

    goto :goto_2

    .line 1444
    :cond_9
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mBugreportInPower:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_b

    .line 1445
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "bugreport_in_power_menu"

    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mBugreportInPower:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_a

    :goto_3
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_a
    move v0, v1

    goto :goto_3

    .line 1448
    :cond_b
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbOverNetwork:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_e

    .line 1449
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbOverNetwork:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1450
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbTcpDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_c

    .line 1451
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->dismissDialogs()V

    .line 1453
    :cond_c
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080294

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f080292

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbTcpDialog:Landroid/app/Dialog;

    .line 1460
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdbTcpDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    .line 1462
    :cond_d
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "adb_port"

    const/4 v3, -0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1464
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateAdbOverNetwork()V

    goto/16 :goto_0

    .line 1466
    :cond_e
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_10

    .line 1467
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "stay_on_while_plugged_in"

    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x3

    :goto_4
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_f
    move v0, v1

    goto :goto_4

    .line 1471
    :cond_10
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mBtHciSnoopLog:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_11

    .line 1472
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeBtHciSnoopLogOptions()V

    goto/16 :goto_0

    .line 1473
    :cond_11
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAllowMockLocation:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_13

    .line 1474
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mock_location"

    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAllowMockLocation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_12

    :goto_5
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_12
    move v0, v1

    goto :goto_5

    .line 1477
    :cond_13
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAllowMockSMS:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_15

    .line 1478
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mock_sms"

    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAllowMockSMS:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_14

    :goto_6
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_14
    move v0, v1

    goto :goto_6

    .line 1481
    :cond_15
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mQuickBoot:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_17

    .line 1482
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enable_quickboot"

    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mQuickBoot:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_16

    :goto_7
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_16
    move v0, v1

    goto :goto_7

    .line 1485
    :cond_17
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugAppPref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_18

    .line 1486
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/settings_ex/AppPicker;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x3e8

    invoke-virtual {p0, v0, v2}, Lcom/android/settings_ex/DevelopmentSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1487
    :cond_18
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_19

    .line 1488
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeDebuggerOptions()V

    goto/16 :goto_0

    .line 1489
    :cond_19
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1a

    .line 1490
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeVerifyAppsOverUsbOptions()V

    goto/16 :goto_0

    .line 1491
    :cond_1a
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mStrictMode:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1b

    .line 1492
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeStrictModeVisualOptions()V

    goto/16 :goto_0

    .line 1493
    :cond_1b
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mPointerLocation:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1c

    .line 1494
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writePointerLocationOptions()V

    goto/16 :goto_0

    .line 1495
    :cond_1c
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowTouches:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1d

    .line 1496
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeShowTouchesOptions()V

    goto/16 :goto_0

    .line 1497
    :cond_1d
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowScreenUpdates:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1e

    .line 1498
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeShowUpdatesOption()V

    goto/16 :goto_0

    .line 1499
    :cond_1e
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDisableOverlays:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1f

    .line 1500
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeDisableOverlaysOption()V

    goto/16 :goto_0

    .line 1501
    :cond_1f
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowCpuUsage:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_20

    .line 1502
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeCpuUsageOptions()V

    goto/16 :goto_0

    .line 1503
    :cond_20
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_21

    .line 1504
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeImmediatelyDestroyActivitiesOptions()V

    goto/16 :goto_0

    .line 1505
    :cond_21
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowAllANRs:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_22

    .line 1506
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeShowAllANRsOptions()V

    goto/16 :goto_0

    .line 1507
    :cond_22
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mForceHardwareUi:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_23

    .line 1508
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeHardwareUiOptions()V

    goto/16 :goto_0

    .line 1509
    :cond_23
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mForceMsaa:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_24

    .line 1510
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeMsaaOptions()V

    goto/16 :goto_0

    .line 1511
    :cond_24
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowHwScreenUpdates:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_25

    .line 1512
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeShowHwScreenUpdatesOptions()V

    goto/16 :goto_0

    .line 1513
    :cond_25
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mShowHwLayersUpdates:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_26

    .line 1514
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeShowHwLayersUpdatesOptions()V

    goto/16 :goto_0

    .line 1515
    :cond_26
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDebugLayout:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_27

    .line 1516
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeDebugLayoutOptions()V

    goto/16 :goto_0

    .line 1517
    :cond_27
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mForceRtlLayout:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_28

    .line 1518
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeForceRtlOptions()V

    goto/16 :goto_0

    .line 1519
    :cond_28
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mWifiDisplayCertification:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_29

    .line 1520
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeWifiDisplayCertificationOptions()V

    goto/16 :goto_0

    .line 1521
    :cond_29
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mAdvancedReboot:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_2a

    .line 1522
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeAdvancedRebootOptions()V

    goto/16 :goto_0

    .line 1523
    :cond_2a
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDevelopmentShortcut:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_2b

    .line 1524
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeDevelopmentShortcutOptions()V

    goto/16 :goto_0

    .line 1525
    :cond_2b
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mKillAppLongpressBack:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_2c

    .line 1526
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeKillAppLongpressBackOptions()V

    goto/16 :goto_0

    .line 1527
    :cond_2c
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mUpdateRecovery:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_2d

    .line 1528
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->writeUpdateRecoveryOptions()V

    goto/16 :goto_0

    .line 1530
    :cond_2d
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 502
    invoke-super {p0}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onResume()V

    .line 504
    iget-boolean v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mUnavailable:Z

    if-eqz v4, :cond_1

    .line 506
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x1020004

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 507
    .local v1, emptyView:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 508
    if-eqz v1, :cond_0

    .line 509
    const v2, 0x7f0808e3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 543
    .end local v1           #emptyView:Landroid/widget/TextView;
    :cond_0
    :goto_0
    return-void

    .line 514
    :cond_1
    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_4

    .line 519
    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 524
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 525
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v4, "development_settings_enabled"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    :cond_2
    iput-boolean v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLastEnabledState:Z

    .line 527
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnabledSwitch:Landroid/widget/Switch;

    iget-boolean v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLastEnabledState:Z

    invoke-virtual {v2, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 528
    iget-boolean v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLastEnabledState:Z

    invoke-direct {p0, v2}, Lcom/android/settings_ex/DevelopmentSettings;->setPrefsEnabledState(Z)V

    .line 530
    iget-boolean v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mHaveDebugSettings:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLastEnabledState:Z

    if-nez v2, :cond_3

    .line 535
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "development_settings_enabled"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 537
    iput-boolean v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLastEnabledState:Z

    .line 538
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnabledSwitch:Landroid/widget/Switch;

    iget-boolean v3, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLastEnabledState:Z

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 539
    iget-boolean v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mLastEnabledState:Z

    invoke-direct {p0, v2}, Lcom/android/settings_ex/DevelopmentSettings;->setPrefsEnabledState(Z)V

    .line 542
    :cond_3
    invoke-direct {p0}, Lcom/android/settings_ex/DevelopmentSettings;->updateKillAppLongpressBackOptions()V

    goto :goto_0

    .line 521
    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_4
    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public onStart()V
    .locals 6

    .prologue
    const/16 v2, 0x10

    const/4 v5, -0x2

    .line 461
    invoke-super {p0}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onStart()V

    .line 462
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 463
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 465
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings;->mEnabledSwitch:Landroid/widget/Switch;

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const v4, 0x800015

    invoke-direct {v3, v5, v5, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 469
    return-void
.end method

.method public onStop()V
    .locals 4

    .prologue
    .line 473
    invoke-super {p0}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onStop()V

    .line 474
    invoke-virtual {p0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 475
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 476
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 477
    return-void
.end method

.method pokeSystemProperties()V
    .locals 2

    .prologue
    .line 1731
    iget-boolean v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mDontPokeProperties:Z

    if-nez v0, :cond_0

    .line 1733
    new-instance v0, Lcom/android/settings_ex/DevelopmentSettings$SystemPropPoker;

    invoke-direct {v0}, Lcom/android/settings_ex/DevelopmentSettings$SystemPropPoker;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DevelopmentSettings$SystemPropPoker;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1735
    :cond_0
    return-void
.end method

.method updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V
    .locals 1
    .parameter "checkBox"
    .parameter "value"

    .prologue
    .line 546
    invoke-virtual {p1, p2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 547
    iget-boolean v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mHaveDebugSettings:Z

    or-int/2addr v0, p2

    iput-boolean v0, p0, Lcom/android/settings_ex/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 548
    return-void
.end method
