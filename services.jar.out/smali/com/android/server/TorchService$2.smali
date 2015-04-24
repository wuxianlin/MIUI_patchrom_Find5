.class Lcom/android/server/TorchService$2;
.super Ljava/lang/Object;
.source "TorchService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/TorchService;->onCameraOpened(Landroid/os/IBinder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TorchService;

.field final synthetic val$cameraId:I

.field final synthetic val$token:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/android/server/TorchService;ILandroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/server/TorchService$2;->this$0:Lcom/android/server/TorchService;

    iput p2, p0, Lcom/android/server/TorchService$2;->val$cameraId:I

    iput-object p3, p0, Lcom/android/server/TorchService$2;->val$token:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/TorchService$2;->this$0:Lcom/android/server/TorchService;

    # getter for: Lcom/android/server/TorchService;->mCamerasInUse:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/TorchService;->access$100(Lcom/android/server/TorchService;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/android/server/TorchService$2;->this$0:Lcom/android/server/TorchService;

    iget-object v2, p0, Lcom/android/server/TorchService$2;->val$token:Landroid/os/IBinder;

    iget v3, p0, Lcom/android/server/TorchService$2;->val$cameraId:I

    # invokes: Lcom/android/server/TorchService;->removeCameraUserLocked(Landroid/os/IBinder;I)V
    invoke-static {v0, v2, v3}, Lcom/android/server/TorchService;->access$200(Lcom/android/server/TorchService;Landroid/os/IBinder;I)V

    .line 94
    monitor-exit v1

    .line 95
    return-void

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
