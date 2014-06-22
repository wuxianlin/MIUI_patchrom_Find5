.class Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IBluetoothGattCallback.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothGattCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothGattCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .parameter "remote"

    .prologue
    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 437
    iput-object p1, p0, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 438
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 445
    const-string v0, "android.bluetooth.IBluetoothGattCallback"

    return-object v0
.end method

.method public onCharacteristicRead(Ljava/lang/String;IIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;[B)V
    .locals 5
    .parameter "address"
    .parameter "status"
    .parameter "srvcType"
    .parameter "srvcInstId"
    .parameter "srvcUuid"
    .parameter "charInstId"
    .parameter "charUuid"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 646
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 647
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 649
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 650
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 651
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 652
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 653
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 654
    if-eqz p5, :cond_0

    .line 655
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 656
    const/4 v2, 0x0

    invoke-virtual {p5, v0, v2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 661
    :goto_0
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 662
    if-eqz p7, :cond_1

    .line 663
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 664
    const/4 v2, 0x0

    invoke-virtual {p7, v0, v2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 669
    :goto_1
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 670
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 671
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 674
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 675
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 677
    return-void

    .line 659
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 674
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 675
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 667
    :cond_1
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public onCharacteristicWrite(Ljava/lang/String;IIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;)V
    .locals 5
    .parameter "address"
    .parameter "status"
    .parameter "srvcType"
    .parameter "srvcInstId"
    .parameter "srvcUuid"
    .parameter "charInstId"
    .parameter "charUuid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 680
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 681
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 683
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 684
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 685
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 686
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 687
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 688
    if-eqz p5, :cond_0

    .line 689
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 690
    const/4 v2, 0x0

    invoke-virtual {p5, v0, v2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 695
    :goto_0
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 696
    if-eqz p7, :cond_1

    .line 697
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 698
    const/4 v2, 0x0

    invoke-virtual {p7, v0, v2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 703
    :goto_1
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 704
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 707
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 708
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 710
    return-void

    .line 693
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 707
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 708
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 701
    :cond_1
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public onClientConnectionState(IIZLjava/lang/String;)V
    .locals 5
    .parameter "status"
    .parameter "clientIf"
    .parameter "connected"
    .parameter "address"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 465
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 466
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 468
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 469
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 470
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 471
    if-eqz p3, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 472
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 473
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 474
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 477
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 478
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 480
    return-void

    .line 477
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 478
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public onClientRegistered(II)V
    .locals 5
    .parameter "status"
    .parameter "clientIf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 449
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 450
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 452
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 453
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 454
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 455
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 456
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 459
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 460
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 462
    return-void

    .line 459
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 460
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public onDescriptorRead(Ljava/lang/String;IIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;[B)V
    .locals 5
    .parameter "address"
    .parameter "status"
    .parameter "srvcType"
    .parameter "srvcInstId"
    .parameter "srvcUuid"
    .parameter "charInstId"
    .parameter "charUuid"
    .parameter "descrInstId"
    .parameter "descrUuid"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 729
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 730
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 732
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 733
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 734
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 735
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 736
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 737
    if-eqz p5, :cond_0

    .line 738
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 739
    const/4 v2, 0x0

    invoke-virtual {p5, v0, v2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 744
    :goto_0
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 745
    if-eqz p7, :cond_1

    .line 746
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 747
    const/4 v2, 0x0

    invoke-virtual {p7, v0, v2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 752
    :goto_1
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 753
    if-eqz p9, :cond_2

    .line 754
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 755
    const/4 v2, 0x0

    invoke-virtual {p9, v0, v2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 760
    :goto_2
    invoke-virtual {v0, p10}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 761
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 762
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 765
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 766
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 768
    return-void

    .line 742
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 765
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 766
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 750
    :cond_1
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 758
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public onDescriptorWrite(Ljava/lang/String;IIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;)V
    .locals 5
    .parameter "address"
    .parameter "status"
    .parameter "srvcType"
    .parameter "srvcInstId"
    .parameter "srvcUuid"
    .parameter "charInstId"
    .parameter "charUuid"
    .parameter "descrInstId"
    .parameter "descrUuid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 771
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 772
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 774
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 775
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 776
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 777
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 778
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 779
    if-eqz p5, :cond_0

    .line 780
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 781
    const/4 v2, 0x0

    invoke-virtual {p5, v0, v2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 786
    :goto_0
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 787
    if-eqz p7, :cond_1

    .line 788
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 789
    const/4 v2, 0x0

    invoke-virtual {p7, v0, v2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 794
    :goto_1
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 795
    if-eqz p9, :cond_2

    .line 796
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 797
    const/4 v2, 0x0

    invoke-virtual {p9, v0, v2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 802
    :goto_2
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 803
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 806
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 807
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 809
    return-void

    .line 784
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 806
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 807
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 792
    :cond_1
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 800
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public onExecuteWrite(Ljava/lang/String;I)V
    .locals 5
    .parameter "address"
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 713
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 714
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 716
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 717
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 718
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 719
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 720
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 723
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 724
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 726
    return-void

    .line 723
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 724
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public onGetCharacteristic(Ljava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;I)V
    .locals 5
    .parameter "address"
    .parameter "srvcType"
    .parameter "srvcInstId"
    .parameter "srvcUuid"
    .parameter "charInstId"
    .parameter "charUuid"
    .parameter "charProps"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 557
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 558
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 560
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 561
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 562
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 563
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 564
    if-eqz p4, :cond_0

    .line 565
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 566
    const/4 v2, 0x0

    invoke-virtual {p4, v0, v2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 571
    :goto_0
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 572
    if-eqz p6, :cond_1

    .line 573
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 574
    const/4 v2, 0x0

    invoke-virtual {p6, v0, v2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 579
    :goto_1
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 580
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 581
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 584
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 585
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 587
    return-void

    .line 569
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 584
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 585
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 577
    :cond_1
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public onGetDescriptor(Ljava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;)V
    .locals 5
    .parameter "address"
    .parameter "srvcType"
    .parameter "srvcInstId"
    .parameter "srvcUuid"
    .parameter "charInstId"
    .parameter "charUuid"
    .parameter "descrInstId"
    .parameter "descrUuid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 590
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 591
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 593
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 594
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 595
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 596
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 597
    if-eqz p4, :cond_0

    .line 598
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 599
    const/4 v2, 0x0

    invoke-virtual {p4, v0, v2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 604
    :goto_0
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 605
    if-eqz p6, :cond_1

    .line 606
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 607
    const/4 v2, 0x0

    invoke-virtual {p6, v0, v2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 612
    :goto_1
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 613
    if-eqz p8, :cond_2

    .line 614
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 615
    const/4 v2, 0x0

    invoke-virtual {p8, v0, v2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 620
    :goto_2
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 621
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 624
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 625
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 627
    return-void

    .line 602
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 624
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 625
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 610
    :cond_1
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 618
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public onGetIncludedService(Ljava/lang/String;IILandroid/os/ParcelUuid;IILandroid/os/ParcelUuid;)V
    .locals 5
    .parameter "address"
    .parameter "srvcType"
    .parameter "srvcInstId"
    .parameter "srvcUuid"
    .parameter "inclSrvcType"
    .parameter "inclSrvcInstId"
    .parameter "inclSrvcUuid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 524
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 525
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 527
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 528
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 529
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 530
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 531
    if-eqz p4, :cond_0

    .line 532
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 533
    const/4 v2, 0x0

    invoke-virtual {p4, v0, v2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 538
    :goto_0
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 539
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 540
    if-eqz p7, :cond_1

    .line 541
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 542
    const/4 v2, 0x0

    invoke-virtual {p7, v0, v2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 547
    :goto_1
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 548
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 551
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 552
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 554
    return-void

    .line 536
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 551
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 552
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 545
    :cond_1
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public onGetService(Ljava/lang/String;IILandroid/os/ParcelUuid;)V
    .locals 5
    .parameter "address"
    .parameter "srvcType"
    .parameter "srvcInstId"
    .parameter "srvcUuid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 500
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 501
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 503
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 504
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 505
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 506
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 507
    if-eqz p4, :cond_0

    .line 508
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 509
    const/4 v2, 0x0

    invoke-virtual {p4, v0, v2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 514
    :goto_0
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 515
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 518
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 519
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 521
    return-void

    .line 512
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 518
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 519
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public onListen(I)V
    .locals 5
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 862
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 863
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 865
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 866
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 867
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 868
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 871
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 872
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 874
    return-void

    .line 871
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 872
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public onNotify(Ljava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;[B)V
    .locals 5
    .parameter "address"
    .parameter "srvcType"
    .parameter "srvcInstId"
    .parameter "srvcUuid"
    .parameter "charInstId"
    .parameter "charUuid"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 812
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 813
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 815
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 816
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 817
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 818
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 819
    if-eqz p4, :cond_0

    .line 820
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 821
    const/4 v2, 0x0

    invoke-virtual {p4, v0, v2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 826
    :goto_0
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 827
    if-eqz p6, :cond_1

    .line 828
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 829
    const/4 v2, 0x0

    invoke-virtual {p6, v0, v2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 834
    :goto_1
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 835
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 836
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 839
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 840
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 842
    return-void

    .line 824
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 839
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 840
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 832
    :cond_1
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public onReadRemoteRssi(Ljava/lang/String;II)V
    .locals 5
    .parameter "address"
    .parameter "rssi"
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 845
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 846
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 848
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 849
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 850
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 851
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 852
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 853
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 856
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 857
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 859
    return-void

    .line 856
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 857
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public onScanResult(Ljava/lang/String;I[B)V
    .locals 5
    .parameter "address"
    .parameter "rssi"
    .parameter "advData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 483
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 484
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 486
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 487
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 488
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 489
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 490
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 491
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 494
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 495
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 497
    return-void

    .line 494
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 495
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public onSearchComplete(Ljava/lang/String;I)V
    .locals 5
    .parameter "address"
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 630
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 631
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 633
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 634
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 635
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 636
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 637
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 640
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 641
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 643
    return-void

    .line 640
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 641
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method
