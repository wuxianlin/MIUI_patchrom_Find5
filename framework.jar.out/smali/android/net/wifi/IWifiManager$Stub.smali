.class public abstract Landroid/net/wifi/IWifiManager$Stub;
.super Landroid/os/Binder;
.source "IWifiManager.java"

# interfaces
.implements Landroid/net/wifi/IWifiManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/IWifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/IWifiManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.IWifiManager"

.field static final TRANSACTION_acquireMulticastLock:I = 0x1e

.field static final TRANSACTION_acquireWifiLock:I = 0x19

.field static final TRANSACTION_addOrUpdateNetwork:I = 0x2

.field static final TRANSACTION_addToBlacklist:I = 0x26

.field static final TRANSACTION_captivePortalCheckComplete:I = 0x2b

.field static final TRANSACTION_clearBlacklist:I = 0x27

.field static final TRANSACTION_disableNetwork:I = 0x5

.field static final TRANSACTION_disconnect:I = 0x9

.field static final TRANSACTION_enableNetwork:I = 0x4

.field static final TRANSACTION_enableTdls:I = 0x2c

.field static final TRANSACTION_enableTdlsWithMacAddress:I = 0x2d

.field static final TRANSACTION_getBatchedScanResults:I = 0x30

.field static final TRANSACTION_getConfigFile:I = 0x2a

.field static final TRANSACTION_getConfiguredNetworks:I = 0x1

.field static final TRANSACTION_getConnectionInfo:I = 0xc

.field static final TRANSACTION_getCountryCode:I = 0x10

.field static final TRANSACTION_getDhcpInfo:I = 0x17

.field static final TRANSACTION_getFrequencyBand:I = 0x12

.field static final TRANSACTION_getScanResults:I = 0x8

.field static final TRANSACTION_getSupportedChannels:I = 0x15

.field static final TRANSACTION_getWifiApConfiguration:I = 0x22

.field static final TRANSACTION_getWifiApEnabledState:I = 0x21

.field static final TRANSACTION_getWifiEnabledState:I = 0xe

.field static final TRANSACTION_getWifiServiceMessenger:I = 0x28

.field static final TRANSACTION_getWifiStateMachineMessenger:I = 0x29

.field static final TRANSACTION_initializeMulticastFiltering:I = 0x1c

.field static final TRANSACTION_isBatchedScanSupported:I = 0x31

.field static final TRANSACTION_isDualBandSupported:I = 0x13

.field static final TRANSACTION_isIbssSupported:I = 0x14

.field static final TRANSACTION_isMulticastEnabled:I = 0x1d

.field static final TRANSACTION_isScanAlwaysAvailable:I = 0x18

.field static final TRANSACTION_pingSupplicant:I = 0x6

.field static final TRANSACTION_pollBatchedScan:I = 0x32

.field static final TRANSACTION_reassociate:I = 0xb

.field static final TRANSACTION_reconnect:I = 0xa

.field static final TRANSACTION_releaseMulticastLock:I = 0x1f

.field static final TRANSACTION_releaseWifiLock:I = 0x1b

.field static final TRANSACTION_removeNetwork:I = 0x3

.field static final TRANSACTION_requestBatchedScan:I = 0x2e

.field static final TRANSACTION_saveConfiguration:I = 0x16

.field static final TRANSACTION_setCountryCode:I = 0xf

.field static final TRANSACTION_setFrequencyBand:I = 0x11

.field static final TRANSACTION_setWifiApConfiguration:I = 0x23

.field static final TRANSACTION_setWifiApEnabled:I = 0x20

.field static final TRANSACTION_setWifiEnabled:I = 0xd

.field static final TRANSACTION_startScan:I = 0x7

.field static final TRANSACTION_startWifi:I = 0x24

.field static final TRANSACTION_stopBatchedScan:I = 0x2f

.field static final TRANSACTION_stopWifi:I = 0x25

