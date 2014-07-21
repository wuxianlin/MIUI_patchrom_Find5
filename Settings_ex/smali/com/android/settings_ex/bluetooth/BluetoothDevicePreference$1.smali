.class Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference$1;
.super Ljava/lang/Object;
.source "BluetoothDevicePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->askDisconnect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;)V
    .locals 0
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference$1;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 212
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 213
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference$1;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;

    #getter for: Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;
    invoke-static {v1}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->access$000(Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;)Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->disconnect()V

    .line 216
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference$1;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;

    #getter for: Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->access$200(Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference$1;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;

    #getter for: Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v2}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->access$100(Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :goto_0
    return-void

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "BluetoothDevicePreference"

    const-string v2, "mBluetoothReceiver already unregistered"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
