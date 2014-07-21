.class Lcom/android/settings/bluetooth/BluetoothEventManager$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothEventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothEventManager;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothEventManager;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEventManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 144
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 148
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/settings/bluetooth/BluetoothEventManager;->mHandlerMap:Ljava/util/Map;
    invoke-static {v3}, Lcom/android/settings/bluetooth/BluetoothEventManager;->access$900(Lcom/android/settings/bluetooth/BluetoothEventManager;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/bluetooth/BluetoothEventManager$Handler;

    .line 149
    .local v2, handler:Lcom/android/settings/bluetooth/BluetoothEventManager$Handler;
    if-eqz v2, :cond_0

    .line 150
    invoke-interface {v2, p1, p2, v1}, Lcom/android/settings/bluetooth/BluetoothEventManager$Handler;->onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V

    .line 152
    :cond_0
    return-void
.end method
