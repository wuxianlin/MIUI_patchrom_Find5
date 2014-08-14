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
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/server/TorchService$2;->this$0:Lcom/android/server/TorchService;

    iput p2, p0, Lcom/android/server/TorchService$2;->val$cameraId:I

    iput-object p3, p0, Lcom/android/server/TorchService$2;->val$token:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 76
    iget-object v1, p0, Lcom/android/server/TorchService$2;->this$0:Lcom/android/server/TorchService;

    #getter for: Lcom/android/server/TorchService;->mCamerasInUse:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/android/server/TorchService;->access$100(Lcom/android/server/TorchService;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lcom/android/server/TorchService$2;->val$cameraId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/TorchService$CameraUserRecord;

    .line 77
    .local v0, record:Lcom/android/server/TorchService$CameraUserRecord;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/TorchService$CameraUserRecord;->token:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/TorchService$2;->val$token:Landroid/os/IBinder;

    if-ne v1, v2, :cond_0

    .line 79
    iget-object v1, p0, Lcom/android/server/TorchService$2;->this$0:Lcom/android/server/TorchService;

    #getter for: Lcom/android/server/TorchService;->mCamerasInUse:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/android/server/TorchService;->access$100(Lcom/android/server/TorchService;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lcom/android/server/TorchService$2;->val$cameraId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->delete(I)V

    .line 81
    :cond_0
    return-void
.end method
