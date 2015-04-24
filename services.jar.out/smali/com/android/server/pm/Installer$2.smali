.class Lcom/android/server/pm/Installer$2;
.super Ljava/lang/Object;
.source "Installer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/Installer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/Installer;


# direct methods
.method constructor <init>(Lcom/android/server/pm/Installer;)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lcom/android/server/pm/Installer$2;->this$0:Lcom/android/server/pm/Installer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 298
    iget-object v1, p0, Lcom/android/server/pm/Installer$2;->this$0:Lcom/android/server/pm/Installer;

    iget-object v2, v1, Lcom/android/server/pm/Installer;->mResponses:Landroid/util/SparseArray;

    monitor-enter v2

    .line 299
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/Installer$2;->this$0:Lcom/android/server/pm/Installer;

    # invokes: Lcom/android/server/pm/Installer;->readReply()Z
    invoke-static {v1}, Lcom/android/server/pm/Installer;->access$100(Lcom/android/server/pm/Installer;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 300
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/pm/Installer$2;->this$0:Lcom/android/server/pm/Installer;

    iget-object v1, v1, Lcom/android/server/pm/Installer;->buf:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/pm/Installer$2;->this$0:Lcom/android/server/pm/Installer;

    iget v4, v4, Lcom/android/server/pm/Installer;->buflen:I

    invoke-direct {v0, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    .line 304
    .local v0, "s":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/pm/Installer$2;->this$0:Lcom/android/server/pm/Installer;

    iget-object v1, v1, Lcom/android/server/pm/Installer;->mResponses:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/android/server/pm/Installer$2;->this$0:Lcom/android/server/pm/Installer;

    iget v3, v3, Lcom/android/server/pm/Installer;->id:I

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 305
    iget-object v1, p0, Lcom/android/server/pm/Installer$2;->this$0:Lcom/android/server/pm/Installer;

    iget-object v1, v1, Lcom/android/server/pm/Installer;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    .line 307
    .end local v0    # "s":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 308
    iget-object v1, p0, Lcom/android/server/pm/Installer$2;->this$0:Lcom/android/server/pm/Installer;

    iget-boolean v1, v1, Lcom/android/server/pm/Installer;->needPolling:Z

    if-eqz v1, :cond_1

    .line 309
    iget-object v1, p0, Lcom/android/server/pm/Installer$2;->this$0:Lcom/android/server/pm/Installer;

    iget-object v1, v1, Lcom/android/server/pm/Installer;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xa

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 311
    :cond_1
    return-void
.end method
