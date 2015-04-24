.class Lcom/android/server/connectivity/Tethering$WifiClientScanner;
.super Landroid/os/Handler;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiClientScanner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/Tethering;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/Tethering;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 594
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$WifiClientScanner;->this$0:Lcom/android/server/connectivity/Tethering;

    .line 595
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 596
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 600
    new-instance v0, Lcom/android/server/connectivity/Tethering$DoScan;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$WifiClientScanner;->this$0:Lcom/android/server/connectivity/Tethering;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/connectivity/Tethering$DoScan;-><init>(Lcom/android/server/connectivity/Tethering;Lcom/android/server/connectivity/Tethering$1;)V

    .line 601
    .local v0, "doScan":Lcom/android/server/connectivity/Tethering$DoScan;
    new-array v1, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/Tethering$DoScan;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 602
    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v3, v1, v2}, Lcom/android/server/connectivity/Tethering$WifiClientScanner;->sendEmptyMessageDelayed(IJ)Z

    .line 603
    return-void
.end method
