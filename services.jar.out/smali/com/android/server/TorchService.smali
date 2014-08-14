.class public Lcom/android/server/TorchService;
.super Landroid/hardware/ITorchService$Stub;
.source "TorchService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/TorchService$CameraUserRecord;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCamerasInUse:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/TorchService$CameraUserRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mStopTorchDoneReceiver:Landroid/content/BroadcastReceiver;

.field private mStopTorchLock:Ljava/lang/Object;

.field private mTorchAppCameraId:I

.field private mTorchAppUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/android/server/TorchService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/TorchService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/hardware/ITorchService$Stub;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/TorchService;->mTorchAppUid:I

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/TorchService;->mTorchAppCameraId:I

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/TorchService;->mStopTorchLock:Ljava/lang/Object;

    .line 44
    new-instance v0, Lcom/android/server/TorchService$1;

    invoke-direct {v0, p0}, Lcom/android/server/TorchService$1;-><init>(Lcom/android/server/TorchService;)V

    iput-object v0, p0, Lcom/android/server/TorchService;->mStopTorchDoneReceiver:Landroid/content/BroadcastReceiver;

    .line 54
    iput-object p1, p0, Lcom/android/server/TorchService;->mContext:Landroid/content/Context;

    .line 55
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/TorchService;->mCamerasInUse:Landroid/util/SparseArray;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/TorchService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/server/TorchService;->mStopTorchLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/TorchService;)Landroid/util/SparseArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/server/TorchService;->mCamerasInUse:Landroid/util/SparseArray;

    return-object v0
.end method

.method private shutdownTorch()V
    .locals 11

    .prologue
    .line 111
    new-instance v9, Landroid/os/HandlerThread;

    const-string v0, "StopTorch"

    invoke-direct {v9, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 112
    .local v9, stopTorchThread:Landroid/os/HandlerThread;
    invoke-virtual {v9}, Landroid/os/HandlerThread;->start()V

    .line 113
    new-instance v5, Landroid/os/Handler;

    invoke-virtual {v9}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 115
    .local v5, handler:Landroid/os/Handler;
    new-instance v1, Landroid/content/Intent;

    const-string v0, "net.cactii.flash2.TOGGLE_FLASHLIGHT"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    .local v1, i:Landroid/content/Intent;
    const-string v0, "stop"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 118
    iget-object v10, p0, Lcom/android/server/TorchService;->mStopTorchLock:Ljava/lang/Object;

    monitor-enter v10

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/android/server/TorchService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/TorchService;->mStopTorchDoneReceiver:Landroid/content/BroadcastReceiver;

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    :try_start_1
    iget-object v0, p0, Lcom/android/server/TorchService;->mStopTorchLock:Ljava/lang/Object;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 128
    :goto_0
    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 129
    invoke-virtual {v9}, Landroid/os/HandlerThread;->quit()Z

    .line 131
    return-void

    .line 128
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 125
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 135
    iget-object v5, p0, Lcom/android/server/TorchService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.DUMP"

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 137
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Permission Denial: can\'t dump torch service from from pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 156
    :goto_0
    return-void

    .line 143
    :cond_0
    const-string v5, "Current torch service state:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 145
    const-string v5, "  Active cameras:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 146
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v5, p0, Lcom/android/server/TorchService;->mCamerasInUse:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 147
    iget-object v5, p0, Lcom/android/server/TorchService;->mCamerasInUse:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 148
    .local v0, cameraId:I
    iget-object v5, p0, Lcom/android/server/TorchService;->mCamerasInUse:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/TorchService$CameraUserRecord;

    .line 149
    .local v4, record:Lcom/android/server/TorchService$CameraUserRecord;
    iget v5, p0, Lcom/android/server/TorchService;->mTorchAppCameraId:I

    if-ne v0, v5, :cond_1

    const/4 v2, 0x1

    .line 150
    .local v2, isTorch:Z
    :goto_2
    iget-object v5, p0, Lcom/android/server/TorchService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget v6, v4, Lcom/android/server/TorchService$CameraUserRecord;->uid:I

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 152
    .local v3, packages:[Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    Camera "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v2, :cond_2

    const-string v5, "torch"

    :goto_3
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 153
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "): pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v4, Lcom/android/server/TorchService$CameraUserRecord;->pid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; package="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-static {v6, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 146
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 149
    .end local v2           #isTorch:Z
    .end local v3           #packages:[Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    .line 152
    .restart local v2       #isTorch:Z
    .restart local v3       #packages:[Ljava/lang/String;
    :cond_2
    const-string v5, "camera"

    goto :goto_3

    .line 155
    .end local v0           #cameraId:I
    .end local v2           #isTorch:Z
    .end local v3           #packages:[Ljava/lang/String;
    .end local v4           #record:Lcom/android/server/TorchService$CameraUserRecord;
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mTorchAppUid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/TorchService;->mTorchAppUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onCameraClosed(I)V
    .locals 1
    .parameter "cameraId"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/TorchService;->mCamerasInUse:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 92
    iget v0, p0, Lcom/android/server/TorchService;->mTorchAppCameraId:I

    if-ne p1, v0, :cond_0

    .line 93
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/TorchService;->mTorchAppCameraId:I

    .line 95
    :cond_0
    return-void
.end method

.method public onCameraOpened(Landroid/os/IBinder;I)V
    .locals 2
    .parameter "token"
    .parameter "cameraId"

    .prologue
    .line 61
    iget v0, p0, Lcom/android/server/TorchService;->mTorchAppUid:I

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget v1, p0, Lcom/android/server/TorchService;->mTorchAppUid:I

    if-ne v0, v1, :cond_1

    .line 63
    iput p2, p0, Lcom/android/server/TorchService;->mTorchAppCameraId:I

    .line 73
    :cond_0
    :goto_0
    :try_start_0
    new-instance v0, Lcom/android/server/TorchService$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/TorchService$2;-><init>(Lcom/android/server/TorchService;ILandroid/os/IBinder;)V

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 83
    iget-object v0, p0, Lcom/android/server/TorchService;->mCamerasInUse:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/server/TorchService$CameraUserRecord;

    invoke-direct {v1, p1}, Lcom/android/server/TorchService$CameraUserRecord;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_1
    return-void

    .line 68
    :cond_1
    iget v0, p0, Lcom/android/server/TorchService;->mTorchAppCameraId:I

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/TorchService;->mCamerasInUse:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    invoke-direct {p0}, Lcom/android/server/TorchService;->shutdownTorch()V

    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public onStartingTorch(I)Z
    .locals 2
    .parameter "cameraId"

    .prologue
    const/4 v0, 0x1

    .line 100
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iput v1, p0, Lcom/android/server/TorchService;->mTorchAppUid:I

    .line 101
    iget v1, p0, Lcom/android/server/TorchService;->mTorchAppCameraId:I

    if-ne p1, v1, :cond_1

    .line 104
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/server/TorchService;->mCamerasInUse:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method
