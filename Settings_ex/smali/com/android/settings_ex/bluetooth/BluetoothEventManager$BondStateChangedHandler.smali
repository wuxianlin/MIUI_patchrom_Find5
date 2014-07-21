.class Lcom/android/settings_ex/bluetooth/BluetoothEventManager$BondStateChangedHandler;
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
    name = "BondStateChangedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/bluetooth/BluetoothEventManager;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/bluetooth/BluetoothEventManager;)V
    .locals 0
    .parameter

    .prologue
    .line 247
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/bluetooth/BluetoothEventManager;Lcom/android/settings_ex/bluetooth/BluetoothEventManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 247
    invoke-direct {p0, p1}, Lcom/android/settings_ex/bluetooth/BluetoothEventManager$BondStateChangedHandler;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothEventManager;)V

    return-void
.end method

.method private showUnbondMessage(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4
    .parameter "context"
    .parameter "name"
    .parameter "reason"

    .prologue
    .line 315
    packed-switch p3, :pswitch_data_0

    .line 333
    :pswitch_0
    const-string v1, "BluetoothEventManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showUnbondMessage: Not displaying any message for reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :goto_0
    return-void

    .line 318
    :pswitch_1
    const v0, 0x7f080590

    .line 336
    .local v0, errorMsg:I
    :goto_1
    invoke-static {p1, p2, v0}, Lcom/android/settings_ex/bluetooth/Utils;->showError(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 321
    .end local v0           #errorMsg:I
    :pswitch_2
    const v0, 0x7f080592

    .line 322
    .restart local v0       #errorMsg:I
    goto :goto_1

    .line 324
    .end local v0           #errorMsg:I
    :pswitch_3
    const v0, 0x7f080591

    .line 325
    .restart local v0       #errorMsg:I
    goto :goto_1

    .line 330
    .end local v0           #errorMsg:I
    :pswitch_4
    const v0, 0x7f08058f

    .line 331
    .restart local v0       #errorMsg:I
    goto :goto_1

    .line 315
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 9
    .parameter "context"
    .parameter "intent"
    .parameter "device"

    .prologue
    const/high16 v8, -0x8000

    .line 250
    if-nez p3, :cond_1

    .line 251
    const-string v5, "BluetoothEventManager"

    const-string v6, "ACTION_BOND_STATE_CHANGED with no EXTRA_DEVICE"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    const-string v5, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 256
    .local v0, bondState:I
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v5}, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->access$1200(Lcom/android/settings_ex/bluetooth/BluetoothEventManager;)Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 257
    .local v1, cachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;
    if-nez v1, :cond_3

    .line 258
    const-string v5, "BluetoothEventManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CachedBluetoothDevice for device "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not found, calling readPairedDevices()."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothEventManager;

    invoke-virtual {v5}, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->readPairedDevices()Z

    move-result v5

    if-nez v5, :cond_2

    .line 261
    const-string v5, "BluetoothEventManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Got bonding state changed for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", but we have no record of that device."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 265
    :cond_2
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v5}, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->access$1200(Lcom/android/settings_ex/bluetooth/BluetoothEventManager;)Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 266
    if-nez v1, :cond_3

    .line 267
    const-string v5, "BluetoothEventManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Got bonding state changed for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", but device not added in cache."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 273
    :cond_3
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;
    invoke-static {v5}, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->access$1100(Lcom/android/settings_ex/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object v6

    monitor-enter v6

    .line 274
    :try_start_0
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;
    invoke-static {v5}, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->access$1100(Lcom/android/settings_ex/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/bluetooth/BluetoothCallback;

    .line 275
    .local v2, callback:Lcom/android/settings_ex/bluetooth/BluetoothCallback;
    invoke-interface {v2, v1, v0}, Lcom/android/settings_ex/bluetooth/BluetoothCallback;->onDeviceBondStateChanged(Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;I)V

    goto :goto_1

    .line 277
    .end local v2           #callback:Lcom/android/settings_ex/bluetooth/BluetoothCallback;
    .end local v3           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_4
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 278
    invoke-virtual {v1, v0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->onBondingStateChanged(I)V

    .line 280
    const/16 v5, 0xa

    if-ne v0, v5, :cond_0

    .line 281
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 283
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/android/settings_ex/bluetooth/LocalBluetoothPreferences;->removeDockAutoConnectSetting(Landroid/content/Context;Ljava/lang/String;)V

    .line 287
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->getDockedDeviceAddress(Landroid/content/Context;)Ljava/lang/String;
    invoke-static {p1}, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->access$1500(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 288
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->setVisible(Z)V

    .line 291
    :cond_5
    invoke-virtual {v1}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->isRemovable()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 292
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;
    invoke-static {v5}, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->access$1100(Lcom/android/settings_ex/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object v6

    monitor-enter v6

    .line 293
    :try_start_2
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;
    invoke-static {v5}, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->access$1100(Lcom/android/settings_ex/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/bluetooth/BluetoothCallback;

    .line 294
    .restart local v2       #callback:Lcom/android/settings_ex/bluetooth/BluetoothCallback;
    invoke-interface {v2, v1}, Lcom/android/settings_ex/bluetooth/BluetoothCallback;->onDeviceDeleted(Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;)V

    goto :goto_2

    .line 296
    .end local v2           #callback:Lcom/android/settings_ex/bluetooth/BluetoothCallback;
    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v5

    :cond_6
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 297
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v5}, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->access$1200(Lcom/android/settings_ex/bluetooth/BluetoothEventManager;)Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;->onDeviceDeleted(Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;)V

    .line 299
    :cond_7
    const-string v5, "android.bluetooth.device.extra.REASON"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 302
    .local v4, reason:I
    invoke-virtual {v1}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v5, v4}, Lcom/android/settings_ex/bluetooth/BluetoothEventManager$BondStateChangedHandler;->showUnbondMessage(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0
.end method
