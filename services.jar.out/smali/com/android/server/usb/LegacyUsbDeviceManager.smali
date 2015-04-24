.class public Lcom/android/server/usb/LegacyUsbDeviceManager;
.super Lcom/android/server/usb/UsbDeviceManager;
.source "LegacyUsbDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;,
        Lcom/android/server/usb/LegacyUsbDeviceManager$AdbSettingsObserver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final FUNCTIONS_PATH:Ljava/lang/String; = "/sys/devices/virtual/usb_composite/"

.field private static final MASS_STORAGE_FILE_PATH:Ljava/lang/String;

.field private static final MSG_BOOT_COMPLETED:I = 0x4

.field private static final MSG_ENABLE_ADB:I = 0x1

.field private static final MSG_SET_CURRENT_FUNCTION:I = 0x2

.field private static final MSG_SYSTEM_READY:I = 0x3

.field private static final MSG_UPDATE_STATE:I = 0x0

.field private static final TAG:Ljava/lang/String;

.field private static final UPDATE_DELAY:I = 0x3e8

.field private static final USB_CONFIGURATION_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/switch/usb_configuration"

.field private static final USB_CONFIGURATION_PATH:Ljava/lang/String; = "/sys/class/switch/usb_configuration/state"

.field private static final USB_CONNECTED_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/switch/usb_connected"

.field private static final USB_CONNECTED_PATH:Ljava/lang/String; = "/sys/class/switch/usb_connected/state"

.field private static final USB_LEGACY_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/switch/usb_mass_storage"

.field private static final USB_LEGACY_PATH:Ljava/lang/String; = "/sys/class/switch/usb_mass_storage/state"


# instance fields
.field private mAdbEnabled:Z

.field private mBootCompleted:Z

.field private mConfigured:Z

.field private mConnected:Z

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCurrentSettings:Lcom/android/server/usb/UsbSettingsManager;

.field private mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

.field private mHandler:Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;

.field private final mHasUsbAccessory:Z

.field private mLegacy:Z

.field private final mLock:Ljava/lang/Object;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private final mUEventObserver:Landroid/os/UEventObserver;

.field private mUseUsbNotification:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 60
    const-class v0, Lcom/android/server/usb/LegacyUsbDeviceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/usb/LegacyUsbDeviceManager;->TAG:Ljava/lang/String;

    .line 77
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104012f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/usb/LegacyUsbDeviceManager;->MASS_STORAGE_FILE_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 158
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager;-><init>()V

    .line 80
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/usb/LegacyUsbDeviceManager;->mLock:Ljava/lang/Object;

    .line 88
    iput-boolean v3, p0, Lcom/android/server/usb/LegacyUsbDeviceManager;->mConnected:Z

    .line 89
    iput-boolean v3, p0, Lcom/android/server/usb/LegacyUsbDeviceManager;->mConfigured:Z

    .line 109
    iput-boolean v3, p0, Lcom/android/server/usb/LegacyUsbDeviceManager;->mLegacy:Z

    .line 128
    new-instance v2, Lcom/android/server/usb/LegacyUsbDeviceManager$1;

    invoke-direct {v2, p0}, Lcom/android/server/usb/LegacyUsbDeviceManager$1;-><init>(Lcom/android/server/usb/LegacyUsbDeviceManager;)V

    iput-object v2, p0, Lcom/android/server/usb/LegacyUsbDeviceManager;->mUEventObserver:Landroid/os/UEventObserver;

    .line 159
    iput-object p1, p0, Lcom/android/server/usb/LegacyUsbDeviceManager;->mContext:Landroid/content/Context;

    .line 160
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/usb/LegacyUsbDeviceManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 161
    iget-object v2, p0, Lcom/android/server/usb/LegacyUsbDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 162
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v2, "android.hardware.usb.accessory"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/usb/LegacyUsbDeviceManager;->mHasUsbAccessory:Z

    .line 165
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "LegacyUsbDeviceManager"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 167
    .local v1, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 168
    new-instance v2, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;-><init>(Lcom/android/server/usb/LegacyUsbDeviceManager;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/usb/LegacyUsbDeviceManager;->mHandler:Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;

    .line 169
    const-string v2, "1"

    const-string v3, "ro.adb.secure"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 170
    new-instance v2, Lcom/android/server/usb/UsbDebuggingManager;

    invoke-direct {v2, p1}, Lcom/android/server/usb/UsbDebuggingManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/usb/LegacyUsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    .line 172
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/usb/LegacyUsbDeviceManager;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/LegacyUsbDeviceManager;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/server/usb/LegacyUsbDeviceManager;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/usb/LegacyUsbDeviceManager;)Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/LegacyUsbDeviceManager;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/server/usb/LegacyUsbDeviceManager;->mHandler:Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/usb/LegacyUsbDeviceManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/LegacyUsbDeviceManager;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/server/usb/LegacyUsbDeviceManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-static {p0, p1}, Lcom/android/server/usb/LegacyUsbDeviceManager;->addFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-static {p0, p1}, Lcom/android/server/usb/LegacyUsbDeviceManager;->removeFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/usb/LegacyUsbDeviceManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/LegacyUsbDeviceManager;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/server/usb/LegacyUsbDeviceManager;->mBootCompleted:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/usb/LegacyUsbDeviceManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/LegacyUsbDeviceManager;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/server/usb/LegacyUsbDeviceManager;->mBootCompleted:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/usb/LegacyUsbDeviceManager;)Lcom/android/server/usb/UsbSettingsManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/LegacyUsbDeviceManager;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/server/usb/LegacyUsbDeviceManager;->getCurrentSettings()Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/usb/LegacyUsbDeviceManager;)Lcom/android/server/usb/UsbDebuggingManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/LegacyUsbDeviceManager;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/server/usb/LegacyUsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/usb/LegacyUsbDeviceManager;)Landroid/app/NotificationManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/LegacyUsbDeviceManager;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/server/usb/LegacyUsbDeviceManager;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/usb/LegacyUsbDeviceManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/LegacyUsbDeviceManager;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/server/usb/LegacyUsbDeviceManager;->mUseUsbNotification:Z

    return v0
