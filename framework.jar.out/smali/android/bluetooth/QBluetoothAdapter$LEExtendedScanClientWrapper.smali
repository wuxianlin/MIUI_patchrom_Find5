.class Landroid/bluetooth/QBluetoothAdapter$LEExtendedScanClientWrapper;
.super Landroid/bluetooth/IQBluetoothAdapterCallback$Stub;
.source "QBluetoothAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/QBluetoothAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LEExtendedScanClientWrapper"
.end annotation


# instance fields
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

.field private final mClient:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

.field private final mQBluetoothAdapterService:Landroid/bluetooth/IQBluetooth;

.field private mScanToken:I

.field private final mServiceFilter:[Landroid/bluetooth/BluetoothLEServiceUuid;


# direct methods
.method public constructor <init>(Landroid/bluetooth/QBluetoothAdapter;Landroid/bluetooth/IQBluetooth;[Landroid/bluetooth/BluetoothLEServiceUuid;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V
    .locals 1
    .param p1, "adapter"    # Landroid/bluetooth/QBluetoothAdapter;
    .param p2, "adapterService"    # Landroid/bluetooth/IQBluetooth;
    .param p3, "services"    # [Landroid/bluetooth/BluetoothLEServiceUuid;
    .param p4, "callback"    # Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .prologue
    .line 507
    invoke-direct {p0}, Landroid/bluetooth/IQBluetoothAdapterCallback$Stub;-><init>()V

    .line 508
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/bluetooth/QBluetoothAdapter$LEExtendedScanClientWrapper;->mAdapter:Ljava/lang/ref/WeakReference;

    .line 509
    iput-object p2, p0, Landroid/bluetooth/QBluetoothAdapter$LEExtendedScanClientWrapper;->mQBluetoothAdapterService:Landroid/bluetooth/IQBluetooth;

    .line 510
    iput-object p3, p0, Landroid/bluetooth/QBluetoothAdapter$LEExtendedScanClientWrapper;->mServiceFilter:[Landroid/bluetooth/BluetoothLEServiceUuid;

    .line 511
    iput-object p4, p0, Landroid/bluetooth/QBluetoothAdapter$LEExtendedScanClientWrapper;->mClient:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .line 512
    const/4 v0, -0x1

    iput v0, p0, Landroid/bluetooth/QBluetoothAdapter$LEExtendedScanClientWrapper;->mScanToken:I

    .line 513
    return-void
.end method


# virtual methods
.method public onEnableRssiMonitor(Ljava/lang/String;II)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "enable"    # I
    .param p3, "status"    # I

    .prologue
    .line 575
    return-void
.end method

.method public onReadRssiThreshold(Ljava/lang/String;IIII)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "low"    # I
    .param p3, "upper"    # I
    .param p4, "alert"    # I
    .param p5, "status"    # I

    .prologue
    .line 572
    return-void
.end method

.method public onRssiThresholdEvent(Ljava/lang/String;II)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "evtType"    # I
    .param p3, "rssi"    # I

    .prologue
    .line 578
    return-void
.end method

.method public onScanResult(Ljava/lang/String;I[B)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "rssi"    # I
    .param p3, "advData"    # [B

    .prologue
    .line 552
    monitor-enter p0

    .line 553
    :try_start_0
    iget v2, p0, Landroid/bluetooth/QBluetoothAdapter$LEExtendedScanClientWrapper;->mScanToken:I

    if-gtz v2, :cond_0

    monitor-exit p0

    .line 565
    :goto_0
    return-void

    .line 554
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 556
    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/QBluetoothAdapter$LEExtendedScanClientWrapper;->mAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/QBluetoothAdapter;

    .line 557
    .local v0, "adapter":Landroid/bluetooth/QBluetoothAdapter;
    if-nez v0, :cond_1

    .line 558
    const-string v2, "QBluetoothAdapter"

    const-string v3, "OnScanResult, QBluetoothAdapter null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 562
    .end local v0    # "adapter":Landroid/bluetooth/QBluetoothAdapter;
    :catch_0
    move-exception v1

    .line 563
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "QBluetoothAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 554
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 561
    .restart local v0    # "adapter":Landroid/bluetooth/QBluetoothAdapter;
    :cond_1
    :try_start_3
    iget-object v2, p0, Landroid/bluetooth/QBluetoothAdapter$LEExtendedScanClientWrapper;->mClient:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-interface {v2, v3, p2, p3}, Landroid/bluetooth/BluetoothAdapter$LeScanCallback;->onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0
.end method

.method public onUpdateLease()Z
    .locals 3

    .prologue
    .line 581
    iget-object v1, p0, Landroid/bluetooth/QBluetoothAdapter$LEExtendedScanClientWrapper;->mAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/QBluetoothAdapter;

    .line 582
    .local v0, "adapter":Landroid/bluetooth/QBluetoothAdapter;
    if-nez v0, :cond_0

    .line 583
    const-string v1, "QBluetoothAdapter"

    const-string/jumbo v2, "onUpdateLease(), QBluetoothAdapter null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    const/4 v1, 0x0

    .line 586
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onWriteRssiThreshold(Ljava/lang/String;I)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "status"    # I

    .prologue
    .line 568
    return-void
.end method

.method public startScan()Z
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 516
    const/4 v1, 0x0

    .line 517
    .local v1, "started":Z
    monitor-enter p0

    .line 518
    :try_start_0
    iget v2, p0, Landroid/bluetooth/QBluetoothAdapter$LEExtendedScanClientWrapper;->mScanToken:I

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Landroid/bluetooth/QBluetoothAdapter$LEExtendedScanClientWrapper;->mQBluetoothAdapterService:Landroid/bluetooth/IQBluetooth;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 521
    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/QBluetoothAdapter$LEExtendedScanClientWrapper;->mQBluetoothAdapterService:Landroid/bluetooth/IQBluetooth;

    iget-object v3, p0, Landroid/bluetooth/QBluetoothAdapter$LEExtendedScanClientWrapper;->mServiceFilter:[Landroid/bluetooth/BluetoothLEServiceUuid;

    invoke-interface {v2, v3, p0}, Landroid/bluetooth/IQBluetooth;->startLeScanEx([Landroid/bluetooth/BluetoothLEServiceUuid;Landroid/bluetooth/IQBluetoothAdapterCallback;)I

    move-result v2

    iput v2, p0, Landroid/bluetooth/QBluetoothAdapter$LEExtendedScanClientWrapper;->mScanToken:I

    .line 522
    iget v2, p0, Landroid/bluetooth/QBluetoothAdapter$LEExtendedScanClientWrapper;->mScanToken:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v2, v4, :cond_0

    .line 523
    const/4 v1, 0x1

    .line 530
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 531
    return v1

    .line 525
    :catch_0
    move-exception v0

    .line 526
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "QBluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 527
    const/4 v1, 0x0

    goto :goto_0

    .line 530
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public stopScan()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 535
    monitor-enter p0

    .line 536
    :try_start_0
    iget v1, p0, Landroid/bluetooth/QBluetoothAdapter$LEExtendedScanClientWrapper;->mScanToken:I

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Landroid/bluetooth/QBluetoothAdapter$LEExtendedScanClientWrapper;->mQBluetoothAdapterService:Landroid/bluetooth/IQBluetooth;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 539
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/QBluetoothAdapter$LEExtendedScanClientWrapper;->mQBluetoothAdapterService:Landroid/bluetooth/IQBluetooth;

    iget v2, p0, Landroid/bluetooth/QBluetoothAdapter$LEExtendedScanClientWrapper;->mScanToken:I

    invoke-interface {v1, v2}, Landroid/bluetooth/IQBluetooth;->stopLeScanEx(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 543
    :goto_0
    const/4 v1, -0x1

    :try_start_2
    iput v1, p0, Landroid/bluetooth/QBluetoothAdapter$LEExtendedScanClientWrapper;->mScanToken:I

    .line 545
    :cond_0
    monitor-exit p0

    .line 546
    return-void

    .line 540
    :catch_0
    move-exception v0

    .line 541
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "QBluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 545
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
