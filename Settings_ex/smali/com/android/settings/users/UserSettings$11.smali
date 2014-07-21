.class Lcom/android/settings/users/UserSettings$11;
.super Ljava/lang/Thread;
.source "UserSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/users/UserSettings;->addUserNow(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/users/UserSettings;

.field final synthetic val$userType:I


# direct methods
.method constructor <init>(Lcom/android/settings/users/UserSettings;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 574
    iput-object p1, p0, Lcom/android/settings/users/UserSettings$11;->this$0:Lcom/android/settings/users/UserSettings;

    iput p2, p0, Lcom/android/settings/users/UserSettings$11;->val$userType:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 576
    const/4 v0, 0x0

    .line 578
    .local v0, user:Landroid/content/pm/UserInfo;
    iget v1, p0, Lcom/android/settings/users/UserSettings$11;->val$userType:I

    if-ne v1, v4, :cond_0

    .line 579
    iget-object v1, p0, Lcom/android/settings/users/UserSettings$11;->this$0:Lcom/android/settings/users/UserSettings;

    #calls: Lcom/android/settings/users/UserSettings;->createTrustedUser()Landroid/content/pm/UserInfo;
    invoke-static {v1}, Lcom/android/settings/users/UserSettings;->access$1700(Lcom/android/settings/users/UserSettings;)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 583
    :goto_0
    iget-object v1, p0, Lcom/android/settings/users/UserSettings$11;->this$0:Lcom/android/settings/users/UserSettings;

    #getter for: Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/settings/users/UserSettings;->access$1600(Lcom/android/settings/users/UserSettings;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 584
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/users/UserSettings$11;->this$0:Lcom/android/settings/users/UserSettings;

    const/4 v3, 0x0

    #setter for: Lcom/android/settings/users/UserSettings;->mAddingUser:Z
    invoke-static {v1, v3}, Lcom/android/settings/users/UserSettings;->access$1902(Lcom/android/settings/users/UserSettings;Z)Z

    .line 585
    iget v1, p0, Lcom/android/settings/users/UserSettings$11;->val$userType:I

    if-ne v1, v4, :cond_1

    .line 586
    iget-object v1, p0, Lcom/android/settings/users/UserSettings$11;->this$0:Lcom/android/settings/users/UserSettings;

    #getter for: Lcom/android/settings/users/UserSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/users/UserSettings;->access$500(Lcom/android/settings/users/UserSettings;)Landroid/os/Handler;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 587
    iget-object v1, p0, Lcom/android/settings/users/UserSettings$11;->this$0:Lcom/android/settings/users/UserSettings;

    #getter for: Lcom/android/settings/users/UserSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/users/UserSettings;->access$500(Lcom/android/settings/users/UserSettings;)Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/users/UserSettings$11;->this$0:Lcom/android/settings/users/UserSettings;

    #getter for: Lcom/android/settings/users/UserSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/settings/users/UserSettings;->access$500(Lcom/android/settings/users/UserSettings;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x2

    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    iget v6, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 593
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 594
    return-void

    .line 581
    :cond_0
    iget-object v1, p0, Lcom/android/settings/users/UserSettings$11;->this$0:Lcom/android/settings/users/UserSettings;

    #calls: Lcom/android/settings/users/UserSettings;->createLimitedUser()Landroid/content/pm/UserInfo;
    invoke-static {v1}, Lcom/android/settings/users/UserSettings;->access$1800(Lcom/android/settings/users/UserSettings;)Landroid/content/pm/UserInfo;

    move-result-object v0

    goto :goto_0

    .line 590
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/settings/users/UserSettings$11;->this$0:Lcom/android/settings/users/UserSettings;

    #getter for: Lcom/android/settings/users/UserSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/users/UserSettings;->access$500(Lcom/android/settings/users/UserSettings;)Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/users/UserSettings$11;->this$0:Lcom/android/settings/users/UserSettings;

    #getter for: Lcom/android/settings/users/UserSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/settings/users/UserSettings;->access$500(Lcom/android/settings/users/UserSettings;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    iget v6, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 593
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
