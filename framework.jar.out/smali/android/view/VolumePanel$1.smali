.class Landroid/view/VolumePanel$1;
.super Landroid/database/ContentObserver;
.source "VolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/VolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/VolumePanel;


# direct methods
.method constructor <init>(Landroid/view/VolumePanel;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 243
    iput-object p1, p0, Landroid/view/VolumePanel$1;->this$0:Landroid/view/VolumePanel;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .parameter "selfChange"

    .prologue
    const/4 v2, 0x1

    .line 246
    iget-object v3, p0, Landroid/view/VolumePanel$1;->this$0:Landroid/view/VolumePanel;

    iget-object v1, p0, Landroid/view/VolumePanel$1;->this$0:Landroid/view/VolumePanel;

    iget-object v1, v1, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "volume_link_notification"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    #setter for: Landroid/view/VolumePanel;->mVolumeLinkNotification:Z
    invoke-static {v3, v1}, Landroid/view/VolumePanel;->access$002(Landroid/view/VolumePanel;Z)Z

    .line 248
    iget-object v1, p0, Landroid/view/VolumePanel$1;->this$0:Landroid/view/VolumePanel;

    iget-object v1, v1, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "mode_volume_overlay"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 250
    .local v0, overlayStyle:I
    iget-object v1, p0, Landroid/view/VolumePanel$1;->this$0:Landroid/view/VolumePanel;

    #calls: Landroid/view/VolumePanel;->changeOverlayStyle(I)V
    invoke-static {v1, v0}, Landroid/view/VolumePanel;->access$100(Landroid/view/VolumePanel;I)V

    .line 251
    return-void

    .line 246
    .end local v0           #overlayStyle:I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
