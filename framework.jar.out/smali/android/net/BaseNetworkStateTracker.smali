.class public abstract Landroid/net/BaseNetworkStateTracker;
.super Ljava/lang/Object;
.source "BaseNetworkStateTracker.java"

# interfaces
.implements Landroid/net/NetworkStateTracker;


# static fields
.field public static final PROP_TCP_BUFFER_UNKNOWN:Ljava/lang/String; = "net.tcp.buffersize.unknown"

.field public static final PROP_TCP_BUFFER_WIFI:Ljava/lang/String; = "net.tcp.buffersize.wifi"

.field public static final PROP_TCP_DELACK_DEFAULT:Ljava/lang/String; = "net.tcp.delack.default"

.field public static final PROP_TCP_DELACK_LTE:Ljava/lang/String; = "net.tcp.delack.lte"

.field public static final PROP_TCP_DELACK_WIFI:Ljava/lang/String; = "net.tcp.delack.wifi"

.field public static final PROP_TCP_USERCFG_DEFAULT:Ljava/lang/String; = "net.tcp.usercfg.default"

.field public static final PROP_TCP_USERCFG_LTE:Ljava/lang/String; = "net.tcp.usercfg.lte"

.field public static final PROP_TCP_USERCFG_WIFI:Ljava/lang/String; = "net.tcp.usercfg.wifi"


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected mLinkCapabilities:Landroid/net/LinkCapabilities;

.field protected mLinkProperties:Landroid/net/LinkProperties;

.field protected mNetworkInfo:Landroid/net/NetworkInfo;

.field private mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mTarget:Landroid/os/Handler;

.field private mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 56
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 57
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 68
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4
    .parameter "networkType"

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 56
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 57
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 60
    new-instance v0, Landroid/net/NetworkInfo;

    const/4 v1, -0x1

    invoke-static {p1}, Landroid/net/ConnectivityManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 62
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    iput-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    .line 63
    new-instance v0, Landroid/net/LinkCapabilities;

    invoke-direct {v0}, Landroid/net/LinkCapabilities;-><init>()V

    iput-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    .line 64
    return-void
.end method


# virtual methods
.method public addStackedLink(Landroid/net/LinkProperties;)V
    .locals 1
    .parameter "link"

    .prologue
    .line 184
    iget-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, p1}, Landroid/net/LinkProperties;->addStackedLink(Landroid/net/LinkProperties;)Z

    .line 185
    return-void
.end method

.method public captivePortalCheckComplete()V
    .locals 0

    .prologue
    .line 119
    return-void
.end method

.method public captivePortalCheckCompleted(Z)V
    .locals 0
    .parameter "isCaptivePortal"

    .prologue
    .line 124
    return-void
.end method

.method public defaultRouteSet(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 164
    iget-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 165
    return-void
.end method

.method protected final dispatchConfigurationChanged()V
    .locals 3

    .prologue
    .line 82
    iget-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mTarget:Landroid/os/Handler;

    const v1, 0x70001

    invoke-virtual {p0}, Landroid/net/BaseNetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 83
    return-void
.end method

.method protected final dispatchStateChanged()V
    .locals 3

    .prologue
    .line 77
    iget-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mTarget:Landroid/os/Handler;

    const/high16 v1, 0x7

    invoke-virtual {p0}, Landroid/net/BaseNetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 78
    return-void
.end method

.method public getDefaultTcpDelayedAckPropName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    const-string/jumbo v0, "net.tcp.delack.default"

    return-object v0
.end method

.method public getDefaultTcpUserConfigPropName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    const-string/jumbo v0, "net.tcp.usercfg.default"

    return-object v0
.end method

.method public getLinkCapabilities()Landroid/net/LinkCapabilities;
    .locals 2

    .prologue
    .line 108
    new-instance v0, Landroid/net/LinkCapabilities;

    iget-object v1, p0, Landroid/net/BaseNetworkStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    invoke-direct {v0, v1}, Landroid/net/LinkCapabilities;-><init>(Landroid/net/LinkCapabilities;)V

    return-object v0
.end method

.method public getLinkProperties()Landroid/net/LinkProperties;
    .locals 2

    .prologue
    .line 103
    new-instance v0, Landroid/net/LinkProperties;

    iget-object v1, p0, Landroid/net/BaseNetworkStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    return-object v0
.end method

.method public getLinkQualityInfo()Landroid/net/LinkQualityInfo;
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .locals 2

    .prologue
    .line 98
    new-instance v0, Landroid/net/NetworkInfo;

    iget-object v1, p0, Landroid/net/BaseNetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v0, v1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    return-object v0
.end method

.method public getNetworkInterfaceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 202
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getTargetHandler()Landroid/os/Handler;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mTarget:Landroid/os/Handler;

    return-object v0
.end method

.method public getTcpDelayedAckPropName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    const-string/jumbo v0, "net.tcp.delack.default"

    return-object v0
.end method

.method public getTcpUserConfigPropName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    const-string/jumbo v0, "net.tcp.usercfg.default"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public isDefaultRouteSet()Z
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isPrivateDnsRouteSet()Z
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isTeardownRequested()Z
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public privateDnsRouteSet(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 154
    iget-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 155
    return-void
.end method

.method public removeStackedLink(Landroid/net/LinkProperties;)V
    .locals 1
    .parameter "link"

    .prologue
    .line 189
    iget-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, p1}, Landroid/net/LinkProperties;->removeStackedLink(Landroid/net/LinkProperties;)Z

    .line 190
    return-void
.end method

.method public setDependencyMet(Z)V
    .locals 0
    .parameter "met"

    .prologue
    .line 180
    return-void
.end method

.method public setPolicyDataEnable(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 145
    return-void
.end method

.method public setRadio(Z)Z
    .locals 1
    .parameter "turnOn"

    .prologue
    .line 129
    const/4 v0, 0x1

    return v0
.end method

.method public setTeardownRequested(Z)V
    .locals 1
    .parameter "isRequested"

    .prologue
    .line 174
    iget-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 175
    return-void
.end method

.method public setUserDataEnable(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 140
    return-void
.end method

.method public startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .parameter "context"
    .parameter "target"

    .prologue
    .line 87
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mContext:Landroid/content/Context;

    .line 88
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    iput-object v0, p0, Landroid/net/BaseNetworkStateTracker;->mTarget:Landroid/os/Handler;

    .line 89
    invoke-virtual {p0}, Landroid/net/BaseNetworkStateTracker;->startMonitoringInternal()V

    .line 90
    return-void
.end method

.method protected startMonitoringInternal()V
    .locals 0

    .prologue
    .line 94
    return-void
.end method

.method public startSampling(Landroid/net/SamplingDataTracker$SamplingSnapshot;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 209
    return-void
.end method

.method public stopSampling(Landroid/net/SamplingDataTracker$SamplingSnapshot;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 214
    return-void
.end method

.method public supplyMessenger(Landroid/os/Messenger;)V
    .locals 0
    .parameter "messenger"

    .prologue
    .line 195
    return-void
.end method
