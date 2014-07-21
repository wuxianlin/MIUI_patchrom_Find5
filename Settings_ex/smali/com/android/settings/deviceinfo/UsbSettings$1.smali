.class Lcom/android/settings/deviceinfo/UsbSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "UsbSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/UsbSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/UsbSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/UsbSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/settings/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "content"
    .parameter "intent"

    .prologue
    .line 58
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    const-string v2, "accessory"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    #setter for: Lcom/android/settings/deviceinfo/UsbSettings;->mUsbAccessoryMode:Z
    invoke-static {v1, v2}, Lcom/android/settings/deviceinfo/UsbSettings;->access$002(Lcom/android/settings/deviceinfo/UsbSettings;Z)Z

    .line 61
    const-string v1, "UsbSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UsbAccessoryMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settings/deviceinfo/UsbSettings;->mUsbAccessoryMode:Z
    invoke-static {v3}, Lcom/android/settings/deviceinfo/UsbSettings;->access$000(Lcom/android/settings/deviceinfo/UsbSettings;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v2}, Lcom/android/settings/deviceinfo/UsbSettings;->access$100(Lcom/android/settings/deviceinfo/UsbSettings;)Landroid/hardware/usb/UsbManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/usb/UsbManager;->getDefaultFunction()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/settings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/settings/deviceinfo/UsbSettings;->access$200(Lcom/android/settings/deviceinfo/UsbSettings;Ljava/lang/String;)V

    .line 64
    return-void
.end method
