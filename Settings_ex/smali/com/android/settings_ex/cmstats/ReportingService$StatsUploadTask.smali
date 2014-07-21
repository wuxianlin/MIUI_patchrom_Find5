.class Lcom/android/settings_ex/cmstats/ReportingService$StatsUploadTask;
.super Landroid/os/AsyncTask;
.source "ReportingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/cmstats/ReportingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatsUploadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/cmstats/ReportingService;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/cmstats/ReportingService;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/settings_ex/cmstats/ReportingService$StatsUploadTask;->this$0:Lcom/android/settings_ex/cmstats/ReportingService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/cmstats/ReportingService;Lcom/android/settings_ex/cmstats/ReportingService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/settings_ex/cmstats/ReportingService$StatsUploadTask;-><init>(Lcom/android/settings_ex/cmstats/ReportingService;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 21
    .parameter "params"

    .prologue
    .line 69
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/cmstats/ReportingService$StatsUploadTask;->this$0:Lcom/android/settings_ex/cmstats/ReportingService;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings_ex/cmstats/ReportingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/settings_ex/cmstats/Utilities;->getUniqueID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 70
    .local v6, deviceId:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings_ex/cmstats/Utilities;->getDevice()Ljava/lang/String;

    move-result-object v7

    .line 71
    .local v7, deviceName:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings_ex/cmstats/Utilities;->getModVersion()Ljava/lang/String;

    move-result-object v8

    .line 72
    .local v8, deviceVersion:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/cmstats/ReportingService$StatsUploadTask;->this$0:Lcom/android/settings_ex/cmstats/ReportingService;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings_ex/cmstats/ReportingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/settings_ex/cmstats/Utilities;->getCountryCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 73
    .local v5, deviceCountry:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/cmstats/ReportingService$StatsUploadTask;->this$0:Lcom/android/settings_ex/cmstats/ReportingService;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings_ex/cmstats/ReportingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/settings_ex/cmstats/Utilities;->getCarrier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 74
    .local v3, deviceCarrier:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/cmstats/ReportingService$StatsUploadTask;->this$0:Lcom/android/settings_ex/cmstats/ReportingService;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings_ex/cmstats/ReportingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/settings_ex/cmstats/Utilities;->getCarrierId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 76
    .local v4, deviceCarrierId:Ljava/lang/String;
    const-string v18, "CMStats"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "SERVICE: Device ID="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const-string v18, "CMStats"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "SERVICE: Device Name="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const-string v18, "CMStats"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "SERVICE: Device Version="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const-string v18, "CMStats"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "SERVICE: Country="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const-string v18, "CMStats"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "SERVICE: Carrier="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const-string v18, "CMStats"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "SERVICE: Carrier ID="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/cmstats/ReportingService$StatsUploadTask;->this$0:Lcom/android/settings_ex/cmstats/ReportingService;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/GoogleAnalytics;

    move-result-object v11

    .line 85
    .local v11, ga:Lcom/google/analytics/tracking/android/GoogleAnalytics;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/cmstats/ReportingService$StatsUploadTask;->this$0:Lcom/android/settings_ex/cmstats/ReportingService;

    move-object/from16 v18, v0

    const v19, 0x7f080059

    invoke-virtual/range {v18 .. v19}, Lcom/android/settings_ex/cmstats/ReportingService;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getTracker(Ljava/lang/String;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v17

    .line 86
    .local v17, tracker:Lcom/google/analytics/tracking/android/Tracker;
    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v7, v8, v5, v1}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 91
    const-string v18, "-"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 92
    .local v15, parts:[Ljava/lang/String;
    const/4 v9, 0x0

    .line 93
    .local v9, deviceVersionNoDevice:Ljava/lang/String;
    array-length v0, v15

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 94
    const/16 v18, 0x0

    aget-object v9, v15, v18

    .line 99
    :cond_0
    :goto_0
    if-eqz v9, :cond_1

    .line 100
    const-string v18, "checkin"

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v7, v9, v2}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 102
    :cond_1
    invoke-virtual/range {v17 .. v17}, Lcom/google/analytics/tracking/android/Tracker;->close()V

    .line 105
    new-instance v12, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v12}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 106
    .local v12, httpClient:Lorg/apache/http/client/HttpClient;
    new-instance v13, Lorg/apache/http/client/methods/HttpPost;

    const-string v18, "https://stats.cyanogenmod.org/submit"

    move-object/from16 v0, v18

    invoke-direct {v13, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 107
    .local v13, httpPost:Lorg/apache/http/client/methods/HttpPost;
    const/16 v16, 0x0

    .line 110
    .local v16, success:Z
    :try_start_0
    new-instance v14, Ljava/util/ArrayList;

    const/16 v18, 0x5

    move/from16 v0, v18

    invoke-direct {v14, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 111
    .local v14, kv:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v18, Lorg/apache/http/message/BasicNameValuePair;

    const-string v19, "device_hash"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    new-instance v18, Lorg/apache/http/message/BasicNameValuePair;

    const-string v19, "device_name"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    new-instance v18, Lorg/apache/http/message/BasicNameValuePair;

    const-string v19, "device_version"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    new-instance v18, Lorg/apache/http/message/BasicNameValuePair;

    const-string v19, "device_country"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    new-instance v18, Lorg/apache/http/message/BasicNameValuePair;

    const-string v19, "device_carrier"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    new-instance v18, Lorg/apache/http/message/BasicNameValuePair;

    const-string v19, "device_carrier_id"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    new-instance v18, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    move-object/from16 v0, v18

    invoke-direct {v0, v14}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 119
    invoke-interface {v12, v13}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    const/16 v16, 0x1

    .line 126
    .end local v14           #kv:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :goto_1
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    return-object v18

    .line 95
    .end local v12           #httpClient:Lorg/apache/http/client/HttpClient;
    .end local v13           #httpPost:Lorg/apache/http/client/methods/HttpPost;
    .end local v16           #success:Z
    :cond_2
    array-length v0, v15

    move/from16 v18, v0

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 96
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v19, 0x0

    aget-object v19, v15, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "-"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x2

    aget-object v19, v15, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    .line 122
    .restart local v12       #httpClient:Lorg/apache/http/client/HttpClient;
    .restart local v13       #httpPost:Lorg/apache/http/client/methods/HttpPost;
    .restart local v16       #success:Z
    :catch_0
    move-exception v10

    .line 123
    .local v10, e:Ljava/io/IOException;
    const-string v18, "CMStats"

    const-string v19, "Could not upload stats checkin"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/cmstats/ReportingService$StatsUploadTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 8
    .parameter "result"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/settings_ex/cmstats/ReportingService$StatsUploadTask;->this$0:Lcom/android/settings_ex/cmstats/ReportingService;

    .line 134
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 135
    invoke-static {v0}, Lcom/android/settings_ex/cmstats/AnonymousStats;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 136
    .local v3, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "pref_anonymous_checked_in"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 139
    const-wide/16 v1, 0x0

    .line 145
    .end local v3           #prefs:Landroid/content/SharedPreferences;
    .local v1, interval:J
    :goto_0
    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/cmstats/ReportingServiceManager;->setAlarm(Landroid/content/Context;J)V

    .line 146
    iget-object v4, p0, Lcom/android/settings_ex/cmstats/ReportingService$StatsUploadTask;->this$0:Lcom/android/settings_ex/cmstats/ReportingService;

    invoke-virtual {v4}, Lcom/android/settings_ex/cmstats/ReportingService;->stopSelf()V

    .line 147
    return-void

    .line 142
    .end local v1           #interval:J
    :cond_0
    const-wide/32 v1, 0xa4cb80

    .restart local v1       #interval:J
    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/cmstats/ReportingService$StatsUploadTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
