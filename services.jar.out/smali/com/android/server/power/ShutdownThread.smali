.class public final Lcom/android/server/power/ShutdownThread;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    }
.end annotation


# static fields
.field private static final MAX_BROADCAST_TIME:I = 0x2710

.field private static final MAX_RADIO_WAIT_TIME:I = 0x2ee0

.field private static final MAX_SHUTDOWN_WAIT_TIME:I = 0x4e20

.field private static final PHONE_STATE_POLL_SLEEP_MSEC:I = 0x1f4

.field public static final REBOOT_SAFEMODE_PROPERTY:Ljava/lang/String; = "persist.sys.safemode"

.field public static final SHUTDOWN_ACTION_PROPERTY:Ljava/lang/String; = "sys.shutdown.requested"

.field private static final SHUTDOWN_VIBRATE_MS:I = 0x1f4

.field public static final SOFT_REBOOT:Ljava/lang/String; = "soft_reboot"

.field private static final TAG:Ljava/lang/String; = "ShutdownThread"

.field private static mReboot:Z

.field private static mRebootReason:Ljava/lang/String;

.field private static mRebootSafeMode:Z

.field private static mRebootSoft:Z

.field private static sConfirmDialog:Landroid/app/AlertDialog;

.field private static final sInstance:Lcom/android/server/power/ShutdownThread;

.field private static sIsStarted:Z

.field private static sIsStartedGuard:Ljava/lang/Object;


# instance fields
.field private mActionDone:Z

.field private final mActionDoneSync:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mHandler:Landroid/os/Handler;

.field private mModemDone:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mMountServiceDone:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mScreenWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    .line 75
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    .line 91
    new-instance v0, Lcom/android/server/power/ShutdownThread;

    invoke-direct {v0}, Lcom/android/server/power/ShutdownThread;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 93
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    .line 95
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread;->mModemDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 96
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread;->mMountServiceDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 106
    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 61
    sput-boolean p0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    return p0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 61
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootSoft:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 61
    sput-boolean p0, Lcom/android/server/power/ShutdownThread;->mRebootSoft:Z

    return p0
.end method

