.class Lcom/android/internal/telephony/SamsungCDMAv6RIL$ConnectivityHandler$ConnectivityBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SamsungCDMAv6RIL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SamsungCDMAv6RIL$ConnectivityHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectivityBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/telephony/SamsungCDMAv6RIL$ConnectivityHandler;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/SamsungCDMAv6RIL$ConnectivityHandler;)V
    .locals 0

    .prologue
    .line 988
    iput-object p1, p0, Lcom/android/internal/telephony/SamsungCDMAv6RIL$ConnectivityHandler$ConnectivityBroadcastReceiver;->this$1:Lcom/android/internal/telephony/SamsungCDMAv6RIL$ConnectivityHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/SamsungCDMAv6RIL$ConnectivityHandler;Lcom/android/internal/telephony/SamsungCDMAv6RIL$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/SamsungCDMAv6RIL$ConnectivityHandler;
    .param p2, "x1"    # Lcom/android/internal/telephony/SamsungCDMAv6RIL$1;

    .prologue
    .line 988
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SamsungCDMAv6RIL$ConnectivityHandler$ConnectivityBroadcastReceiver;-><init>(Lcom/android/internal/telephony/SamsungCDMAv6RIL$ConnectivityHandler;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 992
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 993
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 994
    const-string v2, "RILJ"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceived() called with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    :cond_0
    :goto_0
    return-void

    .line 997
    :cond_1
    const-string v2, "noConnectivity"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1000
    .local v1, "noConnectivity":Z
    if-eqz v1, :cond_0

    .line 1002
    const-string v2, "RILJ"

    const-string v3, "Mobile Dataconnection is now down setting preferred NetworkType"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    iget-object v2, p0, Lcom/android/internal/telephony/SamsungCDMAv6RIL$ConnectivityHandler$ConnectivityBroadcastReceiver;->this$1:Lcom/android/internal/telephony/SamsungCDMAv6RIL$ConnectivityHandler;

    # invokes: Lcom/android/internal/telephony/SamsungCDMAv6RIL$ConnectivityHandler;->stopListening()V
    invoke-static {v2}, Lcom/android/internal/telephony/SamsungCDMAv6RIL$ConnectivityHandler;->access$100(Lcom/android/internal/telephony/SamsungCDMAv6RIL$ConnectivityHandler;)V

    .line 1004
    iget-object v2, p0, Lcom/android/internal/telephony/SamsungCDMAv6RIL$ConnectivityHandler$ConnectivityBroadcastReceiver;->this$1:Lcom/android/internal/telephony/SamsungCDMAv6RIL$ConnectivityHandler;

    iget-object v2, v2, Lcom/android/internal/telephony/SamsungCDMAv6RIL$ConnectivityHandler;->this$0:Lcom/android/internal/telephony/SamsungCDMAv6RIL;

    iget-object v3, p0, Lcom/android/internal/telephony/SamsungCDMAv6RIL$ConnectivityHandler$ConnectivityBroadcastReceiver;->this$1:Lcom/android/internal/telephony/SamsungCDMAv6RIL$ConnectivityHandler;

    # getter for: Lcom/android/internal/telephony/SamsungCDMAv6RIL$ConnectivityHandler;->mDesiredNetworkType:I
    invoke-static {v3}, Lcom/android/internal/telephony/SamsungCDMAv6RIL$ConnectivityHandler;->access$200(Lcom/android/internal/telephony/SamsungCDMAv6RIL$ConnectivityHandler;)I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/telephony/SamsungCDMAv6RIL$ConnectivityHandler$ConnectivityBroadcastReceiver;->this$1:Lcom/android/internal/telephony/SamsungCDMAv6RIL$ConnectivityHandler;

    const/16 v5, 0x1e

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/SamsungCDMAv6RIL$ConnectivityHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    # invokes: Lcom/android/internal/telephony/SamsungCDMAv6RIL;->sendPreferredNetworkType(ILandroid/os/Message;)V
    invoke-static {v2, v3, v4}, Lcom/android/internal/telephony/SamsungCDMAv6RIL;->access$300(Lcom/android/internal/telephony/SamsungCDMAv6RIL;ILandroid/os/Message;)V

    .line 1005
    iget-object v2, p0, Lcom/android/internal/telephony/SamsungCDMAv6RIL$ConnectivityHandler$ConnectivityBroadcastReceiver;->this$1:Lcom/android/internal/telephony/SamsungCDMAv6RIL$ConnectivityHandler;

    const/4 v3, -0x1

    # setter for: Lcom/android/internal/telephony/SamsungCDMAv6RIL$ConnectivityHandler;->mDesiredNetworkType:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/SamsungCDMAv6RIL$ConnectivityHandler;->access$202(Lcom/android/internal/telephony/SamsungCDMAv6RIL$ConnectivityHandler;I)I

    goto :goto_0
.end method
