.class public Lcom/android/settings/MultiSimSettings;
.super Landroid/preference/PreferenceActivity;
.source "MultiSimSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/MultiSimSettings$AirplaneModeBroadcastReceiver;
    }
.end annotation


# instance fields
.field private final MAX_SUBSCRIPTIONS:I

.field private entries:[Ljava/lang/CharSequence;

.field private entriesPrompt:[Ljava/lang/CharSequence;

.field private entryValues:[Ljava/lang/CharSequence;

.field private entryValuesPrompt:[Ljava/lang/CharSequence;

.field private mCardSubscriptionManager:Lcom/codeaurora/telephony/msim/CardSubscriptionManager;

.field private mConfigSub:Landroid/preference/PreferenceScreen;

.field private mData:Landroid/preference/ListPreference;

.field private mHandler:Landroid/os/Handler;

.field private mHasTuneAway:Z

.field private mIccCardCount:I

.field mIntentFilter:Landroid/content/IntentFilter;

.field private mIsAirplaneModeOn:Z

.field protected mIsForeground:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPrioritySub:Landroid/preference/ListPreference;

.field private mPrioritySubValue:I

.field private mReceiver:Lcom/android/settings/MultiSimSettings$AirplaneModeBroadcastReceiver;

.field private mSms:Landroid/preference/ListPreference;

.field mSubManager:Lcom/codeaurora/telephony/msim/SubscriptionManager;

.field private mTuneAway:Landroid/preference/CheckBoxPreference;

.field private mTuneAwayValue:Z

.field private mVoice:Landroid/preference/ListPreference;

.field private mVoiceSub:I

.field private summaries:[Ljava/lang/CharSequence;

.field private summariesPrompt:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 68
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 94
    iput-boolean v2, p0, Lcom/android/settings/MultiSimSettings;->mIsForeground:Z

    .line 95
    iput-boolean v2, p0, Lcom/android/settings/MultiSimSettings;->mIsAirplaneModeOn:Z

    .line 98
    sget v0, Lcom/codeaurora/telephony/msim/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    iput v0, p0, Lcom/android/settings/MultiSimSettings;->MAX_SUBSCRIPTIONS:I

    .line 112
    iput-boolean v2, p0, Lcom/android/settings/MultiSimSettings;->mTuneAwayValue:Z

    .line 116
    iput v2, p0, Lcom/android/settings/MultiSimSettings;->mPrioritySubValue:I

    .line 118
    iput v2, p0, Lcom/android/settings/MultiSimSettings;->mVoiceSub:I

    .line 119
    iput-object v1, p0, Lcom/android/settings/MultiSimSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 124
    iput-object v1, p0, Lcom/android/settings/MultiSimSettings;->mReceiver:Lcom/android/settings/MultiSimSettings$AirplaneModeBroadcastReceiver;

    .line 125
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/MultiSimSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 127
    invoke-static {}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->getInstance()Lcom/codeaurora/telephony/msim/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MultiSimSettings;->mSubManager:Lcom/codeaurora/telephony/msim/SubscriptionManager;

    .line 128
    iput v2, p0, Lcom/android/settings/MultiSimSettings;->mIccCardCount:I

    .line 129
    invoke-static {}, Lcom/codeaurora/telephony/msim/CardSubscriptionManager;->getInstance()Lcom/codeaurora/telephony/msim/CardSubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MultiSimSettings;->mCardSubscriptionManager:Lcom/codeaurora/telephony/msim/CardSubscriptionManager;

    .line 571
    new-instance v0, Lcom/android/settings/MultiSimSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MultiSimSettings$1;-><init>(Lcom/android/settings/MultiSimSettings;)V

    iput-object v0, p0, Lcom/android/settings/MultiSimSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/MultiSimSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/settings/MultiSimSettings;->updateTuneAwayStatus()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/settings/MultiSimSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/android/settings/MultiSimSettings;->mIsAirplaneModeOn:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settings/MultiSimSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/settings/MultiSimSettings;->updateTuneAwayState()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/MultiSimSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/settings/MultiSimSettings;->mTuneAwayValue:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/settings/MultiSimSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings/MultiSimSettings;->mTuneAway:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/MultiSimSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/settings/MultiSimSettings;->updatePrioritySub(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings/MultiSimSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/settings/MultiSimSettings;->updatePrioritySubState()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings/MultiSimSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/android/settings/MultiSimSettings;->mPrioritySubValue:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/settings/MultiSimSettings;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings/MultiSimSettings;->mPrioritySub:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/MultiSimSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/settings/MultiSimSettings;->updateDataSummary()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/MultiSimSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/settings/MultiSimSettings;->mHasTuneAway:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/MultiSimSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/settings/MultiSimSettings;->updateVoiceSummary()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/MultiSimSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/settings/MultiSimSettings;->updateVoiceSub(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/MultiSimSettings;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings/MultiSimSettings;->mVoice:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/MultiSimSettings;)[Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings/MultiSimSettings;->summaries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/MultiSimSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/android/settings/MultiSimSettings;->mVoiceSub:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/settings/MultiSimSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput p1, p0, Lcom/android/settings/MultiSimSettings;->mVoiceSub:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/settings/MultiSimSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/settings/MultiSimSettings;->updateSmsSummary()V

    return-void
.end method

.method private configureMSimMenu(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 688
    const-string v0, "MultiSimSettings"

    const-string v1, "configureMSimMenu"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    iget-object v0, p0, Lcom/android/settings/MultiSimSettings;->mVoice:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 690
    iget-object v0, p0, Lcom/android/settings/MultiSimSettings;->mVoice:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setSelectable(Z)V

    .line 691
    iget-object v0, p0, Lcom/android/settings/MultiSimSettings;->mData:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 692
    iget-object v0, p0, Lcom/android/settings/MultiSimSettings;->mData:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setSelectable(Z)V

    .line 694
    iget-object v0, p0, Lcom/android/settings/MultiSimSettings;->mSms:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 695
    iget-object v0, p0, Lcom/android/settings/MultiSimSettings;->mSms:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setSelectable(Z)V

    .line 697
    iget-object v0, p0, Lcom/android/settings/MultiSimSettings;->mPrioritySub:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 698
    iget-object v0, p0, Lcom/android/settings/MultiSimSettings;->mPrioritySub:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setSelectable(Z)V

    .line 700
    iget-object v0, p0, Lcom/android/settings/MultiSimSettings;->mTuneAway:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 701
    iget-object v0, p0, Lcom/android/settings/MultiSimSettings;->mTuneAway:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setSelectable(Z)V

    .line 702
    return-void
.end method

.method private isAirplaneModeOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 713
    invoke-virtual {p0}, Lcom/android/settings/MultiSimSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private registerForAirplaneMode()V
    .locals 2

    .prologue
    .line 705
    iget-object v0, p0, Lcom/android/settings/MultiSimSettings;->mReceiver:Lcom/android/settings/MultiSimSettings$AirplaneModeBroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/MultiSimSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/MultiSimSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 706
    return-void
.end method

.method private unregisterForAirplaneMode()V
    .locals 1

    .prologue
    .line 709
    iget-object v0, p0, Lcom/android/settings/MultiSimSettings;->mReceiver:Lcom/android/settings/MultiSimSettings$AirplaneModeBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/MultiSimSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 710
    return-void
.end method

.method private updateDataSummary()V
    .locals 4

    .prologue
    .line 369
    invoke-static {}, Lcom/codeaurora/telephony/msim/MSimPhoneFactory;->getDataSubscription()I

    move-result v0

    .line 371
    .local v0, dataSub:I
    const-string v1, "MultiSimSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDataSummary: Data Subscription : = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v1, p0, Lcom/android/settings/MultiSimSettings;->mData:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 373
    iget-boolean v1, p0, Lcom/android/settings/MultiSimSettings;->mIsAirplaneModeOn:Z

    if-nez v1, :cond_0

    .line 374
    iget-object v1, p0, Lcom/android/settings/MultiSimSettings;->mData:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/MultiSimSettings;->summaries:[Ljava/lang/CharSequence;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 376
    :cond_0
    return-void
.end method

.method private updatePrioritySub(I)V
    .locals 4
    .parameter "priorityIndex"

    .prologue
    .line 558
    const-string v1, "MultiSimSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePrioritySub change priority sub to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    iget-object v1, p0, Lcom/android/settings/MultiSimSettings;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 561
    .local v0, setPrioritySubMsg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings/MultiSimSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, p1, v0}, Lcom/android/internal/telephony/Phone;->setPrioritySub(ILandroid/os/Message;)V

    .line 562
    return-void
.end method

.method private updatePrioritySubState()V
    .locals 4

    .prologue
    .line 318
    iget-object v2, p0, Lcom/android/settings/MultiSimSettings;->mPrioritySub:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/settings/MultiSimSettings;->entries:[Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 319
    iget-object v2, p0, Lcom/android/settings/MultiSimSettings;->mPrioritySub:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/settings/MultiSimSettings;->entryValues:[Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 322
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/MultiSimSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "multi_sim_priority"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 324
    .local v0, priorityValue:I
    iget-object v2, p0, Lcom/android/settings/MultiSimSettings;->mPrioritySub:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 325
    iget-object v2, p0, Lcom/android/settings/MultiSimSettings;->mPrioritySub:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/settings/MultiSimSettings;->summaries:[Ljava/lang/CharSequence;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 326
    iput v0, p0, Lcom/android/settings/MultiSimSettings;->mPrioritySubValue:I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    .end local v0           #priorityValue:I
    :goto_0
    return-void

    .line 328
    :catch_0
    move-exception v1

    .line 329
    .local v1, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "MultiSimSettings"

    const-string v3, "Settings Exception Reading Dual Sim Priority Subscription Values"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateSmsSummary()V
    .locals 7

    .prologue
    .line 379
    invoke-static {}, Lcom/codeaurora/telephony/msim/MSimPhoneFactory;->getSMSSubscription()I

    move-result v2

    .line 380
    .local v2, smsSub:I
    invoke-static {}, Lcom/codeaurora/telephony/msim/MSimPhoneFactory;->isSMSPromptEnabled()Z

    move-result v1

    .line 381
    .local v1, promptEnabled:Z
    iget-object v4, p0, Lcom/android/settings/MultiSimSettings;->mSubManager:Lcom/codeaurora/telephony/msim/SubscriptionManager;

    invoke-virtual {v4}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->getActiveSubscriptionsCount()I

    move-result v0

    .line 383
    .local v0, count:I
    const-string v4, "MultiSimSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateSmsSummary: SmsSub =  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " promptEnabled = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " number of active SUBs = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    if-eqz v1, :cond_0

    const/4 v4, 0x2

    if-lt v0, v4, :cond_0

    .line 388
    const-string v4, "MultiSimSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "prompt is enabled: setting value to : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/MultiSimSettings;->MAX_SUBSCRIPTIONS:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object v4, p0, Lcom/android/settings/MultiSimSettings;->mSms:Landroid/preference/ListPreference;

    iget v5, p0, Lcom/android/settings/MultiSimSettings;->MAX_SUBSCRIPTIONS:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 390
    iget-object v4, p0, Lcom/android/settings/MultiSimSettings;->mSms:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/settings/MultiSimSettings;->summariesPrompt:[Ljava/lang/CharSequence;

    iget v6, p0, Lcom/android/settings/MultiSimSettings;->MAX_SUBSCRIPTIONS:I

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 397
    :goto_0
    return-void

    .line 392
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 393
    .local v3, sub:Ljava/lang/String;
    const-string v4, "MultiSimSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setting value to : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object v4, p0, Lcom/android/settings/MultiSimSettings;->mSms:Landroid/preference/ListPreference;

    invoke-virtual {v4, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 395
    iget-object v4, p0, Lcom/android/settings/MultiSimSettings;->mSms:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/settings/MultiSimSettings;->summaries:[Ljava/lang/CharSequence;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateState()V
    .locals 0

    .prologue
    .line 341
    invoke-direct {p0}, Lcom/android/settings/MultiSimSettings;->updateVoiceSummary()V

    .line 342
    invoke-direct {p0}, Lcom/android/settings/MultiSimSettings;->updateDataSummary()V

    .line 343
    invoke-direct {p0}, Lcom/android/settings/MultiSimSettings;->updateSmsSummary()V

    .line 344
    return-void
.end method

.method private updateTuneAwayState()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 309
    invoke-virtual {p0}, Lcom/android/settings/MultiSimSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "tune_away"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    .line 311
    .local v1, tuneAwayStatus:Z
    :goto_0
    if-eqz v1, :cond_1

    const v0, 0x7f08007a

    .line 313
    .local v0, resId:I
    :goto_1
    iget-object v2, p0, Lcom/android/settings/MultiSimSettings;->mTuneAway:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 314
    iget-object v2, p0, Lcom/android/settings/MultiSimSettings;->mTuneAway:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/MultiSimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 315
    return-void

    .end local v0           #resId:I
    .end local v1           #tuneAwayStatus:Z
    :cond_0
    move v1, v2

    .line 309
    goto :goto_0

    .line 311
    .restart local v1       #tuneAwayStatus:Z
    :cond_1
    const v0, 0x7f08007b

    goto :goto_1
.end method

.method private updateTuneAwayStatus()V
    .locals 5

    .prologue
    .line 550
    iget-object v2, p0, Lcom/android/settings/MultiSimSettings;->mTuneAway:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    .line 551
    .local v1, tuneAwayValue:Z
    iput-boolean v1, p0, Lcom/android/settings/MultiSimSettings;->mTuneAwayValue:Z

    .line 552
    const-string v2, "MultiSimSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " updateTuneAwayStatus change tuneAwayValue to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iget-object v2, p0, Lcom/android/settings/MultiSimSettings;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 554
    .local v0, setTuneAwayMsg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/settings/MultiSimSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2, v1, v0}, Lcom/android/internal/telephony/Phone;->setTuneAway(ZLandroid/os/Message;)V

    .line 555
    return-void
.end method

.method private updateUi()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 212
    const/4 v1, 0x0

    .line 214
    .local v1, isCardAbsentOrError:Z
    iput v5, p0, Lcom/android/settings/MultiSimSettings;->mIccCardCount:I

    .line 216
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/android/settings/MultiSimSettings;->MAX_SUBSCRIPTIONS:I

    if-ge v0, v2, :cond_1

    .line 217
    iget-object v2, p0, Lcom/android/settings/MultiSimSettings;->mCardSubscriptionManager:Lcom/codeaurora/telephony/msim/CardSubscriptionManager;

    invoke-virtual {v2, v0}, Lcom/codeaurora/telephony/msim/CardSubscriptionManager;->isCardAbsentOrError(I)Z

    move-result v1

    .line 220
    if-nez v1, :cond_0

    .line 221
    iget v2, p0, Lcom/android/settings/MultiSimSettings;->mIccCardCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/settings/MultiSimSettings;->mIccCardCount:I

    .line 216
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 224
    :cond_1
    const-string v2, "MultiSimSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIccCardCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/MultiSimSettings;->mIccCardCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget v2, p0, Lcom/android/settings/MultiSimSettings;->mIccCardCount:I

    if-nez v2, :cond_4

    .line 227
    iget-object v2, p0, Lcom/android/settings/MultiSimSettings;->mConfigSub:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 228
    iget-object v2, p0, Lcom/android/settings/MultiSimSettings;->mConfigSub:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->setSelectable(Z)V

    .line 229
    invoke-virtual {p0}, Lcom/android/settings/MultiSimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08006f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/MultiSimSettings;->displayAlertDialog(Ljava/lang/String;)V

    .line 230
    invoke-direct {p0, v5}, Lcom/android/settings/MultiSimSettings;->configureMSimMenu(Z)V

    .line 250
    :cond_2
    :goto_1
    iget-boolean v2, p0, Lcom/android/settings/MultiSimSettings;->mIsAirplaneModeOn:Z

    if-eqz v2, :cond_3

    .line 251
    iget-object v2, p0, Lcom/android/settings/MultiSimSettings;->mData:Landroid/preference/ListPreference;

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 252
    iget-object v2, p0, Lcom/android/settings/MultiSimSettings;->mData:Landroid/preference/ListPreference;

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setSelectable(Z)V

    .line 254
    :cond_3
    return-void

    .line 231
    :cond_4
    iget v2, p0, Lcom/android/settings/MultiSimSettings;->mIccCardCount:I

    if-ne v2, v6, :cond_5

    .line 233
    iget-object v2, p0, Lcom/android/settings/MultiSimSettings;->mConfigSub:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 234
    iget-object v2, p0, Lcom/android/settings/MultiSimSettings;->mConfigSub:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v6}, Landroid/preference/PreferenceScreen;->setSelectable(Z)V

    .line 235
    invoke-direct {p0, v5}, Lcom/android/settings/MultiSimSettings;->configureMSimMenu(Z)V

    goto :goto_1

    .line 236
    :cond_5
    iget v2, p0, Lcom/android/settings/MultiSimSettings;->mIccCardCount:I

    if-le v2, v6, :cond_6

    iget v2, p0, Lcom/android/settings/MultiSimSettings;->mIccCardCount:I

    iget v3, p0, Lcom/android/settings/MultiSimSettings;->MAX_SUBSCRIPTIONS:I

    if-gt v2, v3, :cond_6

    .line 237
    invoke-direct {p0, v6}, Lcom/android/settings/MultiSimSettings;->configureMSimMenu(Z)V

    .line 238
    invoke-virtual {p0}, Lcom/android/settings/MultiSimSettings;->updateMultiSimEntriesForVoice()V

    .line 239
    invoke-virtual {p0}, Lcom/android/settings/MultiSimSettings;->updateMultiSimEntriesForData()V

    .line 240
    invoke-virtual {p0}, Lcom/android/settings/MultiSimSettings;->updateMultiSimEntriesForSms()V

    .line 241
    invoke-direct {p0}, Lcom/android/settings/MultiSimSettings;->updateState()V

    .line 242
    iget-boolean v2, p0, Lcom/android/settings/MultiSimSettings;->mHasTuneAway:Z

    if-eqz v2, :cond_2

    .line 243
    invoke-direct {p0}, Lcom/android/settings/MultiSimSettings;->updateTuneAwayState()V

    .line 244
    invoke-direct {p0}, Lcom/android/settings/MultiSimSettings;->updatePrioritySubState()V

    goto :goto_1

    .line 247
    :cond_6
    const-string v2, "MultiSimSettings"

    const-string v3, "Invalid card count"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private updateVoiceSub(I)V
    .locals 4
    .parameter "subIndex"

    .prologue
    .line 565
    const-string v1, "MultiSimSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateVoiceSub change voice sub to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    iget-object v1, p0, Lcom/android/settings/MultiSimSettings;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 568
    .local v0, setVoiceSubMsg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings/MultiSimSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, p1, v0}, Lcom/android/internal/telephony/Phone;->setDefaultVoiceSub(ILandroid/os/Message;)V

    .line 569
    return-void
.end method

.method private updateVoiceSummary()V
    .locals 7

    .prologue
    .line 347
    invoke-static {}, Lcom/codeaurora/telephony/msim/MSimPhoneFactory;->getVoiceSubscription()I

    move-result v3

    .line 348
    .local v3, voiceSub:I
    invoke-static {}, Lcom/codeaurora/telephony/msim/MSimPhoneFactory;->isPromptEnabled()Z

    move-result v1

    .line 349
    .local v1, promptEnabled:Z
    iget-object v4, p0, Lcom/android/settings/MultiSimSettings;->mSubManager:Lcom/codeaurora/telephony/msim/SubscriptionManager;

    invoke-virtual {v4}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->getActiveSubscriptionsCount()I

    move-result v0

    .line 351
    .local v0, count:I
    const-string v4, "MultiSimSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateVoiceSummary: voiceSub =  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " promptEnabled = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " number of active SUBs = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    if-eqz v1, :cond_0

    const/4 v4, 0x2

    if-lt v0, v4, :cond_0

    .line 357
    const-string v4, "MultiSimSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "prompt is enabled: setting value to : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/MultiSimSettings;->MAX_SUBSCRIPTIONS:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v4, p0, Lcom/android/settings/MultiSimSettings;->mVoice:Landroid/preference/ListPreference;

    iget v5, p0, Lcom/android/settings/MultiSimSettings;->MAX_SUBSCRIPTIONS:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 359
    iget-object v4, p0, Lcom/android/settings/MultiSimSettings;->mVoice:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/settings/MultiSimSettings;->summariesPrompt:[Ljava/lang/CharSequence;

    iget v6, p0, Lcom/android/settings/MultiSimSettings;->MAX_SUBSCRIPTIONS:I

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 366
    :goto_0
    return-void

    .line 361
    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 362
    .local v2, sub:Ljava/lang/String;
    const-string v4, "MultiSimSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setting value to : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object v4, p0, Lcom/android/settings/MultiSimSettings;->mVoice:Landroid/preference/ListPreference;

    invoke-virtual {v4, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 364
    iget-object v4, p0, Lcom/android/settings/MultiSimSettings;->mVoice:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/settings/MultiSimSettings;->summaries:[Ljava/lang/CharSequence;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method displayAlertDialog(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 536
    iget-boolean v0, p0, Lcom/android/settings/MultiSimSettings;->mIsForeground:Z

    if-nez v0, :cond_0

    .line 537
    const-string v0, "MultiSimSettings"

    const-string v1, "The activitiy is not in foreground. Do not display dialog!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    :goto_0
    return-void

    .line 540
    :cond_0
    const-string v0, "MultiSimSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayErrorDialog!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 524
    const-string v0, "MultiSimSettings"

    const-string v1, "onClick!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    iget v0, p0, Lcom/android/settings/MultiSimSettings;->mIccCardCount:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/MultiSimSettings;->finish()V

    .line 533
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 134
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 136
    const v5, 0x7f05002a

    invoke-virtual {p0, v5}, Lcom/android/settings/MultiSimSettings;->addPreferencesFromResource(I)V

    .line 138
    const-string v5, "voice"

    invoke-virtual {p0, v5}, Lcom/android/settings/MultiSimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/android/settings/MultiSimSettings;->mVoice:Landroid/preference/ListPreference;

    .line 139
    iget-object v5, p0, Lcom/android/settings/MultiSimSettings;->mVoice:Landroid/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 140
    const-string v5, "data"

    invoke-virtual {p0, v5}, Lcom/android/settings/MultiSimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/android/settings/MultiSimSettings;->mData:Landroid/preference/ListPreference;

    .line 141
    iget-object v5, p0, Lcom/android/settings/MultiSimSettings;->mData:Landroid/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 142
    const-string v5, "sms"

    invoke-virtual {p0, v5}, Lcom/android/settings/MultiSimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/android/settings/MultiSimSettings;->mSms:Landroid/preference/ListPreference;

    .line 143
    iget-object v5, p0, Lcom/android/settings/MultiSimSettings;->mSms:Landroid/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 144
    const-string v5, "config_sub"

    invoke-virtual {p0, v5}, Lcom/android/settings/MultiSimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/settings/MultiSimSettings;->mConfigSub:Landroid/preference/PreferenceScreen;

    .line 145
    iget-object v5, p0, Lcom/android/settings/MultiSimSettings;->mConfigSub:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "CONFIG_SUB"

    invoke-virtual {v5, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 146
    const-string v5, "tune_away"

    invoke-virtual {p0, v5}, Lcom/android/settings/MultiSimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/MultiSimSettings;->mTuneAway:Landroid/preference/CheckBoxPreference;

    .line 147
    iget-object v5, p0, Lcom/android/settings/MultiSimSettings;->mTuneAway:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 148
    const-string v5, "priority_subscription"

    invoke-virtual {p0, v5}, Lcom/android/settings/MultiSimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/android/settings/MultiSimSettings;->mPrioritySub:Landroid/preference/ListPreference;

    .line 149
    iget-object v5, p0, Lcom/android/settings/MultiSimSettings;->mPrioritySub:Landroid/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 150
    invoke-static {v10}, Lcom/codeaurora/telephony/msim/MSimPhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/MultiSimSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/MultiSimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b000d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/MultiSimSettings;->mHasTuneAway:Z

    .line 153
    iget-boolean v5, p0, Lcom/android/settings/MultiSimSettings;->mHasTuneAway:Z

    if-nez v5, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/MultiSimSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/MultiSimSettings;->mPrioritySub:Landroid/preference/ListPreference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/MultiSimSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/MultiSimSettings;->mTuneAway:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 158
    :cond_0
    const/4 v3, 0x0

    .local v3, subId:I
    :goto_0
    sget v5, Lcom/codeaurora/telephony/msim/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    if-ge v3, v5, :cond_1

    .line 159
    iget-object v5, p0, Lcom/android/settings/MultiSimSettings;->mSubManager:Lcom/codeaurora/telephony/msim/SubscriptionManager;

    iget-object v6, p0, Lcom/android/settings/MultiSimSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v3, v6, v11, v9}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->registerForSubscriptionActivated(ILandroid/os/Handler;ILjava/lang/Object;)V

    .line 161
    iget-object v5, p0, Lcom/android/settings/MultiSimSettings;->mSubManager:Lcom/codeaurora/telephony/msim/SubscriptionManager;

    iget-object v6, p0, Lcom/android/settings/MultiSimSettings;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x3

    invoke-virtual {v5, v3, v6, v7, v9}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->registerForSubscriptionDeactivated(ILandroid/os/Handler;ILjava/lang/Object;)V

    .line 158
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 168
    :cond_1
    iget v5, p0, Lcom/android/settings/MultiSimSettings;->MAX_SUBSCRIPTIONS:I

    new-array v5, v5, [Ljava/lang/CharSequence;

    iput-object v5, p0, Lcom/android/settings/MultiSimSettings;->entries:[Ljava/lang/CharSequence;

    .line 169
    iget v5, p0, Lcom/android/settings/MultiSimSettings;->MAX_SUBSCRIPTIONS:I

    new-array v5, v5, [Ljava/lang/CharSequence;

    iput-object v5, p0, Lcom/android/settings/MultiSimSettings;->entryValues:[Ljava/lang/CharSequence;

    .line 170
    iget v5, p0, Lcom/android/settings/MultiSimSettings;->MAX_SUBSCRIPTIONS:I

    new-array v5, v5, [Ljava/lang/CharSequence;

    iput-object v5, p0, Lcom/android/settings/MultiSimSettings;->summaries:[Ljava/lang/CharSequence;

    .line 171
    iget v5, p0, Lcom/android/settings/MultiSimSettings;->MAX_SUBSCRIPTIONS:I

    add-int/lit8 v5, v5, 0x1

    new-array v5, v5, [Ljava/lang/CharSequence;

    iput-object v5, p0, Lcom/android/settings/MultiSimSettings;->entriesPrompt:[Ljava/lang/CharSequence;

    .line 172
    iget v5, p0, Lcom/android/settings/MultiSimSettings;->MAX_SUBSCRIPTIONS:I

    add-int/lit8 v5, v5, 0x1

    new-array v5, v5, [Ljava/lang/CharSequence;

    iput-object v5, p0, Lcom/android/settings/MultiSimSettings;->entryValuesPrompt:[Ljava/lang/CharSequence;

    .line 173
    iget v5, p0, Lcom/android/settings/MultiSimSettings;->MAX_SUBSCRIPTIONS:I

    add-int/lit8 v5, v5, 0x1

    new-array v5, v5, [Ljava/lang/CharSequence;

    iput-object v5, p0, Lcom/android/settings/MultiSimSettings;->summariesPrompt:[Ljava/lang/CharSequence;

    .line 174
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v4

    .line 175
    .local v4, tm:Landroid/telephony/MSimTelephonyManager;
    const/4 v0, 0x0

    .line 176
    .local v0, i:I
    const/4 v0, 0x0

    :goto_1
    iget v5, p0, Lcom/android/settings/MultiSimSettings;->MAX_SUBSCRIPTIONS:I

    if-ge v0, v5, :cond_3

    .line 177
    invoke-virtual {v4, v0}, Landroid/telephony/MSimTelephonyManager;->getSimState(I)I

    move-result v5

    if-eq v5, v8, :cond_2

    invoke-virtual {v4, v0}, Landroid/telephony/MSimTelephonyManager;->getNetworkOperatorName(I)Ljava/lang/String;

    move-result-object v2

    .line 179
    .local v2, operatorName:Ljava/lang/String;
    :goto_2
    const v5, 0x7f080400

    new-array v6, v11, [Ljava/lang/Object;

    aput-object v2, v6, v10

    add-int/lit8 v7, v0, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/MultiSimSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, label:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/MultiSimSettings;->entries:[Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/android/settings/MultiSimSettings;->summaries:[Ljava/lang/CharSequence;

    aput-object v1, v6, v0

    aput-object v1, v5, v0

    .line 181
    iget-object v5, p0, Lcom/android/settings/MultiSimSettings;->entriesPrompt:[Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/android/settings/MultiSimSettings;->summariesPrompt:[Ljava/lang/CharSequence;

    aput-object v1, v6, v0

    aput-object v1, v5, v0

    .line 182
    iget-object v5, p0, Lcom/android/settings/MultiSimSettings;->entryValues:[Ljava/lang/CharSequence;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    .line 183
    iget-object v5, p0, Lcom/android/settings/MultiSimSettings;->entryValuesPrompt:[Ljava/lang/CharSequence;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    .line 176
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 177
    .end local v1           #label:Ljava/lang/String;
    .end local v2           #operatorName:Ljava/lang/String;
    :cond_2
    const v5, 0x7f0803ff

    invoke-virtual {p0, v5}, Lcom/android/settings/MultiSimSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 185
    :cond_3
    iget-object v5, p0, Lcom/android/settings/MultiSimSettings;->entryValuesPrompt:[Ljava/lang/CharSequence;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    .line 186
    iget-object v5, p0, Lcom/android/settings/MultiSimSettings;->entriesPrompt:[Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/settings/MultiSimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080030

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    .line 187
    iget-object v5, p0, Lcom/android/settings/MultiSimSettings;->summariesPrompt:[Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/settings/MultiSimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080078

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    .line 188
    new-instance v5, Lcom/android/settings/MultiSimSettings$AirplaneModeBroadcastReceiver;

    invoke-direct {v5, p0, v9}, Lcom/android/settings/MultiSimSettings$AirplaneModeBroadcastReceiver;-><init>(Lcom/android/settings/MultiSimSettings;Lcom/android/settings/MultiSimSettings$1;)V

    iput-object v5, p0, Lcom/android/settings/MultiSimSettings;->mReceiver:Lcom/android/settings/MultiSimSettings$AirplaneModeBroadcastReceiver;

    .line 189
    invoke-direct {p0}, Lcom/android/settings/MultiSimSettings;->isAirplaneModeOn()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/MultiSimSettings;->mIsAirplaneModeOn:Z

    .line 190
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 496
    const/16 v1, 0x64

    if-ne p1, v1, :cond_0

    .line 497
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 499
    .local v0, dialog:Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Lcom/android/settings/MultiSimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080071

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 500
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 501
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 505
    .end local v0           #dialog:Landroid/app/ProgressDialog;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 519
    const-string v0, "MultiSimSettings"

    const-string v1, "onDismiss!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 335
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 336
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/MultiSimSettings;->mIsForeground:Z

    .line 337
    invoke-direct {p0}, Lcom/android/settings/MultiSimSettings;->unregisterForAirplaneMode()V

    .line 338
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 13
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v12, 0x4

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 400
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 402
    .local v1, key:Ljava/lang/String;
    const-string v7, "MultiSimSettings"

    const-string v10, "onPreferenceChange:::: "

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    const-string v7, "voice"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v7, p2

    .line 406
    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/settings/MultiSimSettings;->mVoiceSub:I

    .line 407
    iget v7, p0, Lcom/android/settings/MultiSimSettings;->mVoiceSub:I

    iget v10, p0, Lcom/android/settings/MultiSimSettings;->MAX_SUBSCRIPTIONS:I

    if-ne v7, v10, :cond_6

    .line 410
    invoke-static {v9}, Lcom/codeaurora/telephony/msim/MSimPhoneFactory;->setPromptEnabled(Z)V

    .line 411
    iget-object v7, p0, Lcom/android/settings/MultiSimSettings;->mVoice:Landroid/preference/ListPreference;

    iget-object v10, p0, Lcom/android/settings/MultiSimSettings;->summariesPrompt:[Ljava/lang/CharSequence;

    iget v11, p0, Lcom/android/settings/MultiSimSettings;->mVoiceSub:I

    aget-object v10, v10, v11

    invoke-virtual {v7, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 412
    const-string v7, "MultiSimSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "prompt is enabled "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/settings/MultiSimSettings;->mVoiceSub:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :goto_0
    iget-boolean v7, p0, Lcom/android/settings/MultiSimSettings;->mHasTuneAway:Z

    if-nez v7, :cond_0

    .line 432
    iget-object v7, p0, Lcom/android/settings/MultiSimSettings;->mHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/android/settings/MultiSimSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v10, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 436
    :cond_0
    const-string v7, "data"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v7, p2

    .line 437
    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 438
    .local v0, dataSub:I
    const-string v7, "MultiSimSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setDataSubscription "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget-boolean v7, p0, Lcom/android/settings/MultiSimSettings;->mIsForeground:Z

    if-eqz v7, :cond_1

    .line 440
    const/16 v7, 0x64

    invoke-virtual {p0, v7}, Lcom/android/settings/MultiSimSettings;->showDialog(I)V

    .line 442
    :cond_1
    invoke-static {}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->getInstance()Lcom/codeaurora/telephony/msim/SubscriptionManager;

    move-result-object v2

    .line 443
    .local v2, mSubscriptionManager:Lcom/codeaurora/telephony/msim/SubscriptionManager;
    iget-object v7, p0, Lcom/android/settings/MultiSimSettings;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x0

    invoke-static {v7, v9, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 444
    .local v4, setDdsMsg:Landroid/os/Message;
    invoke-virtual {v2, v0, v4}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->setDataSubscription(ILandroid/os/Message;)V

    .line 447
    .end local v0           #dataSub:I
    .end local v2           #mSubscriptionManager:Lcom/codeaurora/telephony/msim/SubscriptionManager;
    .end local v4           #setDdsMsg:Landroid/os/Message;
    :cond_2
    const-string v7, "sms"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v7, p2

    .line 448
    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 449
    .local v5, smsSub:I
    iget v7, p0, Lcom/android/settings/MultiSimSettings;->MAX_SUBSCRIPTIONS:I

    if-ne v5, v7, :cond_9

    .line 452
    invoke-static {v9}, Lcom/codeaurora/telephony/msim/MSimPhoneFactory;->setSMSPromptEnabled(Z)V

    .line 453
    iget-object v7, p0, Lcom/android/settings/MultiSimSettings;->mSms:Landroid/preference/ListPreference;

    iget-object v10, p0, Lcom/android/settings/MultiSimSettings;->summariesPrompt:[Ljava/lang/CharSequence;

    aget-object v10, v10, v5

    invoke-virtual {v7, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 454
    const-string v7, "MultiSimSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "prompt is enabled "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :goto_1
    iget-object v7, p0, Lcom/android/settings/MultiSimSettings;->mHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/android/settings/MultiSimSettings;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x5

    invoke-virtual {v10, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 470
    .end local v5           #smsSub:I
    :cond_3
    const-string v7, "tune_away"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 471
    iget-object v7, p0, Lcom/android/settings/MultiSimSettings;->mHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/android/settings/MultiSimSettings;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x6

    invoke-virtual {v10, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 474
    :cond_4
    const-string v7, "priority_subscription"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 475
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 476
    .local v3, prioritySubIndex:I
    iget-object v7, p0, Lcom/android/settings/MultiSimSettings;->mSubManager:Lcom/codeaurora/telephony/msim/SubscriptionManager;

    invoke-virtual {v7, v3}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->getCurrentSubscription(I)Lcom/codeaurora/telephony/msim/Subscription;

    move-result-object v7

    iget-object v7, v7, Lcom/codeaurora/telephony/msim/Subscription;->subStatus:Lcom/codeaurora/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v10, Lcom/codeaurora/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/codeaurora/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v7, v10, :cond_b

    .line 478
    iput v3, p0, Lcom/android/settings/MultiSimSettings;->mPrioritySubValue:I

    .line 479
    iget-object v7, p0, Lcom/android/settings/MultiSimSettings;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/settings/MultiSimSettings;->mHandler:Landroid/os/Handler;

    const/16 v10, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .end local v3           #prioritySubIndex:I
    :cond_5
    move v7, v9

    .line 490
    :goto_2
    return v7

    .line 413
    .restart local p2
    :cond_6
    iget-object v7, p0, Lcom/android/settings/MultiSimSettings;->mSubManager:Lcom/codeaurora/telephony/msim/SubscriptionManager;

    iget v10, p0, Lcom/android/settings/MultiSimSettings;->mVoiceSub:I

    invoke-virtual {v7, v10}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->getCurrentSubscription(I)Lcom/codeaurora/telephony/msim/Subscription;

    move-result-object v7

    iget-object v7, v7, Lcom/codeaurora/telephony/msim/Subscription;->subStatus:Lcom/codeaurora/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v10, Lcom/codeaurora/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/codeaurora/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v7, v10, :cond_8

    .line 415
    const-string v7, "MultiSimSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setVoiceSubscription "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/settings/MultiSimSettings;->mVoiceSub:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    invoke-static {v8}, Lcom/codeaurora/telephony/msim/MSimPhoneFactory;->setPromptEnabled(Z)V

    .line 417
    iget-boolean v7, p0, Lcom/android/settings/MultiSimSettings;->mHasTuneAway:Z

    if-nez v7, :cond_7

    .line 418
    iget v7, p0, Lcom/android/settings/MultiSimSettings;->mVoiceSub:I

    invoke-static {v7}, Lcom/codeaurora/telephony/msim/MSimPhoneFactory;->setVoiceSubscription(I)V

    .line 419
    iget-object v7, p0, Lcom/android/settings/MultiSimSettings;->mVoice:Landroid/preference/ListPreference;

    iget-object v10, p0, Lcom/android/settings/MultiSimSettings;->summaries:[Ljava/lang/CharSequence;

    iget v11, p0, Lcom/android/settings/MultiSimSettings;->mVoiceSub:I

    aget-object v10, v10, v11

    invoke-virtual {v7, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 421
    :cond_7
    iget-object v7, p0, Lcom/android/settings/MultiSimSettings;->mHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/android/settings/MultiSimSettings;->mHandler:Landroid/os/Handler;

    iget v11, p0, Lcom/android/settings/MultiSimSettings;->mVoiceSub:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v12, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 425
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/MultiSimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f080076

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 426
    .local v6, status:Ljava/lang/String;
    invoke-virtual {p0, v6}, Lcom/android/settings/MultiSimSettings;->displayAlertDialog(Ljava/lang/String;)V

    .line 427
    const-string v7, "MultiSimSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setVoiceSubscription: sub="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/settings/MultiSimSettings;->mVoiceSub:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " failed due to sub not activated"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 429
    goto/16 :goto_2

    .line 455
    .end local v6           #status:Ljava/lang/String;
    .restart local v5       #smsSub:I
    :cond_9
    iget-object v7, p0, Lcom/android/settings/MultiSimSettings;->mSubManager:Lcom/codeaurora/telephony/msim/SubscriptionManager;

    invoke-virtual {v7, v5}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->getCurrentSubscription(I)Lcom/codeaurora/telephony/msim/Subscription;

    move-result-object v7

    iget-object v7, v7, Lcom/codeaurora/telephony/msim/Subscription;->subStatus:Lcom/codeaurora/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v10, Lcom/codeaurora/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/codeaurora/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v7, v10, :cond_a

    .line 457
    const-string v7, "MultiSimSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setSMSSubscription "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    invoke-static {v8}, Lcom/codeaurora/telephony/msim/MSimPhoneFactory;->setSMSPromptEnabled(Z)V

    .line 459
    invoke-static {v5}, Lcom/codeaurora/telephony/msim/MSimPhoneFactory;->setSMSSubscription(I)V

    .line 460
    iget-object v7, p0, Lcom/android/settings/MultiSimSettings;->mSms:Landroid/preference/ListPreference;

    iget-object v10, p0, Lcom/android/settings/MultiSimSettings;->summaries:[Ljava/lang/CharSequence;

    aget-object v10, v10, v5

    invoke-virtual {v7, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 462
    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/MultiSimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f080075

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 463
    .restart local v6       #status:Ljava/lang/String;
    invoke-virtual {p0, v6}, Lcom/android/settings/MultiSimSettings;->displayAlertDialog(Ljava/lang/String;)V

    .line 464
    const-string v7, "MultiSimSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setSMSSub: sub="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " failed due to sub not activated"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 465
    goto/16 :goto_2

    .line 482
    .end local v5           #smsSub:I
    .end local v6           #status:Ljava/lang/String;
    .end local p2
    .restart local v3       #prioritySubIndex:I
    :cond_b
    invoke-virtual {p0}, Lcom/android/settings/MultiSimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f080077

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 483
    .restart local v6       #status:Ljava/lang/String;
    invoke-virtual {p0, v6}, Lcom/android/settings/MultiSimSettings;->displayAlertDialog(Ljava/lang/String;)V

    .line 484
    const-string v7, "MultiSimSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setPrioritySub: sub="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " failed due to sub not activated"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 486
    goto/16 :goto_2
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 510
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 513
    invoke-virtual {p0}, Lcom/android/settings/MultiSimSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 515
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 194
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/MultiSimSettings;->mIsForeground:Z

    .line 196
    invoke-direct {p0}, Lcom/android/settings/MultiSimSettings;->registerForAirplaneMode()V

    .line 197
    invoke-direct {p0}, Lcom/android/settings/MultiSimSettings;->updateUi()V

    .line 198
    return-void
.end method

.method protected updateMultiSimEntriesForData()V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/settings/MultiSimSettings;->mData:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/MultiSimSettings;->entries:[Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 283
    iget-object v0, p0, Lcom/android/settings/MultiSimSettings;->mData:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/MultiSimSettings;->entryValues:[Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 284
    return-void
.end method

.method protected updateMultiSimEntriesForSms()V
    .locals 3

    .prologue
    .line 287
    iget-object v1, p0, Lcom/android/settings/MultiSimSettings;->mSubManager:Lcom/codeaurora/telephony/msim/SubscriptionManager;

    invoke-virtual {v1}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->getActiveSubscriptionsCount()I

    move-result v0

    .line 288
    .local v0, count:I
    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 289
    iget-object v1, p0, Lcom/android/settings/MultiSimSettings;->mSms:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/MultiSimSettings;->entriesPrompt:[Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 290
    iget-object v1, p0, Lcom/android/settings/MultiSimSettings;->mSms:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/MultiSimSettings;->entryValuesPrompt:[Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 295
    :goto_0
    return-void

    .line 292
    :cond_0
    iget-object v1, p0, Lcom/android/settings/MultiSimSettings;->mSms:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/MultiSimSettings;->entries:[Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 293
    iget-object v1, p0, Lcom/android/settings/MultiSimSettings;->mSms:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/MultiSimSettings;->entryValues:[Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected updateMultiSimEntriesForVoice()V
    .locals 3

    .prologue
    .line 298
    iget-object v1, p0, Lcom/android/settings/MultiSimSettings;->mSubManager:Lcom/codeaurora/telephony/msim/SubscriptionManager;

    invoke-virtual {v1}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->getActiveSubscriptionsCount()I

    move-result v0

    .line 299
    .local v0, count:I
    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 300
    iget-object v1, p0, Lcom/android/settings/MultiSimSettings;->mVoice:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/MultiSimSettings;->entriesPrompt:[Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 301
    iget-object v1, p0, Lcom/android/settings/MultiSimSettings;->mVoice:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/MultiSimSettings;->entryValuesPrompt:[Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 306
    :goto_0
    return-void

    .line 303
    :cond_0
    iget-object v1, p0, Lcom/android/settings/MultiSimSettings;->mVoice:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/MultiSimSettings;->entries:[Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 304
    iget-object v1, p0, Lcom/android/settings/MultiSimSettings;->mVoice:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/MultiSimSettings;->entryValues:[Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
