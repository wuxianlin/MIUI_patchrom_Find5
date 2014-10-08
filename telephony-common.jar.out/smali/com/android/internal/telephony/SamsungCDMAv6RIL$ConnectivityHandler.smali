.class Lcom/android/internal/telephony/SamsungCDMAv6RIL$ConnectivityHandler;
.super Landroid/os/Handler;
.source "SamsungCDMAv6RIL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SamsungCDMAv6RIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectivityHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SamsungCDMAv6RIL$ConnectivityHandler$ConnectivityBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final MESSAGE_SET_PREFERRED_NETWORK_TYPE:I = 0x1e


# instance fields
.field private mConnectivityReceiver:Lcom/android/internal/telephony/SamsungCDMAv6RIL$ConnectivityHandler$ConnectivityBroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDesiredNetworkType:I

.field private mNetworktypeResponse:Landroid/os/Message;

.field final synthetic this$0:Lcom/android/internal/telephony/SamsungCDMAv6RIL;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/SamsungCDMAv6RIL;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    .line 941
    iput-object p1, p0, Lcom/android/internal/telephony/SamsungCDMAv6RIL$ConnectivityHandler;->this$0:Lcom/android/internal/telephony/SamsungCDMAv6RIL;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 938
    new-instance v0, Lcom/android/internal/telephony/SamsungCDMAv6RIL$ConnectivityHandler$ConnectivityBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/SamsungCDMAv6RIL$ConnectivityHandler$ConnectivityBroadcastReceiver;-><init>(Lcom/android/internal/telephony/SamsungCDMAv6RIL$ConnectivityHandler;Lcom/android/internal/telephony/SamsungCDMAv6RIL$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SamsungCDMAv6RIL$ConnectivityHandler;->mConnectivityReceiver:Lcom/android/internal/telephony/SamsungCDMAv6RIL$ConnectivityHandler$ConnectivityBroadcastReceiver;

    .line 942
    iput-object p2, p0, Lcom/android/internal/telephony/SamsungCDMAv6RIL$ConnectivityHandler;->mContext:Landroid/content/Context;

    .line 943
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/SamsungCDMAv6RIL$ConnectivityHandler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 931
    invoke-direct {p0}, Lcom/android/internal/telephony/SamsungCDMAv6RIL$ConnectivityHandler;->stopListening()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/SamsungCDMAv6RIL$ConnectivityHandler;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 931
    iget v0, p0, Lcom/android/internal/telephony/SamsungCDMAv6RIL$ConnectivityHandler;->mDesiredNetworkType:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/SamsungCDMAv6RIL$ConnectivityHandler;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 931
    iput p1, p0, Lcom/android/internal/telephony/SamsungCDMAv6RIL$ConnectivityHandler;->mDesiredNetworkType:I

    return p1
.end method

.method private startListening()V
    .locals 3

    .prologue
    .line 946
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 947
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 948
    iget-object v1, p0, Lcom/android/internal/telephony/SamsungCDMAv6RIL$ConnectivityHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/SamsungCDMAv6RIL$ConnectivityHandler;->mConnectivityReceiver:Lcom/android/internal/telephony/SamsungCDMAv6RIL$ConnectivityHandler$ConnectivityBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 949
    return-void
.end method

.method private declared-synchronized stopListening()V
    .locals 2

    .prologue
    .line 952
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SamsungCDMAv6RIL$ConnectivityHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/SamsungCDMAv6RIL$ConnectivityHandler;->mConnectivityReceiver:Lcom/android/internal/telephony/SamsungCDMAv6RIL$ConnectivityHandler$ConnectivityBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 953
    monitor-exit p0

    return-void

    .line 952
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 969
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 984
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "unexpected event not handled"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 972
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/SamsungCDMAv6RIL$ConnectivityHandler;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 975
    .local v0, cm:Landroid/net/ConnectivityManager;
    const-string v1, "RILJ"

    const-string v2, "preferred NetworkType set upping Mobile Dataconnection"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 979
    iget-object v1, p0, Lcom/android/internal/telephony/SamsungCDMAv6RIL$ConnectivityHandler;->mNetworktypeResponse:Landroid/os/Message;

    invoke-static {v1, v3, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 980
    iget-object v1, p0, Lcom/android/internal/telephony/SamsungCDMAv6RIL$ConnectivityHandler;->mNetworktypeResponse:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 981
    iput-object v3, p0, Lcom/android/internal/telephony/SamsungCDMAv6RIL$ConnectivityHandler;->mNetworktypeResponse:Landroid/os/Message;

    .line 986
    return-void

    .line 969
    :pswitch_data_0
    .packed-switch 0x1e
        :pswitch_0
    .end packed-switch
.end method

.method public setPreferedNetworkType(ILandroid/os/Message;)V
    .locals 3
    .parameter "networkType"
    .parameter "response"

    .prologue
    .line 957
    const-string v1, "RILJ"

    const-string v2, "Mobile Dataconnection is online setting it down"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    iput p1, p0, Lcom/android/internal/telephony/SamsungCDMAv6RIL$ConnectivityHandler;->mDesiredNetworkType:I

    .line 959
    iput-object p2, p0, Lcom/android/internal/telephony/SamsungCDMAv6RIL$ConnectivityHandler;->mNetworktypeResponse:Landroid/os/Message;

    .line 960
    iget-object v1, p0, Lcom/android/internal/telephony/SamsungCDMAv6RIL$ConnectivityHandler;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 963
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-direct {p0}, Lcom/android/internal/telephony/SamsungCDMAv6RIL$ConnectivityHandler;->startListening()V

    .line 964
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 965
    return-void
.end method
