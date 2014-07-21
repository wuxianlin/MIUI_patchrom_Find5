.class public Lcom/android/settings/quicksettings/QuickSettingsUtil;
.super Ljava/lang/Object;
.source "QuickSettingsUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;
    }
.end annotation


# static fields
.field private static final DISABLED_TILES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final ENABLED_TILES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final TILES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/quicksettings/QuickSettingsUtil;->ENABLED_TILES:Ljava/util/Map;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/quicksettings/QuickSettingsUtil;->DISABLED_TILES:Ljava/util/Map;

    .line 74
    sget-object v0, Lcom/android/settings/quicksettings/QuickSettingsUtil;->ENABLED_TILES:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/settings/quicksettings/QuickSettingsUtil;->TILES:Ljava/util/Map;

    .line 75
    new-instance v0, Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;

    const-string v1, "toggleAirplane"

    const v2, 0x7f080182

    const-string v3, "com.android.systemui:drawable/ic_qs_airplane_on"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/android/settings/quicksettings/QuickSettingsUtil;->registerTile(Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;)V

    .line 78
    new-instance v0, Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;

    const-string v1, "toggleBattery"

    const v2, 0x7f080183

    const-string v3, "com.android.systemui:drawable/ic_qs_battery_neutral"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/android/settings/quicksettings/QuickSettingsUtil;->registerTile(Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;)V

    .line 81
    new-instance v0, Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;

    const-string v1, "toggleBluetooth"

    const v2, 0x7f080184

    const-string v3, "com.android.systemui:drawable/ic_qs_bluetooth_on"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/android/settings/quicksettings/QuickSettingsUtil;->registerTile(Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;)V

    .line 84
    new-instance v0, Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;

    const-string v1, "toggleBrightness"

    const v2, 0x7f080185

    const-string v3, "com.android.systemui:drawable/ic_qs_brightness_auto_off"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/android/settings/quicksettings/QuickSettingsUtil;->registerTile(Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;)V

    .line 87
    new-instance v0, Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;

    const-string v1, "toggleCamera"

    const v2, 0x7f080186

    const-string v3, "com.android.systemui:drawable/ic_qs_camera"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/android/settings/quicksettings/QuickSettingsUtil;->registerTile(Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;)V

    .line 90
    new-instance v0, Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;

    const-string v1, "toggleExpandedDesktop"

    const v2, 0x7f08019b

    const-string v3, "com.android.systemui:drawable/ic_qs_expanded_desktop_neutral"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/android/settings/quicksettings/QuickSettingsUtil;->registerTile(Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;)V

    .line 93
    new-instance v0, Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;

    const-string v1, "toggleSleepMode"

    const v2, 0x7f080187

    const-string v3, "com.android.systemui:drawable/ic_qs_sleep"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/android/settings/quicksettings/QuickSettingsUtil;->registerTile(Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;)V

    .line 96
    new-instance v0, Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;

    const-string v1, "toggleGPS"

    const v2, 0x7f080188

    const-string v3, "com.android.systemui:drawable/ic_qs_location_on"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/android/settings/quicksettings/QuickSettingsUtil;->registerTile(Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;)V

    .line 99
    new-instance v0, Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;

    const-string v1, "toggleLockScreen"

    const v2, 0x7f08018a

    const-string v3, "com.android.systemui:drawable/ic_qs_lock_screen_on"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/android/settings/quicksettings/QuickSettingsUtil;->registerTile(Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;)V

    .line 102
    new-instance v0, Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;

    const-string v1, "toggleLte"

    const v2, 0x7f08018b

    const-string v3, "com.android.systemui:drawable/ic_qs_lte_on"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/android/settings/quicksettings/QuickSettingsUtil;->registerTile(Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;)V

    .line 105
    new-instance v0, Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;

    const-string v1, "toggleMobileData"

    const v2, 0x7f08018c

    const-string v3, "com.android.systemui:drawable/ic_qs_signal_full_4"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/android/settings/quicksettings/QuickSettingsUtil;->registerTile(Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;)V

    .line 108
    new-instance v0, Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;

    const-string v1, "toggleNetworkMode"

    const v2, 0x7f080196

    const-string v3, "com.android.systemui:drawable/ic_qs_2g3g_on"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/android/settings/quicksettings/QuickSettingsUtil;->registerTile(Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;)V

    .line 111
    new-instance v0, Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;

    const-string v1, "toggleNfc"

    const v2, 0x7f080197

    const-string v3, "com.android.systemui:drawable/ic_qs_nfc_on"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/android/settings/quicksettings/QuickSettingsUtil;->registerTile(Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;)V

    .line 114
    new-instance v0, Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;

    const-string v1, "toggleAutoRotate"

    const v2, 0x7f08018f

    const-string v3, "com.android.systemui:drawable/ic_qs_auto_rotate"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/android/settings/quicksettings/QuickSettingsUtil;->registerTile(Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;)V

    .line 117
    new-instance v0, Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;

    const-string v1, "toggleProfile"

    const v2, 0x7f08018d

    const-string v3, "com.android.systemui:drawable/ic_qs_profiles"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/android/settings/quicksettings/QuickSettingsUtil;->registerTile(Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;)V

    .line 120
    new-instance v0, Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;

    const-string v1, "togglePerformanceProfile"

    const v2, 0x7f08018e

    const-string v3, "com.android.systemui:drawable/ic_qs_perf_profile"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/android/settings/quicksettings/QuickSettingsUtil;->registerTile(Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;)V

    .line 123
    new-instance v0, Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;

    const-string v1, "toggleQuietHours"

    const v2, 0x7f080199

    const-string v3, "com.android.systemui:drawable/ic_qs_quiet_hours_on"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/android/settings/quicksettings/QuickSettingsUtil;->registerTile(Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;)V

    .line 126
    new-instance v0, Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;

    const-string v1, "toggleScreenTimeout"

    const v2, 0x7f080198

    const-string v3, "com.android.systemui:drawable/ic_qs_screen_timeout_on"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/android/settings/quicksettings/QuickSettingsUtil;->registerTile(Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;)V

    .line 129
    new-instance v0, Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;

    const-string v1, "toggleSettings"

    const v2, 0x7f080190

    const-string v3, "com.android.systemui:drawable/ic_qs_settings"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/android/settings/quicksettings/QuickSettingsUtil;->registerTile(Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;)V

    .line 132
    new-instance v0, Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;

    const-string v1, "toggleSound"

    const v2, 0x7f080191

    const-string v3, "com.android.systemui:drawable/ic_qs_ring_on"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/android/settings/quicksettings/QuickSettingsUtil;->registerTile(Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;)V

    .line 135
    new-instance v0, Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;

    const-string v1, "toggleSync"

    const v2, 0x7f080192

    const-string v3, "com.android.systemui:drawable/ic_qs_sync_on"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/android/settings/quicksettings/QuickSettingsUtil;->registerTile(Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;)V

    .line 138
    new-instance v0, Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;

    const-string v1, "toggleFlashlight"

    const v2, 0x7f080189

    const-string v3, "com.android.systemui:drawable/ic_qs_torch_on"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/android/settings/quicksettings/QuickSettingsUtil;->registerTile(Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;)V

    .line 141
    new-instance v0, Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;

    const-string v1, "toggleUser"

    const v2, 0x7f080195

    const-string v3, "com.android.systemui:drawable/ic_qs_default_user"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/android/settings/quicksettings/QuickSettingsUtil;->registerTile(Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;)V

    .line 144
    new-instance v0, Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;

    const-string v1, "toggleVolume"

    const v2, 0x7f08019a

    const-string v3, "com.android.systemui:drawable/ic_qs_volume"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/android/settings/quicksettings/QuickSettingsUtil;->registerTile(Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;)V

    .line 147
    new-instance v0, Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;

    const-string v1, "toggleWifi"

    const v2, 0x7f080194

    const-string v3, "com.android.systemui:drawable/ic_qs_wifi_full_4"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/android/settings/quicksettings/QuickSettingsUtil;->registerTile(Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;)V

    .line 150
    new-instance v0, Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;

    const-string v1, "toggleWifiAp"

    const v2, 0x7f080193

    const-string v3, "com.android.systemui:drawable/ic_qs_wifi_ap_on"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/android/settings/quicksettings/QuickSettingsUtil;->registerTile(Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;)V

    .line 153
    new-instance v0, Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;

    const-string v1, "toggleNetworkAdb"

    const v2, 0x7f08019c

    const-string v3, "com.android.systemui:drawable/ic_qs_network_adb_off"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/android/settings/quicksettings/QuickSettingsUtil;->registerTile(Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;)V

    .line 156
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    return-void
.end method

