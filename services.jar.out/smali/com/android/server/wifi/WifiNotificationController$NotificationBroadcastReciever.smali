.class Lcom/android/server/wifi/WifiNotificationController$NotificationBroadcastReciever;
.super Landroid/content/BroadcastReceiver;
.source "WifiNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiNotificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationBroadcastReciever"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiNotificationController;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/WifiNotificationController;)V
    .locals 0
    .parameter

    .prologue
    .line 286
    iput-object p1, p0, Lcom/android/server/wifi/WifiNotificationController$NotificationBroadcastReciever;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/WifiNotificationController;Lcom/android/server/wifi/WifiNotificationController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 286
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiNotificationController$NotificationBroadcastReciever;-><init>(Lcom/android/server/wifi/WifiNotificationController;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 289
    new-instance v0, Lcom/android/server/wifi/WifiNotificationController$NotificationBroadcastReciever$1;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiNotificationController$NotificationBroadcastReciever$1;-><init>(Lcom/android/server/wifi/WifiNotificationController$NotificationBroadcastReciever;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 296
    return-void
.end method
