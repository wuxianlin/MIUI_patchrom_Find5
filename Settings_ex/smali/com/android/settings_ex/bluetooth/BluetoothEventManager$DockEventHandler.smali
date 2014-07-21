.class Lcom/android/settings_ex/bluetooth/BluetoothEventManager$DockEventHandler;
.super Ljava/lang/Object;
.source "BluetoothEventManager.java"

# interfaces
.implements Lcom/android/settings_ex/bluetooth/BluetoothEventManager$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/bluetooth/BluetoothEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DockEventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/bluetooth/BluetoothEventManager;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/bluetooth/BluetoothEventManager;)V
    .locals 0
    .parameter

    .prologue
    .line 368
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEventManager$DockEventHandler;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/bluetooth/BluetoothEventManager;Lcom/android/settings_ex/bluetooth/BluetoothEventManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 368
    invoke-direct {p0, p1}, Lcom/android/settings_ex/bluetooth/BluetoothEventManager$DockEventHandler;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothEventManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 5
    .parameter "context"
    .parameter "intent"
    .parameter "device"

    .prologue
    .line 371
    const/4 v0, 0x1

    .line 372
    .local v0, anythingButUnDocked:I
    const-string v3, "android.intent.extra.DOCK_STATE"

    invoke-virtual {p2, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 373
    .local v2, state:I
    if-nez v2, :cond_0

    .line 374
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_0

    .line 375
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothEventManager$DockEventHandler;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v3}, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->access$1200(Lcom/android/settings_ex/bluetooth/BluetoothEventManager;)Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 376
    .local v1, cachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;
    if-eqz v1, :cond_0

    .line 377
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->setVisible(Z)V

    .line 381
    .end local v1           #cachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;
    :cond_0
    return-void
.end method