.method private static disableTile(Ljava/lang/String;)V
    .locals 2
    .parameter "id"

    .prologue
    .line 169
    sget-object v0, Lcom/android/settings/quicksettings/QuickSettingsUtil;->ENABLED_TILES:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    sget-object v0, Lcom/android/settings/quicksettings/QuickSettingsUtil;->DISABLED_TILES:Ljava/util/Map;

    sget-object v1, Lcom/android/settings/quicksettings/QuickSettingsUtil;->ENABLED_TILES:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    :cond_0
    return-void
.end method

.method private static enableTile(Ljava/lang/String;)V
    .locals 2
    .parameter "id"

    .prologue
    .line 175
    sget-object v0, Lcom/android/settings/quicksettings/QuickSettingsUtil;->DISABLED_TILES:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    sget-object v0, Lcom/android/settings/quicksettings/QuickSettingsUtil;->ENABLED_TILES:Ljava/util/Map;

    sget-object v1, Lcom/android/settings/quicksettings/QuickSettingsUtil;->DISABLED_TILES:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    :cond_0
    return-void
.end method

.method public static getCurrentTiles(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "isRibbon"

    .prologue
    .line 277
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-eqz p1, :cond_1

    const-string v1, "quick_settings_ribbon_tiles"

    :goto_0
    invoke-static {v2, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, tiles:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 281
    invoke-static {p0}, Lcom/android/settings/quicksettings/QuickSettingsUtil;->getDefaultTiles(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 283
    :cond_0
    return-object v0

    .line 277
    .end local v0           #tiles:Ljava/lang/String;
    :cond_1
    const-string v1, "quick_settings_tiles"

    goto :goto_0
.end method

.method public static getDefaultTiles(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 340
    invoke-static {p0}, Lcom/android/settings/quicksettings/QuickSettingsUtil;->removeUnsupportedTiles(Landroid/content/Context;)V

    .line 341
    const-string v0, "|"

    sget-object v1, Lcom/android/internal/util/cm/QSConstants;->TILES_DEFAULT:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTileListFromString(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .parameter "tiles"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 324
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "\\|"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static getTileStringFromList(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 328
    .local p0, tiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_2

    .line 329
    :cond_0
    const-string v1, ""

    .line 335
    :cond_1
    return-object v1

    .line 331
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 332
    .local v1, s:Ljava/lang/String;
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 333
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 332
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static isTileAvailable(Ljava/lang/String;)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 273
    sget-object v0, Lcom/android/settings/quicksettings/QuickSettingsUtil;->ENABLED_TILES:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static declared-synchronized refreshAvailableTiles(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 220
    const-class v4, Lcom/android/settings/quicksettings/QuickSettingsUtil;

    monitor-enter v4

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 224
    .local v2, resolver:Landroid/content/ContentResolver;
    const/16 v1, -0x63

    .line 226
    .local v1, networkState:I
    :try_start_1
    const-string v3, "preferred_network_mode"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    .line 232
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 241
    :try_start_2
    const-string v3, "toggleNetworkMode"

    invoke-static {v3}, Lcom/android/settings/quicksettings/QuickSettingsUtil;->disableTile(Ljava/lang/String;)V

    .line 246
    :goto_1
    invoke-static {v2}, Lcom/android/internal/util/cm/QSUtils;->systemProfilesEnabled(Landroid/content/ContentResolver;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 247
    const-string v3, "toggleProfile"

    invoke-static {v3}, Lcom/android/settings/quicksettings/QuickSettingsUtil;->enableTile(Ljava/lang/String;)V

    .line 253
    :goto_2
    invoke-static {v2}, Lcom/android/internal/util/cm/QSUtils;->expandedDesktopEnabled(Landroid/content/ContentResolver;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 254
    const-string v3, "toggleExpandedDesktop"

    invoke-static {v3}, Lcom/android/settings/quicksettings/QuickSettingsUtil;->enableTile(Ljava/lang/String;)V

    .line 260
    :goto_3
    invoke-static {v2}, Lcom/android/internal/util/cm/QSUtils;->adbEnabled(Landroid/content/ContentResolver;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 261
    const-string v3, "toggleNetworkAdb"

    invoke-static {v3}, Lcom/android/settings/quicksettings/QuickSettingsUtil;->enableTile(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 265
    :goto_4
    monitor-exit v4

    return-void

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    :try_start_3
    const-string v3, "QuickSettingsUtil"

    const-string v5, "Unable to retrieve PREFERRED_NETWORK_MODE"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 220
    .end local v0           #e:Landroid/provider/Settings$SettingNotFoundException;
    .end local v1           #networkState:I
    .end local v2           #resolver:Landroid/content/ContentResolver;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 238
    .restart local v1       #networkState:I
    .restart local v2       #resolver:Landroid/content/ContentResolver;
    :pswitch_0
    :try_start_4
    const-string v3, "toggleNetworkMode"

    invoke-static {v3}, Lcom/android/settings/quicksettings/QuickSettingsUtil;->enableTile(Ljava/lang/String;)V

    goto :goto_1

    .line 249
    :cond_0
    const-string v3, "toggleProfile"

    invoke-static {v3}, Lcom/android/settings/quicksettings/QuickSettingsUtil;->disableTile(Ljava/lang/String;)V

    goto :goto_2

    .line 256
    :cond_1
    const-string v3, "toggleExpandedDesktop"

    invoke-static {v3}, Lcom/android/settings/quicksettings/QuickSettingsUtil;->disableTile(Ljava/lang/String;)V

    goto :goto_3

    .line 263
    :cond_2
    const-string v3, "toggleNetworkAdb"

    invoke-static {v3}, Lcom/android/settings/quicksettings/QuickSettingsUtil;->disableTile(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    .line 232
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static registerTile(Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 159
    sget-object v0, Lcom/android/settings/quicksettings/QuickSettingsUtil;->ENABLED_TILES:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    return-void
.end method

.method private static removeTile(Ljava/lang/String;)V
    .locals 1
    .parameter "id"

    .prologue
    .line 163
    sget-object v0, Lcom/android/settings/quicksettings/QuickSettingsUtil;->ENABLED_TILES:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lcom/android/settings/quicksettings/QuickSettingsUtil;->DISABLED_TILES:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v0, Lcom/android/internal/util/cm/QSConstants;->TILES_DEFAULT:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 166
    return-void
.end method

.method protected static declared-synchronized removeUnsupportedTiles(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 182
    const-class v1, Lcom/android/settings/quicksettings/QuickSettingsUtil;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/android/internal/util/cm/QSUtils;->deviceSupportsMobileData(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    const-string v0, "toggleMobileData"

    invoke-static {v0}, Lcom/android/settings/quicksettings/QuickSettingsUtil;->removeTile(Ljava/lang/String;)V

    .line 184
    const-string v0, "toggleWifiAp"

    invoke-static {v0}, Lcom/android/settings/quicksettings/QuickSettingsUtil;->removeTile(Ljava/lang/String;)V

    .line 185
    const-string v0, "toggleNetworkMode"

    invoke-static {v0}, Lcom/android/settings/quicksettings/QuickSettingsUtil;->removeTile(Ljava/lang/String;)V

    .line 189
    :cond_0
    invoke-static {}, Lcom/android/internal/util/cm/QSUtils;->deviceSupportsBluetooth()Z

    move-result v0

    if-nez v0, :cond_1

    .line 190
    const-string v0, "toggleBluetooth"

    invoke-static {v0}, Lcom/android/settings/quicksettings/QuickSettingsUtil;->removeTile(Ljava/lang/String;)V

    .line 194
    :cond_1
    invoke-static {p0}, Lcom/android/internal/util/cm/QSUtils;->deviceSupportsNfc(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 195
    const-string v0, "toggleNfc"

    invoke-static {v0}, Lcom/android/settings/quicksettings/QuickSettingsUtil;->removeTile(Ljava/lang/String;)V

    .line 199
    :cond_2
    invoke-static {p0}, Lcom/android/internal/util/cm/QSUtils;->deviceSupportsLte(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 200
    const-string v0, "toggleLte"

    invoke-static {v0}, Lcom/android/settings/quicksettings/QuickSettingsUtil;->removeTile(Ljava/lang/String;)V

    .line 204
    :cond_3
    invoke-static {p0}, Lcom/android/internal/util/cm/QSUtils;->deviceSupportsTorch(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 205
    const-string v0, "toggleFlashlight"

    invoke-static {v0}, Lcom/android/settings/quicksettings/QuickSettingsUtil;->removeTile(Ljava/lang/String;)V

    .line 209
    :cond_4
    invoke-static {}, Lcom/android/internal/util/cm/QSUtils;->deviceSupportsCamera()Z

    move-result v0

    if-nez v0, :cond_5

    .line 210
    const-string v0, "toggleCamera"

    invoke-static {v0}, Lcom/android/settings/quicksettings/QuickSettingsUtil;->removeTile(Ljava/lang/String;)V

    .line 214
    :cond_5
    invoke-static {p0}, Lcom/android/internal/util/cm/QSUtils;->deviceSupportsPerformanceProfiles(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 215
    const-string v0, "togglePerformanceProfile"

    invoke-static {v0}, Lcom/android/settings/quicksettings/QuickSettingsUtil;->removeTile(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    :cond_6
    monitor-exit v1

    return-void

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static resetTiles(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "isRibbon"

    .prologue
    .line 293
    invoke-static {p0}, Lcom/android/settings/quicksettings/QuickSettingsUtil;->getDefaultTiles(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, defaultTiles:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-eqz p1, :cond_0

    const-string v1, "quick_settings_ribbon_tiles"

    :goto_0
    invoke-static {v2, v1, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 297
    return-void

    .line 294
    :cond_0
    const-string v1, "quick_settings_tiles"

    goto :goto_0
.end method

.method public static saveCurrentTiles(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .parameter "context"
    .parameter "tiles"
    .parameter "isRibbon"

    .prologue
    .line 287
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz p2, :cond_0

    const-string v0, "quick_settings_ribbon_tiles"

    :goto_0
    invoke-static {v1, v0, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 290
    return-void

    .line 287
    :cond_0
    const-string v0, "quick_settings_tiles"

    goto :goto_0
.end method

.method public static declared-synchronized updateAvailableTiles(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 268
    const-class v1, Lcom/android/settings/quicksettings/QuickSettingsUtil;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/android/settings/quicksettings/QuickSettingsUtil;->removeUnsupportedTiles(Landroid/content/Context;)V

    .line 269
    invoke-static {p0}, Lcom/android/settings/quicksettings/QuickSettingsUtil;->refreshAvailableTiles(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    monitor-exit v1

    return-void

    .line 268
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
