.class public Lcom/android/settings/net/MobileDataEnabler;
.super Ljava/lang/Object;
.source "MobileDataEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mAirplaneFilter:Landroid/content/IntentFilter;

.field private final mContext:Landroid/content/Context;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mStateMachineEvent:Z

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 2
    .parameter "context"
    .parameter "switch_"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/android/settings/net/MobileDataEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/net/MobileDataEnabler$1;-><init>(Lcom/android/settings/net/MobileDataEnabler;)V

    iput-object v0, p0, Lcom/android/settings/net/MobileDataEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 37
    iput-object p1, p0, Lcom/android/settings/net/MobileDataEnabler;->mContext:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/android/settings/net/MobileDataEnabler;->mSwitch:Landroid/widget/Switch;

    .line 39
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/net/MobileDataEnabler;->mAirplaneFilter:Landroid/content/IntentFilter;

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/net/MobileDataEnabler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/settings/net/MobileDataEnabler;->setSwitchState()V

    return-void
.end method

.method private setSwitchState()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 70
    iget-object v4, p0, Lcom/android/settings/net/MobileDataEnabler;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 73
    .local v1, cm:Landroid/net/ConnectivityManager;
    iget-object v4, p0, Lcom/android/settings/net/MobileDataEnabler;->mContext:Landroid/content/Context;

    const-string v5, "cell"

    invoke-static {v4, v5}, Lcom/android/settings/WirelessSettings;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 75
    .local v0, airplane:Z
    iput-boolean v2, p0, Lcom/android/settings/net/MobileDataEnabler;->mStateMachineEvent:Z

    .line 76
    iget-object v4, p0, Lcom/android/settings/net/MobileDataEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v0, :cond_0

    :goto_0
    invoke-virtual {v4, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 77
    iget-object v2, p0, Lcom/android/settings/net/MobileDataEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 78
    iput-boolean v3, p0, Lcom/android/settings/net/MobileDataEnabler;->mStateMachineEvent:Z

    .line 79
    return-void

    :cond_0
    move v2, v3

    .line 76
    goto :goto_0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 82
    iget-boolean v1, p0, Lcom/android/settings/net/MobileDataEnabler;->mStateMachineEvent:Z

    if-eqz v1, :cond_0

    .line 93
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/android/settings/net/MobileDataEnabler;->mContext:Landroid/content/Context;

    const-string v2, "cell"

    invoke-static {v1, v2}, Lcom/android/settings/WirelessSettings;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 86
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    .line 89
    :cond_1
    iget-object v1, p0, Lcom/android/settings/net/MobileDataEnabler;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 92
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, p2}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/net/MobileDataEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 57
    iget-object v0, p0, Lcom/android/settings/net/MobileDataEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/net/MobileDataEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 58
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/net/MobileDataEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 51
    iget-object v0, p0, Lcom/android/settings/net/MobileDataEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/net/MobileDataEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/net/MobileDataEnabler;->mAirplaneFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 52
    invoke-direct {p0}, Lcom/android/settings/net/MobileDataEnabler;->setSwitchState()V

    .line 53
    return-void
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 2
    .parameter "switch_"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/net/MobileDataEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v0, p1, :cond_0

    .line 67
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/android/settings/net/MobileDataEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 64
    iput-object p1, p0, Lcom/android/settings/net/MobileDataEnabler;->mSwitch:Landroid/widget/Switch;

    .line 65
    iget-object v0, p0, Lcom/android/settings/net/MobileDataEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 66
    invoke-direct {p0}, Lcom/android/settings/net/MobileDataEnabler;->setSwitchState()V

    goto :goto_0
.end method
