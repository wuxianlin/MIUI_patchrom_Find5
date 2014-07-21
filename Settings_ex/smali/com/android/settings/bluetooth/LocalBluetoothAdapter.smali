.class public final Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
.super Ljava/lang/Object;
.source "LocalBluetoothAdapter.java"


# static fields
.field public static isPairing:Z

.field private static sInstance:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;


# instance fields
.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mLastScan:J

.field private mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->isPairing:Z

    return-void
.end method

.method private constructor <init>(Landroid/bluetooth/BluetoothAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mState:I

    .line 54
    iput-object p1, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 55
    return-void
.end method

.method static declared-synchronized getInstance()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
    .locals 3

    .prologue
    .line 68
    const-class v2, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->sInstance:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-nez v1, :cond_0

    .line 69
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 70
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    .line 71
    new-instance v1, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-direct {v1, v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;-><init>(Landroid/bluetooth/BluetoothAdapter;)V

    sput-object v1, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->sInstance:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    .line 75
    :cond_0
    sget-object v1, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->sInstance:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    .line 68
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method cancelDiscovery()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 82
    return-void
.end method

.method public checkPairingState()Z
    .locals 1

    .prologue
    .line 220
    sget-boolean v0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->isPairing:Z

    return v0
.end method

.method disable()Z
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->isPairing:Z

    .line 91
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    move-result v0

    return v0
.end method

.method enable()Z
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->isPairing:Z

    .line 86
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized getBluetoothState()I
    .locals 1

    .prologue
    .line 174
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->syncBluetoothState()Z

    .line 175
    iget v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getBondedDevices()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)V
    .locals 1
    .parameter "context"
    .parameter "listener"
    .parameter "profile"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1, p2, p3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 97
    return-void
.end method

.method getScanMode()I
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result v0

    return v0
.end method

.method getState()I
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    return v0
.end method

.method getUuids()[Landroid/os/ParcelUuid;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    return-object v0
.end method

.method isDiscovering()Z
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    return v0
.end method

.method isEnabled()Z
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public setBluetoothEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 201
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v0

    .line 204
    .local v0, success:Z
    :goto_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->isPairing:Z

    .line 205
    if-eqz v0, :cond_2

    .line 206
    if-eqz p1, :cond_1

    const/16 v1, 0xb

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->setBluetoothStateInt(I)V

    .line 217
    :goto_2
    return-void

    .line 201
    .end local v0           #success:Z
    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    move-result v0

    goto :goto_0

    .line 206
    .restart local v0       #success:Z
    :cond_1
    const/16 v1, 0xd

    goto :goto_1

    .line 215
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->syncBluetoothState()Z

    goto :goto_2
.end method

.method declared-synchronized setBluetoothStateInt(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 179
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mState:I

    .line 181
    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->setBluetoothStateOn()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    :cond_0
    monitor-exit p0

    return-void

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setName(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->setName(Ljava/lang/String;)Z

    .line 133
    return-void
.end method

.method public setPairingState(Z)V
    .locals 0
    .parameter "state"

    .prologue
    .line 224
    sput-boolean p1, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->isPairing:Z

    .line 225
    return-void
.end method

.method setProfileManager(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;)V
    .locals 0
    .parameter "manager"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    .line 59
    return-void
.end method

.method setScanMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    .line 137
    return-void
.end method

.method setScanMode(II)Z
    .locals 1
    .parameter "mode"
    .parameter "duration"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(II)Z

    move-result v0

    return v0
.end method

.method startScanning(Z)V
    .locals 5
    .parameter "force"

    .prologue
    .line 145
    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-nez v1, :cond_0

    .line 146
    if-nez p1, :cond_2

    .line 149
    iget-wide v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mLastScan:J

    const-wide/32 v3, 0x493e0

    add-long/2addr v1, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settings/bluetooth/A2dpProfile;

    move-result-object v0

    .line 155
    .local v0, a2dp:Lcom/android/settings/bluetooth/A2dpProfile;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/A2dpProfile;->isA2dpPlaying()Z

    move-result v1

    if-nez v1, :cond_0

    .line 160
    .end local v0           #a2dp:Lcom/android/settings/bluetooth/A2dpProfile;
    :cond_2
    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mLastScan:J

    goto :goto_0
.end method

.method stopScanning()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 170
    :cond_0
    return-void
.end method

.method syncBluetoothState()Z
    .locals 2

    .prologue
    .line 192
    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    .line 193
    .local v0, currentState:I
    iget v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mState:I

    if-eq v0, v1, :cond_0

    .line 194
    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->setBluetoothStateInt(I)V

    .line 195
    const/4 v1, 0x1

    .line 197
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
