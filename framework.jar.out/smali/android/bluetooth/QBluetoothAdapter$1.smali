.class Landroid/bluetooth/QBluetoothAdapter$1;
.super Landroid/bluetooth/IBluetoothManagerCallback$Stub;
.source "QBluetoothAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/QBluetoothAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/QBluetoothAdapter;


# direct methods
.method constructor <init>(Landroid/bluetooth/QBluetoothAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 721
    iput-object p1, p0, Landroid/bluetooth/QBluetoothAdapter$1;->this$0:Landroid/bluetooth/QBluetoothAdapter;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothManagerCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothServiceDown()V
    .locals 4

    .prologue
    .line 731
    iget-object v0, p0, Landroid/bluetooth/QBluetoothAdapter$1;->this$0:Landroid/bluetooth/QBluetoothAdapter;

    #getter for: Landroid/bluetooth/QBluetoothAdapter;->mAdapterServiceCallback:Landroid/bluetooth/IBluetoothManagerCallback;
    invoke-static {v0}, Landroid/bluetooth/QBluetoothAdapter;->access$000(Landroid/bluetooth/QBluetoothAdapter;)Landroid/bluetooth/IBluetoothManagerCallback;

    move-result-object v1

    monitor-enter v1

    .line 732
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/QBluetoothAdapter$1;->this$0:Landroid/bluetooth/QBluetoothAdapter;

    const/4 v2, 0x0

    #setter for: Landroid/bluetooth/QBluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;
    invoke-static {v0, v2}, Landroid/bluetooth/QBluetoothAdapter;->access$102(Landroid/bluetooth/QBluetoothAdapter;Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;

    .line 733
    const-string v0, "QBluetoothAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onBluetoothServiceDown Adapter OFF: mService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/QBluetoothAdapter$1;->this$0:Landroid/bluetooth/QBluetoothAdapter;

    #getter for: Landroid/bluetooth/QBluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;
    invoke-static {v3}, Landroid/bluetooth/QBluetoothAdapter;->access$100(Landroid/bluetooth/QBluetoothAdapter;)Landroid/bluetooth/IBluetooth;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mQService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/QBluetoothAdapter$1;->this$0:Landroid/bluetooth/QBluetoothAdapter;

    #getter for: Landroid/bluetooth/QBluetoothAdapter;->mQService:Landroid/bluetooth/IQBluetooth;
    invoke-static {v3}, Landroid/bluetooth/QBluetoothAdapter;->access$200(Landroid/bluetooth/QBluetoothAdapter;)Landroid/bluetooth/IQBluetooth;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    monitor-exit v1

    .line 735
    return-void

    .line 734
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onBluetoothServiceUp(Landroid/bluetooth/IBluetooth;)V
    .locals 4
    .parameter "bluetoothService"

    .prologue
    .line 723
    iget-object v0, p0, Landroid/bluetooth/QBluetoothAdapter$1;->this$0:Landroid/bluetooth/QBluetoothAdapter;

    #getter for: Landroid/bluetooth/QBluetoothAdapter;->mAdapterServiceCallback:Landroid/bluetooth/IBluetoothManagerCallback;
    invoke-static {v0}, Landroid/bluetooth/QBluetoothAdapter;->access$000(Landroid/bluetooth/QBluetoothAdapter;)Landroid/bluetooth/IBluetoothManagerCallback;

    move-result-object v1

    monitor-enter v1

    .line 725
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/QBluetoothAdapter$1;->this$0:Landroid/bluetooth/QBluetoothAdapter;

    #setter for: Landroid/bluetooth/QBluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;
    invoke-static {v0, p1}, Landroid/bluetooth/QBluetoothAdapter;->access$102(Landroid/bluetooth/QBluetoothAdapter;Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;

    .line 726
    const-string v0, "QBluetoothAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onBluetoothServiceUp Adapter ON: mService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/QBluetoothAdapter$1;->this$0:Landroid/bluetooth/QBluetoothAdapter;

    #getter for: Landroid/bluetooth/QBluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;
    invoke-static {v3}, Landroid/bluetooth/QBluetoothAdapter;->access$100(Landroid/bluetooth/QBluetoothAdapter;)Landroid/bluetooth/IBluetooth;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mQService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/QBluetoothAdapter$1;->this$0:Landroid/bluetooth/QBluetoothAdapter;

    #getter for: Landroid/bluetooth/QBluetoothAdapter;->mQService:Landroid/bluetooth/IQBluetooth;
    invoke-static {v3}, Landroid/bluetooth/QBluetoothAdapter;->access$200(Landroid/bluetooth/QBluetoothAdapter;)Landroid/bluetooth/IQBluetooth;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ManagerService:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/QBluetoothAdapter$1;->this$0:Landroid/bluetooth/QBluetoothAdapter;

    #getter for: Landroid/bluetooth/QBluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;
    invoke-static {v3}, Landroid/bluetooth/QBluetoothAdapter;->access$300(Landroid/bluetooth/QBluetoothAdapter;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    monitor-exit v1

    .line 728
    return-void

    .line 727
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
