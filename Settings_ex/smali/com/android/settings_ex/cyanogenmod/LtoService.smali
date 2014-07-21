.class public Lcom/android/settings_ex/cyanogenmod/LtoService;
.super Landroid/app/Service;
.source "LtoService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/cyanogenmod/LtoService$LtoDownloadTask;
    }
.end annotation


# instance fields
.field private mTask:Lcom/android/settings_ex/cyanogenmod/LtoService$LtoDownloadTask;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 144
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/cyanogenmod/LtoService;J)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/cyanogenmod/LtoService;->scheduleNextDownload(J)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/cyanogenmod/LtoService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/settings_ex/cyanogenmod/LtoService;->notifyNewGpsData()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/cyanogenmod/LtoService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/settings_ex/cyanogenmod/LtoService;->getLastDownload()J

    move-result-wide v0

    return-wide v0
.end method

.method private getLastDownload()J
    .locals 4

    .prologue
    .line 312
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 313
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "lto_last_download"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1
.end method

.method private notifyNewGpsData()V
    .locals 2

    .prologue
    .line 296
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.cyanogenmod.actions.NEW_GPS_DATA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 297
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/cyanogenmod/LtoService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 298
    return-void
.end method

.method private scheduleNextDownload(J)Landroid/app/PendingIntent;
    .locals 5
    .parameter

    .prologue
    .line 301
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/cyanogenmod/LtoService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 302
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/settings_ex/cyanogenmod/LtoService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 303
    const/4 v2, 0x0

    const/high16 v3, 0x4800

    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 306
    invoke-static {}, Lorg/cyanogenmod/hardware/LongTermOrbits;->getDownloadInterval()J

    move-result-wide v2

    add-long/2addr v2, p1

    .line 307
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 308
    return-object v1
.end method

.method private shouldDownload()Z
    .locals 15

    .prologue
    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 110
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 111
    .local v8, prefs:Landroid/content/SharedPreferences;
    const-string v12, "connectivity"

    invoke-virtual {p0, v12}, Lcom/android/settings_ex/cyanogenmod/LtoService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 112
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 114
    .local v3, info:Landroid/net/NetworkInfo;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v12

    if-nez v12, :cond_2

    .line 115
    :cond_0
    const-string v12, "LtoService"

    const-string v13, "No network connection is available for LTO download"

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 129
    .local v6, now:J
    invoke-direct {p0}, Lcom/android/settings_ex/cyanogenmod/LtoService;->getLastDownload()J

    move-result-wide v4

    .line 130
    .local v4, lastDownload:J
    invoke-static {}, Lorg/cyanogenmod/hardware/LongTermOrbits;->getDownloadInterval()J

    move-result-wide v12

    add-long v1, v4, v12

    .line 133
    .local v1, due:J
    const-string v12, "LtoService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Now "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " due "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    new-instance v14, Ljava/util/Date;

    invoke-direct {v14, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const-wide/16 v12, 0x0

    cmp-long v12, v4, v12

    if-eqz v12, :cond_3

    cmp-long v12, v6, v1

    if-gez v12, :cond_3

    .line 137
    const-string v11, "LtoService"

    const-string v12, "LTO download is not due yet"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .end local v1           #due:J
    .end local v4           #lastDownload:J
    .end local v6           #now:J
    :goto_0
    return v10

    .line 117
    :cond_2
    const-string v12, "gps_download_data_wifi_only"

    invoke-interface {v8, v12, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 119
    .local v9, wifiOnly:Z
    if-eqz v9, :cond_1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v12

    if-eq v12, v11, :cond_1

    .line 121
    const-string v11, "LtoService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Active network is of type "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", but Wifi only was selected"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v9           #wifiOnly:Z
    .restart local v1       #due:J
    .restart local v4       #lastDownload:J
    .restart local v6       #now:J
    :cond_3
    move v10, v11

    .line 141
    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 98
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/settings_ex/cyanogenmod/LtoService;->mTask:Lcom/android/settings_ex/cyanogenmod/LtoService$LtoDownloadTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/cyanogenmod/LtoService;->mTask:Lcom/android/settings_ex/cyanogenmod/LtoService$LtoDownloadTask;

    invoke-virtual {v0}, Lcom/android/settings_ex/cyanogenmod/LtoService$LtoDownloadTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/settings_ex/cyanogenmod/LtoService;->mTask:Lcom/android/settings_ex/cyanogenmod/LtoService$LtoDownloadTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/cyanogenmod/LtoService$LtoDownloadTask;->cancel(Z)Z

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/cyanogenmod/LtoService;->mTask:Lcom/android/settings_ex/cyanogenmod/LtoService$LtoDownloadTask;

    .line 107
    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v1, 0x3

    const/4 v0, 0x2

    .line 69
    invoke-static {}, Lorg/cyanogenmod/hardware/LongTermOrbits;->isSupported()Z

    move-result v2

    if-nez v2, :cond_0

    .line 70
    const-string v1, "LtoService"

    const-string v2, "LTO is not supported by this device"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :goto_0
    return v0

    .line 73
    :cond_0
    invoke-static {p0}, Lcom/android/settings_ex/location/LocationSettings;->isLocationModeEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 74
    const-string v1, "LtoService"

    const-string v2, "Location mode not enabled in this device"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 78
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/cyanogenmod/LtoService;->mTask:Lcom/android/settings_ex/cyanogenmod/LtoService$LtoDownloadTask;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings_ex/cyanogenmod/LtoService;->mTask:Lcom/android/settings_ex/cyanogenmod/LtoService$LtoDownloadTask;

    invoke-virtual {v2}, Lcom/android/settings_ex/cyanogenmod/LtoService$LtoDownloadTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    sget-object v3, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v2, v3, :cond_2

    .line 79
    const-string v0, "LtoService"

    const-string v2, "LTO download is still active, not starting new download"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 80
    goto :goto_0

    .line 83
    :cond_2
    invoke-direct {p0}, Lcom/android/settings_ex/cyanogenmod/LtoService;->shouldDownload()Z

    move-result v2

    if-nez v2, :cond_3

    .line 84
    const-string v1, "LtoService"

    const-string v2, "Service started, but shouldn\'t download ... stopping"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-virtual {p0}, Lcom/android/settings_ex/cyanogenmod/LtoService;->stopSelf()V

    goto :goto_0

    .line 89
    :cond_3
    new-instance v0, Lcom/android/settings_ex/cyanogenmod/LtoService$LtoDownloadTask;

    invoke-static {}, Lorg/cyanogenmod/hardware/LongTermOrbits;->getSourceLocation()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lorg/cyanogenmod/hardware/LongTermOrbits;->getDestinationLocation()Ljava/io/File;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Lcom/android/settings_ex/cyanogenmod/LtoService$LtoDownloadTask;-><init>(Lcom/android/settings_ex/cyanogenmod/LtoService;Ljava/lang/String;Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/settings_ex/cyanogenmod/LtoService;->mTask:Lcom/android/settings_ex/cyanogenmod/LtoService$LtoDownloadTask;

    .line 91
    iget-object v0, p0, Lcom/android/settings_ex/cyanogenmod/LtoService;->mTask:Lcom/android/settings_ex/cyanogenmod/LtoService$LtoDownloadTask;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/cyanogenmod/LtoService$LtoDownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move v0, v1

    .line 93
    goto :goto_0
.end method