.field static final TRANSACTION_updateWifiLockWorkSource:I = 0x1a


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.net.wifi.IWifiManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;
    .locals 2
    .parameter "obj"

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const-string v1, "android.net.wifi.IWifiManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/wifi/IWifiManager;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/net/wifi/IWifiManager;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Landroid/net/wifi/IWifiManager$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/net/wifi/IWifiManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 575
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    :goto_0
    return v9

    .line 47
    :sswitch_0
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v9, 0x1

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v8

    .line 54
    .local v8, _result:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 56
    const/4 v9, 0x1

    goto :goto_0

    .line 60
    .end local v8           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :sswitch_2
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_0

    .line 63
    sget-object v9, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 68
    .local v0, _arg0:Landroid/net/wifi/WifiConfiguration;
    :goto_1
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v4

    .line 69
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    const/4 v9, 0x1

    goto :goto_0

    .line 66
    .end local v0           #_arg0:Landroid/net/wifi/WifiConfiguration;
    .end local v4           #_result:I
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/net/wifi/WifiConfiguration;
    goto :goto_1

    .line 75
    .end local v0           #_arg0:Landroid/net/wifi/WifiConfiguration;
    :sswitch_3
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 78
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->removeNetwork(I)Z

    move-result v4

    .line 79
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    if-eqz v4, :cond_1

    const/4 v9, 0x1

    :goto_2
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    const/4 v9, 0x1

    goto :goto_0

    .line 80
    :cond_1
    const/4 v9, 0x0

    goto :goto_2

    .line 85
    .end local v0           #_arg0:I
    .end local v4           #_result:Z
    :sswitch_4
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 89
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_2

    const/4 v1, 0x1

    .line 90
    .local v1, _arg1:Z
    :goto_3
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->enableNetwork(IZ)Z

    move-result v4

    .line 91
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    if-eqz v4, :cond_3

    const/4 v9, 0x1

    :goto_4
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    const/4 v9, 0x1

    goto :goto_0

    .line 89
    .end local v1           #_arg1:Z
    .end local v4           #_result:Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_3

    .line 92
    .restart local v1       #_arg1:Z
    .restart local v4       #_result:Z
    :cond_3
    const/4 v9, 0x0

    goto :goto_4

    .line 97
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Z
    .end local v4           #_result:Z
    :sswitch_5
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 100
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->disableNetwork(I)Z

    move-result v4

    .line 101
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    if-eqz v4, :cond_4

    const/4 v9, 0x1

    :goto_5
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 102
    :cond_4
    const/4 v9, 0x0

    goto :goto_5

    .line 107
    .end local v0           #_arg0:I
    .end local v4           #_result:Z
    :sswitch_6
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->pingSupplicant()Z

    move-result v4

    .line 109
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    if-eqz v4, :cond_5

    const/4 v9, 0x1

    :goto_6
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 110
    :cond_5
    const/4 v9, 0x0

    goto :goto_6

    .line 115
    .end local v4           #_result:Z
    :sswitch_7
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_6

    .line 118
    sget-object v9, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource;

    .line 123
    .local v0, _arg0:Landroid/os/WorkSource;
    :goto_7
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->startScan(Landroid/os/WorkSource;)V

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 121
    .end local v0           #_arg0:Landroid/os/WorkSource;
    :cond_6
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/os/WorkSource;
    goto :goto_7

    .line 129
    .end local v0           #_arg0:Landroid/os/WorkSource;
    :sswitch_8
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->getScanResults(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 133
    .local v6, _result:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 135
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 139
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :sswitch_9
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->disconnect()V

    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 146
    :sswitch_a
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->reconnect()V

    .line 148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 153
    :sswitch_b
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->reassociate()V

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 160
    :sswitch_c
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 162
    .local v4, _result:Landroid/net/wifi/WifiInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    if-eqz v4, :cond_7

    .line 164
    const/4 v9, 0x1

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    const/4 v9, 0x1

    invoke-virtual {v4, p3, v9}, Landroid/net/wifi/WifiInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 170
    :goto_8
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 168
    :cond_7
    const/4 v9, 0x0

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 174
    .end local v4           #_result:Landroid/net/wifi/WifiInfo;
    :sswitch_d
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 178
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_8

    const/4 v1, 0x1

    .line 179
    .restart local v1       #_arg1:Z
    :goto_9
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->setWifiEnabled(Ljava/lang/String;Z)Z

    move-result v4

    .line 180
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    if-eqz v4, :cond_9

    const/4 v9, 0x1

    :goto_a
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 178
    .end local v1           #_arg1:Z
    .end local v4           #_result:Z
    :cond_8
    const/4 v1, 0x0

    goto :goto_9

    .line 181
    .restart local v1       #_arg1:Z
    .restart local v4       #_result:Z
    :cond_9
    const/4 v9, 0x0

    goto :goto_a

    .line 186
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Z
    .end local v4           #_result:Z
    :sswitch_e
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiEnabledState()I

    move-result v4

    .line 188
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 194
    .end local v4           #_result:I
    :sswitch_f
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 198
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_a

    const/4 v1, 0x1

    .line 199
    .restart local v1       #_arg1:Z
    :goto_b
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->setCountryCode(Ljava/lang/String;Z)V

    .line 200
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 198
    .end local v1           #_arg1:Z
    :cond_a
    const/4 v1, 0x0

    goto :goto_b

    .line 205
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_10
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getCountryCode()Ljava/lang/String;

    move-result-object v4

    .line 207
    .local v4, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 209
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 213
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_11
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 217
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_b

    const/4 v1, 0x1

    .line 218
    .restart local v1       #_arg1:Z
    :goto_c
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->setFrequencyBand(IZ)V

    .line 219
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 217
    .end local v1           #_arg1:Z
    :cond_b
    const/4 v1, 0x0

    goto :goto_c

    .line 224
    .end local v0           #_arg0:I
    :sswitch_12
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getFrequencyBand()I

    move-result v4

    .line 226
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 228
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 232
    .end local v4           #_result:I
    :sswitch_13
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isDualBandSupported()Z

    move-result v4

    .line 234
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    if-eqz v4, :cond_c

    const/4 v9, 0x1

    :goto_d
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 235
    :cond_c
    const/4 v9, 0x0

    goto :goto_d

    .line 240
    .end local v4           #_result:Z
    :sswitch_14
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isIbssSupported()Z

    move-result v4

    .line 242
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    if-eqz v4, :cond_d

    const/4 v9, 0x1

    :goto_e
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 244
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 243
    :cond_d
    const/4 v9, 0x0

    goto :goto_e

    .line 248
    .end local v4           #_result:Z
    :sswitch_15
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getSupportedChannels()Ljava/util/List;

    move-result-object v7

    .line 250
    .local v7, _result:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiChannel;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 252
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 256
    .end local v7           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiChannel;>;"
    :sswitch_16
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->saveConfiguration()Z

    move-result v4

    .line 258
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    if-eqz v4, :cond_e

    const/4 v9, 0x1

    :goto_f
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 260
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 259
    :cond_e
    const/4 v9, 0x0

    goto :goto_f

    .line 264
    .end local v4           #_result:Z
    :sswitch_17
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v4

    .line 266
    .local v4, _result:Landroid/net/DhcpInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    if-eqz v4, :cond_f

    .line 268
    const/4 v9, 0x1

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 269
    const/4 v9, 0x1

    invoke-virtual {v4, p3, v9}, Landroid/net/DhcpInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 274
    :goto_10
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 272
    :cond_f
    const/4 v9, 0x0

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_10

    .line 278
    .end local v4           #_result:Landroid/net/DhcpInfo;
    :sswitch_18
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isScanAlwaysAvailable()Z

    move-result v4

    .line 280
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    if-eqz v4, :cond_10

    const/4 v9, 0x1

    :goto_11
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 282
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 281
    :cond_10
    const/4 v9, 0x0

    goto :goto_11

    .line 286
    .end local v4           #_result:Z
    :sswitch_19
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 290
    .local v0, _arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 292
    .local v1, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 294
    .local v2, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_11

    .line 295
    sget-object v9, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/WorkSource;

    .line 300
    .local v3, _arg3:Landroid/os/WorkSource;
    :goto_12
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/net/wifi/IWifiManager$Stub;->acquireWifiLock(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;)Z

    move-result v4

    .line 301
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    if-eqz v4, :cond_12

    const/4 v9, 0x1

    :goto_13
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 303
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 298
    .end local v3           #_arg3:Landroid/os/WorkSource;
    .end local v4           #_result:Z
    :cond_11
    const/4 v3, 0x0

    .restart local v3       #_arg3:Landroid/os/WorkSource;
    goto :goto_12

    .line 302
    .restart local v4       #_result:Z
    :cond_12
    const/4 v9, 0x0

    goto :goto_13

    .line 307
    .end local v0           #_arg0:Landroid/os/IBinder;
    .end local v1           #_arg1:I
    .end local v2           #_arg2:Ljava/lang/String;
    .end local v3           #_arg3:Landroid/os/WorkSource;
    .end local v4           #_result:Z
    :sswitch_1a
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 311
    .restart local v0       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_13

    .line 312
    sget-object v9, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 317
    .local v1, _arg1:Landroid/os/WorkSource;
    :goto_14
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->updateWifiLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V

    .line 318
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 315
    .end local v1           #_arg1:Landroid/os/WorkSource;
    :cond_13
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/os/WorkSource;
    goto :goto_14

    .line 323
    .end local v0           #_arg0:Landroid/os/IBinder;
    .end local v1           #_arg1:Landroid/os/WorkSource;
    :sswitch_1b
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 326
    .restart local v0       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->releaseWifiLock(Landroid/os/IBinder;)Z

    move-result v4

    .line 327
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 328
    if-eqz v4, :cond_14

    const/4 v9, 0x1

    :goto_15
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 329
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 328
    :cond_14
    const/4 v9, 0x0

    goto :goto_15

    .line 333
    .end local v0           #_arg0:Landroid/os/IBinder;
    .end local v4           #_result:Z
    :sswitch_1c
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 334
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->initializeMulticastFiltering()V

    .line 335
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 336
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 340
    :sswitch_1d
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 341
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isMulticastEnabled()Z

    move-result v4

    .line 342
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    if-eqz v4, :cond_15

    const/4 v9, 0x1

    :goto_16
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 344
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 343
    :cond_15
    const/4 v9, 0x0

    goto :goto_16

    .line 348
    .end local v4           #_result:Z
    :sswitch_1e
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 352
    .restart local v0       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 353
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->acquireMulticastLock(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 354
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 359
    .end local v0           #_arg0:Landroid/os/IBinder;
    .end local v1           #_arg1:Ljava/lang/String;
    :sswitch_1f
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->releaseMulticastLock()V

    .line 361
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 366
    :sswitch_20
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 368
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_16

    .line 369
    sget-object v9, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 375
    .local v0, _arg0:Landroid/net/wifi/WifiConfiguration;
    :goto_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_17

    const/4 v1, 0x1

    .line 376
    .local v1, _arg1:Z
    :goto_18
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 377
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 378
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 372
    .end local v0           #_arg0:Landroid/net/wifi/WifiConfiguration;
    .end local v1           #_arg1:Z
    :cond_16
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/net/wifi/WifiConfiguration;
    goto :goto_17

    .line 375
    :cond_17
    const/4 v1, 0x0

    goto :goto_18

    .line 382
    .end local v0           #_arg0:Landroid/net/wifi/WifiConfiguration;
    :sswitch_21
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 383
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApEnabledState()I

    move-result v4

    .line 384
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 385
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 386
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 390
    .end local v4           #_result:I
    :sswitch_22
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    .line 392
    .local v4, _result:Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 393
    if-eqz v4, :cond_18

    .line 394
    const/4 v9, 0x1

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 395
    const/4 v9, 0x1

    invoke-virtual {v4, p3, v9}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 400
    :goto_19
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 398
    :cond_18
    const/4 v9, 0x0

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_19

    .line 404
    .end local v4           #_result:Landroid/net/wifi/WifiConfiguration;
    :sswitch_23
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 406
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_19

    .line 407
    sget-object v9, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 412
    .restart local v0       #_arg0:Landroid/net/wifi/WifiConfiguration;
    :goto_1a
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 413
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 414
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 410
    .end local v0           #_arg0:Landroid/net/wifi/WifiConfiguration;
    :cond_19
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/net/wifi/WifiConfiguration;
    goto :goto_1a

    .line 418
    .end local v0           #_arg0:Landroid/net/wifi/WifiConfiguration;
    :sswitch_24
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 419
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->startWifi()V

    .line 420
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 421
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 425
    :sswitch_25
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 426
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->stopWifi()V

    .line 427
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 428
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 432
    :sswitch_26
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 434
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 435
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->addToBlacklist(Ljava/lang/String;)V

    .line 436
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 437
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 441
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_27
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 442
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->clearBlacklist()V

    .line 443
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 444
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 448
    :sswitch_28
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 449
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiServiceMessenger()Landroid/os/Messenger;

    move-result-object v4

    .line 450
    .local v4, _result:Landroid/os/Messenger;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 451
    if-eqz v4, :cond_1a

    .line 452
    const/4 v9, 0x1

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 453
    const/4 v9, 0x1

    invoke-virtual {v4, p3, v9}, Landroid/os/Messenger;->writeToParcel(Landroid/os/Parcel;I)V

    .line 458
    :goto_1b
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 456
    :cond_1a
    const/4 v9, 0x0

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1b

    .line 462
    .end local v4           #_result:Landroid/os/Messenger;
    :sswitch_29
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 463
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiStateMachineMessenger()Landroid/os/Messenger;

    move-result-object v4

    .line 464
    .restart local v4       #_result:Landroid/os/Messenger;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 465
    if-eqz v4, :cond_1b

    .line 466
    const/4 v9, 0x1

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 467
    const/4 v9, 0x1

    invoke-virtual {v4, p3, v9}, Landroid/os/Messenger;->writeToParcel(Landroid/os/Parcel;I)V

    .line 472
    :goto_1c
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 470
    :cond_1b
    const/4 v9, 0x0

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1c

    .line 476
    .end local v4           #_result:Landroid/os/Messenger;
    :sswitch_2a
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 477
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getConfigFile()Ljava/lang/String;

    move-result-object v4

    .line 478
    .local v4, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 479
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 480
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 484
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_2b
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 485
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->captivePortalCheckComplete()V

    .line 486
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 487
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 491
    :sswitch_2c
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 493
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 495
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_1c

    const/4 v1, 0x1

    .line 496
    .restart local v1       #_arg1:Z
    :goto_1d
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->enableTdls(Ljava/lang/String;Z)V

    .line 497
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 498
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 495
    .end local v1           #_arg1:Z
    :cond_1c
    const/4 v1, 0x0

    goto :goto_1d

    .line 502
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_2d
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 504
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 506
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_1d

    const/4 v1, 0x1

    .line 507
    .restart local v1       #_arg1:Z
    :goto_1e
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->enableTdlsWithMacAddress(Ljava/lang/String;Z)V

    .line 508
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 509
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 506
    .end local v1           #_arg1:Z
    :cond_1d
    const/4 v1, 0x0

    goto :goto_1e

    .line 513
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_2e
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 515
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_1e

    .line 516
    sget-object v9, Landroid/net/wifi/BatchedScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/BatchedScanSettings;

    .line 522
    .local v0, _arg0:Landroid/net/wifi/BatchedScanSettings;
    :goto_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 524
    .local v1, _arg1:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_1f

    .line 525
    sget-object v9, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/WorkSource;

    .line 530
    .local v2, _arg2:Landroid/os/WorkSource;
    :goto_20
    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->requestBatchedScan(Landroid/net/wifi/BatchedScanSettings;Landroid/os/IBinder;Landroid/os/WorkSource;)Z

    move-result v4

    .line 531
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 532
    if-eqz v4, :cond_20

    const/4 v9, 0x1

    :goto_21
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 533
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 519
    .end local v0           #_arg0:Landroid/net/wifi/BatchedScanSettings;
    .end local v1           #_arg1:Landroid/os/IBinder;
    .end local v2           #_arg2:Landroid/os/WorkSource;
    .end local v4           #_result:Z
    :cond_1e
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/net/wifi/BatchedScanSettings;
    goto :goto_1f

    .line 528
    .restart local v1       #_arg1:Landroid/os/IBinder;
    :cond_1f
    const/4 v2, 0x0

    .restart local v2       #_arg2:Landroid/os/WorkSource;
    goto :goto_20

    .line 532
    .restart local v4       #_result:Z
    :cond_20
    const/4 v9, 0x0

    goto :goto_21

    .line 537
    .end local v0           #_arg0:Landroid/net/wifi/BatchedScanSettings;
    .end local v1           #_arg1:Landroid/os/IBinder;
    .end local v2           #_arg2:Landroid/os/WorkSource;
    .end local v4           #_result:Z
    :sswitch_2f
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 539
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_21

    .line 540
    sget-object v9, Landroid/net/wifi/BatchedScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/BatchedScanSettings;

    .line 545
    .restart local v0       #_arg0:Landroid/net/wifi/BatchedScanSettings;
    :goto_22
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->stopBatchedScan(Landroid/net/wifi/BatchedScanSettings;)V

    .line 546
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 547
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 543
    .end local v0           #_arg0:Landroid/net/wifi/BatchedScanSettings;
    :cond_21
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/net/wifi/BatchedScanSettings;
    goto :goto_22

    .line 551
    .end local v0           #_arg0:Landroid/net/wifi/BatchedScanSettings;
    :sswitch_30
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 553
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 554
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->getBatchedScanResults(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 555
    .local v5, _result:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/BatchedScanResult;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 556
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 557
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 561
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v5           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/BatchedScanResult;>;"
    :sswitch_31
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 562
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isBatchedScanSupported()Z

    move-result v4

    .line 563
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 564
    if-eqz v4, :cond_22

    const/4 v9, 0x1

    :goto_23
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 565
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 564
    :cond_22
    const/4 v9, 0x0

    goto :goto_23

    .line 569
    .end local v4           #_result:Z
    :sswitch_32
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 570
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->pollBatchedScan()V

    .line 571
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 572
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 43
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
