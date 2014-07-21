.class Lcom/google/analytics/tracking/android/GANetworkReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GANetworkReceiver.java"


# instance fields
.field private final mManager:Lcom/google/analytics/tracking/android/ServiceManager;


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/ServiceManager;)V
    .locals 0
    .parameter "manager"

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/google/analytics/tracking/android/GANetworkReceiver;->mManager:Lcom/google/analytics/tracking/android/ServiceManager;

    .line 25
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "ctx"
    .parameter "intent"

    .prologue
    .line 29
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 31
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 32
    .local v1, b:Landroid/os/Bundle;
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 33
    .local v2, notConnected:Ljava/lang/Boolean;
    if-eqz v1, :cond_0

    .line 34
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "noConnectivity"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 36
    :cond_0
    iget-object v4, p0, Lcom/google/analytics/tracking/android/GANetworkReceiver;->mManager:Lcom/google/analytics/tracking/android/ServiceManager;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    :goto_0
    invoke-interface {v4, v3}, Lcom/google/analytics/tracking/android/ServiceManager;->updateConnectivityStatus(Z)V

    .line 38
    .end local v1           #b:Landroid/os/Bundle;
    .end local v2           #notConnected:Ljava/lang/Boolean;
    :cond_1
    return-void

    .line 36
    .restart local v1       #b:Landroid/os/Bundle;
    .restart local v2       #notConnected:Ljava/lang/Boolean;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method
