.class Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "LegacyUsbDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;


# direct methods
.method constructor <init>(Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 267
    iput-object p1, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler$1;->this$1:Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler$1;->this$1:Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;

    iget-object v0, v0, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->this$0:Lcom/android/server/usb/LegacyUsbDeviceManager;

    #getter for: Lcom/android/server/usb/LegacyUsbDeviceManager;->mHandler:Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;
    invoke-static {v0}, Lcom/android/server/usb/LegacyUsbDeviceManager;->access$100(Lcom/android/server/usb/LegacyUsbDeviceManager;)Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->sendEmptyMessage(I)Z

    .line 271
    return-void
.end method
