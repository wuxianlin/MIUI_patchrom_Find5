.class public abstract Landroid/bluetooth/IBluetoothGatt$Stub;
.super Landroid/os/Binder;
.source "IBluetoothGatt.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothGatt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothGatt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothGatt"

.field static final TRANSACTION_addCharacteristic:I = 0x1b

.field static final TRANSACTION_addDescriptor:I = 0x1c

.field static final TRANSACTION_addIncludedService:I = 0x1a

.field static final TRANSACTION_beginReliableWrite:I = 0x12

.field static final TRANSACTION_beginServiceDeclaration:I = 0x19

.field static final TRANSACTION_clearServices:I = 0x1f

.field static final TRANSACTION_clientConnect:I = 0x7

.field static final TRANSACTION_clientDisconnect:I = 0x8

.field static final TRANSACTION_clientListen:I = 0x9

.field static final TRANSACTION_discoverServices:I = 0xc

.field static final TRANSACTION_endReliableWrite:I = 0x13

.field static final TRANSACTION_endServiceDeclaration:I = 0x1d

.field static final TRANSACTION_getDevicesMatchingConnectionStates:I = 0x1

.field static final TRANSACTION_readCharacteristic:I = 0xd

.field static final TRANSACTION_readDescriptor:I = 0xf

.field static final TRANSACTION_readRemoteRssi:I = 0x14

.field static final TRANSACTION_refreshDevice:I = 0xb

.field static final TRANSACTION_registerClient:I = 0x5

.field static final TRANSACTION_registerForNotification:I = 0x11

.field static final TRANSACTION_registerServer:I = 0x15

.field static final TRANSACTION_removeService:I = 0x1e

.field static final TRANSACTION_sendNotification:I = 0x21

.field static final TRANSACTION_sendResponse:I = 0x20

.field static final TRANSACTION_serverConnect:I = 0x17

.field static final TRANSACTION_serverDisconnect:I = 0x18

.field static final TRANSACTION_setAdvData:I = 0xa

.field static final TRANSACTION_startScan:I = 0x2

.field static final TRANSACTION_startScanWithUuids:I = 0x3

.field static final TRANSACTION_stopScan:I = 0x4

.field static final TRANSACTION_unregisterClient:I = 0x6

.field static final TRANSACTION_unregisterServer:I = 0x16

.field static final TRANSACTION_writeCharacteristic:I = 0xe

