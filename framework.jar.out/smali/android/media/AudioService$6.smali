.class Landroid/media/AudioService$6;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/AudioService;->showVolumeChangeUi(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;

.field final synthetic val$flags:I

.field final synthetic val$streamType:I


# direct methods
.method constructor <init>(Landroid/media/AudioService;II)V
    .locals 0

    .prologue
    .line 4499
    iput-object p1, p0, Landroid/media/AudioService$6;->this$0:Landroid/media/AudioService;

    iput p2, p0, Landroid/media/AudioService$6;->val$streamType:I

    iput p3, p0, Landroid/media/AudioService$6;->val$flags:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 4502
    iget-object v1, p0, Landroid/media/AudioService$6;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/media/AudioService;->access$700(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v0

    .line 4507
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Landroid/media/AudioService$6;->this$0:Landroid/media/AudioService;

    new-instance v2, Lmiui/view/VolumePanel;

    iget-object v3, p0, Landroid/media/AudioService$6;->this$0:Landroid/media/AudioService;

    invoke-direct {v2, v0, v3}, Lmiui/view/VolumePanel;-><init>(Landroid/content/Context;Landroid/media/AudioService;)V

    # setter for: Landroid/media/AudioService;->mVolumePanel:Lmiui/view/VolumePanel;
    invoke-static {v1, v2}, Landroid/media/AudioService;->access$9602(Landroid/media/AudioService;Lmiui/view/VolumePanel;)Lmiui/view/VolumePanel;

    .line 4508
    iget-object v1, p0, Landroid/media/AudioService$6;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mVolumePanel:Lmiui/view/VolumePanel;
    invoke-static {v1}, Landroid/media/AudioService;->access$9600(Landroid/media/AudioService;)Lmiui/view/VolumePanel;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioService$6;->val$streamType:I

    iget v3, p0, Landroid/media/AudioService$6;->val$flags:I

    invoke-virtual {v1, v2, v3}, Lmiui/view/VolumePanel;->postVolumeChanged(II)V

    .line 4509
    return-void
.end method