.end method

.method static synthetic access$1800()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/android/server/usb/LegacyUsbDeviceManager;->MASS_STORAGE_FILE_PATH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/usb/LegacyUsbDeviceManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/LegacyUsbDeviceManager;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/server/usb/LegacyUsbDeviceManager;->mLegacy:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/usb/LegacyUsbDeviceManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/LegacyUsbDeviceManager;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/server/usb/LegacyUsbDeviceManager;->mLegacy:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/usb/LegacyUsbDeviceManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/LegacyUsbDeviceManager;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/server/usb/LegacyUsbDeviceManager;->mConnected:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/usb/LegacyUsbDeviceManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/LegacyUsbDeviceManager;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/server/usb/LegacyUsbDeviceManager;->mConnected:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/usb/LegacyUsbDeviceManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/LegacyUsbDeviceManager;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/server/usb/LegacyUsbDeviceManager;->mConfigured:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/usb/LegacyUsbDeviceManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/LegacyUsbDeviceManager;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/server/usb/LegacyUsbDeviceManager;->mConfigured:Z

    return p1
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/android/server/usb/LegacyUsbDeviceManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/usb/LegacyUsbDeviceManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/LegacyUsbDeviceManager;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/server/usb/LegacyUsbDeviceManager;->mAdbEnabled:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/usb/LegacyUsbDeviceManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/LegacyUsbDeviceManager;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/server/usb/LegacyUsbDeviceManager;->mAdbEnabled:Z

    return p1
.end method

.method static synthetic access$700(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-static {p0, p1}, Lcom/android/server/usb/LegacyUsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/usb/LegacyUsbDeviceManager;)Landroid/os/UEventObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/LegacyUsbDeviceManager;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/server/usb/LegacyUsbDeviceManager;->mUEventObserver:Landroid/os/UEventObserver;

    return-object v0
.end method

.method private static addFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "functions"    # Ljava/lang/String;
    .param p1, "function"    # Ljava/lang/String;

    .prologue
    .line 218
    invoke-static {p0, p1}, Lcom/android/server/usb/LegacyUsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 219
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 222
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 224
    :cond_1
    return-object p0
.end method

