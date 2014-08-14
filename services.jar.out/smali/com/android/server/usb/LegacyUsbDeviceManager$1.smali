.class Lcom/android/server/usb/LegacyUsbDeviceManager$1;
.super Landroid/os/UEventObserver;
.source "LegacyUsbDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/LegacyUsbDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/LegacyUsbDeviceManager;


# direct methods
.method constructor <init>(Lcom/android/server/usb/LegacyUsbDeviceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$1;->this$0:Lcom/android/server/usb/LegacyUsbDeviceManager;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 133
    const-string v2, "SWITCH_NAME"

    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, name:Ljava/lang/String;
    const-string v2, "SWITCH_STATE"

    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, state:Ljava/lang/String;
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 137
    iget-object v2, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$1;->this$0:Lcom/android/server/usb/LegacyUsbDeviceManager;

    #getter for: Lcom/android/server/usb/LegacyUsbDeviceManager;->mLegacy:Z
    invoke-static {v2}, Lcom/android/server/usb/LegacyUsbDeviceManager;->access$200(Lcom/android/server/usb/LegacyUsbDeviceManager;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 138
    const-string v2, "usb_mass_storage"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 139
    iget-object v2, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$1;->this$0:Lcom/android/server/usb/LegacyUsbDeviceManager;

    const-string v3, "online"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    #setter for: Lcom/android/server/usb/LegacyUsbDeviceManager;->mConnected:Z
    invoke-static {v2, v3}, Lcom/android/server/usb/LegacyUsbDeviceManager;->access$302(Lcom/android/server/usb/LegacyUsbDeviceManager;Z)Z

    .line 140
    iget-object v2, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$1;->this$0:Lcom/android/server/usb/LegacyUsbDeviceManager;

    const-string v3, "online"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    #setter for: Lcom/android/server/usb/LegacyUsbDeviceManager;->mConfigured:Z
    invoke-static {v2, v3}, Lcom/android/server/usb/LegacyUsbDeviceManager;->access$402(Lcom/android/server/usb/LegacyUsbDeviceManager;Z)Z

    .line 149
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$1;->this$0:Lcom/android/server/usb/LegacyUsbDeviceManager;

    #getter for: Lcom/android/server/usb/LegacyUsbDeviceManager;->mConnected:Z
    invoke-static {v2}, Lcom/android/server/usb/LegacyUsbDeviceManager;->access$300(Lcom/android/server/usb/LegacyUsbDeviceManager;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$1;->this$0:Lcom/android/server/usb/LegacyUsbDeviceManager;

    #getter for: Lcom/android/server/usb/LegacyUsbDeviceManager;->mConfigured:Z
    invoke-static {v2}, Lcom/android/server/usb/LegacyUsbDeviceManager;->access$400(Lcom/android/server/usb/LegacyUsbDeviceManager;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$1;->this$0:Lcom/android/server/usb/LegacyUsbDeviceManager;

    #getter for: Lcom/android/server/usb/LegacyUsbDeviceManager;->mHandler:Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;
    invoke-static {v2}, Lcom/android/server/usb/LegacyUsbDeviceManager;->access$100(Lcom/android/server/usb/LegacyUsbDeviceManager;)Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;

    move-result-object v2

    const-string v3, "DISCONNECTED"

    invoke-virtual {v2, v3}, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->updateState(Ljava/lang/String;)V

    .line 154
    :cond_1
    :goto_1
    return-void

    .line 143
    :cond_2
    const-string v2, "usb_connected"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 144
    iget-object v2, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$1;->this$0:Lcom/android/server/usb/LegacyUsbDeviceManager;

    const-string v3, "1"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    #setter for: Lcom/android/server/usb/LegacyUsbDeviceManager;->mConnected:Z
    invoke-static {v2, v3}, Lcom/android/server/usb/LegacyUsbDeviceManager;->access$302(Lcom/android/server/usb/LegacyUsbDeviceManager;Z)Z

    goto :goto_0

    .line 145
    :cond_3
    const-string v2, "usb_configuration"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 146
    iget-object v2, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$1;->this$0:Lcom/android/server/usb/LegacyUsbDeviceManager;

    const-string v3, "1"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    #setter for: Lcom/android/server/usb/LegacyUsbDeviceManager;->mConfigured:Z
    invoke-static {v2, v3}, Lcom/android/server/usb/LegacyUsbDeviceManager;->access$402(Lcom/android/server/usb/LegacyUsbDeviceManager;Z)Z

    goto :goto_0

    .line 150
    :cond_4
    iget-object v2, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$1;->this$0:Lcom/android/server/usb/LegacyUsbDeviceManager;

    #getter for: Lcom/android/server/usb/LegacyUsbDeviceManager;->mConnected:Z
    invoke-static {v2}, Lcom/android/server/usb/LegacyUsbDeviceManager;->access$300(Lcom/android/server/usb/LegacyUsbDeviceManager;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$1;->this$0:Lcom/android/server/usb/LegacyUsbDeviceManager;

    #getter for: Lcom/android/server/usb/LegacyUsbDeviceManager;->mConfigured:Z
    invoke-static {v2}, Lcom/android/server/usb/LegacyUsbDeviceManager;->access$400(Lcom/android/server/usb/LegacyUsbDeviceManager;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$1;->this$0:Lcom/android/server/usb/LegacyUsbDeviceManager;

    #getter for: Lcom/android/server/usb/LegacyUsbDeviceManager;->mHandler:Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;
    invoke-static {v2}, Lcom/android/server/usb/LegacyUsbDeviceManager;->access$100(Lcom/android/server/usb/LegacyUsbDeviceManager;)Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;

    move-result-object v2

    const-string v3, "CONNECTED"

    invoke-virtual {v2, v3}, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->updateState(Ljava/lang/String;)V

    goto :goto_1

    .line 151
    :cond_5
    iget-object v2, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$1;->this$0:Lcom/android/server/usb/LegacyUsbDeviceManager;

    #getter for: Lcom/android/server/usb/LegacyUsbDeviceManager;->mConnected:Z
    invoke-static {v2}, Lcom/android/server/usb/LegacyUsbDeviceManager;->access$300(Lcom/android/server/usb/LegacyUsbDeviceManager;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$1;->this$0:Lcom/android/server/usb/LegacyUsbDeviceManager;

    #getter for: Lcom/android/server/usb/LegacyUsbDeviceManager;->mConfigured:Z
    invoke-static {v2}, Lcom/android/server/usb/LegacyUsbDeviceManager;->access$400(Lcom/android/server/usb/LegacyUsbDeviceManager;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$1;->this$0:Lcom/android/server/usb/LegacyUsbDeviceManager;

    #getter for: Lcom/android/server/usb/LegacyUsbDeviceManager;->mHandler:Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;
    invoke-static {v2}, Lcom/android/server/usb/LegacyUsbDeviceManager;->access$100(Lcom/android/server/usb/LegacyUsbDeviceManager;)Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;

    move-result-object v2

    const-string v3, "CONFIGURED"

    invoke-virtual {v2, v3}, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->updateState(Ljava/lang/String;)V

    goto :goto_1

    .line 152
    :cond_6
    iget-object v2, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$1;->this$0:Lcom/android/server/usb/LegacyUsbDeviceManager;

    #getter for: Lcom/android/server/usb/LegacyUsbDeviceManager;->mHandler:Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;
    invoke-static {v2}, Lcom/android/server/usb/LegacyUsbDeviceManager;->access$100(Lcom/android/server/usb/LegacyUsbDeviceManager;)Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;

    move-result-object v2

    const-string v3, "UNKNOWN"

    invoke-virtual {v2, v3}, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->updateState(Ljava/lang/String;)V

    goto :goto_1
.end method
