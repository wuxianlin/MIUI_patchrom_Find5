.class Lcom/android/settings/bluetooth/BluetoothEventManager$PairingCancelHandler;
.super Ljava/lang/Object;
.source "BluetoothEventManager.java"

# interfaces
.implements Lcom/android/settings/bluetooth/BluetoothEventManager$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PairingCancelHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothEventManager;


# direct methods
.method private constructor <init>(Lcom/android/settings/bluetooth/BluetoothEventManager;)V
    .locals 0
    .parameter

    .prologue
    .line 354
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$PairingCancelHandler;->this$0:Lcom/android/settings/bluetooth/BluetoothEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/bluetooth/BluetoothEventManager;Lcom/android/settings/bluetooth/BluetoothEventManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 354
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothEventManager$PairingCancelHandler;-><init>(Lcom/android/settings/bluetooth/BluetoothEventManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .parameter "context"
    .parameter "intent"
    .parameter "device"

    .prologue
    .line 356
    if-nez p3, :cond_1

    .line 357
    const-string v2, "BluetoothEventManager"

    const-string v3, "ACTION_PAIRING_CANCEL with no EXTRA_DEVICE"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    const v1, 0x7f08058f

    .line 361
    .local v1, errorMsg:I
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$PairingCancelHandler;->this$0:Lcom/android/settings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/settings/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothEventManager;->access$1200(Lcom/android/settings/bluetooth/BluetoothEventManager;)Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 362
    .local v0, cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 363
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v1}, Lcom/android/settings/bluetooth/Utils;->showError(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method