.field static final TRANSACTION_writeDescriptor:I = 0x10


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "android.bluetooth.IBluetoothGatt"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothGatt$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothGatt;
    .locals 2
    .parameter "obj"

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    .line 30
    :cond_0
    const-string v1, "android.bluetooth.IBluetoothGatt"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/IBluetoothGatt;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Landroid/bluetooth/IBluetoothGatt;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 15
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
    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 647
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 46
    :sswitch_0
    const-string v1, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    const/4 v1, 0x1

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v1, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 54
    .local v2, _arg0:[I
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothGatt$Stub;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v14

    .line 55
    .local v14, _result:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 57
    const/4 v1, 0x1

    goto :goto_0

    .line 61
    .end local v2           #_arg0:[I
    .end local v14           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_2
    const-string v1, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 65
    .local v2, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    .line 66
    .local v3, _arg1:Z
    :goto_1
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->startScan(IZ)V

    .line 67
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    const/4 v1, 0x1

    goto :goto_0

    .line 65
    .end local v3           #_arg1:Z
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 72
    .end local v2           #_arg0:I
    :sswitch_3
    const-string v1, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 76
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    .line 78
    .restart local v3       #_arg1:Z
    :goto_2
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/os/ParcelUuid;

    .line 79
    .local v4, _arg2:[Landroid/os/ParcelUuid;
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBluetoothGatt$Stub;->startScanWithUuids(IZ[Landroid/os/ParcelUuid;)V

    .line 80
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    const/4 v1, 0x1

    goto :goto_0

    .line 76
    .end local v3           #_arg1:Z
    .end local v4           #_arg2:[Landroid/os/ParcelUuid;
    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    .line 85
    .end local v2           #_arg0:I
    :sswitch_4
    const-string v1, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 89
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    .line 90
    .restart local v3       #_arg1:Z
    :goto_3
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->stopScan(IZ)V

    .line 91
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    const/4 v1, 0x1

    goto :goto_0

    .line 89
    .end local v3           #_arg1:Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_3

    .line 96
    .end local v2           #_arg0:I
    :sswitch_5
    const-string v1, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    .line 99
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    .line 105
    .local v2, _arg0:Landroid/os/ParcelUuid;
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothGattCallback;

    move-result-object v3

    .line 106
    .local v3, _arg1:Landroid/bluetooth/IBluetoothGattCallback;
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->registerClient(Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothGattCallback;)V

    .line 107
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 102
    .end local v2           #_arg0:Landroid/os/ParcelUuid;
    .end local v3           #_arg1:Landroid/bluetooth/IBluetoothGattCallback;
    :cond_3
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/os/ParcelUuid;
    goto :goto_4

    .line 112
    .end local v2           #_arg0:Landroid/os/ParcelUuid;
    :sswitch_6
    const-string v1, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 115
    .local v2, _arg0:I
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothGatt$Stub;->unregisterClient(I)V

    .line 116
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 121
    .end local v2           #_arg0:I
    :sswitch_7
    const-string v1, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 125
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 127
    .local v3, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v4, 0x1

    .line 128
    .local v4, _arg2:Z
    :goto_5
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBluetoothGatt$Stub;->clientConnect(ILjava/lang/String;Z)V

    .line 129
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 127
    .end local v4           #_arg2:Z
    :cond_4
    const/4 v4, 0x0

    goto :goto_5

    .line 134
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Ljava/lang/String;
    :sswitch_8
    const-string v1, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 138
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 139
    .restart local v3       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->clientDisconnect(ILjava/lang/String;)V

    .line 140
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 145
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Ljava/lang/String;
    :sswitch_9
    const-string v1, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 149
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    const/4 v3, 0x1

    .line 150
    .local v3, _arg1:Z
    :goto_6
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->clientListen(IZ)V

    .line 151
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 149
    .end local v3           #_arg1:Z
    :cond_5
    const/4 v3, 0x0

    goto :goto_6

    .line 156
    .end local v2           #_arg0:I
    :sswitch_a
    const-string v1, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 160
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    const/4 v3, 0x1

    .line 162
    .restart local v3       #_arg1:Z
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7

    const/4 v4, 0x1

    .line 164
    .restart local v4       #_arg2:Z
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8

    const/4 v5, 0x1

    .line 166
    .local v5, _arg3:Z
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 168
    .local v6, _arg4:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 170
    .local v7, _arg5:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 172
    .local v8, _arg6:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v9

    .local v9, _arg7:[B
    move-object v1, p0

    .line 173
    invoke-virtual/range {v1 .. v9}, Landroid/bluetooth/IBluetoothGatt$Stub;->setAdvData(IZZZIII[B)V

    .line 174
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 160
    .end local v3           #_arg1:Z
    .end local v4           #_arg2:Z
    .end local v5           #_arg3:Z
    .end local v6           #_arg4:I
    .end local v7           #_arg5:I
    .end local v8           #_arg6:I
    .end local v9           #_arg7:[B
    :cond_6
    const/4 v3, 0x0

    goto :goto_7

    .line 162
    .restart local v3       #_arg1:Z
    :cond_7
    const/4 v4, 0x0

    goto :goto_8

    .line 164
    .restart local v4       #_arg2:Z
    :cond_8
    const/4 v5, 0x0

    goto :goto_9

    .line 179
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Z
    .end local v4           #_arg2:Z
    :sswitch_b
    const-string v1, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 183
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 184
    .local v3, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->refreshDevice(ILjava/lang/String;)V

    .line 185
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 190
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Ljava/lang/String;
    :sswitch_c
    const-string v1, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 194
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 195
    .restart local v3       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->discoverServices(ILjava/lang/String;)V

    .line 196
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 201
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Ljava/lang/String;
    :sswitch_d
    const-string v1, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 205
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 207
    .restart local v3       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 209
    .local v4, _arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 211
    .local v5, _arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_9

    .line 212
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/ParcelUuid;

    .line 218
    .local v6, _arg4:Landroid/os/ParcelUuid;
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 220
    .restart local v7       #_arg5:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a

    .line 221
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/ParcelUuid;

    .line 227
    .local v8, _arg6:Landroid/os/ParcelUuid;
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .local v9, _arg7:I
    move-object v1, p0

    .line 228
    invoke-virtual/range {v1 .. v9}, Landroid/bluetooth/IBluetoothGatt$Stub;->readCharacteristic(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;I)V

    .line 229
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 215
    .end local v6           #_arg4:Landroid/os/ParcelUuid;
    .end local v7           #_arg5:I
    .end local v8           #_arg6:Landroid/os/ParcelUuid;
    .end local v9           #_arg7:I
    :cond_9
    const/4 v6, 0x0

    .restart local v6       #_arg4:Landroid/os/ParcelUuid;
    goto :goto_a

    .line 224
    .restart local v7       #_arg5:I
    :cond_a
    const/4 v8, 0x0

    .restart local v8       #_arg6:Landroid/os/ParcelUuid;
    goto :goto_b

    .line 234
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:I
    .end local v5           #_arg3:I
    .end local v6           #_arg4:Landroid/os/ParcelUuid;
    .end local v7           #_arg5:I
    .end local v8           #_arg6:Landroid/os/ParcelUuid;
    :sswitch_e
    const-string v1, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 238
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 240
    .restart local v3       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 242
    .restart local v4       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 244
    .restart local v5       #_arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_b

    .line 245
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/ParcelUuid;

    .line 251
    .restart local v6       #_arg4:Landroid/os/ParcelUuid;
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 253
    .restart local v7       #_arg5:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_c

    .line 254
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/ParcelUuid;

    .line 260
    .restart local v8       #_arg6:Landroid/os/ParcelUuid;
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 262
    .restart local v9       #_arg7:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 264
    .local v10, _arg8:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v11

    .local v11, _arg9:[B
    move-object v1, p0

    .line 265
    invoke-virtual/range {v1 .. v11}, Landroid/bluetooth/IBluetoothGatt$Stub;->writeCharacteristic(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;II[B)V

    .line 266
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 248
    .end local v6           #_arg4:Landroid/os/ParcelUuid;
    .end local v7           #_arg5:I
    .end local v8           #_arg6:Landroid/os/ParcelUuid;
    .end local v9           #_arg7:I
    .end local v10           #_arg8:I
    .end local v11           #_arg9:[B
    :cond_b
    const/4 v6, 0x0

    .restart local v6       #_arg4:Landroid/os/ParcelUuid;
    goto :goto_c

    .line 257
    .restart local v7       #_arg5:I
    :cond_c
    const/4 v8, 0x0

    .restart local v8       #_arg6:Landroid/os/ParcelUuid;
    goto :goto_d

    .line 271
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:I
    .end local v5           #_arg3:I
    .end local v6           #_arg4:Landroid/os/ParcelUuid;
    .end local v7           #_arg5:I
    .end local v8           #_arg6:Landroid/os/ParcelUuid;
    :sswitch_f
    const-string v1, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 275
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 277
    .restart local v3       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 279
    .restart local v4       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 281
    .restart local v5       #_arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_d

    .line 282
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/ParcelUuid;

    .line 288
    .restart local v6       #_arg4:Landroid/os/ParcelUuid;
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 290
    .restart local v7       #_arg5:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_e

    .line 291
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/ParcelUuid;

    .line 297
    .restart local v8       #_arg6:Landroid/os/ParcelUuid;
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 299
    .restart local v9       #_arg7:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_f

    .line 300
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/ParcelUuid;

    .line 306
    .local v10, _arg8:Landroid/os/ParcelUuid;
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .local v11, _arg9:I
    move-object v1, p0

    .line 307
    invoke-virtual/range {v1 .. v11}, Landroid/bluetooth/IBluetoothGatt$Stub;->readDescriptor(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;I)V

    .line 308
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 285
    .end local v6           #_arg4:Landroid/os/ParcelUuid;
    .end local v7           #_arg5:I
    .end local v8           #_arg6:Landroid/os/ParcelUuid;
    .end local v9           #_arg7:I
    .end local v10           #_arg8:Landroid/os/ParcelUuid;
    .end local v11           #_arg9:I
    :cond_d
    const/4 v6, 0x0

    .restart local v6       #_arg4:Landroid/os/ParcelUuid;
    goto :goto_e

    .line 294
    .restart local v7       #_arg5:I
    :cond_e
    const/4 v8, 0x0

    .restart local v8       #_arg6:Landroid/os/ParcelUuid;
    goto :goto_f

    .line 303
    .restart local v9       #_arg7:I
    :cond_f
    const/4 v10, 0x0

    .restart local v10       #_arg8:Landroid/os/ParcelUuid;
    goto :goto_10

    .line 313
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:I
    .end local v5           #_arg3:I
    .end local v6           #_arg4:Landroid/os/ParcelUuid;
    .end local v7           #_arg5:I
    .end local v8           #_arg6:Landroid/os/ParcelUuid;
    .end local v9           #_arg7:I
    .end local v10           #_arg8:Landroid/os/ParcelUuid;
    :sswitch_10
    const-string v1, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 315
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 317
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 319
    .restart local v3       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 321
    .restart local v4       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 323
    .restart local v5       #_arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_10

    .line 324
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/ParcelUuid;

    .line 330
    .restart local v6       #_arg4:Landroid/os/ParcelUuid;
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 332
    .restart local v7       #_arg5:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_11

    .line 333
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/ParcelUuid;

    .line 339
    .restart local v8       #_arg6:Landroid/os/ParcelUuid;
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 341
    .restart local v9       #_arg7:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_12

    .line 342
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/ParcelUuid;

    .line 348
    .restart local v10       #_arg8:Landroid/os/ParcelUuid;
    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 350
    .restart local v11       #_arg9:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 352
    .local v12, _arg10:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v13

    .local v13, _arg11:[B
    move-object v1, p0

    .line 353
    invoke-virtual/range {v1 .. v13}, Landroid/bluetooth/IBluetoothGatt$Stub;->writeDescriptor(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;II[B)V

    .line 354
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 327
    .end local v6           #_arg4:Landroid/os/ParcelUuid;
    .end local v7           #_arg5:I
    .end local v8           #_arg6:Landroid/os/ParcelUuid;
    .end local v9           #_arg7:I
    .end local v10           #_arg8:Landroid/os/ParcelUuid;
    .end local v11           #_arg9:I
    .end local v12           #_arg10:I
    .end local v13           #_arg11:[B
    :cond_10
    const/4 v6, 0x0

    .restart local v6       #_arg4:Landroid/os/ParcelUuid;
    goto :goto_11

    .line 336
    .restart local v7       #_arg5:I
    :cond_11
    const/4 v8, 0x0

    .restart local v8       #_arg6:Landroid/os/ParcelUuid;
    goto :goto_12

    .line 345
    .restart local v9       #_arg7:I
    :cond_12
    const/4 v10, 0x0

    .restart local v10       #_arg8:Landroid/os/ParcelUuid;
    goto :goto_13

    .line 359
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:I
    .end local v5           #_arg3:I
    .end local v6           #_arg4:Landroid/os/ParcelUuid;
    .end local v7           #_arg5:I
    .end local v8           #_arg6:Landroid/os/ParcelUuid;
    .end local v9           #_arg7:I
    .end local v10           #_arg8:Landroid/os/ParcelUuid;
    :sswitch_11
    const-string v1, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 361
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 363
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 365
    .restart local v3       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 367
    .restart local v4       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 369
    .restart local v5       #_arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_13

    .line 370
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/ParcelUuid;

    .line 376
    .restart local v6       #_arg4:Landroid/os/ParcelUuid;
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 378
    .restart local v7       #_arg5:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_14

    .line 379
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/ParcelUuid;

    .line 385
    .restart local v8       #_arg6:Landroid/os/ParcelUuid;
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_15

    const/4 v9, 0x1

    .local v9, _arg7:Z
    :goto_16
    move-object v1, p0

    .line 386
    invoke-virtual/range {v1 .. v9}, Landroid/bluetooth/IBluetoothGatt$Stub;->registerForNotification(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;Z)V

    .line 387
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 388
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 373
    .end local v6           #_arg4:Landroid/os/ParcelUuid;
    .end local v7           #_arg5:I
    .end local v8           #_arg6:Landroid/os/ParcelUuid;
    .end local v9           #_arg7:Z
    :cond_13
    const/4 v6, 0x0

    .restart local v6       #_arg4:Landroid/os/ParcelUuid;
    goto :goto_14

    .line 382
    .restart local v7       #_arg5:I
    :cond_14
    const/4 v8, 0x0

    .restart local v8       #_arg6:Landroid/os/ParcelUuid;
    goto :goto_15

    .line 385
    :cond_15
    const/4 v9, 0x0

    goto :goto_16

    .line 392
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:I
    .end local v5           #_arg3:I
    .end local v6           #_arg4:Landroid/os/ParcelUuid;
    .end local v7           #_arg5:I
    .end local v8           #_arg6:Landroid/os/ParcelUuid;
    :sswitch_12
    const-string v1, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 394
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 396
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 397
    .restart local v3       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->beginReliableWrite(ILjava/lang/String;)V

    .line 398
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 399
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 403
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Ljava/lang/String;
    :sswitch_13
    const-string v1, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 405
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 407
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 409
    .restart local v3       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_16

    const/4 v4, 0x1

    .line 410
    .local v4, _arg2:Z
    :goto_17
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBluetoothGatt$Stub;->endReliableWrite(ILjava/lang/String;Z)V

    .line 411
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 412
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 409
    .end local v4           #_arg2:Z
    :cond_16
    const/4 v4, 0x0

    goto :goto_17

    .line 416
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Ljava/lang/String;
    :sswitch_14
    const-string v1, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 418
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 420
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 421
    .restart local v3       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->readRemoteRssi(ILjava/lang/String;)V

    .line 422
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 423
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 427
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Ljava/lang/String;
    :sswitch_15
    const-string v1, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 429
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_17

    .line 430
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    .line 436
    .local v2, _arg0:Landroid/os/ParcelUuid;
    :goto_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothGattServerCallback;

    move-result-object v3

    .line 437
    .local v3, _arg1:Landroid/bluetooth/IBluetoothGattServerCallback;
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->registerServer(Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothGattServerCallback;)V

    .line 438
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 439
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 433
    .end local v2           #_arg0:Landroid/os/ParcelUuid;
    .end local v3           #_arg1:Landroid/bluetooth/IBluetoothGattServerCallback;
    :cond_17
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/os/ParcelUuid;
    goto :goto_18

    .line 443
    .end local v2           #_arg0:Landroid/os/ParcelUuid;
    :sswitch_16
    const-string v1, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 445
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 446
    .local v2, _arg0:I
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothGatt$Stub;->unregisterServer(I)V

    .line 447
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 448
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 452
    .end local v2           #_arg0:I
    :sswitch_17
    const-string v1, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 454
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 456
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 458
    .local v3, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_18

    const/4 v4, 0x1

    .line 459
    .restart local v4       #_arg2:Z
    :goto_19
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBluetoothGatt$Stub;->serverConnect(ILjava/lang/String;Z)V

    .line 460
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 461
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 458
    .end local v4           #_arg2:Z
    :cond_18
    const/4 v4, 0x0

    goto :goto_19

    .line 465
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Ljava/lang/String;
    :sswitch_18
    const-string v1, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 467
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 469
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 470
    .restart local v3       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->serverDisconnect(ILjava/lang/String;)V

    .line 471
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 472
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 476
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Ljava/lang/String;
    :sswitch_19
    const-string v1, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 478
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 480
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 482
    .local v3, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 484
    .local v4, _arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 486
    .restart local v5       #_arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_19

    .line 487
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/ParcelUuid;

    .restart local v6       #_arg4:Landroid/os/ParcelUuid;
    :goto_1a
    move-object v1, p0

    .line 492
    invoke-virtual/range {v1 .. v6}, Landroid/bluetooth/IBluetoothGatt$Stub;->beginServiceDeclaration(IIIILandroid/os/ParcelUuid;)V

    .line 493
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 494
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 490
    .end local v6           #_arg4:Landroid/os/ParcelUuid;
    :cond_19
    const/4 v6, 0x0

    .restart local v6       #_arg4:Landroid/os/ParcelUuid;
    goto :goto_1a

    .line 498
    .end local v2           #_arg0:I
    .end local v3           #_arg1:I
    .end local v4           #_arg2:I
    .end local v5           #_arg3:I
    .end local v6           #_arg4:Landroid/os/ParcelUuid;
    :sswitch_1a
    const-string v1, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 500
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 502
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 504
    .restart local v3       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 506
    .restart local v4       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1a

    .line 507
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelUuid;

    .line 512
    .local v5, _arg3:Landroid/os/ParcelUuid;
    :goto_1b
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/bluetooth/IBluetoothGatt$Stub;->addIncludedService(IIILandroid/os/ParcelUuid;)V

    .line 513
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 514
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 510
    .end local v5           #_arg3:Landroid/os/ParcelUuid;
    :cond_1a
    const/4 v5, 0x0

    .restart local v5       #_arg3:Landroid/os/ParcelUuid;
    goto :goto_1b

    .line 518
    .end local v2           #_arg0:I
    .end local v3           #_arg1:I
    .end local v4           #_arg2:I
    .end local v5           #_arg3:Landroid/os/ParcelUuid;
    :sswitch_1b
    const-string v1, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 520
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 522
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1b

    .line 523
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelUuid;

    .line 529
    .local v3, _arg1:Landroid/os/ParcelUuid;
    :goto_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 531
    .restart local v4       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 532
    .local v5, _arg3:I
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/bluetooth/IBluetoothGatt$Stub;->addCharacteristic(ILandroid/os/ParcelUuid;II)V

    .line 533
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 534
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 526
    .end local v3           #_arg1:Landroid/os/ParcelUuid;
    .end local v4           #_arg2:I
    .end local v5           #_arg3:I
    :cond_1b
    const/4 v3, 0x0

    .restart local v3       #_arg1:Landroid/os/ParcelUuid;
    goto :goto_1c

    .line 538
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Landroid/os/ParcelUuid;
    :sswitch_1c
    const-string v1, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 540
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 542
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1c

    .line 543
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelUuid;

    .line 549
    .restart local v3       #_arg1:Landroid/os/ParcelUuid;
    :goto_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 550
    .restart local v4       #_arg2:I
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBluetoothGatt$Stub;->addDescriptor(ILandroid/os/ParcelUuid;I)V

    .line 551
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 552
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 546
    .end local v3           #_arg1:Landroid/os/ParcelUuid;
    .end local v4           #_arg2:I
    :cond_1c
    const/4 v3, 0x0

    .restart local v3       #_arg1:Landroid/os/ParcelUuid;
    goto :goto_1d

    .line 556
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Landroid/os/ParcelUuid;
    :sswitch_1d
    const-string v1, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 558
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 559
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothGatt$Stub;->endServiceDeclaration(I)V

    .line 560
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 561
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 565
    .end local v2           #_arg0:I
    :sswitch_1e
    const-string v1, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 567
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 569
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 571
    .local v3, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 573
    .restart local v4       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1d

    .line 574
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelUuid;

    .line 579
    .local v5, _arg3:Landroid/os/ParcelUuid;
    :goto_1e
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/bluetooth/IBluetoothGatt$Stub;->removeService(IIILandroid/os/ParcelUuid;)V

    .line 580
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 581
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 577
    .end local v5           #_arg3:Landroid/os/ParcelUuid;
    :cond_1d
    const/4 v5, 0x0

    .restart local v5       #_arg3:Landroid/os/ParcelUuid;
    goto :goto_1e

    .line 585
    .end local v2           #_arg0:I
    .end local v3           #_arg1:I
    .end local v4           #_arg2:I
    .end local v5           #_arg3:Landroid/os/ParcelUuid;
    :sswitch_1f
    const-string v1, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 587
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 588
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothGatt$Stub;->clearServices(I)V

    .line 589
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 590
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 594
    .end local v2           #_arg0:I
    :sswitch_20
    const-string v1, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 596
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 598
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 600
    .local v3, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 602
    .restart local v4       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 604
    .local v5, _arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 606
    .local v6, _arg4:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    .local v7, _arg5:[B
    move-object v1, p0

    .line 607
    invoke-virtual/range {v1 .. v7}, Landroid/bluetooth/IBluetoothGatt$Stub;->sendResponse(ILjava/lang/String;III[B)V

    .line 608
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 609
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 613
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:I
    .end local v5           #_arg3:I
    .end local v6           #_arg4:I
    .end local v7           #_arg5:[B
    :sswitch_21
    const-string v1, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 615
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 617
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 619
    .restart local v3       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 621
    .restart local v4       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 623
    .restart local v5       #_arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1e

    .line 624
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/ParcelUuid;

    .line 630
    .local v6, _arg4:Landroid/os/ParcelUuid;
    :goto_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 632
    .local v7, _arg5:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1f

    .line 633
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/ParcelUuid;

    .line 639
    .restart local v8       #_arg6:Landroid/os/ParcelUuid;
    :goto_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_20

    const/4 v9, 0x1

    .line 641
    .restart local v9       #_arg7:Z
    :goto_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v10

    .local v10, _arg8:[B
    move-object v1, p0

    .line 642
    invoke-virtual/range {v1 .. v10}, Landroid/bluetooth/IBluetoothGatt$Stub;->sendNotification(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;Z[B)V

    .line 643
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 644
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 627
    .end local v6           #_arg4:Landroid/os/ParcelUuid;
    .end local v7           #_arg5:I
    .end local v8           #_arg6:Landroid/os/ParcelUuid;
    .end local v9           #_arg7:Z
    .end local v10           #_arg8:[B
    :cond_1e
    const/4 v6, 0x0

    .restart local v6       #_arg4:Landroid/os/ParcelUuid;
    goto :goto_1f

    .line 636
    .restart local v7       #_arg5:I
    :cond_1f
    const/4 v8, 0x0

    .restart local v8       #_arg6:Landroid/os/ParcelUuid;
    goto :goto_20

    .line 639
    :cond_20
    const/4 v9, 0x0

    goto :goto_21

    .line 42
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
