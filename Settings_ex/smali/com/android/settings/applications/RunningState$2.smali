.class Lcom/android/settings/applications/RunningState$2;
.super Landroid/os/Handler;
.source "RunningState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/RunningState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mNextUpdate:I

.field final synthetic this$0:Lcom/android/settings/applications/RunningState;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/RunningState;)V
    .locals 1
    .parameter

    .prologue
    .line 253
    iput-object p1, p0, Lcom/android/settings/applications/RunningState$2;->this$0:Lcom/android/settings/applications/RunningState;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 254
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/applications/RunningState$2;->mNextUpdate:I

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x4

    .line 258
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 260
    :pswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    :goto_1
    iput v1, p0, Lcom/android/settings/applications/RunningState$2;->mNextUpdate:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1

    .line 265
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/applications/RunningState$2;->this$0:Lcom/android/settings/applications/RunningState;

    iget-object v2, v1, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 266
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/RunningState$2;->this$0:Lcom/android/settings/applications/RunningState;

    iget-boolean v1, v1, Lcom/android/settings/applications/RunningState;->mResumed:Z

    if-nez v1, :cond_2

    .line 267
    monitor-exit v2

    goto :goto_0

    .line 269
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 270
    invoke-virtual {p0, v3}, Lcom/android/settings/applications/RunningState$2;->removeMessages(I)V

    .line 271
    invoke-virtual {p0, v3}, Lcom/android/settings/applications/RunningState$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 272
    .local v0, m:Landroid/os/Message;
    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settings/applications/RunningState$2;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 274
    iget-object v1, p0, Lcom/android/settings/applications/RunningState$2;->this$0:Lcom/android/settings/applications/RunningState;

    iget-object v1, v1, Lcom/android/settings/applications/RunningState;->mRefreshUiListener:Lcom/android/settings/applications/RunningState$OnRefreshUiListener;

    if-eqz v1, :cond_0

    .line 277
    iget-object v1, p0, Lcom/android/settings/applications/RunningState$2;->this$0:Lcom/android/settings/applications/RunningState;

    iget-object v1, v1, Lcom/android/settings/applications/RunningState;->mRefreshUiListener:Lcom/android/settings/applications/RunningState$OnRefreshUiListener;

    iget v2, p0, Lcom/android/settings/applications/RunningState$2;->mNextUpdate:I

    invoke-interface {v1, v2}, Lcom/android/settings/applications/RunningState$OnRefreshUiListener;->onRefreshUi(I)V

    .line 278
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/settings/applications/RunningState$2;->mNextUpdate:I

    goto :goto_0

    .line 258
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
