.class Landroid/media/AudioService$5;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/AudioService;->masterMuteChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;

.field final synthetic val$flags:I


# direct methods
.method constructor <init>(Landroid/media/AudioService;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4448
    iput-object p1, p0, Landroid/media/AudioService$5;->this$0:Landroid/media/AudioService;

    iput p2, p0, Landroid/media/AudioService$5;->val$flags:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 4451
    iget-object v1, p0, Landroid/media/AudioService$5;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mUiContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/media/AudioService;->access$300(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    .line 4452
    iget-object v1, p0, Landroid/media/AudioService$5;->this$0:Landroid/media/AudioService;

    iget-object v2, p0, Landroid/media/AudioService$5;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/media/AudioService;->access$8800(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/ThemeUtils;->createUiContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    #setter for: Landroid/media/AudioService;->mUiContext:Landroid/content/Context;
    invoke-static {v1, v2}, Landroid/media/AudioService;->access$302(Landroid/media/AudioService;Landroid/content/Context;)Landroid/content/Context;

    .line 4455
    :cond_0
    iget-object v1, p0, Landroid/media/AudioService$5;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mUiContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/media/AudioService;->access$300(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/media/AudioService$5;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mUiContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/media/AudioService;->access$300(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v0

    .line 4456
    .local v0, context:Landroid/content/Context;
    :goto_0
    iget-object v1, p0, Landroid/media/AudioService$5;->this$0:Landroid/media/AudioService;

    new-instance v2, Lmiui/view/VolumePanel;

    iget-object v3, p0, Landroid/media/AudioService$5;->this$0:Landroid/media/AudioService;

    invoke-direct {v2, v0, v3}, Lmiui/view/VolumePanel;-><init>(Landroid/content/Context;Landroid/media/AudioService;)V

    #setter for: Landroid/media/AudioService;->mVolumePanel:Lmiui/view/VolumePanel;
    invoke-static {v1, v2}, Landroid/media/AudioService;->access$9402(Landroid/media/AudioService;Lmiui/view/VolumePanel;)Lmiui/view/VolumePanel;

    .line 4457
    iget-object v1, p0, Landroid/media/AudioService$5;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mVolumePanel:Lmiui/view/VolumePanel;
    invoke-static {v1}, Landroid/media/AudioService;->access$9400(Landroid/media/AudioService;)Lmiui/view/VolumePanel;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioService$5;->val$flags:I

    invoke-virtual {v1, v2}, Lmiui/view/VolumePanel;->postMasterMuteChanged(I)V

    .line 4458
    return-void

    .line 4455
    .end local v0           #context:Landroid/content/Context;
    :cond_1
    iget-object v1, p0, Landroid/media/AudioService$5;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/media/AudioService;->access$8800(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v0

    goto :goto_0
.end method
