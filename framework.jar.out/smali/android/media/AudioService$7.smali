.class Landroid/media/AudioService$7;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/AudioService;->displaySafeVolumeWarning()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method constructor <init>(Landroid/media/AudioService;)V
    .locals 0

    .prologue
    .line 4518
    iput-object p1, p0, Landroid/media/AudioService$7;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 4521
    iget-object v1, p0, Landroid/media/AudioService$7;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/media/AudioService;->access$700(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v0

    .line 4526
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Landroid/media/AudioService$7;->this$0:Landroid/media/AudioService;

    new-instance v2, Lmiui/view/VolumePanel;

    iget-object v3, p0, Landroid/media/AudioService$7;->this$0:Landroid/media/AudioService;

    invoke-direct {v2, v0, v3}, Lmiui/view/VolumePanel;-><init>(Landroid/content/Context;Landroid/media/AudioService;)V

    # setter for: Landroid/media/AudioService;->mVolumePanel:Lmiui/view/VolumePanel;
    invoke-static {v1, v2}, Landroid/media/AudioService;->access$9602(Landroid/media/AudioService;Lmiui/view/VolumePanel;)Lmiui/view/VolumePanel;

    .line 4527
    iget-object v1, p0, Landroid/media/AudioService$7;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mVolumePanel:Lmiui/view/VolumePanel;
    invoke-static {v1}, Landroid/media/AudioService;->access$9600(Landroid/media/AudioService;)Lmiui/view/VolumePanel;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lmiui/view/VolumePanel;->postDisplaySafeVolumeWarning(I)V

    .line 4528
    return-void
.end method
