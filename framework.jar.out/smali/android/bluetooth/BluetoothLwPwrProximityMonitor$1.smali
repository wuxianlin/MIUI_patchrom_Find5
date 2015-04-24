.class Landroid/bluetooth/BluetoothLwPwrProximityMonitor$1;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "BluetoothLwPwrProximityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothLwPwrProximityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothLwPwrProximityMonitor;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothLwPwrProximityMonitor;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor$1;->this$0:Landroid/bluetooth/BluetoothLwPwrProximityMonitor;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 6
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I
    .param p3, "newState"    # I

    .prologue
    const/4 v4, 0x2

    .line 129
    const-string v1, "BluetoothLwPwrProximityMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onConnectionStateChange() + newState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v1, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor$1;->this$0:Landroid/bluetooth/BluetoothLwPwrProximityMonitor;

    # getter for: Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->access$300(Landroid/bluetooth/BluetoothLwPwrProximityMonitor;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-nez v1, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor$1;->this$0:Landroid/bluetooth/BluetoothLwPwrProximityMonitor;

    # getter for: Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mGattProfile:Landroid/bluetooth/BluetoothGatt;
    invoke-static {v1}, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->access$500(Landroid/bluetooth/BluetoothLwPwrProximityMonitor;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 132
    iget-object v1, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor$1;->this$0:Landroid/bluetooth/BluetoothLwPwrProximityMonitor;

    # getter for: Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mQAdapter:Landroid/bluetooth/QBluetoothAdapter;
    invoke-static {v1}, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->access$200(Landroid/bluetooth/BluetoothLwPwrProximityMonitor;)Landroid/bluetooth/QBluetoothAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 133
    const/4 v0, 0x0

    .line 134
    .local v0, "stop":Z
    iget-object v1, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor$1;->this$0:Landroid/bluetooth/BluetoothLwPwrProximityMonitor;

    # getter for: Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mStateLock:Ljava/lang/Object;
    invoke-static {v1}, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->access$000(Landroid/bluetooth/BluetoothLwPwrProximityMonitor;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 135
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor$1;->this$0:Landroid/bluetooth/BluetoothLwPwrProximityMonitor;

    # invokes: Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->cancelTimer()V
    invoke-static {v1}, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->access$600(Landroid/bluetooth/BluetoothLwPwrProximityMonitor;)V

    .line 136
    if-nez p3, :cond_3

    .line 137
    iget-object v1, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor$1;->this$0:Landroid/bluetooth/BluetoothLwPwrProximityMonitor;

    # getter for: Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mState:I
    invoke-static {v1}, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->access$100(Landroid/bluetooth/BluetoothLwPwrProximityMonitor;)I

    move-result v1

    const/4 v3, 0x4

    if-eq v1, v3, :cond_2

    .line 138
    iget-object v1, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor$1;->this$0:Landroid/bluetooth/BluetoothLwPwrProximityMonitor;

    # getter for: Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mQAdapter:Landroid/bluetooth/QBluetoothAdapter;
    invoke-static {v1}, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->access$200(Landroid/bluetooth/BluetoothLwPwrProximityMonitor;)Landroid/bluetooth/QBluetoothAdapter;

    move-result-object v1

    iget-object v3, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor$1;->this$0:Landroid/bluetooth/BluetoothLwPwrProximityMonitor;

    iget-object v4, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor$1;->this$0:Landroid/bluetooth/BluetoothLwPwrProximityMonitor;

    # getter for: Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->access$300(Landroid/bluetooth/BluetoothLwPwrProximityMonitor;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/bluetooth/QBluetoothAdapter;->registerLppClient(Landroid/bluetooth/QBluetoothAdapter$LeLppCallback;Ljava/lang/String;Z)Z

    .line 139
    iget-object v1, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor$1;->this$0:Landroid/bluetooth/BluetoothLwPwrProximityMonitor;

    const/4 v3, 0x0

    # setter for: Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mState:I
    invoke-static {v1, v3}, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->access$102(Landroid/bluetooth/BluetoothLwPwrProximityMonitor;I)I

    .line 140
    const/4 v0, 0x1

    .line 161
    :cond_2
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor$1;->this$0:Landroid/bluetooth/BluetoothLwPwrProximityMonitor;

    # getter for: Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mMonitorCbk:Landroid/bluetooth/BluetoothRssiMonitorCallback;
    invoke-static {v1}, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->access$400(Landroid/bluetooth/BluetoothLwPwrProximityMonitor;)Landroid/bluetooth/BluetoothRssiMonitorCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 163
    iget-object v1, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor$1;->this$0:Landroid/bluetooth/BluetoothLwPwrProximityMonitor;

    # getter for: Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mMonitorCbk:Landroid/bluetooth/BluetoothRssiMonitorCallback;
    invoke-static {v1}, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->access$400(Landroid/bluetooth/BluetoothLwPwrProximityMonitor;)Landroid/bluetooth/BluetoothRssiMonitorCallback;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothRssiMonitorCallback;->onStopped()V

    .line 164
    const-string v1, "BluetoothLwPwrProximityMonitor"

    const-string v2, "Monitor is stopped"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 142
    :cond_3
    if-ne p3, v4, :cond_2

    .line 143
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor$1;->this$0:Landroid/bluetooth/BluetoothLwPwrProximityMonitor;

    # getter for: Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mState:I
    invoke-static {v1}, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->access$100(Landroid/bluetooth/BluetoothLwPwrProximityMonitor;)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    iget-object v1, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor$1;->this$0:Landroid/bluetooth/BluetoothLwPwrProximityMonitor;

    iget-boolean v1, v1, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->isWriteThresholdNeedToBeCalled:Z

    if-eqz v1, :cond_4

    .line 144
    if-nez p2, :cond_5

    .line 145
    iget-object v1, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor$1;->this$0:Landroid/bluetooth/BluetoothLwPwrProximityMonitor;

    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->isWriteThresholdNeedToBeCalled:Z

    .line 146
    iget-object v1, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor$1;->this$0:Landroid/bluetooth/BluetoothLwPwrProximityMonitor;

    # getter for: Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mQAdapter:Landroid/bluetooth/QBluetoothAdapter;
    invoke-static {v1}, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->access$200(Landroid/bluetooth/BluetoothLwPwrProximityMonitor;)Landroid/bluetooth/QBluetoothAdapter;

    move-result-object v1

    iget-object v3, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor$1;->this$0:Landroid/bluetooth/BluetoothLwPwrProximityMonitor;

    iget-object v4, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor$1;->this$0:Landroid/bluetooth/BluetoothLwPwrProximityMonitor;

    # getter for: Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mLowerLimit:I
    invoke-static {v4}, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->access$700(Landroid/bluetooth/BluetoothLwPwrProximityMonitor;)I

    move-result v4

    iget-object v5, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor$1;->this$0:Landroid/bluetooth/BluetoothLwPwrProximityMonitor;

    # getter for: Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mUpperLimit:I
    invoke-static {v5}, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->access$800(Landroid/bluetooth/BluetoothLwPwrProximityMonitor;)I

    move-result v5

    invoke-virtual {v1, v3, v4, v5}, Landroid/bluetooth/QBluetoothAdapter;->writeRssiThreshold(Landroid/bluetooth/QBluetoothAdapter$LeLppCallback;II)Z

    move-result v1

    if-nez v1, :cond_4

    .line 147
    iget-object v1, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor$1;->this$0:Landroid/bluetooth/BluetoothLwPwrProximityMonitor;

    # getter for: Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mGattProfile:Landroid/bluetooth/BluetoothGatt;
    invoke-static {v1}, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->access$500(Landroid/bluetooth/BluetoothLwPwrProximityMonitor;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 148
    iget-object v1, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor$1;->this$0:Landroid/bluetooth/BluetoothLwPwrProximityMonitor;

    const/4 v3, 0x2

    # setter for: Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mState:I
    invoke-static {v1, v3}, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->access$102(Landroid/bluetooth/BluetoothLwPwrProximityMonitor;I)I

    .line 149
    iget-object v1, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor$1;->this$0:Landroid/bluetooth/BluetoothLwPwrProximityMonitor;

    new-instance v3, Landroid/bluetooth/BluetoothLwPwrProximityMonitor$DisconnectTimeOutTask;

    iget-object v4, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor$1;->this$0:Landroid/bluetooth/BluetoothLwPwrProximityMonitor;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/bluetooth/BluetoothLwPwrProximityMonitor$DisconnectTimeOutTask;-><init>(Landroid/bluetooth/BluetoothLwPwrProximityMonitor;Landroid/bluetooth/BluetoothLwPwrProximityMonitor$1;)V

    const/16 v4, 0x7530

    # invokes: Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->setTimer(Ljava/util/TimerTask;I)V
    invoke-static {v1, v3, v4}, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->access$1000(Landroid/bluetooth/BluetoothLwPwrProximityMonitor;Ljava/util/TimerTask;I)V

    .line 156
    :cond_4
    :goto_2
    if-eqz p2, :cond_2

    .line 157
    iget-object v1, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor$1;->this$0:Landroid/bluetooth/BluetoothLwPwrProximityMonitor;

    const/4 v3, 0x0

    # setter for: Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mState:I
    invoke-static {v1, v3}, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->access$102(Landroid/bluetooth/BluetoothLwPwrProximityMonitor;I)I

    .line 158
    const/4 v0, 0x1

    goto :goto_1

    .line 152
    :cond_5
    iget-object v1, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor$1;->this$0:Landroid/bluetooth/BluetoothLwPwrProximityMonitor;

    const/4 v3, 0x0

    # setter for: Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mState:I
    invoke-static {v1, v3}, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->access$102(Landroid/bluetooth/BluetoothLwPwrProximityMonitor;I)I

    .line 153
    const/4 v0, 0x1

    goto :goto_2

    .line 161
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
