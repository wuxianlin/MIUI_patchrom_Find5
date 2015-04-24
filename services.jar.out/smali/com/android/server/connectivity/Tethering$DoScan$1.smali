.class Lcom/android/server/connectivity/Tethering$DoScan$1;
.super Ljava/lang/Object;
.source "Tethering.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/Tethering$DoScan;->onPostExecute(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/connectivity/Tethering$DoScan;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering$DoScan;)V
    .locals 0

    .prologue
    .line 620
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$DoScan$1;->this$1:Lcom/android/server/connectivity/Tethering$DoScan;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 623
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$DoScan$1;->this$1:Lcom/android/server/connectivity/Tethering$DoScan;

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$DoScan;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mLastWifiClientCount:I
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$400(Lcom/android/server/connectivity/Tethering;)I

    move-result v0

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$DoScan$1;->this$1:Lcom/android/server/connectivity/Tethering$DoScan;

    # getter for: Lcom/android/server/connectivity/Tethering$DoScan;->mCurrentClientCount:I
    invoke-static {v3}, Lcom/android/server/connectivity/Tethering$DoScan;->access$500(Lcom/android/server/connectivity/Tethering$DoScan;)I

    move-result v3

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$DoScan$1;->this$1:Lcom/android/server/connectivity/Tethering$DoScan;

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$DoScan;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mLastWifiClientCount:I
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$400(Lcom/android/server/connectivity/Tethering;)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$DoScan$1;->this$1:Lcom/android/server/connectivity/Tethering$DoScan;

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$DoScan;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$600(Lcom/android/server/connectivity/Tethering;)Landroid/app/Notification;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 626
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$DoScan$1;->this$1:Lcom/android/server/connectivity/Tethering$DoScan;

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$DoScan;->this$0:Lcom/android/server/connectivity/Tethering;

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$DoScan$1;->this$1:Lcom/android/server/connectivity/Tethering$DoScan;

    # getter for: Lcom/android/server/connectivity/Tethering$DoScan;->mCurrentClientCount:I
    invoke-static {v3}, Lcom/android/server/connectivity/Tethering$DoScan;->access$500(Lcom/android/server/connectivity/Tethering$DoScan;)I

    move-result v3

    # setter for: Lcom/android/server/connectivity/Tethering;->mLastWifiClientCount:I
    invoke-static {v0, v3}, Lcom/android/server/connectivity/Tethering;->access$402(Lcom/android/server/connectivity/Tethering;I)I

    .line 627
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 628
    .local v2, "intent":Landroid/content/Intent;
    const-string v0, "com.android.settings"

    const-string v3, "com.android.settings.TetherSettings"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 630
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 632
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$DoScan$1;->this$1:Lcom/android/server/connectivity/Tethering$DoScan;

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$DoScan;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$300(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move v3, v1

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v7

    .line 635
    .local v7, "pi":Landroid/app/PendingIntent;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    .line 637
    .local v8, "r":Landroid/content/res/Resources;
    const v0, 0x10405c2

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 640
    .local v9, "title":Ljava/lang/CharSequence;
    const/high16 v0, 0x1120000

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$DoScan$1;->this$1:Lcom/android/server/connectivity/Tethering$DoScan;

    # getter for: Lcom/android/server/connectivity/Tethering$DoScan;->mCurrentClientCount:I
    invoke-static {v3}, Lcom/android/server/connectivity/Tethering$DoScan;->access$500(Lcom/android/server/connectivity/Tethering$DoScan;)I

    move-result v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$DoScan$1;->this$1:Lcom/android/server/connectivity/Tethering$DoScan;

    # getter for: Lcom/android/server/connectivity/Tethering$DoScan;->mCurrentClientCount:I
    invoke-static {v10}, Lcom/android/server/connectivity/Tethering$DoScan;->access$500(Lcom/android/server/connectivity/Tethering$DoScan;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v5, v1

    invoke-virtual {v8, v0, v3, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 643
    .local v6, "message":Ljava/lang/CharSequence;
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$DoScan$1;->this$1:Lcom/android/server/connectivity/Tethering$DoScan;

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$DoScan;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$600(Lcom/android/server/connectivity/Tethering;)Landroid/app/Notification;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$DoScan$1;->this$1:Lcom/android/server/connectivity/Tethering$DoScan;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$DoScan;->this$0:Lcom/android/server/connectivity/Tethering;

    # invokes: Lcom/android/server/connectivity/Tethering;->getUiContext()Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$700(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v9, v6, v7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 645
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$DoScan$1;->this$1:Lcom/android/server/connectivity/Tethering$DoScan;

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$DoScan;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$800(Lcom/android/server/connectivity/Tethering;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$DoScan$1;->this$1:Lcom/android/server/connectivity/Tethering$DoScan;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$DoScan;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$600(Lcom/android/server/connectivity/Tethering;)Landroid/app/Notification;

    move-result-object v1

    iget v1, v1, Landroid/app/Notification;->icon:I

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$DoScan$1;->this$1:Lcom/android/server/connectivity/Tethering$DoScan;

    iget-object v3, v3, Lcom/android/server/connectivity/Tethering$DoScan;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;
    invoke-static {v3}, Lcom/android/server/connectivity/Tethering;->access$600(Lcom/android/server/connectivity/Tethering;)Landroid/app/Notification;

    move-result-object v3

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v4, v1, v3, v5}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 648
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v6    # "message":Ljava/lang/CharSequence;
    .end local v7    # "pi":Landroid/app/PendingIntent;
    .end local v8    # "r":Landroid/content/res/Resources;
    .end local v9    # "title":Ljava/lang/CharSequence;
    :cond_1
    return-void
.end method
