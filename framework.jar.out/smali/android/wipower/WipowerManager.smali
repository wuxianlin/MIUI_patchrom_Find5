.class public final Landroid/wipower/WipowerManager;
.super Ljava/lang/Object;
.source "WipowerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/wipower/WipowerManager$PowerApplyEvent;,
        Landroid/wipower/WipowerManager$WipowerState;,
        Landroid/wipower/WipowerManager$PowerLevel;,
        Landroid/wipower/WipowerManager$WipowerAlert;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "WipowerManager"

.field private static final VDBG:Z

.field private static mAlert:Landroid/wipower/WipowerManager$WipowerAlert;

.field private static mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/wipower/WipowerManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static mPruData:Landroid/wipower/WipowerDynamicParam;

.field private static mService:Landroid/wipower/IWipower;

.field private static mState:Landroid/wipower/WipowerManager$WipowerState;

.field private static mWipowerManager:Landroid/wipower/WipowerManager;


# instance fields
.field private mConnection:Landroid/content/ServiceConnection;

.field private final mWiPowerMangerCallback:Landroid/wipower/IWipowerManagerCallback;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/wipower/WipowerManagerCallback;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Landroid/wipower/WipowerManagerCallback;

    .prologue
    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    new-instance v1, Landroid/wipower/WipowerManager$1;

    invoke-direct {v1, p0}, Landroid/wipower/WipowerManager$1;-><init>(Landroid/wipower/WipowerManager;)V

    iput-object v1, p0, Landroid/wipower/WipowerManager;->mWiPowerMangerCallback:Landroid/wipower/IWipowerManagerCallback;

    .line 218
    new-instance v1, Landroid/wipower/WipowerManager$2;

    invoke-direct {v1, p0}, Landroid/wipower/WipowerManager$2;-><init>(Landroid/wipower/WipowerManager;)V

    iput-object v1, p0, Landroid/wipower/WipowerManager;->mConnection:Landroid/content/ServiceConnection;

    .line 264
    sget-object v1, Landroid/wipower/WipowerManager;->mService:Landroid/wipower/IWipower;

    if-nez v1, :cond_0

    .line 266
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Landroid/wipower/IWipower;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/wipower/WipowerManager;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 267
    const-string v1, "WipowerManager"

    const-string v2, "Could not bind to Wipower Service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    :cond_0
    :goto_0
    const-string v1, "WipowerManager"

    const-string v2, "Bound to Wipower Service"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    new-instance v1, Landroid/wipower/WipowerDynamicParam;

    invoke-direct {v1}, Landroid/wipower/WipowerDynamicParam;-><init>()V

    sput-object v1, Landroid/wipower/WipowerManager;->mPruData:Landroid/wipower/WipowerDynamicParam;

    .line 276
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Landroid/wipower/WipowerManager;->mCallbacks:Ljava/util/ArrayList;

    .line 277
    return-void

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "WipowerManager"

    const-string v2, "Security Exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000()Landroid/wipower/WipowerDynamicParam;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Landroid/wipower/WipowerManager;->mPruData:Landroid/wipower/WipowerDynamicParam;

    return-object v0
.end method

.method static synthetic access$100()Landroid/wipower/IWipower;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Landroid/wipower/WipowerManager;->mService:Landroid/wipower/IWipower;

    return-object v0
.end method

.method static synthetic access$102(Landroid/wipower/IWipower;)Landroid/wipower/IWipower;
    .locals 0
    .param p0, "x0"    # Landroid/wipower/IWipower;

    .prologue
    .line 54
    sput-object p0, Landroid/wipower/WipowerManager;->mService:Landroid/wipower/IWipower;

    return-object p0
.end method

.method static synthetic access$200(Landroid/wipower/WipowerManager;)Landroid/wipower/IWipowerManagerCallback;
    .locals 1
    .param p0, "x0"    # Landroid/wipower/WipowerManager;

    .prologue
    .line 54
    iget-object v0, p0, Landroid/wipower/WipowerManager;->mWiPowerMangerCallback:Landroid/wipower/IWipowerManagerCallback;

    return-object v0
