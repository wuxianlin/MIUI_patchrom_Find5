.class Landroid/bluetooth/BluetoothTetheringDataTracker$BtdtHandler;
.super Landroid/os/Handler;
.source "BluetoothTetheringDataTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothTetheringDataTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BtdtHandler"
.end annotation


# instance fields
.field private final mBtdt:Landroid/bluetooth/BluetoothTetheringDataTracker;

.field private mStackChannel:Lcom/android/internal/util/AsyncChannel;


# direct methods
.method constructor <init>(Landroid/os/Looper;Landroid/bluetooth/BluetoothTetheringDataTracker;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "parent"    # Landroid/bluetooth/BluetoothTetheringDataTracker;

    .prologue
    .line 389
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 390
    iput-object p2, p0, Landroid/bluetooth/BluetoothTetheringDataTracker$BtdtHandler;->mBtdt:Landroid/bluetooth/BluetoothTetheringDataTracker;

    .line 391
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    .line 395
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 432
    :cond_0
    :goto_0
    return-void

    .line 397
    :sswitch_0
    const-string v2, "BluetoothTethering"

    const-string v3, "got CMD_CHANNEL_HALF_CONNECTED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_0

    .line 399
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/util/AsyncChannel;

    .line 400
    .local v0, "ac":Lcom/android/internal/util/AsyncChannel;
    iget-object v2, p0, Landroid/bluetooth/BluetoothTetheringDataTracker$BtdtHandler;->mBtdt:Landroid/bluetooth/BluetoothTetheringDataTracker;

    # getter for: Landroid/bluetooth/BluetoothTetheringDataTracker;->mAsyncChannel:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v2}, Landroid/bluetooth/BluetoothTetheringDataTracker;->access$900(Landroid/bluetooth/BluetoothTetheringDataTracker;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    invoke-virtual {v2, v5, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 401
    const-string v2, "BluetoothTethering"

    const-string v3, "Trying to set mAsyncChannel twice!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 403
    :cond_1
    const v2, 0x11001

    invoke-virtual {v0, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 405
    iput-object v0, p0, Landroid/bluetooth/BluetoothTetheringDataTracker$BtdtHandler;->mStackChannel:Lcom/android/internal/util/AsyncChannel;

    .line 406
    const-string v2, "BluetoothTethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CMD_CHANNEL_HALF_CONNECTED: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/bluetooth/BluetoothTetheringDataTracker$BtdtHandler;->mStackChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 411
    .end local v0    # "ac":Lcom/android/internal/util/AsyncChannel;
    :sswitch_1
    const-string v2, "BluetoothTethering"

    const-string v3, "got CMD_CHANNEL_DISCONNECTED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iget-object v2, p0, Landroid/bluetooth/BluetoothTetheringDataTracker$BtdtHandler;->mStackChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v2, :cond_0

    .line 413
    iget-object v2, p0, Landroid/bluetooth/BluetoothTetheringDataTracker$BtdtHandler;->mBtdt:Landroid/bluetooth/BluetoothTetheringDataTracker;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothTetheringDataTracker;->stopReverseTether()V

    .line 414
    iget-object v2, p0, Landroid/bluetooth/BluetoothTetheringDataTracker$BtdtHandler;->mBtdt:Landroid/bluetooth/BluetoothTetheringDataTracker;

    # getter for: Landroid/bluetooth/BluetoothTetheringDataTracker;->mAsyncChannel:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v2}, Landroid/bluetooth/BluetoothTetheringDataTracker;->access$900(Landroid/bluetooth/BluetoothTetheringDataTracker;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 416
    const-string v2, "BluetoothTethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Disconnect CMD_CHANNEL_HALF_CONNECTED: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/bluetooth/BluetoothTetheringDataTracker$BtdtHandler;->mStackChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object v2, p0, Landroid/bluetooth/BluetoothTetheringDataTracker$BtdtHandler;->mStackChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v2}, Lcom/android/internal/util/AsyncChannel;->disconnect()V

    .line 418
    iput-object v5, p0, Landroid/bluetooth/BluetoothTetheringDataTracker$BtdtHandler;->mStackChannel:Lcom/android/internal/util/AsyncChannel;

    goto/16 :goto_0

    .line 422
    :sswitch_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/LinkProperties;

    move-object v1, v2

    check-cast v1, Landroid/net/LinkProperties;

    .line 423
    .local v1, "linkProperties":Landroid/net/LinkProperties;
    const-string v2, "BluetoothTethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "got EVENT_NETWORK_CONNECTED, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iget-object v2, p0, Landroid/bluetooth/BluetoothTetheringDataTracker$BtdtHandler;->mBtdt:Landroid/bluetooth/BluetoothTetheringDataTracker;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothTetheringDataTracker;->startReverseTether(Landroid/net/LinkProperties;)V

    goto/16 :goto_0

    .line 427
    .end local v1    # "linkProperties":Landroid/net/LinkProperties;
    :sswitch_3
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/LinkProperties;

    move-object v1, v2

    check-cast v1, Landroid/net/LinkProperties;

    .line 428
    .restart local v1    # "linkProperties":Landroid/net/LinkProperties;
    const-string v2, "BluetoothTethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "got EVENT_NETWORK_DISCONNECTED, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-object v2, p0, Landroid/bluetooth/BluetoothTetheringDataTracker$BtdtHandler;->mBtdt:Landroid/bluetooth/BluetoothTetheringDataTracker;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothTetheringDataTracker;->stopReverseTether()V

    goto/16 :goto_0

    .line 395
    nop

    :sswitch_data_0
    .sparse-switch
        0x11000 -> :sswitch_0
        0x11004 -> :sswitch_1
        0x70004 -> :sswitch_2
        0x70005 -> :sswitch_3
    .end sparse-switch
.end method
