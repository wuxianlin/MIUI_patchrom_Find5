.class final Lcom/android/settings_ex/bluetooth/DunServerProfile;
.super Ljava/lang/Object;
.source "DunServerProfile.java"

# interfaces
.implements Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/bluetooth/DunServerProfile$1;,
        Lcom/android/settings_ex/bluetooth/DunServerProfile$DunServiceListener;
    }
.end annotation


# static fields
.field private static V:Z


# instance fields
.field private mIsProfileReady:Z

.field private mService:Landroid/bluetooth/BluetoothDun;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings_ex/bluetooth/DunServerProfile;->V:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 81
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    new-instance v1, Lcom/android/settings_ex/bluetooth/DunServerProfile$DunServiceListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings_ex/bluetooth/DunServerProfile$DunServiceListener;-><init>(Lcom/android/settings_ex/bluetooth/DunServerProfile;Lcom/android/settings_ex/bluetooth/DunServerProfile$1;)V

    const/16 v2, 0x15

    invoke-virtual {v0, p1, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 83
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 47
    sget-boolean v0, Lcom/android/settings_ex/bluetooth/DunServerProfile;->V:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/settings_ex/bluetooth/DunServerProfile;Landroid/bluetooth/BluetoothDun;)Landroid/bluetooth/BluetoothDun;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/DunServerProfile;->mService:Landroid/bluetooth/BluetoothDun;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/settings_ex/bluetooth/DunServerProfile;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/settings_ex/bluetooth/DunServerProfile;->mIsProfileReady:Z

    return p1
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "device"

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "device"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DunServerProfile;->mService:Landroid/bluetooth/BluetoothDun;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 99
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DunServerProfile;->mService:Landroid/bluetooth/BluetoothDun;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDun;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 4

    .prologue
    .line 151
    sget-boolean v1, Lcom/android/settings_ex/bluetooth/DunServerProfile;->V:Z

    if-eqz v1, :cond_0

    const-string v1, "DunServerProfile"

    const-string v2, "finalize()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DunServerProfile;->mService:Landroid/bluetooth/BluetoothDun;

    if-eqz v1, :cond_1

    .line 154
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    const/16 v2, 0x15

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DunServerProfile;->mService:Landroid/bluetooth/BluetoothDun;

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 156
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/DunServerProfile;->mService:Landroid/bluetooth/BluetoothDun;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :cond_1
    :goto_0
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "DunServerProfile"

    const-string v2, "Error cleaning up DUN proxy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .parameter "device"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DunServerProfile;->mService:Landroid/bluetooth/BluetoothDun;

    if-nez v0, :cond_0

    .line 104
    const/4 v0, 0x0

    .line 106
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DunServerProfile;->mService:Landroid/bluetooth/BluetoothDun;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDun;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    goto :goto_0
.end method

.method public getDrawableResource(Landroid/bluetooth/BluetoothClass;)I
    .locals 1
    .parameter "btClass"

    .prologue
    .line 147
    const v0, 0x7f020066

    return v0
.end method

.method public getNameResource(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .parameter "device"

    .prologue
    .line 130
    const v0, 0x7f080060

    return v0
.end method

.method public getOrdinal()I
    .locals 1

    .prologue
    .line 126
    const/16 v0, 0xb

    return v0
.end method

.method public getPreferred(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .parameter "device"

    .prologue
    .line 114
    const/4 v0, -0x1

    return v0
.end method

.method public getSummaryResourceForDevice(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .parameter "device"

    .prologue
    .line 134
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/bluetooth/DunServerProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 135
    .local v0, state:I
    packed-switch v0, :pswitch_data_0

    .line 142
    :pswitch_0
    invoke-static {v0}, Lcom/android/settings_ex/bluetooth/Utils;->getConnectionStateSummary(I)I

    move-result v1

    :goto_0
    return v1

    .line 137
    :pswitch_1
    const v1, 0x7f080064

    goto :goto_0

    .line 140
    :pswitch_2
    const v1, 0x7f080062

    goto :goto_0

    .line 135
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
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public isConnectable()Z
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x1

    return v0
.end method

.method public isPreferred(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "device"

    .prologue
    .line 110
    const/4 v0, 0x1

    return v0
.end method

.method public isProfileReady()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/DunServerProfile;->mIsProfileReady:Z

    return v0
.end method

.method public setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 0
    .parameter "device"
    .parameter "preferred"

    .prologue
    .line 119
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    const-string v0, "DUN Server"

    return-object v0
.end method