.method private static containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "functions"    # Ljava/lang/String;
    .param p1, "function"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x2c

    const/4 v2, 0x0

    .line 248
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 249
    .local v1, "index":I
    if-gez v1, :cond_1

    .line 253
    :cond_0
    :goto_0
    return v2

    .line 250
    :cond_1
    if-lez v1, :cond_2

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_0

    .line 251
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int v0, v1, v3

    .line 252
    .local v0, "charAfter":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_0

    .line 253
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private getCurrentSettings()Lcom/android/server/usb/UsbSettingsManager;
    .locals 2

    .prologue
    .line 181
    iget-object v1, p0, Lcom/android/server/usb/LegacyUsbDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usb/LegacyUsbDeviceManager;->mCurrentSettings:Lcom/android/server/usb/UsbSettingsManager;

    monitor-exit v1

    return-object v0

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static removeFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "functions"    # Ljava/lang/String;
    .param p1, "function"    # Ljava/lang/String;

    .prologue
    .line 228
    const-string v4, ","

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 229
    .local v3, "split":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 230
    aget-object v4, v3, v1

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 231
    const/4 v4, 0x0

    aput-object v4, v3, v1

    .line 229
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 234
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 235
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    :goto_1
    array-length v4, v3

    if-ge v1, v4, :cond_4

    .line 236
    aget-object v2, v3, v1

    .line 237
    .local v2, "s":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 238
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 239
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 244
    .end local v2    # "s":Ljava/lang/String;
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public allowUsbDebugging(ZLjava/lang/String;)V
    .locals 1
    .param p1, "alwaysAllow"    # Z
    .param p2, "publicKey"    # Ljava/lang/String;

    .prologue
    .line 685
    iget-object v0, p0, Lcom/android/server/usb/LegacyUsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    if-eqz v0, :cond_0

    .line 686
    iget-object v0, p0, Lcom/android/server/usb/LegacyUsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usb/UsbDebuggingManager;->allowUsbDebugging(ZLjava/lang/String;)V

    .line 688
    :cond_0
    return-void
.end method

.method public denyUsbDebugging()V
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Lcom/android/server/usb/LegacyUsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/android/server/usb/LegacyUsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDebuggingManager;->denyUsbDebugging()V

    .line 694
    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 697
    iget-object v0, p0, Lcom/android/server/usb/LegacyUsbDeviceManager;->mHandler:Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;

    if-eqz v0, :cond_0

    .line 698
    iget-object v0, p0, Lcom/android/server/usb/LegacyUsbDeviceManager;->mHandler:Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V

    .line 700
    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/LegacyUsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    if-eqz v0, :cond_1

    .line 701
    iget-object v0, p0, Lcom/android/server/usb/LegacyUsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usb/UsbDebuggingManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V

    .line 703
    :cond_1
    return-void
.end method

.method public setCurrentSettings(Lcom/android/server/usb/UsbSettingsManager;)V
    .locals 2
    .param p1, "settings"    # Lcom/android/server/usb/UsbSettingsManager;

    .prologue
    .line 175
    iget-object v1, p0, Lcom/android/server/usb/LegacyUsbDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 176
    :try_start_0
    iput-object p1, p0, Lcom/android/server/usb/LegacyUsbDeviceManager;->mCurrentSettings:Lcom/android/server/usb/UsbSettingsManager;

    .line 177
    monitor-exit v1

    .line 178
    return-void

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public systemReady()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 190
    iget-object v3, p0, Lcom/android/server/usb/LegacyUsbDeviceManager;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    iput-object v3, p0, Lcom/android/server/usb/LegacyUsbDeviceManager;->mNotificationManager:Landroid/app/NotificationManager;

    .line 195
    const/4 v0, 0x0

    .line 196
    .local v0, "massStorageSupported":Z
    iget-object v3, p0, Lcom/android/server/usb/LegacyUsbDeviceManager;->mContext:Landroid/content/Context;

    const-string v6, "storage"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 198
    .local v1, "storageManager":Landroid/os/storage/StorageManager;
    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v2

    .line 200
    .local v2, "volumes":[Landroid/os/storage/StorageVolume;
    array-length v3, v2

    if-lez v3, :cond_0

    .line 201
    iget-object v3, p0, Lcom/android/server/usb/LegacyUsbDeviceManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "usb_mass_storage_enabled"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_1

    .line 202
    aget-object v3, v2, v5

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    move-result v0

    .line 208
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/android/server/usb/LegacyUsbDeviceManager;->mUseUsbNotification:Z

    .line 211
    iget-object v3, p0, Lcom/android/server/usb/LegacyUsbDeviceManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "adb_enabled"

    iget-boolean v7, p0, Lcom/android/server/usb/LegacyUsbDeviceManager;->mAdbEnabled:Z

    if-eqz v7, :cond_3

    :goto_2
    invoke-static {v3, v6, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 214
    iget-object v3, p0, Lcom/android/server/usb/LegacyUsbDeviceManager;->mHandler:Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/server/usb/LegacyUsbDeviceManager$LegacyUsbHandler;->sendEmptyMessage(I)Z

    .line 215
    return-void

    .line 204
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move v3, v5

    .line 208
    goto :goto_1

    :cond_3
    move v4, v5

    .line 211
    goto :goto_2
.end method
