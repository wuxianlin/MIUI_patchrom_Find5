.class public final Landroid/bluetooth/BluetoothLwPwrProximityMonitor;
.super Ljava/lang/Object;
.source "BluetoothLwPwrProximityMonitor.java"

# interfaces
.implements Landroid/bluetooth/QBluetoothAdapter$LeLppCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothLwPwrProximityMonitor$DisconnectTimeOutTask;,
        Landroid/bluetooth/BluetoothLwPwrProximityMonitor$ConnectTimeOutTask;
    }
.end annotation


# static fields
.field public static final COMMAND_STATUS_FAILED:I = 0x1

.field public static final COMMAND_STATUS_SUCCESS:I = 0x0

.field private static final DBG:Z = true

.field private static final MONITOR_STATE_CLOSED:I = 0x4

.field private static final MONITOR_STATE_IDLE:I = 0x0

.field private static final MONITOR_STATE_STARTED:I = 0x3

.field private static final MONITOR_STATE_STARTING:I = 0x1

.field private static final MONITOR_STATE_STOPPING:I = 0x2

.field public static final RSSI_HIGH_ALERT:I = 0x1

.field public static final RSSI_MILD_ALERT:I = 0x2

.field public static final RSSI_MONITOR_DISABLED:I = 0x0

.field public static final RSSI_NO_ALERT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "BluetoothLwPwrProximityMonitor"


# instance fields
.field public isWriteThresholdNeedToBeCalled:Z

.field private mAutoConnect:Z

.field private mContext:Landroid/content/Context;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private final mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

.field private mGattProfile:Landroid/bluetooth/BluetoothGatt;

.field private mLowerLimit:I

.field private mMonitorCbk:Landroid/bluetooth/BluetoothRssiMonitorCallback;

.field private mQAdapter:Landroid/bluetooth/QBluetoothAdapter;

.field private mState:I

.field private final mStateLock:Ljava/lang/Object;

.field private final mTimeOutValue:I

.field private mTimer:Ljava/util/Timer;