.end method

.method public static declared-synchronized getWipowerManger(Landroid/content/Context;Landroid/wipower/WipowerManagerCallback;)Landroid/wipower/WipowerManager;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Landroid/wipower/WipowerManagerCallback;

    .prologue
    .line 245
    const-class v1, Landroid/wipower/WipowerManager;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/wipower/WipowerManager;->isWipowerSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 246
    const-string v0, "WipowerManager"

    const-string v2, "Wipower not supported"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    const/4 v0, 0x0

    .line 254
    :goto_0
    monitor-exit v1

    return-object v0

    .line 250
    :cond_0
    :try_start_1
    sget-object v0, Landroid/wipower/WipowerManager;->mWipowerManager:Landroid/wipower/WipowerManager;

    if-nez v0, :cond_1

    .line 251
    const-string v0, "WipowerManager"

    const-string v2, "Instantiate Singleton"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    new-instance v0, Landroid/wipower/WipowerManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Landroid/wipower/WipowerManager;-><init>(Landroid/content/Context;Landroid/wipower/WipowerManagerCallback;)V

    sput-object v0, Landroid/wipower/WipowerManager;->mWipowerManager:Landroid/wipower/WipowerManager;

    .line 254
    :cond_1
    sget-object v0, Landroid/wipower/WipowerManager;->mWipowerManager:Landroid/wipower/WipowerManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 245
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static isWipowerSupported()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 281
    const-string/jumbo v2, "ro.bluetooth.a4wp"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-ne v2, v0, :cond_0

    .line 282
    const-string v1, "WipowerManager"

    const-string v2, "System.getProperty is true"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :goto_0
    return v0

    .line 285
    :cond_0
    const-string v0, "WipowerManager"

    const-string v2, "System.getProperty is false"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 286
    goto :goto_0
.end method


