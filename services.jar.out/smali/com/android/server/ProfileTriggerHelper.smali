.class public Lcom/android/server/ProfileTriggerHelper;
.super Landroid/content/BroadcastReceiver;
.source "ProfileTriggerHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ProfileTriggerHelper"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFilterRegistered:Z

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mLastConnectedSSID:Ljava/lang/String;

.field private mService:Lcom/android/server/ProfileManagerService;

.field private mSettingsObserver:Landroid/database/ContentObserver;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/ProfileManagerService;)V
    .locals 4
    .parameter "context"
    .parameter "service"

    .prologue
    const/4 v3, 0x0

    .line 54
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 45
    iput-boolean v3, p0, Lcom/android/server/ProfileTriggerHelper;->mFilterRegistered:Z

    .line 47
    new-instance v0, Lcom/android/server/ProfileTriggerHelper$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/ProfileTriggerHelper$1;-><init>(Lcom/android/server/ProfileTriggerHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/ProfileTriggerHelper;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 55
    iput-object p1, p0, Lcom/android/server/ProfileTriggerHelper;->mContext:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/android/server/ProfileTriggerHelper;->mService:Lcom/android/server/ProfileManagerService;

    .line 58
    iget-object v0, p0, Lcom/android/server/ProfileTriggerHelper;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/ProfileTriggerHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 59
    invoke-direct {p0}, Lcom/android/server/ProfileTriggerHelper;->getActiveSSID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ProfileTriggerHelper;->mLastConnectedSSID:Ljava/lang/String;

    .line 61
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/server/ProfileTriggerHelper;->mIntentFilter:Landroid/content/IntentFilter;

    .line 62
    iget-object v0, p0, Lcom/android/server/ProfileTriggerHelper;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/android/server/ProfileTriggerHelper;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/android/server/ProfileTriggerHelper;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lcom/android/server/ProfileTriggerHelper;->updateEnabled()V

    .line 67
    iget-object v0, p0, Lcom/android/server/ProfileTriggerHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "system_profiles_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ProfileTriggerHelper;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 70
    return-void
.end method

.method private checkTriggers(ILjava/lang/String;I)V
    .locals 5
    .parameter "type"
    .parameter "id"
    .parameter "newState"

    .prologue
    .line 112
    iget-object v3, p0, Lcom/android/server/ProfileTriggerHelper;->mService:Lcom/android/server/ProfileManagerService;

    invoke-virtual {v3}, Lcom/android/server/ProfileManagerService;->getProfileList()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Profile;

    .line 113
    .local v2, p:Landroid/app/Profile;
    invoke-virtual {v2, p1, p2}, Landroid/app/Profile;->getTrigger(ILjava/lang/String;)I

    move-result v3

    if-ne p3, v3, :cond_0

    .line 117
    iget-object v3, p0, Lcom/android/server/ProfileTriggerHelper;->mService:Lcom/android/server/ProfileManagerService;

    invoke-virtual {v3}, Lcom/android/server/ProfileManagerService;->getActiveProfile()Landroid/app/Profile;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v0

    .line 118
    .local v0, currentProfileUuid:Ljava/util/UUID;
    invoke-virtual {v2}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 119
    iget-object v3, p0, Lcom/android/server/ProfileTriggerHelper;->mService:Lcom/android/server/ProfileManagerService;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lcom/android/server/ProfileManagerService;->setActiveProfile(Landroid/app/Profile;Z)V

    goto :goto_0

    .line 122
    .end local v0           #currentProfileUuid:Ljava/util/UUID;
    .end local v2           #p:Landroid/app/Profile;
    :cond_1
    return-void
.end method

.method private getActiveSSID()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 125
    iget-object v3, p0, Lcom/android/server/ProfileTriggerHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 126
    .local v1, wifiinfo:Landroid/net/wifi/WifiInfo;
    if-nez v1, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-object v2

    .line 129
    :cond_1
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getWifiSsid()Landroid/net/wifi/WifiSsid;

    move-result-object v0

    .line 130
    .local v0, ssid:Landroid/net/wifi/WifiSsid;
    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v0}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 88
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, action:Ljava/lang/String;
    const-string v6, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 91
    invoke-direct {p0}, Lcom/android/server/ProfileTriggerHelper;->getActiveSSID()Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, activeSSID:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 95
    const/4 v3, 0x0

    .line 96
    .local v3, triggerState:I
    iput-object v1, p0, Lcom/android/server/ProfileTriggerHelper;->mLastConnectedSSID:Ljava/lang/String;

    .line 100
    :goto_0
    iget-object v5, p0, Lcom/android/server/ProfileTriggerHelper;->mLastConnectedSSID:Ljava/lang/String;

    invoke-direct {p0, v4, v5, v3}, Lcom/android/server/ProfileTriggerHelper;->checkTriggers(ILjava/lang/String;I)V

    .line 109
    .end local v1           #activeSSID:Ljava/lang/String;
    .end local v3           #triggerState:I
    :cond_0
    :goto_1
    return-void

    .line 98
    .restart local v1       #activeSSID:Ljava/lang/String;
    :cond_1
    const/4 v3, 0x1

    .restart local v3       #triggerState:I
    goto :goto_0

    .line 101
    .end local v1           #activeSSID:Ljava/lang/String;
    .end local v3           #triggerState:I
    :cond_2
    const-string v6, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 103
    :cond_3
    const-string v6, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v3, v4

    .line 105
    .restart local v3       #triggerState:I
    :goto_2
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 107
    .local v2, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v5, v4, v3}, Lcom/android/server/ProfileTriggerHelper;->checkTriggers(ILjava/lang/String;I)V

    goto :goto_1

    .end local v2           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v3           #triggerState:I
    :cond_4
    move v3, v5

    .line 103
    goto :goto_2
.end method

.method public updateEnabled()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 73
    iget-object v3, p0, Lcom/android/server/ProfileTriggerHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "system_profiles_enabled"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    move v0, v1

    .line 75
    .local v0, enabled:Z
    :goto_0
    if-eqz v0, :cond_2

    iget-boolean v3, p0, Lcom/android/server/ProfileTriggerHelper;->mFilterRegistered:Z

    if-nez v3, :cond_2

    .line 76
    const-string v2, "ProfileTriggerHelper"

    const-string v3, "Enabling"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v2, p0, Lcom/android/server/ProfileTriggerHelper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/ProfileTriggerHelper;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v2, p0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 78
    iput-boolean v1, p0, Lcom/android/server/ProfileTriggerHelper;->mFilterRegistered:Z

    .line 84
    :cond_0
    :goto_1
    return-void

    .end local v0           #enabled:Z
    :cond_1
    move v0, v2

    .line 73
    goto :goto_0

    .line 79
    .restart local v0       #enabled:Z
    :cond_2
    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/android/server/ProfileTriggerHelper;->mFilterRegistered:Z

    if-eqz v1, :cond_0

    .line 80
    const-string v1, "ProfileTriggerHelper"

    const-string v3, "Disabling"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v1, p0, Lcom/android/server/ProfileTriggerHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 82
    iput-boolean v2, p0, Lcom/android/server/ProfileTriggerHelper;->mFilterRegistered:Z

    goto :goto_1
.end method
