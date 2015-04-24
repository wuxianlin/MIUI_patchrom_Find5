.class Lcom/android/server/wifi/WifiNotificationController$NotificationBroadcastReciever$1;
.super Ljava/lang/Object;
.source "WifiNotificationController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiNotificationController$NotificationBroadcastReciever;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/WifiNotificationController$NotificationBroadcastReciever;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiNotificationController$NotificationBroadcastReciever;)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lcom/android/server/wifi/WifiNotificationController$NotificationBroadcastReciever$1;->this$1:Lcom/android/server/wifi/WifiNotificationController$NotificationBroadcastReciever;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 291
    iget-object v1, p0, Lcom/android/server/wifi/WifiNotificationController$NotificationBroadcastReciever$1;->this$1:Lcom/android/server/wifi/WifiNotificationController$NotificationBroadcastReciever;

    iget-object v1, v1, Lcom/android/server/wifi/WifiNotificationController$NotificationBroadcastReciever;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # getter for: Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/wifi/WifiNotificationController;->access$600(Lcom/android/server/wifi/WifiNotificationController;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 293
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 294
    return-void
.end method
