.class Landroid/bluetooth/BluetoothHealth$BluetoothHealthCallbackWrapper;
.super Landroid/bluetooth/IBluetoothHealthCallback$Stub;
.source "BluetoothHealth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothHealth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BluetoothHealthCallbackWrapper"
.end annotation


# instance fields
.field private mCallback:Landroid/bluetooth/BluetoothHealthCallback;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothHealthCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 426
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothHealthCallback$Stub;-><init>()V

    .line 427
    iput-object p1, p0, Landroid/bluetooth/BluetoothHealth$BluetoothHealthCallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothHealthCallback;

    .line 428
    return-void
.end method


# virtual methods
.method public onHealthAppConfigurationStatusChange(Landroid/bluetooth/BluetoothHealthAppConfiguration;I)V
    .locals 1
    .parameter "config"
    .parameter "status"

    .prologue
    .line 433
    iget-object v0, p0, Landroid/bluetooth/BluetoothHealth$BluetoothHealthCallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothHealthCallback;

    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothHealthCallback;->onHealthAppConfigurationStatusChange(Landroid/bluetooth/BluetoothHealthAppConfiguration;I)V

    .line 434
    return-void
.end method

.method public onHealthChannelStateChange(Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/BluetoothDevice;IILandroid/os/ParcelFileDescriptor;I)V
    .locals 7
    .parameter "config"
    .parameter "device"
    .parameter "prevState"
    .parameter "newState"
    .parameter "fd"
    .parameter "channelId"

    .prologue
    .line 440
    iget-object v0, p0, Landroid/bluetooth/BluetoothHealth$BluetoothHealthCallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothHealthCallback;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/bluetooth/BluetoothHealthCallback;->onHealthChannelStateChange(Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/BluetoothDevice;IILandroid/os/ParcelFileDescriptor;I)V

    .line 442
    return-void
.end method
