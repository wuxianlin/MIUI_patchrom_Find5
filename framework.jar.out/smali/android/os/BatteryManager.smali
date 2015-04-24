.class public Landroid/os/BatteryManager;
.super Ljava/lang/Object;
.source "BatteryManager.java"


# static fields
.field public static final BATTERY_DOCK_PLUGGED_AC:I = 0x1

.field public static final BATTERY_DOCK_PLUGGED_ANY:I = 0x3

.field public static final BATTERY_DOCK_PLUGGED_USB:I = 0x2

.field public static final BATTERY_HEALTH_COLD:I = 0x7

.field public static final BATTERY_HEALTH_DEAD:I = 0x4

.field public static final BATTERY_HEALTH_GOOD:I = 0x2

.field public static final BATTERY_HEALTH_OVERHEAT:I = 0x3

.field public static final BATTERY_HEALTH_OVER_VOLTAGE:I = 0x5

.field public static final BATTERY_HEALTH_UNKNOWN:I = 0x1

.field public static final BATTERY_HEALTH_UNSPECIFIED_FAILURE:I = 0x6

.field public static final BATTERY_PLUGGED_AC:I = 0x1

.field public static final BATTERY_PLUGGED_ANY:I = 0x7

.field public static final BATTERY_PLUGGED_USB:I = 0x2

.field public static final BATTERY_PLUGGED_WIRELESS:I = 0x4

.field public static final BATTERY_STATUS_CHARGING:I = 0x2

.field public static final BATTERY_STATUS_DISCHARGING:I = 0x3

.field public static final BATTERY_STATUS_FULL:I = 0x5

.field public static final BATTERY_STATUS_NOT_CHARGING:I = 0x4

.field public static final BATTERY_STATUS_UNKNOWN:I = 0x1

.field public static final EXTRA_DOCK_HEALTH:Ljava/lang/String; = "dock_health"

.field public static final EXTRA_DOCK_ICON_SMALL:Ljava/lang/String; = "dock_icon-small"

.field public static final EXTRA_DOCK_LEVEL:Ljava/lang/String; = "dock_level"

.field public static final EXTRA_DOCK_PLUGGED:Ljava/lang/String; = "dock_plugged"

.field public static final EXTRA_DOCK_PRESENT:Ljava/lang/String; = "dock_present"

.field public static final EXTRA_DOCK_SCALE:Ljava/lang/String; = "dock_scale"

.field public static final EXTRA_DOCK_STATUS:Ljava/lang/String; = "dock_status"

.field public static final EXTRA_DOCK_TECHNOLOGY:Ljava/lang/String; = "dock_technology"

.field public static final EXTRA_DOCK_TEMPERATURE:Ljava/lang/String; = "dock_temperature"

.field public static final EXTRA_DOCK_VOLTAGE:Ljava/lang/String; = "dock_voltage"

.field public static final EXTRA_HEALTH:Ljava/lang/String; = "health"

.field public static final EXTRA_ICON_SMALL:Ljava/lang/String; = "icon-small"

.field public static final EXTRA_INVALID_CHARGER:Ljava/lang/String; = "invalid_charger"

.field public static final EXTRA_LEVEL:Ljava/lang/String; = "level"

.field public static final EXTRA_PLUGGED:Ljava/lang/String; = "plugged"

.field public static final EXTRA_PRESENT:Ljava/lang/String; = "present"

.field public static final EXTRA_SCALE:Ljava/lang/String; = "scale"

.field public static final EXTRA_STATUS:Ljava/lang/String; = "status"

.field public static final EXTRA_TECHNOLOGY:Ljava/lang/String; = "technology"

.field public static final EXTRA_TEMPERATURE:Ljava/lang/String; = "temperature"

.field public static final EXTRA_VOLTAGE:Ljava/lang/String; = "voltage"

.field private static mService:Landroid/app/IBatteryService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x0

    sput-object v0, Landroid/os/BatteryManager;->mService:Landroid/app/IBatteryService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    return-void
.end method

.method public constructor <init>(Landroid/app/IBatteryService;Landroid/content/Context;)V
    .locals 0
    .param p1, "service"    # Landroid/app/IBatteryService;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    sput-object p1, Landroid/os/BatteryManager;->mService:Landroid/app/IBatteryService;

    .line 226
    return-void
.end method


# virtual methods
.method public isDockBatterySupported()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 233
    :try_start_0
    sget-object v1, Landroid/os/BatteryManager;->mService:Landroid/app/IBatteryService;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/os/BatteryManager;->mService:Landroid/app/IBatteryService;

    invoke-interface {v1}, Landroid/app/IBatteryService;->isDockBatterySupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 237
    :cond_0
    :goto_0
    return v0

    .line 234
    :catch_0
    move-exception v1

    goto :goto_0
.end method