# virtual methods
.method public enableAlertNotification(Z)Z
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 447
    const/4 v1, 0x0

    .line 448
    .local v1, "ret":Z
    sget-object v2, Landroid/wipower/WipowerManager;->mService:Landroid/wipower/IWipower;

    if-nez v2, :cond_0

    .line 449
    const-string v2, "WipowerManager"

    const-string v3, "Service  not available"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :goto_0
    return v1

    .line 452
    :cond_0
    :try_start_0
    sget-object v2, Landroid/wipower/WipowerManager;->mService:Landroid/wipower/IWipower;

    invoke-interface {v2, p1}, Landroid/wipower/IWipower;->enableAlert(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 453
    :catch_0
    move-exception v0

    .line 454
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "WipowerManager"

    const-string v3, "Service  Exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enableDataNotification(Z)Z
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 468
    const/4 v1, 0x0

    .line 469
    .local v1, "ret":Z
    sget-object v2, Landroid/wipower/WipowerManager;->mService:Landroid/wipower/IWipower;

    if-nez v2, :cond_0

    .line 470
    const-string v2, "WipowerManager"

    const-string v3, "Service  not available"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :goto_0
    return v1

    .line 473
    :cond_0
    :try_start_0
    sget-object v2, Landroid/wipower/WipowerManager;->mService:Landroid/wipower/IWipower;

    invoke-interface {v2, p1}, Landroid/wipower/IWipower;->enableData(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 474
    :catch_0
    move-exception v0

    .line 475
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "WipowerManager"

    const-string v3, "Service  Exceptione"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getPowerLevel()Landroid/wipower/WipowerManager$PowerLevel;
    .locals 5

    .prologue
    .line 395
    sget-object v2, Landroid/wipower/WipowerManager$PowerLevel;->POWER_LEVEL_UNKNOWN:Landroid/wipower/WipowerManager$PowerLevel;

    .line 397
    .local v2, "ret":Landroid/wipower/WipowerManager$PowerLevel;
    sget-object v3, Landroid/wipower/WipowerManager;->mService:Landroid/wipower/IWipower;

    if-nez v3, :cond_1

    .line 398
    const-string v3, "WipowerManager"

    const-string v4, " Wipower Service not available"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_0
    :goto_0
    return-object v2

    .line 400
    :cond_1
    const/4 v1, 0x0

    .line 402
    .local v1, "res":B
    :try_start_0
    sget-object v3, Landroid/wipower/WipowerManager;->mService:Landroid/wipower/IWipower;

    invoke-interface {v3}, Landroid/wipower/IWipower;->getCurrentLimit()B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 406
    :goto_1
    if-nez v1, :cond_2

    sget-object v2, Landroid/wipower/WipowerManager$PowerLevel;->POWER_LEVEL_MINIMUM:Landroid/wipower/WipowerManager$PowerLevel;

    goto :goto_0

    .line 403
    :catch_0
    move-exception v0

    .line 404
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "WipowerManager"

    const-string v4, "Service  Exceptione"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 407
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    sget-object v2, Landroid/wipower/WipowerManager$PowerLevel;->POWER_LEVEL_MEDIUM:Landroid/wipower/WipowerManager$PowerLevel;

    goto :goto_0

    .line 408
    :cond_3
    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    sget-object v2, Landroid/wipower/WipowerManager$PowerLevel;->POWER_LEVEL_MAXIMUM:Landroid/wipower/WipowerManager$PowerLevel;

    goto :goto_0
.end method

.method public getState()Landroid/wipower/WipowerManager$WipowerState;
    .locals 5

    .prologue
    .line 420
    sget-object v2, Landroid/wipower/WipowerManager$WipowerState;->OFF:Landroid/wipower/WipowerManager$WipowerState;

    .line 421
    .local v2, "ret":Landroid/wipower/WipowerManager$WipowerState;
    sget-object v3, Landroid/wipower/WipowerManager;->mService:Landroid/wipower/IWipower;

    if-nez v3, :cond_0

    .line 422
    const-string v3, "WipowerManager"

    const-string v4, " Wipower Service not available"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :goto_0
    return-object v2

    .line 424
    :cond_0
    const/4 v1, 0x0

    .line 426
    .local v1, "res":I
    :try_start_0
    sget-object v3, Landroid/wipower/WipowerManager;->mService:Landroid/wipower/IWipower;

    invoke-interface {v3}, Landroid/wipower/IWipower;->getState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 430
    :goto_1
    if-nez v1, :cond_1

    .line 431
    sget-object v2, Landroid/wipower/WipowerManager$WipowerState;->OFF:Landroid/wipower/WipowerManager$WipowerState;

    goto :goto_0

    .line 427
    :catch_0
    move-exception v0

    .line 428
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "WipowerManager"

    const-string v4, "Service  Exceptione"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 434
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    sget-object v2, Landroid/wipower/WipowerManager$WipowerState;->ON:Landroid/wipower/WipowerManager$WipowerState;

    goto :goto_0
.end method

.method public registerCallback(Landroid/wipower/WipowerManagerCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/wipower/WipowerManagerCallback;

    .prologue
    .line 487
    sget-object v0, Landroid/wipower/WipowerManager;->mService:Landroid/wipower/IWipower;

    if-nez v0, :cond_0

    .line 488
    const-string v0, "WipowerManager"

    const-string/jumbo v1, "registerCallback:Service  not available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_0
    sget-object v0, Landroid/wipower/WipowerManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 492
    return-void
.end method

.method public setPowerLevel(Landroid/wipower/WipowerManager$PowerLevel;)Z
    .locals 5
    .param p1, "powerlevel"    # Landroid/wipower/WipowerManager$PowerLevel;

    .prologue
    .line 364
    const/4 v2, 0x0

    .line 366
    .local v2, "ret":Z
    invoke-static {}, Landroid/wipower/WipowerManager;->isWipowerSupported()Z

    move-result v3

    if-nez v3, :cond_0

    .line 367
    const-string v3, "WipowerManager"

    const-string v4, "Wipower not supported"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    const/4 v3, 0x0

    .line 384
    :goto_0
    return v3

    .line 371
    :cond_0
    sget-object v3, Landroid/wipower/WipowerManager;->mService:Landroid/wipower/IWipower;

    if-nez v3, :cond_1

    .line 372
    const-string v3, "WipowerManager"

    const-string v4, " Wipower Service not available"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move v3, v2

    .line 384
    goto :goto_0

    .line 374
    :cond_1
    const/4 v1, 0x0

    .line 375
    .local v1, "level":B
    sget-object v3, Landroid/wipower/WipowerManager$PowerLevel;->POWER_LEVEL_MINIMUM:Landroid/wipower/WipowerManager$PowerLevel;

    if-ne p1, v3, :cond_3

    const/16 v1, 0xa

    .line 379
    :cond_2
    :goto_2
    :try_start_0
    sget-object v3, Landroid/wipower/WipowerManager;->mService:Landroid/wipower/IWipower;

    invoke-interface {v3, v1}, Landroid/wipower/IWipower;->setCurrentLimit(B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_1

    .line 376
    :cond_3
    sget-object v3, Landroid/wipower/WipowerManager$PowerLevel;->POWER_LEVEL_MEDIUM:Landroid/wipower/WipowerManager$PowerLevel;

    if-ne p1, v3, :cond_4

    const/16 v1, 0x14

    goto :goto_2

    .line 377
    :cond_4
    sget-object v3, Landroid/wipower/WipowerManager$PowerLevel;->POWER_LEVEL_MAXIMUM:Landroid/wipower/WipowerManager$PowerLevel;

    if-ne p1, v3, :cond_2

    const/16 v1, 0x1f

    goto :goto_2

    .line 380
    :catch_0
    move-exception v0

    .line 381
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "WipowerManager"

    const-string v4, "Service  Exceptione"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public startCharging()Z
    .locals 4

    .prologue
    .line 302
    const/4 v1, 0x0

    .line 304
    .local v1, "ret":Z
    invoke-static {}, Landroid/wipower/WipowerManager;->isWipowerSupported()Z

    move-result v2

    if-nez v2, :cond_0

    .line 305
    const-string v2, "WipowerManager"

    const-string v3, "Wipower not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const/4 v2, 0x0

    .line 319
    :goto_0
    return v2

    .line 309
    :cond_0
    sget-object v2, Landroid/wipower/WipowerManager;->mService:Landroid/wipower/IWipower;

    if-nez v2, :cond_1

    .line 310
    const-string v2, "WipowerManager"

    const-string/jumbo v3, "startCharging: Service  not available"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move v2, v1

    .line 319
    goto :goto_0

    .line 313
    :cond_1
    :try_start_0
    sget-object v2, Landroid/wipower/WipowerManager;->mService:Landroid/wipower/IWipower;

    invoke-interface {v2}, Landroid/wipower/IWipower;->startCharging()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_1

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "WipowerManager"

    const-string v3, "Service  Exceptione"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public stopCharging()Z
    .locals 4

    .prologue
    .line 333
    const/4 v1, 0x0

    .line 335
    .local v1, "ret":Z
    invoke-static {}, Landroid/wipower/WipowerManager;->isWipowerSupported()Z

    move-result v2

    if-nez v2, :cond_0

    .line 336
    const-string v2, "WipowerManager"

    const-string v3, "Wipower not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    const/4 v2, 0x0

    .line 350
    :goto_0
    return v2

    .line 340
    :cond_0
    sget-object v2, Landroid/wipower/WipowerManager;->mService:Landroid/wipower/IWipower;

    if-nez v2, :cond_1

    .line 341
    const-string v2, "WipowerManager"

    const-string v3, " Wipower Service not available"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move v2, v1

    .line 350
    goto :goto_0

    .line 344
    :cond_1
    :try_start_0
    sget-object v2, Landroid/wipower/WipowerManager;->mService:Landroid/wipower/IWipower;

    invoke-interface {v2}, Landroid/wipower/IWipower;->stopCharging()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_1

    .line 345
    :catch_0
    move-exception v0

    .line 346
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "WipowerManager"

    const-string v3, "Service  Exceptione"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public unregisterCallback(Landroid/wipower/WipowerManagerCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/wipower/WipowerManagerCallback;

    .prologue
    .line 498
    sget-object v0, Landroid/wipower/WipowerManager;->mService:Landroid/wipower/IWipower;

    if-nez v0, :cond_0

    .line 499
    const-string v0, "WipowerManager"

    const-string v1, "Service  not available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :cond_0
    sget-object v0, Landroid/wipower/WipowerManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 502
    return-void
.end method

.method updatePowerApplyAlert(Landroid/wipower/WipowerManager$PowerApplyEvent;)V
    .locals 3
    .param p1, "alert"    # Landroid/wipower/WipowerManager$PowerApplyEvent;

    .prologue
    .line 146
    sget-object v2, Landroid/wipower/WipowerManager;->mCallbacks:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 147
    sget-object v2, Landroid/wipower/WipowerManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 149
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 150
    sget-object v2, Landroid/wipower/WipowerManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/wipower/WipowerManagerCallback;

    invoke-interface {v2, p1}, Landroid/wipower/WipowerManagerCallback;->onPowerApply(Landroid/wipower/WipowerManager$PowerApplyEvent;)V

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_0
    return-void
.end method

.method updateWipowerAlert(Landroid/wipower/WipowerManager$WipowerAlert;)V
    .locals 5
    .param p1, "alert"    # Landroid/wipower/WipowerManager$WipowerAlert;

    .prologue
    .line 136
    sget-object v2, Landroid/wipower/WipowerManager;->mCallbacks:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 137
    sget-object v2, Landroid/wipower/WipowerManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 138
    .local v1, "n":I
    const-string v2, "WipowerManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Broadcasting updateWipowerAlert() to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " receivers."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 140
    sget-object v2, Landroid/wipower/WipowerManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/wipower/WipowerManagerCallback;

    invoke-interface {v2, p1}, Landroid/wipower/WipowerManagerCallback;->onWipowerAlert(Landroid/wipower/WipowerManager$WipowerAlert;)V

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_0
    return-void
.end method

.method updateWipowerData(Landroid/wipower/WipowerDynamicParam;)V
    .locals 5
    .param p1, "pruData"    # Landroid/wipower/WipowerDynamicParam;

    .prologue
    .line 125
    sget-object v2, Landroid/wipower/WipowerManager;->mCallbacks:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 126
    sget-object v2, Landroid/wipower/WipowerManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 127
    .local v1, "n":I
    const-string v2, "WipowerManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Broadcasting updateWipowerData() to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " receivers."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 129
    sget-object v2, Landroid/wipower/WipowerManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/wipower/WipowerManagerCallback;

    invoke-interface {v2, p1}, Landroid/wipower/WipowerManagerCallback;->onWipowerData(Landroid/wipower/WipowerDynamicParam;)V

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_0
    return-void
.end method

.method updateWipowerReady()V
    .locals 3

    .prologue
    .line 158
    sget-object v2, Landroid/wipower/WipowerManager;->mCallbacks:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 159
    sget-object v2, Landroid/wipower/WipowerManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 161
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 162
    sget-object v2, Landroid/wipower/WipowerManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/wipower/WipowerManagerCallback;

    invoke-interface {v2}, Landroid/wipower/WipowerManagerCallback;->onWipowerReady()V

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 165
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_0
    return-void
.end method

.method updateWipowerState(Landroid/wipower/WipowerManager$WipowerState;)V
    .locals 5
    .param p1, "state"    # Landroid/wipower/WipowerManager$WipowerState;

    .prologue
    .line 114
    sget-object v2, Landroid/wipower/WipowerManager;->mCallbacks:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 115
    sget-object v2, Landroid/wipower/WipowerManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 116
    .local v1, "n":I
    const-string v2, "WipowerManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Broadcasting updateAdapterState() to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " receivers."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 118
    sget-object v2, Landroid/wipower/WipowerManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/wipower/WipowerManagerCallback;

    invoke-interface {v2, p1}, Landroid/wipower/WipowerManagerCallback;->onWipowerStateChange(Landroid/wipower/WipowerManager$WipowerState;)V

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_0
    return-void
.end method
