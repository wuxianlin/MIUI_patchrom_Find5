.class Lcom/android/settings/NotificationStation$2;
.super Landroid/service/notification/INotificationListener$Stub;
.source "NotificationStation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/NotificationStation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/NotificationStation;


# direct methods
.method constructor <init>(Lcom/android/settings/NotificationStation;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/settings/NotificationStation$2;->this$0:Lcom/android/settings/NotificationStation;

    invoke-direct {p0}, Landroid/service/notification/INotificationListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .locals 4
    .parameter "notification"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-static {}, Lcom/android/settings/NotificationStation;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNotificationPosted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v1, p0, Lcom/android/settings/NotificationStation$2;->this$0:Lcom/android/settings/NotificationStation;

    invoke-virtual {v1}, Lcom/android/settings/NotificationStation;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 77
    .local v0, h:Landroid/os/Handler;
    iget-object v1, p0, Lcom/android/settings/NotificationStation$2;->this$0:Lcom/android/settings/NotificationStation;

    #getter for: Lcom/android/settings/NotificationStation;->mRefreshListRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/settings/NotificationStation;->access$300(Lcom/android/settings/NotificationStation;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 78
    iget-object v1, p0, Lcom/android/settings/NotificationStation$2;->this$0:Lcom/android/settings/NotificationStation;

    #getter for: Lcom/android/settings/NotificationStation;->mRefreshListRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/settings/NotificationStation;->access$300(Lcom/android/settings/NotificationStation;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 79
    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .locals 4
    .parameter "notification"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 83
    iget-object v1, p0, Lcom/android/settings/NotificationStation$2;->this$0:Lcom/android/settings/NotificationStation;

    invoke-virtual {v1}, Lcom/android/settings/NotificationStation;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 84
    .local v0, h:Landroid/os/Handler;
    iget-object v1, p0, Lcom/android/settings/NotificationStation$2;->this$0:Lcom/android/settings/NotificationStation;

    #getter for: Lcom/android/settings/NotificationStation;->mRefreshListRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/settings/NotificationStation;->access$300(Lcom/android/settings/NotificationStation;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 85
    iget-object v1, p0, Lcom/android/settings/NotificationStation$2;->this$0:Lcom/android/settings/NotificationStation;

    #getter for: Lcom/android/settings/NotificationStation;->mRefreshListRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/settings/NotificationStation;->access$300(Lcom/android/settings/NotificationStation;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 86
    return-void
.end method