.method static synthetic access$200(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$302(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 61
    sput-object p0, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/server/power/ShutdownThread;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/ShutdownThread;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mMountServiceDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/ShutdownThread;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/power/ShutdownThread;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/ShutdownThread;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mModemDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private static advancedRebootEnabled(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 260
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "advanced_reboot"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static beginShutdownSequence(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 315
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v3

    .line 316
    :try_start_0
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz v2, :cond_0

    .line 317
    const-string v2, "ShutdownThread"

    const-string v4, "Shutdown sequence already running, returning."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    monitor-exit v3

    .line 372
    :goto_0
    return-void

    .line 320
    :cond_0
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    .line 321
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 326
    .local v1, "pd":Landroid/app/ProgressDialog;
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v2, :cond_2

    .line 327
    const v2, 0x1040063

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 328
    const v2, 0x104006b

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 333
    :goto_1
    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 334
    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 335
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    invoke-static {p0, v2}, Lcom/android/server/power/MiuiShutdownThread;->showShutdownDialog(Landroid/content/Context;Z)V

    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object p0, v2, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const-string v2, "power"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, v3, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    .line 343
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v6, v2, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 345
    :try_start_1
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget-object v3, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v3, v3, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/4 v4, 0x1

    const-string v5, "ShutdownThread-cpu"

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 347
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 348
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 355
    :goto_2
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v6, v2, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 356
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 358
    :try_start_2
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget-object v3, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v3, v3, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/16 v4, 0x1a

    const-string v5, "ShutdownThread-screen"

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 360
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 361
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    .line 369
    :cond_1
    :goto_3
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    new-instance v3, Lcom/android/server/power/ShutdownThread$6;

    invoke-direct {v3}, Lcom/android/server/power/ShutdownThread$6;-><init>()V

    iput-object v3, v2, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    .line 371
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    invoke-virtual {v2}, Lcom/android/server/power/ShutdownThread;->start()V

    goto/16 :goto_0

    .line 321
    .end local v1    # "pd":Landroid/app/ProgressDialog;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 330
    .restart local v1    # "pd":Landroid/app/ProgressDialog;
    :cond_2
    const v2, 0x10401b5

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 331
    const v2, 0x10401b9

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 349
    :catch_0
    move-exception v0

    .line 350
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v2, "ShutdownThread"

    const-string v3, "No permission to acquire wake lock"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 351
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v6, v2, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_2

    .line 362
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 363
    .restart local v0    # "e":Ljava/lang/SecurityException;
    const-string v2, "ShutdownThread"

    const-string v3, "No permission to acquire wake lock"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 364
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v6, v2, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_3
.end method

.method public static isStarted()Z
    .locals 2

    .prologue
    .line 109
    sget-object v1, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v1

    .line 110
    :try_start_0
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    monitor-exit v1

    return v0

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static reboot(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "confirm"    # Z

    .prologue
    .line 294
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 295
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 296
    sput-object p1, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    .line 297
    invoke-static {p0, p2}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    .line 298
    return-void
.end method

.method public static rebootOrShutdown(ZLjava/lang/String;)V
    .locals 5
    .param p0, "reboot"    # Z
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 608
    if-eqz p0, :cond_0

    .line 609
    const-string v2, "ShutdownThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Rebooting, reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->lowLevelReboot(Ljava/lang/String;)V

    .line 611
    const-string v2, "ShutdownThread"

    const-string v3, "Reboot failed, will attempt shutdown instead"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    :goto_0
    const-string v2, "ShutdownThread"

    const-string v3, "Performing low-level shutdown..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->lowLevelShutdown()V

    .line 632
    return-void

    .line 614
    :cond_0
    new-instance v1, Landroid/os/SystemVibrator;

    invoke-direct {v1}, Landroid/os/SystemVibrator;-><init>()V

    .line 616
    .local v1, "vibrator":Landroid/os/Vibrator;
    const-wide/16 v2, 0x1f4

    :try_start_0
    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 624
    :goto_1
    const-wide/16 v2, 0x1f4

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 625
    :catch_0
    move-exception v2

    goto :goto_0

    .line 617
    :catch_1
    move-exception v0

    .line 619
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ShutdownThread"

    const-string v3, "Failed to vibrate during shutdown."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static rebootSafeMode(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirm"    # Z

    .prologue
    const/4 v0, 0x1

    .line 308
    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 309
    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 310
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    .line 311
    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    .line 312
    return-void
.end method

.method public static shutdown(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirm"    # Z

    .prologue
    const/4 v0, 0x0

    .line 123
    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 124
    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 125
    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    .line 126
    return-void
.end method

.method static shutdownInner(Landroid/content/Context;Z)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirm"    # Z

    .prologue
    .line 131
    sget-object v9, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v9

    .line 132
    :try_start_0
    sget-boolean v8, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz v8, :cond_0

    .line 133
    const-string v8, "ShutdownThread"

    const-string v10, "Request to shutdown already running, returning."

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    monitor-exit v9

    .line 257
    :goto_0
    return-void

    .line 136
    :cond_0
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    const-string v8, "ShutdownThread"

    const-string v9, "Notifying thread to start shutdown"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    sget-boolean v8, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v8, :cond_4

    .line 144
    const v7, 0x10401bc

    .line 145
    .local v7, "titleResourceId":I
    const v6, 0x10401bd

    .line 164
    .local v6, "resourceId":I
    :goto_1
    if-eqz p1, :cond_a

    .line 165
    new-instance v1, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;-><init>(Landroid/content/Context;)V

    .line 166
    .local v1, "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    sget-object v8, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    if-eqz v8, :cond_1

    .line 167
    sget-object v8, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->dismiss()V

    .line 168
    const/4 v8, 0x0

    sput-object v8, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    .line 170
    :cond_1
    sget-boolean v8, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v8, :cond_2

    sget-boolean v8, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-nez v8, :cond_2

    .line 172
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    if-nez v8, :cond_7

    const/4 v2, 0x1

    .line 175
    .local v2, "isPrimary":Z
    :goto_2
    if-eqz v2, :cond_8

    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->advancedRebootEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 176
    .local v0, "advancedReboot":Z
    :goto_3
    const-string v8, "keyguard"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    .line 177
    .local v3, "km":Landroid/app/KeyguardManager;
    invoke-virtual {v3}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v8

    if-eqz v8, :cond_9

    const/4 v4, 0x1

    .line 179
    .local v4, "locked":Z
    :goto_4
    if-eqz v0, :cond_2

    if-nez v4, :cond_2

    .line 181
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x1070009

    const/4 v10, 0x0

    new-instance v11, Lcom/android/server/power/ShutdownThread$3;

    invoke-direct {v11, p0}, Lcom/android/server/power/ShutdownThread$3;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x1040013

    new-instance v10, Lcom/android/server/power/ShutdownThread$2;

    invoke-direct {v10, p0}, Lcom/android/server/power/ShutdownThread$2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x1040009

    new-instance v10, Lcom/android/server/power/ShutdownThread$1;

    invoke-direct {v10}, Lcom/android/server/power/ShutdownThread$1;-><init>()V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    sput-object v8, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    .line 223
    sget-object v8, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    new-instance v9, Lcom/android/server/power/ShutdownThread$4;

    invoke-direct {v9}, Lcom/android/server/power/ShutdownThread$4;-><init>()V

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 236
    .end local v0    # "advancedReboot":Z
    .end local v2    # "isPrimary":Z
    .end local v3    # "km":Landroid/app/KeyguardManager;
    .end local v4    # "locked":Z
    :cond_2
    sget-object v8, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    if-nez v8, :cond_3

    .line 237
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x1040013

    new-instance v10, Lcom/android/server/power/ShutdownThread$5;

    invoke-direct {v10, p0}, Lcom/android/server/power/ShutdownThread$5;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x1040009

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    sput-object v8, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    .line 249
    :cond_3
    sget-object v8, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    iput-object v8, v1, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;->dialog:Landroid/app/Dialog;

    .line 250
    sget-object v8, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 251
    sget-object v8, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x7d9

    invoke-virtual {v8, v9}, Landroid/view/Window;->setType(I)V

    .line 252
    sget-object v8, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 136
    .end local v1    # "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    .end local v6    # "resourceId":I
    .end local v7    # "titleResourceId":I
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 146
    :cond_4
    sget-boolean v8, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v8, :cond_5

    .line 147
    const v7, 0x1040063

    .line 148
    .restart local v7    # "titleResourceId":I
    const v6, 0x104006c

    .restart local v6    # "resourceId":I
    goto/16 :goto_1

    .line 151
    .end local v6    # "resourceId":I
    .end local v7    # "titleResourceId":I
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10e001d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 154
    .local v5, "longPressBehavior":I
    const v7, 0x10401b5

    .line 155
    .restart local v7    # "titleResourceId":I
    const/4 v8, 0x2

    if-ne v5, v8, :cond_6

    .line 156
    const v6, 0x10401bb

    .line 161
    .restart local v6    # "resourceId":I
    :goto_5
    const-string v8, "ShutdownThread"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "longPressBehavior="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 158
    .end local v6    # "resourceId":I
    :cond_6
    const v6, 0x10401ba

    .restart local v6    # "resourceId":I
    goto :goto_5

    .line 172
    .end local v5    # "longPressBehavior":I
    .restart local v1    # "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 175
    .restart local v2    # "isPrimary":Z
    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 177
    .restart local v0    # "advancedReboot":Z
    .restart local v3    # "km":Landroid/app/KeyguardManager;
    :cond_9
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 255
    .end local v0    # "advancedReboot":Z
    .end local v1    # "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    .end local v2    # "isPrimary":Z
    .end local v3    # "km":Landroid/app/KeyguardManager;
    :cond_a
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.method private shutdownRadios(I)V
    .locals 8
    .param p1, "timeout"    # I

    .prologue
    .line 466
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    int-to-long v6, p1

    add-long v1, v4, v6

    .line 467
    .local v1, "endTime":J
    const/4 v4, 0x1

    new-array v0, v4, [Z

    .line 468
    .local v0, "done":[Z
    new-instance v3, Lcom/android/server/power/ShutdownThread$8;

    invoke-direct {v3, p0, v1, v2, v0}, Lcom/android/server/power/ShutdownThread$8;-><init>(Lcom/android/server/power/ShutdownThread;J[Z)V

    .line 597
    .local v3, "t":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 598
    return-void
.end method


# virtual methods
.method actionDone()V
    .locals 2

    .prologue
    .line 375
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v1

    .line 376
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mMountServiceDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mModemDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    .line 377
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 378
    monitor-exit v1

    .line 379
    return-void

    .line 376
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 378
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 14

    .prologue
    .line 392
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v10, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v10, :cond_3

    const-string v10, "1"

    :goto_0
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v10, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    if-eqz v10, :cond_4

    sget-object v10, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    :goto_1
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 393
    .local v9, "reason":Ljava/lang/String;
    const-string v10, "sys.shutdown.requested"

    invoke-static {v10, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    sget-boolean v10, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v10, :cond_0

    .line 401
    const-string v10, "persist.sys.safemode"

    const-string v11, "1"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    :cond_0
    const/16 v10, 0x2ee0

    invoke-direct {p0, v10}, Lcom/android/server/power/ShutdownThread;->shutdownRadios(I)V

    .line 405
    const-string v10, "ShutdownThread"

    const-string v11, "Sending shutdown broadcast..."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    new-instance v6, Landroid/content/Intent;

    const-string v10, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 409
    .local v6, "intent":Landroid/content/Intent;
    const/high16 v10, 0x10000000

    invoke-virtual {v6, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 410
    iget-object v10, p0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v10, v6, v11}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 411
    const-string v10, "ShutdownThread"

    const-string v11, "Shutting down activity manager..."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    const-string v10, "activity"

    invoke-static {v10}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v0

    .line 415
    .local v0, "am":Landroid/app/IActivityManager;
    if-eqz v0, :cond_1

    .line 417
    const/16 v10, 0x2710

    :try_start_0
    invoke-interface {v0, v10}, Landroid/app/IActivityManager;->shutdown(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 423
    :cond_1
    :goto_2
    new-instance v8, Lcom/android/server/power/ShutdownThread$7;

    invoke-direct {v8, p0}, Lcom/android/server/power/ShutdownThread$7;-><init>(Lcom/android/server/power/ShutdownThread;)V

    .line 431
    .local v8, "observer":Landroid/os/storage/IMountShutdownObserver;
    const-string v10, "ShutdownThread"

    const-string v11, "Shutting down MountService"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    const-wide/16 v12, 0x4e20

    add-long v4, v10, v12

    .line 435
    .local v4, "endShutTime":J
    iget-object v11, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v11

    .line 437
    :try_start_1
    const-string v10, "mount"

    invoke-static {v10}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v7

    .line 439
    .local v7, "mount":Landroid/os/storage/IMountService;
    if-eqz v7, :cond_5

    .line 440
    invoke-interface {v7, v8}, Landroid/os/storage/IMountService;->shutdown(Landroid/os/storage/IMountShutdownObserver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 447
    .end local v7    # "mount":Landroid/os/storage/IMountService;
    :goto_3
    :try_start_2
    iget-boolean v10, p0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    if-nez v10, :cond_2

    .line 448
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long v1, v4, v12

    .line 449
    .local v1, "delay":J
    const-wide/16 v12, 0x0

    cmp-long v10, v1, v12

    if-gtz v10, :cond_6

    .line 450
    const-string v10, "ShutdownThread"

    const-string v12, "Shutdown wait timed out"

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    .end local v1    # "delay":J
    :cond_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 460
    sget-boolean v10, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sget-object v11, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 461
    return-void

    .line 392
    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v4    # "endShutTime":J
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v8    # "observer":Landroid/os/storage/IMountShutdownObserver;
    .end local v9    # "reason":Ljava/lang/String;
    :cond_3
    const-string v10, "0"

    goto/16 :goto_0

    :cond_4
    const-string v10, ""

    goto/16 :goto_1

    .line 442
    .restart local v0    # "am":Landroid/app/IActivityManager;
    .restart local v4    # "endShutTime":J
    .restart local v6    # "intent":Landroid/content/Intent;
    .restart local v7    # "mount":Landroid/os/storage/IMountService;
    .restart local v8    # "observer":Landroid/os/storage/IMountShutdownObserver;
    .restart local v9    # "reason":Ljava/lang/String;
    :cond_5
    :try_start_3
    const-string v10, "ShutdownThread"

    const-string v12, "MountService unavailable for shutdown"

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 444
    .end local v7    # "mount":Landroid/os/storage/IMountService;
    :catch_0
    move-exception v3

    .line 445
    .local v3, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v10, "ShutdownThread"

    const-string v12, "Exception during MountService shutdown"

    invoke-static {v10, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 458
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v10

    .line 454
    .restart local v1    # "delay":J
    :cond_6
    :try_start_5
    iget-object v10, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v10, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 455
    :catch_1
    move-exception v10

    goto :goto_3

    .line 418
    .end local v1    # "delay":J
    .end local v4    # "endShutTime":J
    .end local v8    # "observer":Landroid/os/storage/IMountShutdownObserver;
    :catch_2
    move-exception v10

    goto :goto_2
.end method
