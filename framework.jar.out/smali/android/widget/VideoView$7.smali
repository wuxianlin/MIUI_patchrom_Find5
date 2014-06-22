.class Landroid/widget/VideoView$7;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/VideoView;


# direct methods
.method constructor <init>(Landroid/widget/VideoView;)V
    .locals 0
    .parameter

    .prologue
    .line 605
    iput-object p1, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 6
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 609
    iget-object v4, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    #setter for: Landroid/widget/VideoView;->mSurfaceWidth:I
    invoke-static {v4, p3}, Landroid/widget/VideoView;->access$1002(Landroid/widget/VideoView;I)I

    .line 610
    iget-object v4, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    #setter for: Landroid/widget/VideoView;->mSurfaceHeight:I
    invoke-static {v4, p4}, Landroid/widget/VideoView;->access$1102(Landroid/widget/VideoView;I)I

    .line 611
    iget-object v4, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mTargetState:I
    invoke-static {v4}, Landroid/widget/VideoView;->access$1200(Landroid/widget/VideoView;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    move v1, v2

    .line 612
    .local v1, isValidState:Z
    :goto_0
    iget-object v4, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mVideoWidth:I
    invoke-static {v4}, Landroid/widget/VideoView;->access$000(Landroid/widget/VideoView;)I

    move-result v4

    if-ne v4, p3, :cond_3

    iget-object v4, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mVideoHeight:I
    invoke-static {v4}, Landroid/widget/VideoView;->access$100(Landroid/widget/VideoView;)I

    move-result v4

    if-ne v4, p4, :cond_3

    move v0, v2

    .line 613
    .local v0, hasValidSize:Z
    :goto_1
    iget-object v2, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v2}, Landroid/widget/VideoView;->access$700(Landroid/widget/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 614
    iget-object v2, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mSeekWhenPrepared:I
    invoke-static {v2}, Landroid/widget/VideoView;->access$900(Landroid/widget/VideoView;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 615
    iget-object v2, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    iget-object v3, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mSeekWhenPrepared:I
    invoke-static {v3}, Landroid/widget/VideoView;->access$900(Landroid/widget/VideoView;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->seekTo(I)V

    .line 617
    :cond_0
    iget-object v2, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->start()V

    .line 619
    :cond_1
    return-void

    .end local v0           #hasValidSize:Z
    .end local v1           #isValidState:Z
    :cond_2
    move v1, v3

    .line 611
    goto :goto_0

    .restart local v1       #isValidState:Z
    :cond_3
    move v0, v3

    .line 612
    goto :goto_1
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 623
    iget-object v0, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    #setter for: Landroid/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;
    invoke-static {v0, p1}, Landroid/widget/VideoView;->access$2002(Landroid/widget/VideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 625
    iget-object v0, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mCurrentState:I
    invoke-static {v0}, Landroid/widget/VideoView;->access$200(Landroid/widget/VideoView;)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Landroid/widget/VideoView;->access$700(Landroid/widget/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 626
    iget-object v0, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Landroid/widget/VideoView;->access$700(Landroid/widget/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;
    invoke-static {v1}, Landroid/widget/VideoView;->access$2000(Landroid/widget/VideoView;)Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 627
    iget-object v0, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Landroid/widget/VideoView;->access$700(Landroid/widget/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->resume()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 628
    iget-object v0, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    const/4 v1, 0x2

    #setter for: Landroid/widget/VideoView;->mCurrentState:I
    invoke-static {v0, v1}, Landroid/widget/VideoView;->access$202(Landroid/widget/VideoView;I)I

    .line 629
    iget-object v0, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mSeekWhenPrepared:I
    invoke-static {v0}, Landroid/widget/VideoView;->access$900(Landroid/widget/VideoView;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 631
    iget-object v0, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    iget-object v1, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mSeekWhenPrepared:I
    invoke-static {v1}, Landroid/widget/VideoView;->access$900(Landroid/widget/VideoView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 633
    :cond_0
    iget-object v0, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mTargetState:I
    invoke-static {v0}, Landroid/widget/VideoView;->access$1200(Landroid/widget/VideoView;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 634
    iget-object v0, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 642
    :cond_1
    :goto_0
    return-void

    .line 638
    :cond_2
    iget-object v0, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    const/4 v1, 0x0

    #calls: Landroid/widget/VideoView;->release(Z)V
    invoke-static {v0, v1}, Landroid/widget/VideoView;->access$2100(Landroid/widget/VideoView;Z)V

    .line 641
    :cond_3
    iget-object v0, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    #calls: Landroid/widget/VideoView;->openVideo()V
    invoke-static {v0}, Landroid/widget/VideoView;->access$2200(Landroid/widget/VideoView;)V

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 647
    iget-object v0, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    const/4 v1, 0x0

    #setter for: Landroid/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;
    invoke-static {v0, v1}, Landroid/widget/VideoView;->access$2002(Landroid/widget/VideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 648
    iget-object v0, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Landroid/widget/VideoView;->access$800(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Landroid/widget/VideoView;->access$800(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 650
    :cond_0
    iget-object v0, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    iget-object v1, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Landroid/widget/VideoView;->access$2300(Landroid/widget/VideoView;)Landroid/net/Uri;

    move-result-object v1

    #calls: Landroid/widget/VideoView;->isHTTPStreaming(Landroid/net/Uri;)Z
    invoke-static {v0, v1}, Landroid/widget/VideoView;->access$2400(Landroid/widget/VideoView;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mCurrentState:I
    invoke-static {v0}, Landroid/widget/VideoView;->access$200(Landroid/widget/VideoView;)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 655
    :goto_0
    return-void

    .line 654
    :cond_1
    iget-object v0, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    const/4 v1, 0x1

    #calls: Landroid/widget/VideoView;->release(Z)V
    invoke-static {v0, v1}, Landroid/widget/VideoView;->access$2100(Landroid/widget/VideoView;Z)V

    goto :goto_0
.end method
