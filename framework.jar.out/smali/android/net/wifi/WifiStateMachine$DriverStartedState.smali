.class Landroid/net/wifi/WifiStateMachine$DriverStartedState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DriverStartedState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 3050
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 3053
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mIsRunning:Z
    invoke-static {v4, v3}, Landroid/net/wifi/WifiStateMachine;->access$10502(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 3054
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mInDelayedStop:Z
    invoke-static {v4, v2}, Landroid/net/wifi/WifiStateMachine;->access$10602(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 3055
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$10708(Landroid/net/wifi/WifiStateMachine;)I

    .line 3056
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiStateMachine;->updateBatteryWorkSource(Landroid/os/WorkSource;)V

    .line 3062
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$3000(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$1100(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiNative;->setBluetoothCoexistenceScanMode(Z)Z

    .line 3064
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->setCountryCode()V
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$10800(Landroid/net/wifi/WifiStateMachine;)V

    .line 3066
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->setFrequencyBand()V
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$10900(Landroid/net/wifi/WifiStateMachine;)V

    .line 3068
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #calls: Landroid/net/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)V
    invoke-static {v4, v5}, Landroid/net/wifi/WifiStateMachine;->access$11000(Landroid/net/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)V

    .line 3071
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$3000(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiNative;->stopFilteringMulticastV6Packets()Z

    .line 3074
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mFilteringMulticastV4Packets:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$11100(Landroid/net/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3075
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$3000(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiNative;->startFilteringMulticastV4Packets()Z

    .line 3080
    :goto_0
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mDhcpActive:Z
    invoke-static {v4, v2}, Landroid/net/wifi/WifiStateMachine;->access$11202(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 3082
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->startBatchedScan()V
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$11300(Landroid/net/wifi/WifiStateMachine;)V

    .line 3084
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mOperationalMode:I
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$8800(Landroid/net/wifi/WifiStateMachine;)I

    move-result v4

    if-eq v4, v3, :cond_3

    .line 3085
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$3000(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiNative;->disconnect()Z

    .line 3086
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$6100(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfigStore;->disableAllNetworks()V

    .line 3087
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mOperationalMode:I
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$8800(Landroid/net/wifi/WifiStateMachine;)I

    move-result v4

    if-ne v4, v6, :cond_0

    .line 3088
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->setWifiState(I)V
    invoke-static {v4, v3}, Landroid/net/wifi/WifiStateMachine;->access$3800(Landroid/net/wifi/WifiStateMachine;I)V

    .line 3090
    :cond_0
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mScanModeState:Lcom/android/internal/util/State;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$11400(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v5

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Landroid/net/wifi/WifiStateMachine;->access$11500(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 3106
    :goto_1
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mScreenBroadcastReceived:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$11800(Landroid/net/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_4

    .line 3107
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v4, "power"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 3109
    .local v1, powerManager:Landroid/os/PowerManager;
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v4

    #calls: Landroid/net/wifi/WifiStateMachine;->handleScreenStateChanged(Z)V
    invoke-static {v2, v4}, Landroid/net/wifi/WifiStateMachine;->access$100(Landroid/net/wifi/WifiStateMachine;Z)V

    .line 3115
    .end local v1           #powerManager:Landroid/os/PowerManager;
    :goto_2
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$3000(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiNative;->setPowerSave(Z)V

    .line 3117
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mP2pSupported:Z
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$3600(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3118
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mOperationalMode:I
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$8800(Landroid/net/wifi/WifiStateMachine;)I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 3119
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$800(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    const v3, 0x20083

    invoke-virtual {v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 3127
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "wifi_scan_available"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3128
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3129
    const-string/jumbo v2, "scan_enabled"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3130
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3131
    return-void

    .line 3077
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$3000(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiNative;->stopFilteringMulticastV4Packets()Z

    goto/16 :goto_0

    .line 3093
    :cond_3
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$6100(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfigStore;->enableAllNetworks()V

    .line 3096
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$3000(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiNative;->reconnect()Z

    .line 3101
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$3000(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiNative;->status()Ljava/lang/String;

    .line 3102
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$11600(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v5

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Landroid/net/wifi/WifiStateMachine;->access$11700(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 3112
    :cond_4
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$3000(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$11900(Landroid/net/wifi/WifiStateMachine;)I

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mUserWantsSuspendOpt:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_5

    move v2, v3

    :cond_5
    invoke-virtual {v4, v2}, Landroid/net/wifi/WifiNative;->setSuspendOptimizations(Z)Z

    goto/16 :goto_2
.end method

.method public exit()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3284
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v2, 0x0

    #setter for: Landroid/net/wifi/WifiStateMachine;->mIsRunning:Z
    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$10502(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 3285
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiStateMachine;->updateBatteryWorkSource(Landroid/os/WorkSource;)V

    .line 3286
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #setter for: Landroid/net/wifi/WifiStateMachine;->mScanResults:Ljava/util/List;
    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$13602(Landroid/net/wifi/WifiStateMachine;Ljava/util/List;)Ljava/util/List;

    .line 3288
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->stopBatchedScan()V
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$13700(Landroid/net/wifi/WifiStateMachine;)V

    .line 3290
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "wifi_scan_available"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3291
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3292
    const-string/jumbo v1, "scan_enabled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3293
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3294
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->noteScanEnd()V
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$13800(Landroid/net/wifi/WifiStateMachine;)V

    .line 3296
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mLastSetCountryCode:Ljava/lang/String;
    invoke-static {v1, v3}, Landroid/net/wifi/WifiStateMachine;->access$12202(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 3297
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 13
    .parameter "message"

    .prologue
    const/4 v9, 0x4

    const/4 v10, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 3135
    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_0

    .line 3280
    :goto_0
    return v6

    .line 3137
    :sswitch_0
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v9, p1, Landroid/os/Message;->arg1:I

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/WorkSource;

    #calls: Landroid/net/wifi/WifiStateMachine;->noteScanStart(ILandroid/os/WorkSource;)V
    invoke-static {v8, v9, v6}, Landroid/net/wifi/WifiStateMachine;->access$12000(Landroid/net/wifi/WifiStateMachine;ILandroid/os/WorkSource;)V

    .line 3138
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->startScanNative(I)V
    invoke-static {v6, v10}, Landroid/net/wifi/WifiStateMachine;->access$12100(Landroid/net/wifi/WifiStateMachine;I)V

    :cond_0
    :goto_1
    move v6, v7

    .line 3280
    goto :goto_0

    .line 3141
    :sswitch_1
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v9, p1, Landroid/os/Message;->arg1:I

    iget v10, p1, Landroid/os/Message;->arg2:I

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/Bundle;

    #calls: Landroid/net/wifi/WifiStateMachine;->recordBatchedScanSettings(IILandroid/os/Bundle;)Z
    invoke-static {v8, v9, v10, v6}, Landroid/net/wifi/WifiStateMachine;->access$1900(Landroid/net/wifi/WifiStateMachine;IILandroid/os/Bundle;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3143
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->startBatchedScan()V
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$11300(Landroid/net/wifi/WifiStateMachine;)V

    goto :goto_1

    .line 3147
    :sswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 3149
    .local v1, country:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 3150
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 3151
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mLastSetCountryCode:Ljava/lang/String;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$12200(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mLastSetCountryCode:Ljava/lang/String;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$12200(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 3153
    :cond_1
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$3000(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/net/wifi/WifiNative;->setCountryCode(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3154
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mLastSetCountryCode:Ljava/lang/String;
    invoke-static {v6, v1}, Landroid/net/wifi/WifiStateMachine;->access$12202(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 3156
    :cond_2
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to set country code "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v6, v8}, Landroid/net/wifi/WifiStateMachine;->access$12300(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto :goto_1

    .line 3162
    .end local v1           #country:Ljava/lang/String;
    :sswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 3164
    .local v0, band:I
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$3000(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/net/wifi/WifiNative;->setBand(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3165
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mFrequencyBand:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$12400(Landroid/net/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3167
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$3000(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiNative;->bssFlush()V

    .line 3169
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->startScanNative(I)V
    invoke-static {v6, v10}, Landroid/net/wifi/WifiStateMachine;->access$12100(Landroid/net/wifi/WifiStateMachine;I)V

    goto/16 :goto_1

    .line 3171
    :cond_3
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to set frequency band "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v6, v8}, Landroid/net/wifi/WifiStateMachine;->access$12500(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3175
    .end local v0           #band:I
    :sswitch_4
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v9, p1, Landroid/os/Message;->arg1:I

    if-eqz v9, :cond_4

    move v6, v7

    :cond_4
    #setter for: Landroid/net/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z
    invoke-static {v8, v6}, Landroid/net/wifi/WifiStateMachine;->access$1102(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 3177
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$3000(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v6

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$1100(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v8

    invoke-virtual {v6, v8}, Landroid/net/wifi/WifiNative;->setBluetoothCoexistenceScanMode(Z)Z

    goto/16 :goto_1

    .line 3180
    :sswitch_5
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 3183
    .local v4, mode:I
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mInDelayedStop:Z
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$10600(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 3188
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$6100(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/wifi/WifiConfigStore;->disableAllNetworks()V

    .line 3190
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mInDelayedStop:Z
    invoke-static {v8, v7}, Landroid/net/wifi/WifiStateMachine;->access$10602(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 3191
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$10708(Landroid/net/wifi/WifiStateMachine;)I

    .line 3195
    new-instance v2, Landroid/content/Intent;

    const-string v8, "com.android.server.WifiManager.action.DELAYED_DRIVER_STOP"

    const/4 v9, 0x0

    invoke-direct {v2, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3196
    .local v2, driverStopIntent:Landroid/content/Intent;
    const-string v8, "DelayedStopCounter"

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDelayedStopCounter:I
    invoke-static {v9}, Landroid/net/wifi/WifiStateMachine;->access$10700(Landroid/net/wifi/WifiStateMachine;)I

    move-result v9

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3197
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v9}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v9

    const/high16 v10, 0x800

    invoke-static {v9, v6, v2, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    #setter for: Landroid/net/wifi/WifiStateMachine;->mDriverStopIntent:Landroid/app/PendingIntent;
    invoke-static {v8, v9}, Landroid/net/wifi/WifiStateMachine;->access$12602(Landroid/net/wifi/WifiStateMachine;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 3201
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$12800(Landroid/net/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-object v11, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDriverStopDelayMs:I
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$12700(Landroid/net/wifi/WifiStateMachine;)I

    move-result v11

    int-to-long v11, v11

    add-long/2addr v9, v11

    iget-object v11, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDriverStopIntent:Landroid/app/PendingIntent;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$12600(Landroid/net/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v11

    invoke-virtual {v8, v6, v9, v10, v11}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_1

    .line 3205
    .end local v2           #driverStopIntent:Landroid/content/Intent;
    .end local v4           #mode:I
    :sswitch_6
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mInDelayedStop:Z
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$10600(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 3206
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mInDelayedStop:Z
    invoke-static {v8, v6}, Landroid/net/wifi/WifiStateMachine;->access$10602(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 3207
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$10708(Landroid/net/wifi/WifiStateMachine;)I

    .line 3208
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$12800(Landroid/net/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v6

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDriverStopIntent:Landroid/app/PendingIntent;
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$12600(Landroid/net/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 3210
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mOperationalMode:I
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$8800(Landroid/net/wifi/WifiStateMachine;)I

    move-result v6

    if-ne v6, v7, :cond_0

    .line 3211
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$6100(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiConfigStore;->enableAllNetworks()V

    goto/16 :goto_1

    .line 3217
    :sswitch_7
    iget v6, p1, Landroid/os/Message;->arg1:I

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDelayedStopCounter:I
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$10700(Landroid/net/wifi/WifiStateMachine;)I

    move-result v8

    if-ne v6, v8, :cond_0

    .line 3218
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$12900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v6

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$11600(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v8

    if-eq v6, v8, :cond_5

    .line 3219
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$3000(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiNative;->disconnect()Z

    .line 3220
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$8100(Landroid/net/wifi/WifiStateMachine;)V

    .line 3222
    :cond_5
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$10300(Landroid/net/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3223
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$3000(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiNative;->stopDriver()Z

    .line 3224
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$10300(Landroid/net/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3225
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mP2pSupported:Z
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$3600(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 3226
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWaitForP2pDisableState:Lcom/android/internal/util/State;
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$7500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v8

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v6, v8}, Landroid/net/wifi/WifiStateMachine;->access$13000(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 3228
    :cond_6
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDriverStoppingState:Lcom/android/internal/util/State;
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$13100(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v8

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v6, v8}, Landroid/net/wifi/WifiStateMachine;->access$13200(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 3232
    :sswitch_8
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v7, :cond_7

    .line 3233
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$3000(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiNative;->startFilteringMulticastV6Packets()Z

    goto/16 :goto_1

    .line 3234
    :cond_7
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-nez v6, :cond_8

    .line 3235
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$3000(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiNative;->startFilteringMulticastV4Packets()Z

    goto/16 :goto_1

    .line 3237
    :cond_8
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v8, "Illegal arugments to CMD_START_PACKET_FILTERING"

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v6, v8}, Landroid/net/wifi/WifiStateMachine;->access$13300(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3241
    :sswitch_9
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v7, :cond_9

    .line 3242
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$3000(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiNative;->stopFilteringMulticastV6Packets()Z

    goto/16 :goto_1

    .line 3243
    :cond_9
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-nez v6, :cond_a

    .line 3244
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$3000(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiNative;->stopFilteringMulticastV4Packets()Z

    goto/16 :goto_1

    .line 3246
    :cond_a
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v8, "Illegal arugments to CMD_STOP_PACKET_FILTERING"

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v6, v8}, Landroid/net/wifi/WifiStateMachine;->access$13400(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3250
    :sswitch_a
    iget v8, p1, Landroid/os/Message;->arg1:I

    if-ne v8, v7, :cond_b

    .line 3251
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->setSuspendOptimizationsNative(IZ)V
    invoke-static {v6, v9, v7}, Landroid/net/wifi/WifiStateMachine;->access$13500(Landroid/net/wifi/WifiStateMachine;IZ)V

    .line 3252
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mSuspendWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$2300(Landroid/net/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_1

    .line 3254
    :cond_b
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->setSuspendOptimizationsNative(IZ)V
    invoke-static {v8, v9, v6}, Landroid/net/wifi/WifiStateMachine;->access$13500(Landroid/net/wifi/WifiStateMachine;IZ)V

    goto/16 :goto_1

    .line 3258
    :sswitch_b
    iget v8, p1, Landroid/os/Message;->arg1:I

    if-ne v8, v7, :cond_c

    .line 3259
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->setSuspendOptimizationsNative(IZ)V
    invoke-static {v8, v10, v6}, Landroid/net/wifi/WifiStateMachine;->access$13500(Landroid/net/wifi/WifiStateMachine;IZ)V

    goto/16 :goto_1

    .line 3261
    :cond_c
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->setSuspendOptimizationsNative(IZ)V
    invoke-static {v6, v10, v7}, Landroid/net/wifi/WifiStateMachine;->access$13500(Landroid/net/wifi/WifiStateMachine;IZ)V

    goto/16 :goto_1

    .line 3265
    :sswitch_c
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v8, :cond_0

    .line 3266
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 3267
    .local v5, remoteAddress:Ljava/lang/String;
    iget v8, p1, Landroid/os/Message;->arg1:I

    if-ne v8, v7, :cond_d

    move v3, v7

    .line 3268
    .local v3, enable:Z
    :goto_2
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$3000(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v6

    invoke-virtual {v6, v5, v3}, Landroid/net/wifi/WifiNative;->startTdls(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .end local v3           #enable:Z
    :cond_d
    move v3, v6

    .line 3267
    goto :goto_2

    .line 3272
    .end local v5           #remoteAddress:Ljava/lang/String;
    :sswitch_d
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v9, p1, Landroid/os/Message;->what:I

    iget-object v10, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mIbssSupported:Z
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$6200(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v10

    if-eqz v10, :cond_e

    move v6, v7

    :cond_e
    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v8, p1, v9, v6}, Landroid/net/wifi/WifiStateMachine;->access$1200(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 3275
    :sswitch_e
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v8, p1, Landroid/os/Message;->what:I

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mSupportedChannels:Ljava/util/List;
    invoke-static {v9}, Landroid/net/wifi/WifiStateMachine;->access$6300(Landroid/net/wifi/WifiStateMachine;)Ljava/util/List;

    move-result-object v9

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v6, p1, v8, v9}, Landroid/net/wifi/WifiStateMachine;->access$1300(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 3135
    :sswitch_data_0
    .sparse-switch
        0x2000d -> :sswitch_6
        0x2000e -> :sswitch_5
        0x20012 -> :sswitch_7
        0x2001f -> :sswitch_4
        0x20047 -> :sswitch_0
        0x2004d -> :sswitch_b
        0x20050 -> :sswitch_2
        0x20054 -> :sswitch_8
        0x20055 -> :sswitch_9
        0x20056 -> :sswitch_a
        0x2005a -> :sswitch_3
        0x2005c -> :sswitch_c
        0x20087 -> :sswitch_1
        0x2008f -> :sswitch_d
        0x20090 -> :sswitch_e
    .end sparse-switch
.end method
