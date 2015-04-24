.class final Landroid/bluetooth/BluetoothLwPwrProximityMonitor$DisconnectTimeOutTask;
.super Ljava/util/TimerTask;
.source "BluetoothLwPwrProximityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothLwPwrProximityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisconnectTimeOutTask"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothLwPwrProximityMonitor;


# direct methods
.method private constructor <init>(Landroid/bluetooth/BluetoothLwPwrProximityMonitor;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor$DisconnectTimeOutTask;->this$0:Landroid/bluetooth/BluetoothLwPwrProximityMonitor;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/bluetooth/BluetoothLwPwrProximityMonitor;Landroid/bluetooth/BluetoothLwPwrProximityMonitor$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/bluetooth/BluetoothLwPwrProximityMonitor;
    .param p2, "x1"    # Landroid/bluetooth/BluetoothLwPwrProximityMonitor$1;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothLwPwrProximityMonitor$DisconnectTimeOutTask;-><init>(Landroid/bluetooth/BluetoothLwPwrProximityMonitor;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 85
    const-string v1, "BluetoothLwPwrProximityMonitor"

    const-string v2, "disconnect timer triggered"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const/4 v0, 0x0

    .line 87
    .local v0, "notify":Z
    iget-object v1, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor$DisconnectTimeOutTask;->this$0:Landroid/bluetooth/BluetoothLwPwrProximityMonitor;

    # getter for: Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mStateLock:Ljava/lang/Object;
    invoke-static {v1}, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->access$000(Landroid/bluetooth/BluetoothLwPwrProximityMonitor;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 88
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor$DisconnectTimeOutTask;->this$0:Landroid/bluetooth/BluetoothLwPwrProximityMonitor;

    # getter for: Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mState:I
    invoke-static {v1}, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->access$100(Landroid/bluetooth/BluetoothLwPwrProximityMonitor;)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 89
    iget-object v1, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor$DisconnectTimeOutTask;->this$0:Landroid/bluetooth/BluetoothLwPwrProximityMonitor;

    const/4 v3, 0x0

    # setter for: Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mState:I
    invoke-static {v1, v3}, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->access$102(Landroid/bluetooth/BluetoothLwPwrProximityMonitor;I)I

    .line 90
    iget-object v1, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor$DisconnectTimeOutTask;->this$0:Landroid/bluetooth/BluetoothLwPwrProximityMonitor;

    # getter for: Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mQAdapter:Landroid/bluetooth/QBluetoothAdapter;
    invoke-static {v1}, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->access$200(Landroid/bluetooth/BluetoothLwPwrProximityMonitor;)Landroid/bluetooth/QBluetoothAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor$DisconnectTimeOutTask;->this$0:Landroid/bluetooth/BluetoothLwPwrProximityMonitor;

    # getter for: Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->access$300(Landroid/bluetooth/BluetoothLwPwrProximityMonitor;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor$DisconnectTimeOutTask;->this$0:Landroid/bluetooth/BluetoothLwPwrProximityMonitor;

    # getter for: Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mQAdapter:Landroid/bluetooth/QBluetoothAdapter;
    invoke-static {v1}, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->access$200(Landroid/bluetooth/BluetoothLwPwrProximityMonitor;)Landroid/bluetooth/QBluetoothAdapter;

    move-result-object v1

    iget-object v3, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor$DisconnectTimeOutTask;->this$0:Landroid/bluetooth/BluetoothLwPwrProximityMonitor;

    iget-object v4, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor$DisconnectTimeOutTask;->this$0:Landroid/bluetooth/BluetoothLwPwrProximityMonitor;

    # getter for: Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->access$300(Landroid/bluetooth/BluetoothLwPwrProximityMonitor;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/bluetooth/QBluetoothAdapter;->registerLppClient(Landroid/bluetooth/QBluetoothAdapter$LeLppCallback;Ljava/lang/String;Z)Z

    .line 93
    :cond_0
    const/4 v0, 0x1

    .line 95
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    if-eqz v0, :cond_2

    iget-object v1, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor$DisconnectTimeOutTask;->this$0:Landroid/bluetooth/BluetoothLwPwrProximityMonitor;

    # getter for: Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mMonitorCbk:Landroid/bluetooth/BluetoothRssiMonitorCallback;
    invoke-static {v1}, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->access$400(Landroid/bluetooth/BluetoothLwPwrProximityMonitor;)Landroid/bluetooth/BluetoothRssiMonitorCallback;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 97
    iget-object v1, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor$DisconnectTimeOutTask;->this$0:Landroid/bluetooth/BluetoothLwPwrProximityMonitor;

    # getter for: Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mMonitorCbk:Landroid/bluetooth/BluetoothRssiMonitorCallback;
    invoke-static {v1}, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->access$400(Landroid/bluetooth/BluetoothLwPwrProximityMonitor;)Landroid/bluetooth/BluetoothRssiMonitorCallback;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothRssiMonitorCallback;->onStopped()V

    .line 99
    :cond_2
    return-void

    .line 95
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
