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
    .parameter

    .prologue
    .line 4486
    iput-object p1, p0, Landroid/media/AudioService$7;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 4489
    iget-object v1, p0, Landroid/media/AudioService$7;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mUiContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/media/AudioService;->access$300(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    .line 4490
    iget-object v1, p0, Landroid/media/AudioService$7;->this$0:Landroid/media/AudioService;

    iget-object v2, p0, Landroid/media/AudioService$7;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/media/AudioService;->access$8800(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/ThemeUtils;->createUiContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    #setter for: Landroid/media/AudioService;->mUiContext:Landroid/content/Context;
    invoke-static {v1, v2}, Landroid/media/AudioService;->access$302(Landroid/media/AudioService;Landroid/content/Context;)Landroid/content/Context;

    .line 4493
    :cond_0
    iget-object v1, p0, Landroid/media/AudioService$7;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mUiContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/media/AudioService;->access$300(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/media/AudioService$7;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mUiContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/media/AudioService;->access$300(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v0

    .line 4494
    .local v0, context:Landroid/content/Context;
    :goto_0
    iget-object v1, p0, Landroid/media/AudioService$7;->this$0:Landroid/media/AudioService;

    new-instance v2, Lmiui/view/VolumePanel;

    iget-object v3, p0, Landroid/media/AudioService$7;->this$0:Landroid/media/AudioService;

    invoke-direct {v2, v0, v3}, Lmiui/view/VolumePanel;-><init>(Landroid/content/Context;Landroid/media/AudioService;)V

    #setter for: Landroid/media/AudioService;->mVolumePanel:Lmiui/view/VolumePanel;
    invoke-static {v1, v2}, Landroid/media/AudioService;->access$9402(Landroid/media/AudioService;Lmiui/view/VolumePanel;)Lmiui/view/VolumePanel;

    .line 4495
    iget-object v1, p0, Landroid/media/AudioService$7;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mVolumePanel:Lmiui/view/VolumePanel;
    invoke-static {v1}, Landroid/media/AudioService;->access$9400(Landroid/media/AudioService;)Lmiui/view/VolumePanel;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lmiui/view/VolumePanel;->postDisplaySafeVolumeWarning(I)V

    .line 4496
    return-void

    .line 4493
    .end local v0           #context:Landroid/content/Context;
    :cond_1
    iget-object v1, p0, Landroid/media/AudioService$7;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/media/AudioService;->access$8800(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v0

    goto :goto_0
.end method
