.class Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;
.super Ljava/lang/Object;
.source "AnalyticsGmsCoreClient.java"

# interfaces
.implements Lcom/google/analytics/tracking/android/AnalyticsClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectionFailedListener;,
        Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectedListener;,
        Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$AnalyticsServiceConnection;
    }
.end annotation


# instance fields
.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mOnConnectedListener:Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectedListener;

.field private mOnConnectionFailedListener:Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectionFailedListener;

.field private mService:Lcom/google/android/gms/analytics/internal/IAnalyticsService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectedListener;Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectionFailedListener;)V
    .locals 2
    .parameter "context"
    .parameter "onConnectedListener"
    .parameter "onConnectionFailedListener"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->mContext:Landroid/content/Context;

    .line 59
    if-nez p2, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onConnectedListener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    iput-object p2, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->mOnConnectedListener:Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectedListener;

    .line 63
    if-nez p3, :cond_1

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onConnectionFailedListener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_1
    iput-object p3, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->mOnConnectionFailedListener:Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectionFailedListener;

    .line 67
    return-void
.end method

.method static synthetic access$002(Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;Lcom/google/android/gms/analytics/internal/IAnalyticsService;)Lcom/google/android/gms/analytics/internal/IAnalyticsService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->mService:Lcom/google/android/gms/analytics/internal/IAnalyticsService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->onServiceBound()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->mConnection:Landroid/content/ServiceConnection;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;)Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectionFailedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->mOnConnectionFailedListener:Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectionFailedListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;)Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->mOnConnectedListener:Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectedListener;

    return-object v0
.end method

.method private getService()Lcom/google/android/gms/analytics/internal/IAnalyticsService;
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->checkConnected()V

    .line 144
    iget-object v0, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->mService:Lcom/google/android/gms/analytics/internal/IAnalyticsService;

    return-object v0
.end method

.method private onConnectionSuccess()V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->mOnConnectedListener:Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectedListener;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectedListener;->onConnected()V

    .line 213
    return-void
.end method

.method private onServiceBound()V
    .locals 0

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->onConnectionSuccess()V

    .line 205
    return-void
.end method


# virtual methods
.method protected checkConnected()V
    .locals 2

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not connected. Call connect() and wait for onConnected() to be called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_0
    return-void
.end method

.method public clearHits()V
    .locals 3

    .prologue
    .line 137
    :try_start_0
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->getService()Lcom/google/android/gms/analytics/internal/IAnalyticsService;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/analytics/internal/IAnalyticsService;->clearHits()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_0
    return-void

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clear hits failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/analytics/tracking/android/Log;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public connect()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 75
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.google.android.gms.analytics.service.START"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 76
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "app_package_name"

    iget-object v3, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    iget-object v2, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v2, :cond_1

    .line 78
    const-string v2, "Calling connect() while still connected, missing disconnect()."

    invoke-static {v2}, Lcom/google/analytics/tracking/android/Log;->e(Ljava/lang/String;)I

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    new-instance v2, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$AnalyticsServiceConnection;

    invoke-direct {v2, p0}, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$AnalyticsServiceConnection;-><init>(Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;)V

    iput-object v2, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->mConnection:Landroid/content/ServiceConnection;

    .line 82
    iget-object v2, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->mConnection:Landroid/content/ServiceConnection;

    const/16 v4, 0x81

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 84
    .local v1, result:Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connect: bindService returned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/analytics/tracking/android/Log;->iDebug(Ljava/lang/String;)I

    .line 85
    if-nez v1, :cond_0

    .line 86
    iput-object v5, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->mConnection:Landroid/content/ServiceConnection;

    .line 87
    iget-object v2, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->mOnConnectionFailedListener:Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectionFailedListener;

    const/4 v3, 0x1

    invoke-interface {v2, v3, v5}, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectionFailedListener;->onConnectionFailed(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public disconnect()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 100
    iput-object v2, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->mService:Lcom/google/android/gms/analytics/internal/IAnalyticsService;

    .line 101
    iget-object v0, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_0
    iput-object v2, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->mConnection:Landroid/content/ServiceConnection;

    .line 120
    iget-object v0, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->mOnConnectedListener:Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectedListener;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectedListener;->onDisconnected()V

    .line 122
    :cond_0
    return-void

    .line 114
    :catch_0
    move-exception v0

    goto :goto_0

    .line 111
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->mService:Lcom/google/android/gms/analytics/internal/IAnalyticsService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendHit(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V
    .locals 7
    .parameter
    .parameter "hitTimeInMilliseconds"
    .parameter "path"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/analytics/internal/Command;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p1, wireParams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, commands:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gms/analytics/internal/Command;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->getService()Lcom/google/android/gms/analytics/internal/IAnalyticsService;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/analytics/internal/IAnalyticsService;->sendHit(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v6

    .line 130
    .local v6, e:Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendHit failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->e(Ljava/lang/String;)I

    goto :goto_0
.end method