.field private mUpperLimit:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/bluetooth/BluetoothRssiMonitorCallback;)V
    .locals 5
    .parameter "cxt"
    .parameter "device"
    .parameter "cbk"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object v3, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 53
    iput-object v3, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mContext:Landroid/content/Context;

    .line 54
    iput-object v3, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mGattProfile:Landroid/bluetooth/BluetoothGatt;

    .line 55
    iput-object v3, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mQAdapter:Landroid/bluetooth/QBluetoothAdapter;

    .line 57
    iput-boolean v4, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mAutoConnect:Z

    .line 59
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mStateLock:Ljava/lang/Object;

    .line 61
    iput-object v3, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mTimer:Ljava/util/Timer;

    .line 62
    const/16 v1, 0x7530

    iput v1, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mTimeOutValue:I

    .line 63
    iput-boolean v4, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->isWriteThresholdNeedToBeCalled:Z

    .line 126
    new-instance v1, Landroid/bluetooth/BluetoothLwPwrProximityMonitor$1;

    invoke-direct {v1, p0}, Landroid/bluetooth/BluetoothLwPwrProximityMonitor$1;-><init>(Landroid/bluetooth/BluetoothLwPwrProximityMonitor;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    .line 170
    iput-object p1, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mContext:Landroid/content/Context;

    .line 171
    const/4 v1, 0x4

    iput v1, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mState:I

    .line 172
    iput-object p3, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mMonitorCbk:Landroid/bluetooth/BluetoothRssiMonitorCallback;

    .line 175
    :try_start_0
    new-instance v1, Landroid/bluetooth/BluetoothDevice;

    invoke-direct {v1, p2}, Landroid/bluetooth/BluetoothDevice;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mDevice:Landroid/bluetooth/BluetoothDevice;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :goto_0
    invoke-static {}, Landroid/bluetooth/QBluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/QBluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mQAdapter:Landroid/bluetooth/QBluetoothAdapter;

    .line 182
    iget-object v1, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mQAdapter:Landroid/bluetooth/QBluetoothAdapter;

    if-eqz v1, :cond_0

    .line 183
    iput v4, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mState:I

    .line 188
    :goto_1
    return-void

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, e:Ljava/lang/IllegalArgumentException;
    iput-object v3, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 178
    const-string v1, "BluetoothLwPwrProximityMonitor"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 185
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :cond_0
    iput-object v3, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 186
    iput-object v3, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mQAdapter:Landroid/bluetooth/QBluetoothAdapter;

    goto :goto_1
.end method

.method static synthetic access$000(Landroid/bluetooth/BluetoothLwPwrProximityMonitor;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mStateLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Landroid/bluetooth/BluetoothLwPwrProximityMonitor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mState:I

    return v0
.end method

.method static synthetic access$1000(Landroid/bluetooth/BluetoothLwPwrProximityMonitor;Ljava/util/TimerTask;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->setTimer(Ljava/util/TimerTask;I)V

    return-void
.end method

.method static synthetic access$102(Landroid/bluetooth/BluetoothLwPwrProximityMonitor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput p1, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mState:I

    return p1
.end method

.method static synthetic access$200(Landroid/bluetooth/BluetoothLwPwrProximityMonitor;)Landroid/bluetooth/QBluetoothAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mQAdapter:Landroid/bluetooth/QBluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$300(Landroid/bluetooth/BluetoothLwPwrProximityMonitor;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$400(Landroid/bluetooth/BluetoothLwPwrProximityMonitor;)Landroid/bluetooth/BluetoothRssiMonitorCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mMonitorCbk:Landroid/bluetooth/BluetoothRssiMonitorCallback;

    return-object v0
.end method

.method static synthetic access$500(Landroid/bluetooth/BluetoothLwPwrProximityMonitor;)Landroid/bluetooth/BluetoothGatt;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mGattProfile:Landroid/bluetooth/BluetoothGatt;

    return-object v0
.end method

.method static synthetic access$600(Landroid/bluetooth/BluetoothLwPwrProximityMonitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->cancelTimer()V

    return-void
.end method

.method static synthetic access$700(Landroid/bluetooth/BluetoothLwPwrProximityMonitor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mLowerLimit:I

    return v0
.end method

.method static synthetic access$800(Landroid/bluetooth/BluetoothLwPwrProximityMonitor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mUpperLimit:I

    return v0
.end method

.method private cancelTimer()V
    .locals 2

    .prologue
    .line 205
    const-string v0, "BluetoothLwPwrProximityMonitor"

    const-string v1, "cancelTimer()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v0, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 209
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mTimer:Ljava/util/Timer;

    .line 210
    return-void
.end method

.method private setTimer(Ljava/util/TimerTask;I)V
    .locals 3
    .parameter "task"
    .parameter "delay"

    .prologue
    .line 199
    const-string v0, "BluetoothLwPwrProximityMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTimer() delay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mTimer:Ljava/util/Timer;

    .line 201
    iget-object v0, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mTimer:Ljava/util/Timer;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 202
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    const/4 v2, 0x4

    const/4 v3, 0x3

    .line 299
    const-string v0, "BluetoothLwPwrProximityMonitor"

    const-string v1, "close()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget v0, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mState:I

    if-ne v2, v0, :cond_0

    .line 321
    :goto_0
    return-void

    .line 303
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 304
    :try_start_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->cancelTimer()V

    .line 305
    iget-object v0, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mGattProfile:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mQAdapter:Landroid/bluetooth/QBluetoothAdapter;

    if-eqz v0, :cond_4

    .line 306
    iget v0, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mState:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    iget v0, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mState:I

    if-ne v0, v3, :cond_3

    .line 308
    :cond_1
    iget v0, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mState:I

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mQAdapter:Landroid/bluetooth/QBluetoothAdapter;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Landroid/bluetooth/QBluetoothAdapter;->enableRssiMonitor(Landroid/bluetooth/QBluetoothAdapter$LeLppCallback;Z)Z

    .line 309
    :cond_2
    iget-object v0, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mGattProfile:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 311
    :cond_3
    iget-object v0, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mGattProfile:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 312
    iget-object v0, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mQAdapter:Landroid/bluetooth/QBluetoothAdapter;

    iget-object v2, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v2, v3}, Landroid/bluetooth/QBluetoothAdapter;->registerLppClient(Landroid/bluetooth/QBluetoothAdapter$LeLppCallback;Ljava/lang/String;Z)Z

    .line 314
    :cond_4
    const-string v0, "BluetoothLwPwrProximityMonitor"

    const-string v2, "Monitor is closed"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const/4 v0, 0x4

    iput v0, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mState:I

    .line 316
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 317
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mQAdapter:Landroid/bluetooth/QBluetoothAdapter;

    .line 318
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mGattProfile:Landroid/bluetooth/BluetoothGatt;

    .line 319
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mMonitorCbk:Landroid/bluetooth/BluetoothRssiMonitorCallback;

    .line 320
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 192
    :try_start_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 196
    return-void

    .line 194
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public onEnableRssiMonitor(II)V
    .locals 4
    .parameter "enable"
    .parameter "status"

    .prologue
    const/4 v3, 0x3

    .line 351
    const-string v0, "BluetoothLwPwrProximityMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onEnableRssiMonitor() enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v1, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 353
    :try_start_0
    iget v0, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mState:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 354
    if-nez p2, :cond_2

    if-eqz p1, :cond_2

    .line 355
    const/4 v0, 0x3

    iput v0, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mState:I

    .line 356
    const-string v0, "BluetoothLwPwrProximityMonitor"

    const-string v2, "Monitor is started successfully"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    iget v0, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mState:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mMonitorCbk:Landroid/bluetooth/BluetoothRssiMonitorCallback;

    if-eqz v0, :cond_1

    .line 368
    const-string v0, "BluetoothLwPwrProximityMonitor"

    const-string v1, "Notify users that monitor has been started successfully"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v0, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mMonitorCbk:Landroid/bluetooth/BluetoothRssiMonitorCallback;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothRssiMonitorCallback;->onStarted()V

    .line 371
    :cond_1
    return-void

    .line 358
    :cond_2
    :try_start_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mGattProfile:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mGattProfile:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 360
    const/4 v0, 0x2

    iput v0, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mState:I

    .line 361
    new-instance v0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor$DisconnectTimeOutTask;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Landroid/bluetooth/BluetoothLwPwrProximityMonitor$DisconnectTimeOutTask;-><init>(Landroid/bluetooth/BluetoothLwPwrProximityMonitor;Landroid/bluetooth/BluetoothLwPwrProximityMonitor$1;)V

    const/16 v2, 0x7530

    invoke-direct {p0, v0, v2}, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->setTimer(Ljava/util/TimerTask;I)V

    goto :goto_0

    .line 365
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onReadRssiThreshold(IIII)V
    .locals 3
    .parameter "low"
    .parameter "upper"
    .parameter "alert"
    .parameter "status"

    .prologue
    .line 343
    const-string v0, "BluetoothLwPwrProximityMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReadRssiThreshold() LowerLimit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", UpperLimit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Alert="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object v0, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mMonitorCbk:Landroid/bluetooth/BluetoothRssiMonitorCallback;

    if-eqz v0, :cond_0

    .line 346
    iget-object v1, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mMonitorCbk:Landroid/bluetooth/BluetoothRssiMonitorCallback;

    if-nez p4, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, p1, p2, p3, v0}, Landroid/bluetooth/BluetoothRssiMonitorCallback;->onReadRssiThreshold(IIII)V

    .line 348
    :cond_0
    return-void

    .line 346
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onRssiThresholdEvent(II)V
    .locals 3
    .parameter "evtType"
    .parameter "rssi"

    .prologue
    .line 374
    const-string v0, "BluetoothLwPwrProximityMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRssiThresholdEvent() event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rssi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v0, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mMonitorCbk:Landroid/bluetooth/BluetoothRssiMonitorCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mMonitorCbk:Landroid/bluetooth/BluetoothRssiMonitorCallback;

    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothRssiMonitorCallback;->onAlert(II)V

    .line 376
    :cond_0
    return-void
.end method

.method public onUpdateLease()Z
    .locals 3

    .prologue
    .line 380
    const-string v0, "BluetoothLwPwrProximityMonitor"

    const-string/jumbo v1, "onUpdateLease()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v1, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 382
    :try_start_0
    iget v0, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mState:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mState:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 383
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onWriteRssiThreshold(I)V
    .locals 4
    .parameter "status"

    .prologue
    const/4 v3, 0x1

    .line 324
    const-string v0, "BluetoothLwPwrProximityMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onWriteRssiThreshold() status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v1, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 326
    :try_start_0
    iget v0, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mState:I

    if-ne v0, v3, :cond_0

    .line 327
    if-nez p1, :cond_1

    .line 328
    iget-object v0, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mQAdapter:Landroid/bluetooth/QBluetoothAdapter;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mQAdapter:Landroid/bluetooth/QBluetoothAdapter;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v2}, Landroid/bluetooth/QBluetoothAdapter;->enableRssiMonitor(Landroid/bluetooth/QBluetoothAdapter$LeLppCallback;Z)Z

    .line 339
    :cond_0
    :goto_0
    monitor-exit v1

    .line 340
    return-void

    .line 332
    :cond_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mGattProfile:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mGattProfile:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 334
    const/4 v0, 0x2

    iput v0, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mState:I

    .line 335
    new-instance v0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor$DisconnectTimeOutTask;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Landroid/bluetooth/BluetoothLwPwrProximityMonitor$DisconnectTimeOutTask;-><init>(Landroid/bluetooth/BluetoothLwPwrProximityMonitor;Landroid/bluetooth/BluetoothLwPwrProximityMonitor$1;)V

    const/16 v2, 0x7530

    invoke-direct {p0, v0, v2}, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->setTimer(Ljava/util/TimerTask;I)V

    goto :goto_0

    .line 339
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public readRssiThreshold()Z
    .locals 3

    .prologue
    .line 267
    const-string v0, "BluetoothLwPwrProximityMonitor"

    const-string/jumbo v1, "readRssiThreshold()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v1, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 269
    :try_start_0
    iget v0, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mState:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 270
    iget-object v0, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mQAdapter:Landroid/bluetooth/QBluetoothAdapter;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mQAdapter:Landroid/bluetooth/QBluetoothAdapter;

    invoke-virtual {v0, p0}, Landroid/bluetooth/QBluetoothAdapter;->readRssiThreshold(Landroid/bluetooth/QBluetoothAdapter$LeLppCallback;)Z

    .line 272
    const/4 v0, 0x1

    monitor-exit v1

    .line 277
    :goto_0
    return v0

    .line 275
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    const-string v0, "BluetoothLwPwrProximityMonitor"

    const-string/jumbo v1, "readRssiThreshold() fail"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const/4 v0, 0x0

    goto :goto_0

    .line 275
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public start(II)Z
    .locals 8
    .parameter "thresh_min"
    .parameter "thresh_max"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 214
    const-string v3, "BluetoothLwPwrProximityMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "start() low="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", upper="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iput-boolean v2, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->isWriteThresholdNeedToBeCalled:Z

    .line 216
    iget-object v3, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mStateLock:Ljava/lang/Object;

    monitor-enter v3

    .line 217
    :try_start_0
    iget v4, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mState:I

    if-eqz v4, :cond_0

    .line 218
    const-string v2, "BluetoothLwPwrProximityMonitor"

    const-string/jumbo v4, "start() invalid state, monitor is not idle"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    monitor-exit v3

    .line 262
    :goto_0
    return v1

    .line 221
    :cond_0
    iget-object v4, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mQAdapter:Landroid/bluetooth/QBluetoothAdapter;

    iget-object v5, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v4, p0, v5, v6}, Landroid/bluetooth/QBluetoothAdapter;->registerLppClient(Landroid/bluetooth/QBluetoothAdapter$LeLppCallback;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1

    .line 222
    const-string v2, "BluetoothLwPwrProximityMonitor"

    const-string v4, "cannot register LPP Client"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    monitor-exit v3

    goto :goto_0

    .line 260
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 225
    :cond_1
    const/4 v4, 0x1

    :try_start_1
    iput v4, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mState:I

    .line 226
    iput p1, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mLowerLimit:I

    .line 227
    iput p2, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mUpperLimit:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 230
    :try_start_2
    iget-object v4, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mGattProfile:Landroid/bluetooth/BluetoothGatt;

    if-nez v4, :cond_2

    .line 231
    iget-object v4, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v5, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mContext:Landroid/content/Context;

    iget-boolean v6, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mAutoConnect:Z

    iget-object v7, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {v4, v5, v6, v7}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v4

    iput-object v4, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mGattProfile:Landroid/bluetooth/BluetoothGatt;

    .line 232
    iget-object v4, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mGattProfile:Landroid/bluetooth/BluetoothGatt;

    if-nez v4, :cond_4

    .line 233
    iget-object v2, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mQAdapter:Landroid/bluetooth/QBluetoothAdapter;

    iget-object v4, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, p0, v4, v5}, Landroid/bluetooth/QBluetoothAdapter;->registerLppClient(Landroid/bluetooth/QBluetoothAdapter$LeLppCallback;Ljava/lang/String;Z)Z

    .line 234
    const/4 v2, 0x0

    iput v2, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mState:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    .line 235
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 238
    :cond_2
    :try_start_4
    iget-object v4, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mGattProfile:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGatt;->connect()Z

    move-result v4

    if-nez v4, :cond_3

    .line 239
    iget-object v2, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mQAdapter:Landroid/bluetooth/QBluetoothAdapter;

    iget-object v4, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, p0, v4, v5}, Landroid/bluetooth/QBluetoothAdapter;->registerLppClient(Landroid/bluetooth/QBluetoothAdapter$LeLppCallback;Ljava/lang/String;Z)Z

    .line 240
    const/4 v2, 0x0

    iput v2, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mState:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0

    .line 241
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 244
    :cond_3
    :try_start_6
    iget v4, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mState:I

    if-ne v4, v2, :cond_4

    iget-boolean v4, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->isWriteThresholdNeedToBeCalled:Z

    if-eqz v4, :cond_4

    .line 245
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->isWriteThresholdNeedToBeCalled:Z

    .line 246
    iget-object v4, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mQAdapter:Landroid/bluetooth/QBluetoothAdapter;

    iget v5, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mLowerLimit:I

    iget v6, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mUpperLimit:I

    invoke-virtual {v4, p0, v5, v6}, Landroid/bluetooth/QBluetoothAdapter;->writeRssiThreshold(Landroid/bluetooth/QBluetoothAdapter$LeLppCallback;II)Z

    move-result v4

    if-nez v4, :cond_4

    .line 247
    iget-object v4, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mGattProfile:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 248
    const/4 v4, 0x2

    iput v4, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mState:I

    .line 249
    new-instance v4, Landroid/bluetooth/BluetoothLwPwrProximityMonitor$DisconnectTimeOutTask;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Landroid/bluetooth/BluetoothLwPwrProximityMonitor$DisconnectTimeOutTask;-><init>(Landroid/bluetooth/BluetoothLwPwrProximityMonitor;Landroid/bluetooth/BluetoothLwPwrProximityMonitor$1;)V

    const/16 v5, 0x7530

    invoke-direct {p0, v4, v5}, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->setTimer(Ljava/util/TimerTask;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_0

    .line 259
    :cond_4
    :try_start_7
    new-instance v1, Landroid/bluetooth/BluetoothLwPwrProximityMonitor$ConnectTimeOutTask;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Landroid/bluetooth/BluetoothLwPwrProximityMonitor$ConnectTimeOutTask;-><init>(Landroid/bluetooth/BluetoothLwPwrProximityMonitor;Landroid/bluetooth/BluetoothLwPwrProximityMonitor$1;)V

    const/16 v4, 0x7530

    invoke-direct {p0, v1, v4}, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->setTimer(Ljava/util/TimerTask;I)V

    .line 260
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 261
    const-string v1, "BluetoothLwPwrProximityMonitor"

    const-string v3, "Monitor is starting"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 262
    goto/16 :goto_0

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_8
    iget-object v2, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mQAdapter:Landroid/bluetooth/QBluetoothAdapter;

    iget-object v4, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, p0, v4, v5}, Landroid/bluetooth/QBluetoothAdapter;->registerLppClient(Landroid/bluetooth/QBluetoothAdapter$LeLppCallback;Ljava/lang/String;Z)Z

    .line 256
    const/4 v2, 0x0

    iput v2, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mState:I

    .line 257
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0
.end method

.method public stop()V
    .locals 4

    .prologue
    .line 282
    const-string v0, "BluetoothLwPwrProximityMonitor"

    const-string/jumbo v1, "stop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v1, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 284
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mQAdapter:Landroid/bluetooth/QBluetoothAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mGattProfile:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mState:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    iget v0, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mState:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 287
    :cond_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->cancelTimer()V

    .line 288
    iget-object v0, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mQAdapter:Landroid/bluetooth/QBluetoothAdapter;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Landroid/bluetooth/QBluetoothAdapter;->enableRssiMonitor(Landroid/bluetooth/QBluetoothAdapter$LeLppCallback;Z)Z

    .line 289
    iget-object v0, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mGattProfile:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 290
    const/4 v0, 0x2

    iput v0, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mState:I

    .line 291
    new-instance v0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor$DisconnectTimeOutTask;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Landroid/bluetooth/BluetoothLwPwrProximityMonitor$DisconnectTimeOutTask;-><init>(Landroid/bluetooth/BluetoothLwPwrProximityMonitor;Landroid/bluetooth/BluetoothLwPwrProximityMonitor$1;)V

    const/16 v2, 0x7530

    invoke-direct {p0, v0, v2}, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->setTimer(Ljava/util/TimerTask;I)V

    .line 292
    iget-object v0, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mQAdapter:Landroid/bluetooth/QBluetoothAdapter;

    iget-object v2, p0, Landroid/bluetooth/BluetoothLwPwrProximityMonitor;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v2, v3}, Landroid/bluetooth/QBluetoothAdapter;->registerLppClient(Landroid/bluetooth/QBluetoothAdapter$LeLppCallback;Ljava/lang/String;Z)Z

    .line 293
    const-string v0, "BluetoothLwPwrProximityMonitor"

    const-string v2, "Monitor is stopping"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_1
    monitor-exit v1

    .line 296
    return-void

    .line 295
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
