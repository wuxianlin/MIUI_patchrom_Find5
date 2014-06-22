.class Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;
.super Landroid/bluetooth/IQBluetoothAdapterCallback$Stub;
.source "QBluetoothAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/QBluetoothAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LeLppClientWrapper"
.end annotation


# instance fields
.field private final client:Landroid/bluetooth/QBluetoothAdapter$LeLppCallback;

.field private final mAdapter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/bluetooth/QBluetoothAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final mDevice:Ljava/lang/String;

.field private final mQBluetoothAdapterService:Landroid/bluetooth/IQBluetooth;


# direct methods
.method public constructor <init>(Landroid/bluetooth/QBluetoothAdapter;Landroid/bluetooth/IQBluetooth;Ljava/lang/String;Landroid/bluetooth/QBluetoothAdapter$LeLppCallback;)V
    .locals 1
    .parameter "adapter"
    .parameter "adapterService"
    .parameter "address"
    .parameter "callback"

    .prologue
    .line 597
    invoke-direct {p0}, Landroid/bluetooth/IQBluetoothAdapterCallback$Stub;-><init>()V

    .line 598
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;->mAdapter:Ljava/lang/ref/WeakReference;

    .line 599
    iput-object p2, p0, Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;->mQBluetoothAdapterService:Landroid/bluetooth/IQBluetooth;

    .line 600
    iput-object p3, p0, Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;->mDevice:Ljava/lang/String;

    .line 601
    iput-object p4, p0, Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;->client:Landroid/bluetooth/QBluetoothAdapter$LeLppCallback;

    .line 602
    return-void
.end method


