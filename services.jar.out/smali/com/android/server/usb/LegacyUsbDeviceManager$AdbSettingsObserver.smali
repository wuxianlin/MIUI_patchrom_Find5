.class Lcom/android/server/usb/LegacyUsbDeviceManager$AdbSettingsObserver;
.super Landroid/database/ContentObserver;
.source "LegacyUsbDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/LegacyUsbDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdbSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/LegacyUsbDeviceManager;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/LegacyUsbDeviceManager;)V
    .locals 1
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$AdbSettingsObserver;->this$0:Lcom/android/server/usb/LegacyUsbDeviceManager;

    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 115
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 118
    iget-object v2, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$AdbSettingsObserver;->this$0:Lcom/android/server/usb/LegacyUsbDeviceManager;

    #getter for: Lcom/android/server/usb/LegacyUsbDeviceManager;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/server/usb/LegacyUsbDeviceManager;->access$000(Lcom/android/server/usb/LegacyUsbDeviceManager;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "adb_enabled"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_0

    move v0, v1

    .line 120
    .local v0, enable:Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/usb/LegacyUsbDeviceManager$AdbSettingsObserver;->this$0:Lcom/android/server/usb/LegacyUsbDeviceManager;

    #getter for: Lcom/android/server/usb/LegacyUsbDeviceManager;->mHandler:Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;
    invoke-static {v2}, Lcom/android/server/usb/LegacyUsbDeviceManager;->access$100(Lcom/android/server/usb/LegacyUsbDeviceManager;)Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->sendMessage(IZ)V

    .line 121
    return-void
.end method
