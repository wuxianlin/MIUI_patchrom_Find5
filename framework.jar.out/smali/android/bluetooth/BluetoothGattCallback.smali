.class public abstract Landroid/bluetooth/BluetoothGattCallback;
.super Ljava/lang/Object;
.source "BluetoothGattCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 0
    .parameter "gatt"
    .parameter "characteristic"

    .prologue
    .line 91
    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 0
    .parameter "gatt"
    .parameter "characteristic"
    .parameter "status"

    .prologue
    .line 61
    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 0
    .parameter "gatt"
    .parameter "characteristic"
    .parameter "status"

    .prologue
    .line 80
    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 0
    .parameter "gatt"
    .parameter "status"
    .parameter "newState"

    .prologue
    .line 37
    return-void
.end method

.method public onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 0
    .parameter "gatt"
    .parameter "descriptor"
    .parameter "status"

    .prologue
    .line 104
    return-void
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 0
    .parameter "gatt"
    .parameter "descriptor"
    .parameter "status"

    .prologue
    .line 117
    return-void
.end method

.method public onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 0
    .parameter "gatt"
    .parameter "rssi"
    .parameter "status"

    .prologue
    .line 140
    return-void
.end method

.method public onReliableWriteCompleted(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 0
    .parameter "gatt"
    .parameter "status"

    .prologue
    .line 127
    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 0
    .parameter "gatt"
    .parameter "status"

    .prologue
    .line 48
    return-void
.end method