# virtual methods
.method public enableMonitor(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 626
    iget-object v1, p0, Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;->mQBluetoothAdapterService:Landroid/bluetooth/IQBluetooth;

    if-eqz v1, :cond_0

    .line 628
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;->mQBluetoothAdapterService:Landroid/bluetooth/IQBluetooth;

    iget-object v2, p0, Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;->mDevice:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/bluetooth/IQBluetooth;->enableLeLppRssiMonitor(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 633
    :cond_0
    :goto_0
    return-void

    .line 629
    :catch_0
    move-exception v0

    .line 630
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "QBluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onEnableRssiMonitor(Ljava/lang/String;II)V
    .locals 4
    .parameter "address"
    .parameter "enable"
    .parameter "status"

    .prologue
    .line 684
    iget-object v1, p0, Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;->client:Landroid/bluetooth/QBluetoothAdapter$LeLppCallback;

    if-nez v1, :cond_0

    .line 692
    :goto_0
    return-void

    .line 688
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;->client:Landroid/bluetooth/QBluetoothAdapter$LeLppCallback;

    invoke-interface {v1, p2, p3}, Landroid/bluetooth/QBluetoothAdapter$LeLppCallback;->onEnableRssiMonitor(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 689
    :catch_0
    move-exception v0

    .line 690
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "QBluetoothAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onReadRssiThreshold(Ljava/lang/String;IIII)V
    .locals 4
    .parameter "address"
    .parameter "low"
    .parameter "upper"
    .parameter "alert"
    .parameter "status"

    .prologue
    .line 669
    iget-object v1, p0, Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;->client:Landroid/bluetooth/QBluetoothAdapter$LeLppCallback;

    if-nez v1, :cond_0

    .line 677
    :goto_0
    return-void

    .line 673
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;->client:Landroid/bluetooth/QBluetoothAdapter$LeLppCallback;

    invoke-interface {v1, p2, p3, p4, p5}, Landroid/bluetooth/QBluetoothAdapter$LeLppCallback;->onReadRssiThreshold(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 674
    :catch_0
    move-exception v0

    .line 675
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "QBluetoothAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onRssiThresholdEvent(Ljava/lang/String;II)V
    .locals 4
    .parameter "address"
    .parameter "evtType"
    .parameter "rssi"

    .prologue
    .line 699
    iget-object v1, p0, Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;->client:Landroid/bluetooth/QBluetoothAdapter$LeLppCallback;

    if-nez v1, :cond_0

    .line 707
    :goto_0
    return-void

    .line 703
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;->client:Landroid/bluetooth/QBluetoothAdapter$LeLppCallback;

    invoke-interface {v1, p2, p3}, Landroid/bluetooth/QBluetoothAdapter$LeLppCallback;->onRssiThresholdEvent(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 704
    :catch_0
    move-exception v0

    .line 705
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "QBluetoothAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onScanResult(Ljava/lang/String;I[B)V
    .locals 0
    .parameter "address"
    .parameter "rssi"
    .parameter "advData"

    .prologue
    .line 646
    return-void
.end method

.method public onUpdateLease()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 710
    iget-object v2, p0, Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;->client:Landroid/bluetooth/QBluetoothAdapter$LeLppCallback;

    if-nez v2, :cond_0

    .line 715
    :goto_0
    return v1

    .line 712
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;->client:Landroid/bluetooth/QBluetoothAdapter$LeLppCallback;

    invoke-interface {v2}, Landroid/bluetooth/QBluetoothAdapter$LeLppCallback;->onUpdateLease()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 713
    :catch_0
    move-exception v0

    .line 714
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "QBluetoothAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onWriteRssiThreshold(Ljava/lang/String;I)V
    .locals 4
    .parameter "address"
    .parameter "status"

    .prologue
    .line 653
    iget-object v1, p0, Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;->client:Landroid/bluetooth/QBluetoothAdapter$LeLppCallback;

    if-nez v1, :cond_0

    .line 661
    :goto_0
    return-void

    .line 657
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;->client:Landroid/bluetooth/QBluetoothAdapter$LeLppCallback;

    invoke-interface {v1, p2}, Landroid/bluetooth/QBluetoothAdapter$LeLppCallback;->onWriteRssiThreshold(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 658
    :catch_0
    move-exception v0

    .line 659
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "QBluetoothAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public readRssiThreshold()V
    .locals 3

    .prologue
    .line 636
    iget-object v1, p0, Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;->mQBluetoothAdapterService:Landroid/bluetooth/IQBluetooth;

    if-eqz v1, :cond_0

    .line 638
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;->mQBluetoothAdapterService:Landroid/bluetooth/IQBluetooth;

    iget-object v2, p0, Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;->mDevice:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/bluetooth/IQBluetooth;->readLeLppRssiThreshold(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 643
    :cond_0
    :goto_0
    return-void

    .line 639
    :catch_0
    move-exception v0

    .line 640
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "QBluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public register2(Z)Z
    .locals 3
    .parameter "add"

    .prologue
    .line 605
    iget-object v1, p0, Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;->mQBluetoothAdapterService:Landroid/bluetooth/IQBluetooth;

    if-eqz v1, :cond_0

    .line 607
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;->mQBluetoothAdapterService:Landroid/bluetooth/IQBluetooth;

    iget-object v2, p0, Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;->mDevice:Ljava/lang/String;

    invoke-interface {v1, v2, p0, p1}, Landroid/bluetooth/IQBluetooth;->registerLeLppRssiMonitorClient(Ljava/lang/String;Landroid/bluetooth/IQBluetoothAdapterCallback;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 612
    :goto_0
    return v1

    .line 608
    :catch_0
    move-exception v0

    .line 609
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "QBluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 612
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public writeRssiThreshold(BB)V
    .locals 3
    .parameter "min"
    .parameter "max"

    .prologue
    .line 616
    iget-object v1, p0, Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;->mQBluetoothAdapterService:Landroid/bluetooth/IQBluetooth;

    if-eqz v1, :cond_0

    .line 618
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;->mQBluetoothAdapterService:Landroid/bluetooth/IQBluetooth;

    iget-object v2, p0, Landroid/bluetooth/QBluetoothAdapter$LeLppClientWrapper;->mDevice:Ljava/lang/String;

    invoke-interface {v1, v2, p1, p2}, Landroid/bluetooth/IQBluetooth;->writeLeLppRssiThreshold(Ljava/lang/String;BB)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 623
    :cond_0
    :goto_0
    return-void

    .line 619
    :catch_0
    move-exception v0

    .line 620
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "QBluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
