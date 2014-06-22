.class final Landroid/bluetooth/BluetoothLEServiceUuid$1;
.super Ljava/lang/Object;
.source "BluetoothLEServiceUuid.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothLEServiceUuid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/bluetooth/BluetoothLEServiceUuid;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothLEServiceUuid;
    .locals 7
    .parameter "source"

    .prologue
    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v4

    .line 109
    .local v4, type:B
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 110
    .local v0, lsb:J
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 111
    .local v2, msb:J
    new-instance v5, Landroid/bluetooth/BluetoothLEServiceUuid;

    new-instance v6, Ljava/util/UUID;

    invoke-direct {v6, v2, v3, v0, v1}, Ljava/util/UUID;-><init>(JJ)V

    invoke-direct {v5, v4, v6}, Landroid/bluetooth/BluetoothLEServiceUuid;-><init>(BLjava/util/UUID;)V

    return-object v5
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothLEServiceUuid$1;->createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothLEServiceUuid;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/bluetooth/BluetoothLEServiceUuid;
    .locals 1
    .parameter "size"

    .prologue
    .line 115
    new-array v0, p1, [Landroid/bluetooth/BluetoothLEServiceUuid;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothLEServiceUuid$1;->newArray(I)[Landroid/bluetooth/BluetoothLEServiceUuid;

    move-result-object v0

    return-object v0
.end method
