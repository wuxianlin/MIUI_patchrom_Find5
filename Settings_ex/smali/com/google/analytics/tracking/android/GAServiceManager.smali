.class public Lcom/google/analytics/tracking/android/GAServiceManager;
.super Ljava/lang/Object;
.source "GAServiceManager.java"

# interfaces
.implements Lcom/google/analytics/tracking/android/ServiceManager;


# static fields
.field private static final MSG_OBJECT:Ljava/lang/Object;

.field private static instance:Lcom/google/analytics/tracking/android/GAServiceManager;


# instance fields
.field private connected:Z

.field private ctx:Landroid/content/Context;

.field private dispatchPeriodInSeconds:I

.field private handler:Landroid/os/Handler;

.field private listenForNetwork:Z

.field private listener:Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;

.field private networkReceiver:Lcom/google/analytics/tracking/android/GANetworkReceiver;

.field private pendingDispatch:Z

.field private store:Lcom/google/analytics/tracking/android/AnalyticsStore;

.field private storeIsEmpty:Z

.field private volatile thread:Lcom/google/analytics/tracking/android/AnalyticsThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/analytics/tracking/android/GAServiceManager;->MSG_OBJECT:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/16 v0, 0x708

    iput v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->dispatchPeriodInSeconds:I

    .line 45
    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->pendingDispatch:Z

    .line 48
    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->connected:Z

    .line 52
    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->listenForNetwork:Z

    .line 54
    new-instance v0, Lcom/google/analytics/tracking/android/GAServiceManager$1;

    invoke-direct {v0, p0}, Lcom/google/analytics/tracking/android/GAServiceManager$1;-><init>(Lcom/google/analytics/tracking/android/GAServiceManager;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->listener:Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->storeIsEmpty:Z

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/google/analytics/tracking/android/GAServiceManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->connected:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/google/analytics/tracking/android/GAServiceManager;->MSG_OBJECT:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/analytics/tracking/android/GAServiceManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->dispatchPeriodInSeconds:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/analytics/tracking/android/GAServiceManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->storeIsEmpty:Z

    return v0
.end method

.method static synthetic access$400(Lcom/google/analytics/tracking/android/GAServiceManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getInstance()Lcom/google/analytics/tracking/android/GAServiceManager;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/google/analytics/tracking/android/GAServiceManager;->instance:Lcom/google/analytics/tracking/android/GAServiceManager;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/google/analytics/tracking/android/GAServiceManager;

    invoke-direct {v0}, Lcom/google/analytics/tracking/android/GAServiceManager;-><init>()V

    sput-object v0, Lcom/google/analytics/tracking/android/GAServiceManager;->instance:Lcom/google/analytics/tracking/android/GAServiceManager;

    .line 76
    :cond_0
    sget-object v0, Lcom/google/analytics/tracking/android/GAServiceManager;->instance:Lcom/google/analytics/tracking/android/GAServiceManager;

    return-object v0
.end method

.method private initializeHandler()V
    .locals 4

    .prologue
    .line 99
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/google/analytics/tracking/android/GAServiceManager$2;

    invoke-direct {v2, p0}, Lcom/google/analytics/tracking/android/GAServiceManager$2;-><init>(Lcom/google/analytics/tracking/android/GAServiceManager;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->handler:Landroid/os/Handler;

    .line 117
    iget v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->dispatchPeriodInSeconds:I

    if-lez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->handler:Landroid/os/Handler;

    const/4 v2, 0x1

    sget-object v3, Lcom/google/analytics/tracking/android/GAServiceManager;->MSG_OBJECT:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->dispatchPeriodInSeconds:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 121
    :cond_0
    return-void
.end method

.method private initializeNetworkReceiver()V
    .locals 3

    .prologue
    .line 92
    new-instance v1, Lcom/google/analytics/tracking/android/GANetworkReceiver;

    invoke-direct {v1, p0}, Lcom/google/analytics/tracking/android/GANetworkReceiver;-><init>(Lcom/google/analytics/tracking/android/ServiceManager;)V

    iput-object v1, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->networkReceiver:Lcom/google/analytics/tracking/android/GANetworkReceiver;

    .line 93
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 94
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->networkReceiver:Lcom/google/analytics/tracking/android/GANetworkReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 96
    return-void
.end method


# virtual methods
.method public declared-synchronized dispatch()V
    .locals 2

    .prologue
    .line 177
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->thread:Lcom/google/analytics/tracking/android/AnalyticsThread;

    if-nez v0, :cond_0

    .line 178
    const-string v0, "dispatch call queued.  Need to call GAServiceManager.getInstance().initialize()."

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)I

    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->pendingDispatch:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    :goto_0
    monitor-exit p0

    return-void

    .line 183
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->DISPATCH:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 184
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->thread:Lcom/google/analytics/tracking/android/AnalyticsThread;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/AnalyticsThread;->dispatch()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getStore()Lcom/google/analytics/tracking/android/AnalyticsStore;
    .locals 3

    .prologue
    .line 155
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->store:Lcom/google/analytics/tracking/android/AnalyticsStore;

    if-nez v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->ctx:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 159
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cant get a store unless we have a context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 161
    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->listener:Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;

    iget-object v2, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;-><init>(Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->store:Lcom/google/analytics/tracking/android/AnalyticsStore;

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->handler:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 165
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceManager;->initializeHandler()V

    .line 167
    :cond_2
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->networkReceiver:Lcom/google/analytics/tracking/android/GANetworkReceiver;

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->listenForNetwork:Z

    if-eqz v0, :cond_3

    .line 168
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceManager;->initializeNetworkReceiver()V

    .line 170
    :cond_3
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->store:Lcom/google/analytics/tracking/android/AnalyticsStore;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method declared-synchronized initialize(Landroid/content/Context;Lcom/google/analytics/tracking/android/AnalyticsThread;)V
    .locals 1
    .parameter "ctx"
    .parameter "thread"

    .prologue
    .line 132
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->ctx:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 143
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 135
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->ctx:Landroid/content/Context;

    .line 137
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->thread:Lcom/google/analytics/tracking/android/AnalyticsThread;

    if-nez v0, :cond_0

    .line 138
    iput-object p2, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->thread:Lcom/google/analytics/tracking/android/AnalyticsThread;

    .line 139
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->pendingDispatch:Z

    if-eqz v0, :cond_0

    .line 140
    invoke-interface {p2}, Lcom/google/analytics/tracking/android/AnalyticsThread;->dispatch()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateConnectivityStatus(Z)V
    .locals 1
    .parameter "connected"

    .prologue
    .line 227
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->storeIsEmpty:Z

    invoke-virtual {p0, v0, p1}, Lcom/google/analytics/tracking/android/GAServiceManager;->updatePowerSaveMode(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    monitor-exit p0

    return-void

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized updatePowerSaveMode(ZZ)V
    .locals 4
    .parameter "storeIsEmpty"
    .parameter "connected"

    .prologue
    .line 209
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->storeIsEmpty:Z

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->connected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p2, :cond_0

    .line 223
    :goto_0
    monitor-exit p0

    return-void

    .line 212
    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_2

    :cond_1
    :try_start_1
    iget v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->dispatchPeriodInSeconds:I

    if-lez v0, :cond_2

    .line 213
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    sget-object v2, Lcom/google/analytics/tracking/android/GAServiceManager;->MSG_OBJECT:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 215
    :cond_2
    if-nez p1, :cond_3

    if-eqz p2, :cond_3

    iget v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->dispatchPeriodInSeconds:I

    if-lez v0, :cond_3

    .line 216
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->handler:Landroid/os/Handler;

    const/4 v2, 0x1

    sget-object v3, Lcom/google/analytics/tracking/android/GAServiceManager;->MSG_OBJECT:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->dispatchPeriodInSeconds:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 219
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PowerSaveMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p1, :cond_4

    if-nez p2, :cond_5

    :cond_4
    const-string v0, "initiated."

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->iDebug(Ljava/lang/String;)I

    .line 221
    iput-boolean p1, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->storeIsEmpty:Z

    .line 222
    iput-boolean p2, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->connected:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 219
    :cond_5
    :try_start_2
    const-string v0, "terminated."
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
