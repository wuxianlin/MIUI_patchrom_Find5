.class Landroid/bluetooth/BluetoothHandsfreeClient$2;
.super Ljava/lang/Object;
.source "BluetoothHandsfreeClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothHandsfreeClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothHandsfreeClient;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothHandsfreeClient;)V
    .locals 0

    .prologue
    .line 1123
    iput-object p1, p0, Landroid/bluetooth/BluetoothHandsfreeClient$2;->this$0:Landroid/bluetooth/BluetoothHandsfreeClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 1126
    const-string v0, "BluetoothHandsfreeClient"

    const-string v1, "Proxy object connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    iget-object v0, p0, Landroid/bluetooth/BluetoothHandsfreeClient$2;->this$0:Landroid/bluetooth/BluetoothHandsfreeClient;

    invoke-static {p2}, Landroid/bluetooth/IBluetoothHandsfreeClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHandsfreeClient;

    move-result-object v1

    # setter for: Landroid/bluetooth/BluetoothHandsfreeClient;->mService:Landroid/bluetooth/IBluetoothHandsfreeClient;
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothHandsfreeClient;->access$102(Landroid/bluetooth/BluetoothHandsfreeClient;Landroid/bluetooth/IBluetoothHandsfreeClient;)Landroid/bluetooth/IBluetoothHandsfreeClient;

    .line 1129
    iget-object v0, p0, Landroid/bluetooth/BluetoothHandsfreeClient$2;->this$0:Landroid/bluetooth/BluetoothHandsfreeClient;

    # getter for: Landroid/bluetooth/BluetoothHandsfreeClient;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothHandsfreeClient;->access$300(Landroid/bluetooth/BluetoothHandsfreeClient;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1130
    iget-object v0, p0, Landroid/bluetooth/BluetoothHandsfreeClient$2;->this$0:Landroid/bluetooth/BluetoothHandsfreeClient;

    # getter for: Landroid/bluetooth/BluetoothHandsfreeClient;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothHandsfreeClient;->access$300(Landroid/bluetooth/BluetoothHandsfreeClient;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    const/16 v1, 0xa

    iget-object v2, p0, Landroid/bluetooth/BluetoothHandsfreeClient$2;->this$0:Landroid/bluetooth/BluetoothHandsfreeClient;

    invoke-interface {v0, v1, v2}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V

    .line 1132
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 1135
    const-string v0, "BluetoothHandsfreeClient"

    const-string v1, "Proxy object disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    iget-object v0, p0, Landroid/bluetooth/BluetoothHandsfreeClient$2;->this$0:Landroid/bluetooth/BluetoothHandsfreeClient;

    const/4 v1, 0x0

    # setter for: Landroid/bluetooth/BluetoothHandsfreeClient;->mService:Landroid/bluetooth/IBluetoothHandsfreeClient;
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothHandsfreeClient;->access$102(Landroid/bluetooth/BluetoothHandsfreeClient;Landroid/bluetooth/IBluetoothHandsfreeClient;)Landroid/bluetooth/IBluetoothHandsfreeClient;

    .line 1137
    iget-object v0, p0, Landroid/bluetooth/BluetoothHandsfreeClient$2;->this$0:Landroid/bluetooth/BluetoothHandsfreeClient;

    # getter for: Landroid/bluetooth/BluetoothHandsfreeClient;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothHandsfreeClient;->access$300(Landroid/bluetooth/BluetoothHandsfreeClient;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1138
    iget-object v0, p0, Landroid/bluetooth/BluetoothHandsfreeClient$2;->this$0:Landroid/bluetooth/BluetoothHandsfreeClient;

    # getter for: Landroid/bluetooth/BluetoothHandsfreeClient;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothHandsfreeClient;->access$300(Landroid/bluetooth/BluetoothHandsfreeClient;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceDisconnected(I)V

    .line 1140
    :cond_0
    return-void
.end method
