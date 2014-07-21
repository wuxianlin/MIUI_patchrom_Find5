.class public Lcom/android/settings/cmstats/ReportingServiceManager;
.super Landroid/content/BroadcastReceiver;
.source "ReportingServiceManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static launchService(Landroid/content/Context;)V
    .locals 7
    .parameter

    .prologue
    const-wide/32 v5, 0x5265c00

    const-wide/16 v3, 0x0

    .line 74
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 77
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    invoke-static {p0}, Lcom/android/settings/cmstats/AnonymousStats;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 83
    const-string v1, "pref_anonymous_opt_in"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 84
    if-eqz v1, :cond_0

    .line 87
    const-string v1, "pref_anonymous_checked_in"

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 88
    cmp-long v2, v0, v3

    if-nez v2, :cond_2

    .line 89
    invoke-static {p0, v3, v4}, Lcom/android/settings/cmstats/ReportingServiceManager;->setAlarm(Landroid/content/Context;J)V

    goto :goto_0

    .line 92
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    .line 93
    cmp-long v2, v0, v5

    if-gez v2, :cond_3

    .line 94
    sub-long v0, v5, v0

    .line 95
    const-string v2, "CMStats"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Waiting for next sync : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/32 v4, 0x36ee80

    div-long/2addr v0, v4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " hours"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 99
    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 100
    const-class v1, Lcom/android/settings/cmstats/ReportingService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 101
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public static setAlarm(Landroid/content/Context;J)V
    .locals 11
    .parameter "context"
    .parameter "millisFromNow"

    .prologue
    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    .line 45
    invoke-static {p0}, Lcom/android/settings/cmstats/AnonymousStats;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 46
    .local v5, prefs:Landroid/content/SharedPreferences;
    const-string v6, "pref_anonymous_opt_in"

    const/4 v7, 0x1

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 47
    .local v4, optedIn:Z
    if-nez v4, :cond_0

    .line 71
    :goto_0
    return-void

    .line 51
    :cond_0
    cmp-long v6, p1, v8

    if-gtz v6, :cond_2

    .line 52
    const-string v6, "pref_anonymous_checked_in"

    invoke-interface {v5, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 53
    .local v2, lastSynced:J
    cmp-long v6, v2, v8

    if-nez v6, :cond_1

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 58
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "pref_anonymous_checked_in"

    invoke-interface {v6, v7, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 59
    const-string v6, "CMStats"

    const-string v7, "Set alarm for first sync."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_1
    const-wide/32 v6, 0x5265c00

    add-long/2addr v6, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long p1, v6, v8

    .line 64
    .end local v2           #lastSynced:J
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 65
    .local v1, intent:Landroid/content/Intent;
    const-class v6, Lcom/android/settings/cmstats/ReportingServiceManager;

    invoke-virtual {v1, p0, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 67
    const-string v6, "alarm"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 68
    .local v0, alarmManager:Landroid/app/AlarmManager;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long/2addr v6, p1

    invoke-static {p0, v10, v1, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v0, v10, v6, v7, v8}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 70
    const-string v6, "CMStats"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Next sync attempt in : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-wide/32 v8, 0x36ee80

    div-long v8, p1, v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " hours"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 37
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/settings/cmstats/ReportingServiceManager;->setAlarm(Landroid/content/Context;J)V

    .line 42
    :goto_0
    return-void

    .line 40
    :cond_0
    invoke-static {p1}, Lcom/android/settings/cmstats/ReportingServiceManager;->launchService(Landroid/content/Context;)V

    goto :goto_0
.end method
