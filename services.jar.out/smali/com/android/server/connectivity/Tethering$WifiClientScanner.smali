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
    .parameter
    .parameter "looper"

    .prologue
    .line 589
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$WifiClientScanner;->this$0:Lcom/android/server/connectivity/Tethering;

    .line 590
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 591
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    .line 595
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$WifiClientScanner;->this$0:Lcom/android/server/connectivity/Tethering;

    new-instance v1, Lcom/android/server/connectivity/Tethering$DoScan;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$WifiClientScanner;->this$0:Lcom/android/server/connectivity/Tethering;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/server/connectivity/Tethering$DoScan;-><init>(Lcom/android/server/connectivity/Tethering;Lcom/android/server/connectivity/Tethering$1;)V

    #setter for: Lcom/android/server/connectivity/Tethering;->mDoScan:Lcom/android/server/connectivity/Tethering$DoScan;
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->access$202(Lcom/android/server/connectivity/Tethering;Lcom/android/server/connectivity/Tethering$DoScan;)Lcom/android/server/connectivity/Tethering$DoScan;

    .line 596
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$WifiClientScanner;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mDoScan:Lcom/android/server/connectivity/Tethering$DoScan;
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/Tethering$DoScan;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/Tethering$DoScan;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 597
    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/connectivity/Tethering$WifiClientScanner;->sendEmptyMessageDelayed(IJ)Z

    .line 598
    return-void
.end method
