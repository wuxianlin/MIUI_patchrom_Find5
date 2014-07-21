.class final Lcom/android/settings_ex/bluetooth/MapProfile;
.super Ljava/lang/Object;
.source "MapProfile.java"

# interfaces
.implements Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/bluetooth/MapProfile$1;,
        Lcom/android/settings_ex/bluetooth/MapProfile$MapServiceListener;
    }
.end annotation


# static fields
.field static final UUIDS:[Landroid/os/ParcelUuid;

.field private static V:Z


# instance fields
.field private final mDeviceManager:Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;

.field private mIsProfileReady:Z

.field private final mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

.field private final mProfileManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;

.field private mService:Landroid/bluetooth/BluetoothMap;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 39
    sput-boolean v3, Lcom/android/settings_ex/bluetooth/MapProfile;->V:Z

    .line 48
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/os/ParcelUuid;

    const/4 v1, 0x0

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->MAP:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->MNS:Landroid/os/ParcelUuid;

    aput-object v1, v0, v3

    const/4 v1, 0x2

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->MAS:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings_ex/bluetooth/MapProfile;->UUIDS:[Landroid/os/ParcelUuid;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;)V
    .locals 3
    .parameter "context"
    .parameter "adapter"
    .parameter "deviceManager"
    .parameter "profileManager"

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p2, p0, Lcom/android/settings_ex/bluetooth/MapProfile;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    .line 100
    iput-object p3, p0, Lcom/android/settings_ex/bluetooth/MapProfile;->mDeviceManager:Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;

    .line 101
    iput-object p4, p0, Lcom/android/settings_ex/bluetooth/MapProfile;->mProfileManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;

    .line 102
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/MapProfile;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    new-instance v1, Lcom/android/settings_ex/bluetooth/MapProfile$MapServiceListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings_ex/bluetooth/MapProfile$MapServiceListener;-><init>(Lcom/android/settings_ex/bluetooth/MapProfile;Lcom/android/settings_ex/bluetooth/MapProfile$1;)V

    const/16 v2, 0x9

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)V

    .line 104
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 37
    sget-boolean v0, Lcom/android/settings_ex/bluetooth/MapProfile;->V:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/bluetooth/MapProfile;)Landroid/bluetooth/BluetoothMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings_ex/bluetooth/MapProfile;Landroid/bluetooth/BluetoothMap;)Landroid/bluetooth/BluetoothMap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings_ex/bluetooth/MapProfile;)Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/MapProfile;->mDeviceManager:Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/bluetooth/MapProfile;)Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/MapProfile;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/bluetooth/MapProfile;)Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/MapProfile;->mProfileManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/settings_ex/bluetooth/MapProfile;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/android/settings_ex/bluetooth/MapProfile;->mIsProfileReady:Z

    return p1
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .parameter "device"

    .prologue
    .line 115
    sget-boolean v0, Lcom/android/settings_ex/bluetooth/MapProfile;->V:Z

    if-eqz v0, :cond_0

    const-string v0, "MapProfile"

    const-string v1, "connect() - should not get called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .parameter "device"

    .prologue
    const/16 v3, 0x64

    const/4 v2, 0x0

    .line 120
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;

    if-nez v1, :cond_0

    move v1, v2

    .line 128
    :goto_0
    return v1

    .line 121
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothMap;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 122
    .local v0, deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 123
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothMap;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-le v1, v3, :cond_1

    .line 124
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;

    invoke-virtual {v1, p1, v3}, Landroid/bluetooth/BluetoothMap;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 126
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothMap;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    goto :goto_0

    :cond_2
    move v1, v2

    .line 128
    goto :goto_0
.end method

.method protected finalize()V
    .locals 4

    .prologue
    .line 202
    sget-boolean v1, Lcom/android/settings_ex/bluetooth/MapProfile;->V:Z

    if-eqz v1, :cond_0

    const-string v1, "MapProfile"

    const-string v2, "finalize()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;

    if-eqz v1, :cond_1

    .line 205
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 207
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :cond_1
    :goto_0
    return-void

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "MapProfile"

    const-string v2, "Error cleaning up MAP proxy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .locals 5
    .parameter "device"

    .prologue
    const/4 v2, 0x0

    .line 133
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;

    if-nez v1, :cond_0

    .line 137
    :goto_0
    return v2

    .line 134
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothMap;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 135
    .local v0, deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    sget-boolean v1, Lcom/android/settings_ex/bluetooth/MapProfile;->V:Z

    if-eqz v1, :cond_1

    const-string v1, "MapProfile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getConnectionStatus: status is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;

    invoke-virtual {v4, p1}, Landroid/bluetooth/BluetoothMap;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothMap;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public getDrawableResource(Landroid/bluetooth/BluetoothClass;)I
    .locals 1
    .parameter "btClass"

    .prologue
    .line 198
    const v0, 0x7f02005e

    return v0
.end method

.method public getNameResource(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .parameter "device"

    .prologue
    .line 180
    const v0, 0x7f0805aa

    return v0
.end method

.method public getOrdinal()I
    .locals 1

    .prologue
    .line 176
    const/16 v0, 0x9

    return v0
.end method

.method public getPreferred(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .parameter "device"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 149
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothMap;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    goto :goto_0
.end method

.method public getSummaryResourceForDevice(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .parameter "device"

    .prologue
    .line 184
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/bluetooth/MapProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 185
    .local v0, state:I
    packed-switch v0, :pswitch_data_0

    .line 193
    :pswitch_0
    invoke-static {v0}, Lcom/android/settings_ex/bluetooth/Utils;->getConnectionStateSummary(I)I

    move-result v1

    :goto_0
    return v1

    .line 187
    :pswitch_1
    const v1, 0x7f0805c3

    goto :goto_0

    .line 190
    :pswitch_2
    const v1, 0x7f0805b9

    goto :goto_0

    .line 185
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public isAutoConnectable()Z
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x1

    return v0
.end method

.method public isConnectable()Z
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x1

    return v0
.end method

.method public isPreferred(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .parameter "device"

    .prologue
    const/4 v0, 0x0

    .line 143
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;

    if-nez v1, :cond_1

    .line 144
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothMap;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isProfileReady()Z
    .locals 3

    .prologue
    .line 92
    sget-boolean v0, Lcom/android/settings_ex/bluetooth/MapProfile;->V:Z

    if-eqz v0, :cond_0

    const-string v0, "MapProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isProfileReady(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings_ex/bluetooth/MapProfile;->mIsProfileReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/MapProfile;->mIsProfileReady:Z

    return v0
.end method

.method public setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 2
    .parameter "device"
    .parameter "preferred"

    .prologue
    const/16 v1, 0x64

    .line 153
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;

    if-nez v0, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    if-eqz p2, :cond_2

    .line 155
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothMap;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothMap;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0

    .line 159
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothMap;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    const-string v0, "MAP"

    return-object v0
.end method
