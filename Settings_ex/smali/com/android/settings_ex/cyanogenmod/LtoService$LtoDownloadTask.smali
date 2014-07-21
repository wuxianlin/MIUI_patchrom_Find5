.class Lcom/android/settings_ex/cyanogenmod/LtoService$LtoDownloadTask;
.super Landroid/os/AsyncTask;
.source "LtoService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/cyanogenmod/LtoService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LtoDownloadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private mDestination:Ljava/io/File;

.field private mSource:Ljava/lang/String;

.field private mTempFile:Ljava/io/File;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field final synthetic this$0:Lcom/android/settings_ex/cyanogenmod/LtoService;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/cyanogenmod/LtoService;Ljava/lang/String;Ljava/io/File;)V
    .locals 5
    .parameter
    .parameter "source"
    .parameter "destination"

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/settings_ex/cyanogenmod/LtoService$LtoDownloadTask;->this$0:Lcom/android/settings_ex/cyanogenmod/LtoService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 155
    iput-object p2, p0, Lcom/android/settings_ex/cyanogenmod/LtoService$LtoDownloadTask;->mSource:Ljava/lang/String;

    .line 156
    iput-object p3, p0, Lcom/android/settings_ex/cyanogenmod/LtoService$LtoDownloadTask;->mDestination:Ljava/io/File;

    .line 158
    :try_start_0
    const-string v2, "lto-download"

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/android/settings_ex/cyanogenmod/LtoService;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-static {v2, v3, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/cyanogenmod/LtoService$LtoDownloadTask;->mTempFile:Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :goto_0
    const-string v2, "power"

    invoke-virtual {p1, v2}, Lcom/android/settings_ex/cyanogenmod/LtoService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 164
    .local v1, pm:Landroid/os/PowerManager;
    const/4 v2, 0x1

    const-string v3, "LtoService"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/cyanogenmod/LtoService$LtoDownloadTask;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 165
    return-void

    .line 159
    .end local v1           #pm:Landroid/os/PowerManager;
    :catch_0
    move-exception v0

    .line 160
    .local v0, e:Ljava/io/IOException;
    const-string v2, "LtoService"

    const-string v3, "Could not create temporary file"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private finish(I)V
    .locals 10
    .parameter "result"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 254
    iget-object v0, p0, Lcom/android/settings_ex/cyanogenmod/LtoService$LtoDownloadTask;->this$0:Lcom/android/settings_ex/cyanogenmod/LtoService;

    .line 256
    .local v0, context:Landroid/content/Context;
    iget-object v6, p0, Lcom/android/settings_ex/cyanogenmod/LtoService$LtoDownloadTask;->mTempFile:Ljava/io/File;

    if-eqz v6, :cond_3

    .line 257
    if-nez p1, :cond_0

    .line 258
    iget-object v6, p0, Lcom/android/settings_ex/cyanogenmod/LtoService$LtoDownloadTask;->mDestination:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 259
    iget-object v6, p0, Lcom/android/settings_ex/cyanogenmod/LtoService$LtoDownloadTask;->mTempFile:Ljava/io/File;

    iget-object v7, p0, Lcom/android/settings_ex/cyanogenmod/LtoService$LtoDownloadTask;->mDestination:Ljava/io/File;

    invoke-virtual {v6, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 260
    const-string v6, "LtoService"

    const-string v7, "Could not move temporary file to destination"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/settings_ex/cyanogenmod/LtoService$LtoDownloadTask;->mTempFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 272
    :goto_1
    if-nez p1, :cond_5

    .line 273
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 274
    .local v4, now:J
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 276
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v6, "lto_last_download"

    invoke-interface {v1, v6, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 277
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 278
    iget-object v6, p0, Lcom/android/settings_ex/cyanogenmod/LtoService$LtoDownloadTask;->this$0:Lcom/android/settings_ex/cyanogenmod/LtoService;

    #calls: Lcom/android/settings_ex/cyanogenmod/LtoService;->scheduleNextDownload(J)Landroid/app/PendingIntent;
    invoke-static {v6, v4, v5}, Lcom/android/settings_ex/cyanogenmod/LtoService;->access$000(Lcom/android/settings_ex/cyanogenmod/LtoService;J)Landroid/app/PendingIntent;

    .line 279
    iget-object v6, p0, Lcom/android/settings_ex/cyanogenmod/LtoService$LtoDownloadTask;->this$0:Lcom/android/settings_ex/cyanogenmod/LtoService;

    #calls: Lcom/android/settings_ex/cyanogenmod/LtoService;->notifyNewGpsData()V
    invoke-static {v6}, Lcom/android/settings_ex/cyanogenmod/LtoService;->access$100(Lcom/android/settings_ex/cyanogenmod/LtoService;)V

    .line 290
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v4           #now:J
    :cond_1
    :goto_2
    iget-object v6, p0, Lcom/android/settings_ex/cyanogenmod/LtoService$LtoDownloadTask;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 291
    iget-object v6, p0, Lcom/android/settings_ex/cyanogenmod/LtoService$LtoDownloadTask;->this$0:Lcom/android/settings_ex/cyanogenmod/LtoService;

    invoke-virtual {v6}, Lcom/android/settings_ex/cyanogenmod/LtoService;->stopSelf()V

    .line 292
    return-void

    .line 262
    :cond_2
    iget-object v6, p0, Lcom/android/settings_ex/cyanogenmod/LtoService$LtoDownloadTask;->mDestination:Ljava/io/File;

    invoke-virtual {v6, v8, v9}, Ljava/io/File;->setReadable(ZZ)Z

    goto :goto_0

    .line 266
    :cond_3
    if-eqz p1, :cond_4

    .line 267
    iget-object v6, p0, Lcom/android/settings_ex/cyanogenmod/LtoService$LtoDownloadTask;->mDestination:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 269
    :cond_4
    iget-object v6, p0, Lcom/android/settings_ex/cyanogenmod/LtoService$LtoDownloadTask;->mDestination:Ljava/io/File;

    invoke-virtual {v6, v8, v9}, Ljava/io/File;->setReadable(ZZ)Z

    goto :goto_1

    .line 281
    :cond_5
    if-ne p1, v8, :cond_1

    .line 283
    iget-object v6, p0, Lcom/android/settings_ex/cyanogenmod/LtoService$LtoDownloadTask;->this$0:Lcom/android/settings_ex/cyanogenmod/LtoService;

    #calls: Lcom/android/settings_ex/cyanogenmod/LtoService;->getLastDownload()J
    invoke-static {v6}, Lcom/android/settings_ex/cyanogenmod/LtoService;->access$200(Lcom/android/settings_ex/cyanogenmod/LtoService;)J

    move-result-wide v6

    const-wide/32 v8, 0x36ee80

    add-long v2, v6, v8

    .line 284
    .local v2, lastDownload:J
    iget-object v6, p0, Lcom/android/settings_ex/cyanogenmod/LtoService$LtoDownloadTask;->this$0:Lcom/android/settings_ex/cyanogenmod/LtoService;

    #calls: Lcom/android/settings_ex/cyanogenmod/LtoService;->scheduleNextDownload(J)Landroid/app/PendingIntent;
    invoke-static {v6, v2, v3}, Lcom/android/settings_ex/cyanogenmod/LtoService;->access$000(Lcom/android/settings_ex/cyanogenmod/LtoService;J)Landroid/app/PendingIntent;

    goto :goto_2
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 23
    .parameter "params"

    .prologue
    .line 174
    const/4 v8, 0x0

    .line 175
    .local v8, in:Ljava/io/BufferedInputStream;
    const/4 v12, 0x0

    .line 176
    .local v12, out:Ljava/io/BufferedOutputStream;
    const/16 v18, 0x0

    .line 179
    .local v18, result:I
    :try_start_0
    new-instance v7, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v7}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 180
    .local v7, httpParams:Lorg/apache/http/params/HttpParams;
    const/16 v20, 0x4e20

    move/from16 v0, v20

    invoke-static {v7, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 181
    const/16 v20, 0x4e20

    move/from16 v0, v20

    invoke-static {v7, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 183
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3, v7}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 184
    .local v3, client:Lorg/apache/http/client/HttpClient;
    new-instance v16, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct/range {v16 .. v16}, Lorg/apache/http/client/methods/HttpGet;-><init>()V

    .line 185
    .local v16, request:Lorg/apache/http/client/methods/HttpGet;
    new-instance v20, Ljava/net/URI;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/cyanogenmod/LtoService$LtoDownloadTask;->mSource:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpGet;->setURI(Ljava/net/URI;)V

    .line 187
    move-object/from16 v0, v16

    invoke-interface {v3, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v17

    .line 188
    .local v17, response:Lorg/apache/http/HttpResponse;
    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    .line 189
    .local v6, entity:Lorg/apache/http/HttpEntity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/cyanogenmod/LtoService$LtoDownloadTask;->mTempFile:Ljava/io/File;

    move-object/from16 v20, v0

    if-eqz v20, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/cyanogenmod/LtoService$LtoDownloadTask;->mTempFile:Ljava/io/File;

    .line 191
    .local v14, outputFile:Ljava/io/File;
    :goto_0
    new-instance v9, Ljava/io/BufferedInputStream;

    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v9, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_3

    .line 192
    .end local v8           #in:Ljava/io/BufferedInputStream;
    .local v9, in:Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v13, Ljava/io/BufferedOutputStream;

    new-instance v20, Ljava/io/FileOutputStream;

    move-object/from16 v0, v20

    invoke-direct {v0, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v20

    invoke-direct {v13, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_6

    .line 194
    .end local v12           #out:Ljava/io/BufferedOutputStream;
    .local v13, out:Ljava/io/BufferedOutputStream;
    const/16 v20, 0x800

    :try_start_2
    move/from16 v0, v20

    new-array v2, v0, [B

    .line 195
    .local v2, buffer:[B
    const/16 v19, 0x0

    .line 196
    .local v19, total:I
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v10

    .line 198
    .local v10, length:J
    :cond_0
    :goto_1
    const/16 v20, 0x0

    array-length v0, v2

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v9, v2, v0, v1}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v4

    .local v4, count:I
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v4, v0, :cond_1

    .line 199
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/cyanogenmod/LtoService$LtoDownloadTask;->isCancelled()Z

    move-result v20

    if-eqz v20, :cond_8

    .line 200
    const/16 v18, 0x2

    .line 212
    :cond_1
    const-string v20, "LtoService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Downloaded "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " bytes of LTO data"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    if-eqz v19, :cond_2

    const-wide/16 v20, 0x0

    cmp-long v20, v10, v20

    if-lez v20, :cond_3

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    cmp-long v20, v20, v10

    if-eqz v20, :cond_3

    .line 214
    :cond_2
    const/16 v18, 0x1

    .line 216
    :cond_3
    invoke-virtual {v9}, Ljava/io/BufferedInputStream;->close()V

    .line 217
    invoke-virtual {v13}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_7

    .line 226
    if-eqz v9, :cond_4

    .line 227
    :try_start_3
    invoke-virtual {v9}, Ljava/io/BufferedInputStream;->close()V

    .line 229
    :cond_4
    if-eqz v13, :cond_5

    .line 230
    invoke-virtual {v13}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_5
    move-object v12, v13

    .end local v13           #out:Ljava/io/BufferedOutputStream;
    .restart local v12       #out:Ljava/io/BufferedOutputStream;
    move-object v8, v9

    .line 237
    .end local v2           #buffer:[B
    .end local v3           #client:Lorg/apache/http/client/HttpClient;
    .end local v4           #count:I
    .end local v6           #entity:Lorg/apache/http/HttpEntity;
    .end local v7           #httpParams:Lorg/apache/http/params/HttpParams;
    .end local v9           #in:Ljava/io/BufferedInputStream;
    .end local v10           #length:J
    .end local v14           #outputFile:Ljava/io/File;
    .end local v16           #request:Lorg/apache/http/client/methods/HttpGet;
    .end local v17           #response:Lorg/apache/http/HttpResponse;
    .end local v19           #total:I
    .restart local v8       #in:Ljava/io/BufferedInputStream;
    :cond_6
    :goto_2
    const-string v20, "LtoService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "return "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    return-object v20

    .line 189
    .restart local v3       #client:Lorg/apache/http/client/HttpClient;
    .restart local v6       #entity:Lorg/apache/http/HttpEntity;
    .restart local v7       #httpParams:Lorg/apache/http/params/HttpParams;
    .restart local v16       #request:Lorg/apache/http/client/methods/HttpGet;
    .restart local v17       #response:Lorg/apache/http/HttpResponse;
    :cond_7
    :try_start_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/cyanogenmod/LtoService$LtoDownloadTask;->mDestination:Ljava/io/File;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    .line 203
    .end local v8           #in:Ljava/io/BufferedInputStream;
    .end local v12           #out:Ljava/io/BufferedOutputStream;
    .restart local v2       #buffer:[B
    .restart local v4       #count:I
    .restart local v9       #in:Ljava/io/BufferedInputStream;
    .restart local v10       #length:J
    .restart local v13       #out:Ljava/io/BufferedOutputStream;
    .restart local v14       #outputFile:Ljava/io/File;
    .restart local v19       #total:I
    :cond_8
    const/16 v20, 0x0

    :try_start_5
    move/from16 v0, v20

    invoke-virtual {v13, v2, v0, v4}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 204
    add-int v19, v19, v4

    .line 206
    const-wide/16 v20, 0x0

    cmp-long v20, v10, v20

    if-lez v20, :cond_0

    .line 207
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x42c8

    mul-float v20, v20, v21

    long-to-float v0, v10

    move/from16 v21, v0

    div-float v15, v20, v21

    .line 208
    .local v15, progress:F
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    float-to-int v0, v15

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/cyanogenmod/LtoService$LtoDownloadTask;->publishProgress([Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_5} :catch_7

    goto/16 :goto_1

    .line 218
    .end local v2           #buffer:[B
    .end local v4           #count:I
    .end local v10           #length:J
    .end local v15           #progress:F
    .end local v19           #total:I
    :catch_0
    move-exception v5

    move-object v12, v13

    .end local v13           #out:Ljava/io/BufferedOutputStream;
    .restart local v12       #out:Ljava/io/BufferedOutputStream;
    move-object v8, v9

    .line 219
    .end local v3           #client:Lorg/apache/http/client/HttpClient;
    .end local v6           #entity:Lorg/apache/http/HttpEntity;
    .end local v7           #httpParams:Lorg/apache/http/params/HttpParams;
    .end local v9           #in:Ljava/io/BufferedInputStream;
    .end local v14           #outputFile:Ljava/io/File;
    .end local v16           #request:Lorg/apache/http/client/methods/HttpGet;
    .end local v17           #response:Lorg/apache/http/HttpResponse;
    .local v5, e:Ljava/io/IOException;
    .restart local v8       #in:Ljava/io/BufferedInputStream;
    :goto_3
    :try_start_6
    const-string v20, "LtoService"

    const-string v21, "Failed downloading LTO data"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 220
    const/16 v18, 0x1

    .line 226
    if-eqz v8, :cond_9

    .line 227
    :try_start_7
    invoke-virtual {v8}, Ljava/io/BufferedInputStream;->close()V

    .line 229
    :cond_9
    if-eqz v12, :cond_6

    .line 230
    invoke-virtual {v12}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    .line 232
    :catch_1
    move-exception v5

    .line 233
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 232
    .end local v5           #e:Ljava/io/IOException;
    .end local v8           #in:Ljava/io/BufferedInputStream;
    .end local v12           #out:Ljava/io/BufferedOutputStream;
    .restart local v2       #buffer:[B
    .restart local v3       #client:Lorg/apache/http/client/HttpClient;
    .restart local v4       #count:I
    .restart local v6       #entity:Lorg/apache/http/HttpEntity;
    .restart local v7       #httpParams:Lorg/apache/http/params/HttpParams;
    .restart local v9       #in:Ljava/io/BufferedInputStream;
    .restart local v10       #length:J
    .restart local v13       #out:Ljava/io/BufferedOutputStream;
    .restart local v14       #outputFile:Ljava/io/File;
    .restart local v16       #request:Lorg/apache/http/client/methods/HttpGet;
    .restart local v17       #response:Lorg/apache/http/HttpResponse;
    .restart local v19       #total:I
    :catch_2
    move-exception v5

    .line 233
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    move-object v12, v13

    .end local v13           #out:Ljava/io/BufferedOutputStream;
    .restart local v12       #out:Ljava/io/BufferedOutputStream;
    move-object v8, v9

    .line 235
    .end local v9           #in:Ljava/io/BufferedInputStream;
    .restart local v8       #in:Ljava/io/BufferedInputStream;
    goto/16 :goto_2

    .line 221
    .end local v2           #buffer:[B
    .end local v3           #client:Lorg/apache/http/client/HttpClient;
    .end local v4           #count:I
    .end local v5           #e:Ljava/io/IOException;
    .end local v6           #entity:Lorg/apache/http/HttpEntity;
    .end local v7           #httpParams:Lorg/apache/http/params/HttpParams;
    .end local v10           #length:J
    .end local v14           #outputFile:Ljava/io/File;
    .end local v16           #request:Lorg/apache/http/client/methods/HttpGet;
    .end local v17           #response:Lorg/apache/http/HttpResponse;
    .end local v19           #total:I
    :catch_3
    move-exception v5

    .line 222
    .local v5, e:Ljava/net/URISyntaxException;
    :goto_4
    :try_start_8
    const-string v20, "LtoService"

    const-string v21, "URI syntax wrong"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 223
    const/16 v18, 0x1

    .line 226
    if-eqz v8, :cond_a

    .line 227
    :try_start_9
    invoke-virtual {v8}, Ljava/io/BufferedInputStream;->close()V

    .line 229
    :cond_a
    if-eqz v12, :cond_6

    .line 230
    invoke-virtual {v12}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_2

    .line 232
    :catch_4
    move-exception v5

    .line 233
    .local v5, e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 225
    .end local v5           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v20

    .line 226
    :goto_5
    if-eqz v8, :cond_b

    .line 227
    :try_start_a
    invoke-virtual {v8}, Ljava/io/BufferedInputStream;->close()V

    .line 229
    :cond_b
    if-eqz v12, :cond_c

    .line 230
    invoke-virtual {v12}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 234
    :cond_c
    :goto_6
    throw v20

    .line 232
    :catch_5
    move-exception v5

    .line 233
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 225
    .end local v5           #e:Ljava/io/IOException;
    .end local v8           #in:Ljava/io/BufferedInputStream;
    .restart local v3       #client:Lorg/apache/http/client/HttpClient;
    .restart local v6       #entity:Lorg/apache/http/HttpEntity;
    .restart local v7       #httpParams:Lorg/apache/http/params/HttpParams;
    .restart local v9       #in:Ljava/io/BufferedInputStream;
    .restart local v14       #outputFile:Ljava/io/File;
    .restart local v16       #request:Lorg/apache/http/client/methods/HttpGet;
    .restart local v17       #response:Lorg/apache/http/HttpResponse;
    :catchall_1
    move-exception v20

    move-object v8, v9

    .end local v9           #in:Ljava/io/BufferedInputStream;
    .restart local v8       #in:Ljava/io/BufferedInputStream;
    goto :goto_5

    .end local v8           #in:Ljava/io/BufferedInputStream;
    .end local v12           #out:Ljava/io/BufferedOutputStream;
    .restart local v9       #in:Ljava/io/BufferedInputStream;
    .restart local v13       #out:Ljava/io/BufferedOutputStream;
    :catchall_2
    move-exception v20

    move-object v12, v13

    .end local v13           #out:Ljava/io/BufferedOutputStream;
    .restart local v12       #out:Ljava/io/BufferedOutputStream;
    move-object v8, v9

    .end local v9           #in:Ljava/io/BufferedInputStream;
    .restart local v8       #in:Ljava/io/BufferedInputStream;
    goto :goto_5

    .line 221
    .end local v8           #in:Ljava/io/BufferedInputStream;
    .restart local v9       #in:Ljava/io/BufferedInputStream;
    :catch_6
    move-exception v5

    move-object v8, v9

    .end local v9           #in:Ljava/io/BufferedInputStream;
    .restart local v8       #in:Ljava/io/BufferedInputStream;
    goto :goto_4

    .end local v8           #in:Ljava/io/BufferedInputStream;
    .end local v12           #out:Ljava/io/BufferedOutputStream;
    .restart local v9       #in:Ljava/io/BufferedInputStream;
    .restart local v13       #out:Ljava/io/BufferedOutputStream;
    :catch_7
    move-exception v5

    move-object v12, v13

    .end local v13           #out:Ljava/io/BufferedOutputStream;
    .restart local v12       #out:Ljava/io/BufferedOutputStream;
    move-object v8, v9

    .end local v9           #in:Ljava/io/BufferedInputStream;
    .restart local v8       #in:Ljava/io/BufferedInputStream;
    goto :goto_4

    .line 218
    .end local v3           #client:Lorg/apache/http/client/HttpClient;
    .end local v6           #entity:Lorg/apache/http/HttpEntity;
    .end local v7           #httpParams:Lorg/apache/http/params/HttpParams;
    .end local v14           #outputFile:Ljava/io/File;
    .end local v16           #request:Lorg/apache/http/client/methods/HttpGet;
    .end local v17           #response:Lorg/apache/http/HttpResponse;
    :catch_8
    move-exception v5

    goto :goto_3

    .end local v8           #in:Ljava/io/BufferedInputStream;
    .restart local v3       #client:Lorg/apache/http/client/HttpClient;
    .restart local v6       #entity:Lorg/apache/http/HttpEntity;
    .restart local v7       #httpParams:Lorg/apache/http/params/HttpParams;
    .restart local v9       #in:Ljava/io/BufferedInputStream;
    .restart local v14       #outputFile:Ljava/io/File;
    .restart local v16       #request:Lorg/apache/http/client/methods/HttpGet;
    .restart local v17       #response:Lorg/apache/http/HttpResponse;
    :catch_9
    move-exception v5

    move-object v8, v9

    .end local v9           #in:Ljava/io/BufferedInputStream;
    .restart local v8       #in:Ljava/io/BufferedInputStream;
    goto :goto_3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/cyanogenmod/LtoService$LtoDownloadTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/settings_ex/cyanogenmod/LtoService$LtoDownloadTask;->finish(I)V

    .line 251
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 243
    if-eqz p1, :cond_0

    .line 244
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/cyanogenmod/LtoService$LtoDownloadTask;->finish(I)V

    .line 246
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/cyanogenmod/LtoService$LtoDownloadTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/settings_ex/cyanogenmod/LtoService$LtoDownloadTask;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 170
    return-void
.end method
