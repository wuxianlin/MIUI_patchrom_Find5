.class Lcom/google/analytics/tracking/android/GAThread;
.super Ljava/lang/Thread;
.source "GAThread.java"

# interfaces
.implements Lcom/google/analytics/tracking/android/AnalyticsThread;


# static fields
.field private static sInstance:Lcom/google/analytics/tracking/android/GAThread;


# instance fields
.field private volatile mAppOptOut:Z

.field private volatile mClientId:Ljava/lang/String;

.field private volatile mClosed:Z

.field private volatile mCommands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/analytics/internal/Command;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private volatile mDisabled:Z

.field private volatile mInstallCampaign:Ljava/lang/String;

.field private volatile mMetaModel:Lcom/google/analytics/tracking/android/MetaModel;

.field private volatile mServiceProxy:Lcom/google/analytics/tracking/android/ServiceProxy;

.field private final queue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    const/4 v1, 0x0

    .line 73
    const-string v0, "GAThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 49
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAThread;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 52
    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/GAThread;->mDisabled:Z

    .line 53
    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/GAThread;->mClosed:Z

    .line 74
    if-eqz p1, :cond_0

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAThread;->mContext:Landroid/content/Context;

    .line 79
    :goto_0
    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/GAThread;->start()V

    .line 80
    return-void

    .line 77
    :cond_0
    iput-object p1, p0, Lcom/google/analytics/tracking/android/GAThread;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/google/analytics/tracking/android/GAThread;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAThread;->mClientId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/analytics/tracking/android/GAThread;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/GAThread;->mAppOptOut:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/google/analytics/tracking/android/GAThread;)Lcom/google/analytics/tracking/android/ServiceProxy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAThread;->mServiceProxy:Lcom/google/analytics/tracking/android/ServiceProxy;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/analytics/tracking/android/GAThread;Ljava/util/Map;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/google/analytics/tracking/android/GAThread;->isSampledOut(Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/google/analytics/tracking/android/GAThread;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAThread;->mInstallCampaign:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/analytics/tracking/android/GAThread;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/google/analytics/tracking/android/GAThread;->mInstallCampaign:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/analytics/tracking/android/GAThread;Ljava/util/Map;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/google/analytics/tracking/android/GAThread;->fillAppParameters(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/analytics/tracking/android/GAThread;Ljava/util/Map;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/google/analytics/tracking/android/GAThread;->fillCampaignParameters(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/analytics/tracking/android/GAThread;Ljava/util/Map;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/google/analytics/tracking/android/GAThread;->fillExceptionParameters(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/analytics/tracking/android/GAThread;)Lcom/google/analytics/tracking/android/MetaModel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAThread;->mMetaModel:Lcom/google/analytics/tracking/android/MetaModel;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/analytics/tracking/android/GAThread;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/google/analytics/tracking/android/GAThread;->getHostUrl(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/analytics/tracking/android/GAThread;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAThread;->mCommands:Ljava/util/List;

    return-object v0
.end method

.method private fillAppParameters(Ljava/util/Map;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 210
    .local p1, hit:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/google/analytics/tracking/android/GAThread;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 211
    .local v6, pm:Landroid/content/pm/PackageManager;
    iget-object v7, p0, Lcom/google/analytics/tracking/android/GAThread;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, appId:Ljava/lang/String;
    invoke-virtual {v6, v0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 214
    .local v1, appInstallerId:Ljava/lang/String;
    move-object v2, v0

    .line 215
    .local v2, appName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 217
    .local v3, appVersion:Ljava/lang/String;
    :try_start_0
    iget-object v7, p0, Lcom/google/analytics/tracking/android/GAThread;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 218
    .local v5, packageInfo:Landroid/content/pm/PackageInfo;
    if-eqz v5, :cond_0

    .line 219
    iget-object v7, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 220
    iget-object v3, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    .end local v5           #packageInfo:Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    const-string v7, "appName"

    invoke-direct {p0, p1, v7, v2}, Lcom/google/analytics/tracking/android/GAThread;->putIfAbsent(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string v7, "appVersion"

    invoke-direct {p0, p1, v7, v3}, Lcom/google/analytics/tracking/android/GAThread;->putIfAbsent(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string v7, "appId"

    invoke-direct {p0, p1, v7, v0}, Lcom/google/analytics/tracking/android/GAThread;->putIfAbsent(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v7, "appInstallerId"

    invoke-direct {p0, p1, v7, v1}, Lcom/google/analytics/tracking/android/GAThread;->putIfAbsent(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v7, "apiVersion"

    const-string v8, "1"

    invoke-interface {p1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    return-void

    .line 222
    :catch_0
    move-exception v4

    .line 223
    .local v4, exception:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error retrieving package info: appName set to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/analytics/tracking/android/Log;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method private fillCampaignParameters(Ljava/util/Map;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 239
    .local p1, hit:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "campaign"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/google/analytics/tracking/android/Utils;->filterCampaign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, campaign:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 260
    :goto_0
    return-void

    .line 245
    :cond_0
    invoke-static {v0}, Lcom/google/analytics/tracking/android/Utils;->parseURLParameters(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 251
    .local v1, paramsMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "campaignContent"

    const-string v3, "utm_content"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    const-string v2, "campaignMedium"

    const-string v3, "utm_medium"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    const-string v2, "campaignName"

    const-string v3, "utm_campaign"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    const-string v2, "campaignSource"

    const-string v3, "utm_source"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    const-string v2, "campaignKeyword"

    const-string v3, "utm_term"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    const-string v2, "campaignId"

    const-string v3, "utm_id"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    const-string v2, "gclid"

    const-string v3, "gclid"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    const-string v2, "dclid"

    const-string v3, "dclid"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    const-string v2, "gmob_t"

    const-string v3, "gmob_t"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private fillExceptionParameters(Ljava/util/Map;)V
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 157
    .local p1, hit:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v10, "rawException"

    invoke-interface {p1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 158
    .local v7, rawExceptionString:Ljava/lang/String;
    if-nez v7, :cond_1

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    const-string v10, "rawException"

    invoke-interface {p1, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    invoke-static {v7}, Lcom/google/analytics/tracking/android/Utils;->hexDecode(Ljava/lang/String;)[B

    move-result-object v8

    .line 163
    .local v8, rawExceptionStringBytes:[B
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 166
    .local v2, byteStream:Ljava/io/ByteArrayInputStream;
    :try_start_0
    new-instance v6, Ljava/io/ObjectInputStream;

    invoke-direct {v6, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 167
    .local v6, objectInputStream:Ljava/io/ObjectInputStream;
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v9

    .line 168
    .local v9, readObject:Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->close()V

    .line 169
    instance-of v10, v9, Ljava/lang/Throwable;

    if-eqz v10, :cond_0

    .line 170
    move-object v0, v9

    check-cast v0, Ljava/lang/Throwable;

    move-object v4, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 183
    .local v4, exception:Ljava/lang/Throwable;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .local v1, additionalPackages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Lcom/google/analytics/tracking/android/StandardExceptionParser;

    iget-object v10, p0, Lcom/google/analytics/tracking/android/GAThread;->mContext:Landroid/content/Context;

    invoke-direct {v5, v10, v1}, Lcom/google/analytics/tracking/android/StandardExceptionParser;-><init>(Landroid/content/Context;Ljava/util/Collection;)V

    .line 185
    .local v5, exceptionParser:Lcom/google/analytics/tracking/android/ExceptionParser;
    const-string v11, "exDescription"

    const-string v10, "exceptionThreadName"

    invoke-interface {p1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v5, v10, v4}, Lcom/google/analytics/tracking/android/ExceptionParser;->getDescription(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 174
    .end local v1           #additionalPackages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #exception:Ljava/lang/Throwable;
    .end local v5           #exceptionParser:Lcom/google/analytics/tracking/android/ExceptionParser;
    .end local v6           #objectInputStream:Ljava/io/ObjectInputStream;
    .end local v9           #readObject:Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 175
    .local v3, e:Ljava/io/IOException;
    const-string v10, "IOException reading exception"

    invoke-static {v10}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)I

    goto :goto_0

    .line 177
    .end local v3           #e:Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 178
    .local v3, e:Ljava/lang/ClassNotFoundException;
    const-string v10, "ClassNotFoundException reading exception"

    invoke-static {v10}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)I

    goto :goto_0
.end method

.method private generateClientId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 366
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 367
    .local v0, result:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/google/analytics/tracking/android/GAThread;->storeClientId(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 368
    const-string v0, "0"

    .line 370
    :cond_0
    return-object v0
.end method

.method static getAndClearCampaign(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 427
    :try_start_0
    const-string v6, "gaInstallData"

    invoke-virtual {p0, v6}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 432
    .local v2, input:Ljava/io/FileInputStream;
    const/16 v6, 0x2000

    new-array v3, v6, [B

    .line 433
    .local v3, inputBytes:[B
    const/4 v6, 0x0

    const/16 v7, 0x2000

    invoke-virtual {v2, v3, v6, v7}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4

    .line 434
    .local v4, readLen:I
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v6

    if-lez v6, :cond_0

    .line 437
    const-string v6, "Too much campaign data, ignoring it."

    invoke-static {v6}, Lcom/google/analytics/tracking/android/Log;->e(Ljava/lang/String;)I

    .line 438
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 439
    const-string v6, "gaInstallData"

    invoke-virtual {p0, v6}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-object v0, v5

    .line 461
    .end local v2           #input:Ljava/io/FileInputStream;
    .end local v3           #inputBytes:[B
    .end local v4           #readLen:I
    :goto_0
    return-object v0

    .line 442
    .restart local v2       #input:Ljava/io/FileInputStream;
    .restart local v3       #inputBytes:[B
    .restart local v4       #readLen:I
    :cond_0
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 443
    const-string v6, "gaInstallData"

    invoke-virtual {p0, v6}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 444
    if-gtz v4, :cond_1

    .line 445
    const-string v6, "Campaign file is empty."

    invoke-static {v6}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)I

    move-object v0, v5

    .line 446
    goto :goto_0

    .line 448
    :cond_1
    new-instance v0, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v0, v3, v6, v4}, Ljava/lang/String;-><init>([BII)V

    .line 449
    .local v0, campaignString:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Campaign found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/analytics/tracking/android/Log;->i(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 452
    .end local v0           #campaignString:Ljava/lang/String;
    .end local v2           #input:Ljava/io/FileInputStream;
    .end local v3           #inputBytes:[B
    .end local v4           #readLen:I
    :catch_0
    move-exception v1

    .line 454
    .local v1, e:Ljava/io/FileNotFoundException;
    const-string v6, "No campaign data found."

    invoke-static {v6}, Lcom/google/analytics/tracking/android/Log;->i(Ljava/lang/String;)I

    move-object v0, v5

    .line 455
    goto :goto_0

    .line 456
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 459
    .local v1, e:Ljava/io/IOException;
    const-string v6, "Error reading campaign data."

    invoke-static {v6}, Lcom/google/analytics/tracking/android/Log;->e(Ljava/lang/String;)I

    .line 460
    const-string v6, "gaInstallData"

    invoke-virtual {p0, v6}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-object v0, v5

    .line 461
    goto :goto_0
.end method

.method private getHostUrl(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 139
    .local p1, hit:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "internalHitUrl"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 140
    .local v0, hitUrl:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 141
    const-string v1, "useSecure"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 142
    const-string v1, "useSecure"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/google/analytics/tracking/android/Utils;->safeParseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "https://ssl.google-analytics.com/collect"

    .line 150
    :cond_0
    :goto_0
    return-object v0

    .line 142
    :cond_1
    const-string v0, "http://www.google-analytics.com/collect"

    goto :goto_0

    .line 147
    :cond_2
    const-string v0, "https://ssl.google-analytics.com/collect"

    goto :goto_0
.end method

.method static getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/GAThread;
    .locals 1
    .parameter "ctx"

    .prologue
    .line 65
    sget-object v0, Lcom/google/analytics/tracking/android/GAThread;->sInstance:Lcom/google/analytics/tracking/android/GAThread;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/google/analytics/tracking/android/GAThread;

    invoke-direct {v0, p0}, Lcom/google/analytics/tracking/android/GAThread;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/analytics/tracking/android/GAThread;->sInstance:Lcom/google/analytics/tracking/android/GAThread;

    .line 68
    :cond_0
    sget-object v0, Lcom/google/analytics/tracking/android/GAThread;->sInstance:Lcom/google/analytics/tracking/android/GAThread;

    return-object v0
.end method

.method private init()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 95
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAThread;->mServiceProxy:Lcom/google/analytics/tracking/android/ServiceProxy;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/ServiceProxy;->createService()V

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAThread;->mCommands:Ljava/util/List;

    .line 97
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAThread;->mCommands:Ljava/util/List;

    new-instance v1, Lcom/google/android/gms/analytics/internal/Command;

    const-string v2, "appendVersion"

    const-string v3, "_v"

    const-string v4, "ma1b5"

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/analytics/internal/Command;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAThread;->mCommands:Ljava/util/List;

    new-instance v1, Lcom/google/android/gms/analytics/internal/Command;

    const-string v2, "appendQueueTime"

    const-string v3, "qt"

    invoke-direct {v1, v2, v3, v5}, Lcom/google/android/gms/analytics/internal/Command;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAThread;->mCommands:Ljava/util/List;

    new-instance v1, Lcom/google/android/gms/analytics/internal/Command;

    const-string v2, "appendCacheBuster"

    const-string v3, "z"

    invoke-direct {v1, v2, v3, v5}, Lcom/google/android/gms/analytics/internal/Command;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    new-instance v0, Lcom/google/analytics/tracking/android/MetaModel;

    invoke-direct {v0}, Lcom/google/analytics/tracking/android/MetaModel;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAThread;->mMetaModel:Lcom/google/analytics/tracking/android/MetaModel;

    .line 101
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAThread;->mMetaModel:Lcom/google/analytics/tracking/android/MetaModel;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/MetaModelInitializer;->set(Lcom/google/analytics/tracking/android/MetaModel;)V

    .line 102
    return-void
.end method

.method private isSampledOut(Ljava/util/Map;)Z
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, hit:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x1

    const-wide/high16 v7, 0x4059

    .line 192
    const-string v3, "sampleRate"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 193
    const-string v3, "sampleRate"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/google/analytics/tracking/android/Utils;->safeParseDouble(Ljava/lang/String;)D

    move-result-wide v1

    .line 194
    .local v1, sampleRate:D
    const-wide/16 v5, 0x0

    cmpg-double v3, v1, v5

    if-gtz v3, :cond_0

    move v3, v4

    .line 205
    .end local v1           #sampleRate:D
    :goto_0
    return v3

    .line 197
    .restart local v1       #sampleRate:D
    :cond_0
    cmpg-double v3, v1, v7

    if-gez v3, :cond_1

    .line 198
    const-string v3, "clientId"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 199
    .local v0, clientId:Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    rem-int/lit16 v3, v3, 0x2710

    int-to-double v5, v3

    mul-double/2addr v7, v1

    cmpl-double v3, v5, v7

    if-ltz v3, :cond_1

    move v3, v4

    .line 201
    goto :goto_0

    .line 205
    .end local v0           #clientId:Ljava/lang/String;
    .end local v1           #sampleRate:D
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private loadAppOptOut()Z
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAThread;->mContext:Landroid/content/Context;

    const-string v1, "gaOptOut"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method private printStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 4
    .parameter "t"

    .prologue
    .line 466
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 467
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/PrintStream;

    invoke-direct {v1, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 468
    .local v1, stream:Ljava/io/PrintStream;
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 469
    invoke-virtual {v1}, Ljava/io/PrintStream;->flush()V

    .line 470
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    return-object v2
.end method

.method private putIfAbsent(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 233
    .local p1, hit:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    :cond_0
    return-void
.end method

.method private queueToThread(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 327
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAThread;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 328
    return-void
.end method

.method private storeClientId(Ljava/lang/String;)Z
    .locals 6
    .parameter "clientId"

    .prologue
    const/4 v2, 0x0

    .line 346
    :try_start_0
    iget-object v3, p0, Lcom/google/analytics/tracking/android/GAThread;->mContext:Landroid/content/Context;

    const-string v4, "gaClientId"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 348
    .local v1, fos:Ljava/io/FileOutputStream;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 349
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 350
    const/4 v2, 0x1

    .line 356
    .end local v1           #fos:Ljava/io/FileOutputStream;
    :goto_0
    return v2

    .line 351
    :catch_0
    move-exception v0

    .line 352
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v3, "Error creating clientId file."

    invoke-static {v3}, Lcom/google/analytics/tracking/android/Log;->e(Ljava/lang/String;)I

    goto :goto_0

    .line 354
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 355
    .local v0, e:Ljava/io/IOException;
    const-string v3, "Error writing to clientId file."

    invoke-static {v3}, Lcom/google/analytics/tracking/android/Log;->e(Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public dispatch()V
    .locals 1

    .prologue
    .line 264
    new-instance v0, Lcom/google/analytics/tracking/android/GAThread$2;

    invoke-direct {v0, p0}, Lcom/google/analytics/tracking/android/GAThread$2;-><init>(Lcom/google/analytics/tracking/android/GAThread;)V

    invoke-direct {p0, v0}, Lcom/google/analytics/tracking/android/GAThread;->queueToThread(Ljava/lang/Runnable;)V

    .line 271
    return-void
.end method

.method public getQueue()Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 537
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAThread;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method

.method public getThread()Ljava/lang/Thread;
    .locals 0

    .prologue
    .line 542
    return-object p0
.end method

.method initializeClientId()Ljava/lang/String;
    .locals 8

    .prologue
    .line 382
    const/4 v4, 0x0

    .line 384
    .local v4, rslt:Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/google/analytics/tracking/android/GAThread;->mContext:Landroid/content/Context;

    const-string v7, "gaClientId"

    invoke-virtual {v6, v7}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 385
    .local v2, input:Ljava/io/FileInputStream;
    const/16 v6, 0x80

    new-array v0, v6, [B

    .line 386
    .local v0, bytes:[B
    const/4 v6, 0x0

    const/16 v7, 0x80

    invoke-virtual {v2, v0, v6, v7}, Ljava/io/FileInputStream;->read([BII)I

    move-result v3

    .line 387
    .local v3, readLen:I
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v6

    if-lez v6, :cond_0

    .line 390
    const-string v6, "clientId file seems corrupted, deleting it."

    invoke-static {v6}, Lcom/google/analytics/tracking/android/Log;->e(Ljava/lang/String;)I

    .line 391
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 392
    iget-object v6, p0, Lcom/google/analytics/tracking/android/GAThread;->mContext:Landroid/content/Context;

    const-string v7, "gaInstallData"

    invoke-virtual {v6, v7}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 394
    :cond_0
    if-gtz v3, :cond_2

    .line 395
    const-string v6, "clientId file seems empty, deleting it."

    invoke-static {v6}, Lcom/google/analytics/tracking/android/Log;->e(Ljava/lang/String;)I

    .line 396
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 397
    iget-object v6, p0, Lcom/google/analytics/tracking/android/GAThread;->mContext:Landroid/content/Context;

    const-string v7, "gaInstallData"

    invoke-virtual {v6, v7}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 412
    .end local v0           #bytes:[B
    .end local v2           #input:Ljava/io/FileInputStream;
    .end local v3           #readLen:I
    :goto_0
    if-nez v4, :cond_1

    .line 413
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAThread;->generateClientId()Ljava/lang/String;

    move-result-object v4

    .line 415
    :cond_1
    return-object v4

    .line 399
    .restart local v0       #bytes:[B
    .restart local v2       #input:Ljava/io/FileInputStream;
    .restart local v3       #readLen:I
    :cond_2
    :try_start_1
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6, v3}, Ljava/lang/String;-><init>([BII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 400
    .end local v4           #rslt:Ljava/lang/String;
    .local v5, rslt:Ljava/lang/String;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v4, v5

    .end local v5           #rslt:Ljava/lang/String;
    .restart local v4       #rslt:Ljava/lang/String;
    goto :goto_0

    .line 404
    .end local v0           #bytes:[B
    .end local v2           #input:Ljava/io/FileInputStream;
    .end local v3           #readLen:I
    :catch_0
    move-exception v1

    .line 405
    .local v1, e:Ljava/io/IOException;
    :goto_1
    const-string v6, "Error reading clientId file, deleting it."

    invoke-static {v6}, Lcom/google/analytics/tracking/android/Log;->e(Ljava/lang/String;)I

    .line 406
    iget-object v6, p0, Lcom/google/analytics/tracking/android/GAThread;->mContext:Landroid/content/Context;

    const-string v7, "gaInstallData"

    invoke-virtual {v6, v7}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    goto :goto_0

    .line 407
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 408
    .local v1, e:Ljava/lang/NumberFormatException;
    :goto_2
    const-string v6, "cliendId file doesn\'t have long value, deleting it."

    invoke-static {v6}, Lcom/google/analytics/tracking/android/Log;->e(Ljava/lang/String;)I

    .line 409
    iget-object v6, p0, Lcom/google/analytics/tracking/android/GAThread;->mContext:Landroid/content/Context;

    const-string v7, "gaInstallData"

    invoke-virtual {v6, v7}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    goto :goto_0

    .line 407
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .end local v4           #rslt:Ljava/lang/String;
    .restart local v0       #bytes:[B
    .restart local v2       #input:Ljava/io/FileInputStream;
    .restart local v3       #readLen:I
    .restart local v5       #rslt:Ljava/lang/String;
    :catch_2
    move-exception v1

    move-object v4, v5

    .end local v5           #rslt:Ljava/lang/String;
    .restart local v4       #rslt:Ljava/lang/String;
    goto :goto_2

    .line 404
    .end local v4           #rslt:Ljava/lang/String;
    .restart local v5       #rslt:Ljava/lang/String;
    :catch_3
    move-exception v1

    move-object v4, v5

    .end local v5           #rslt:Ljava/lang/String;
    .restart local v4       #rslt:Ljava/lang/String;
    goto :goto_1

    .line 402
    .end local v0           #bytes:[B
    .end local v2           #input:Ljava/io/FileInputStream;
    .end local v3           #readLen:I
    :catch_4
    move-exception v6

    goto :goto_0

    .end local v4           #rslt:Ljava/lang/String;
    .restart local v0       #bytes:[B
    .restart local v2       #input:Ljava/io/FileInputStream;
    .restart local v3       #readLen:I
    .restart local v5       #rslt:Ljava/lang/String;
    :catch_5
    move-exception v6

    move-object v4, v5

    .end local v5           #rslt:Ljava/lang/String;
    .restart local v4       #rslt:Ljava/lang/String;
    goto :goto_0
.end method

.method public requestAppOptOut(Lcom/google/analytics/tracking/android/GoogleAnalytics$AppOptOutCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 304
    new-instance v0, Lcom/google/analytics/tracking/android/GAThread$4;

    invoke-direct {v0, p0, p1}, Lcom/google/analytics/tracking/android/GAThread$4;-><init>(Lcom/google/analytics/tracking/android/GAThread;Lcom/google/analytics/tracking/android/GoogleAnalytics$AppOptOutCallback;)V

    invoke-direct {p0, v0}, Lcom/google/analytics/tracking/android/GAThread;->queueToThread(Ljava/lang/Runnable;)V

    .line 312
    return-void
.end method

.method public requestClientId(Lcom/google/analytics/tracking/android/AnalyticsThread$ClientIdCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 316
    new-instance v0, Lcom/google/analytics/tracking/android/GAThread$5;

    invoke-direct {v0, p0, p1}, Lcom/google/analytics/tracking/android/GAThread$5;-><init>(Lcom/google/analytics/tracking/android/GAThread;Lcom/google/analytics/tracking/android/AnalyticsThread$ClientIdCallback;)V

    invoke-direct {p0, v0}, Lcom/google/analytics/tracking/android/GAThread;->queueToThread(Ljava/lang/Runnable;)V

    .line 324
    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 482
    const-wide/16 v3, 0x1388

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    .line 490
    :goto_0
    iget-object v3, p0, Lcom/google/analytics/tracking/android/GAThread;->mServiceProxy:Lcom/google/analytics/tracking/android/ServiceProxy;

    if-nez v3, :cond_0

    .line 491
    new-instance v3, Lcom/google/analytics/tracking/android/GAServiceProxy;

    iget-object v4, p0, Lcom/google/analytics/tracking/android/GAThread;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, p0}, Lcom/google/analytics/tracking/android/GAServiceProxy;-><init>(Landroid/content/Context;Lcom/google/analytics/tracking/android/AnalyticsThread;)V

    iput-object v3, p0, Lcom/google/analytics/tracking/android/GAThread;->mServiceProxy:Lcom/google/analytics/tracking/android/ServiceProxy;

    .line 493
    :cond_0
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAThread;->init()V

    .line 502
    :try_start_1
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAThread;->loadAppOptOut()Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/analytics/tracking/android/GAThread;->mAppOptOut:Z

    .line 503
    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/GAThread;->initializeClientId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/analytics/tracking/android/GAThread;->mClientId:Ljava/lang/String;

    .line 504
    iget-object v3, p0, Lcom/google/analytics/tracking/android/GAThread;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/analytics/tracking/android/GAThread;->getAndClearCampaign(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/analytics/tracking/android/GAThread;->mInstallCampaign:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    .line 512
    :cond_1
    :goto_1
    iget-boolean v3, p0, Lcom/google/analytics/tracking/android/GAThread;->mClosed:Z

    if-nez v3, :cond_2

    .line 518
    :try_start_2
    iget-object v3, p0, Lcom/google/analytics/tracking/android/GAThread;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 519
    .local v1, r:Ljava/lang/Runnable;
    iget-boolean v3, p0, Lcom/google/analytics/tracking/android/GAThread;->mDisabled:Z

    if-nez v3, :cond_1

    .line 520
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 522
    .end local v1           #r:Ljava/lang/Runnable;
    :catch_0
    move-exception v0

    .line 523
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/analytics/tracking/android/Log;->i(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 525
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v2

    .line 526
    .local v2, t:Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error on GAThread: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/google/analytics/tracking/android/GAThread;->printStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/analytics/tracking/android/Log;->e(Ljava/lang/String;)I

    .line 529
    const-string v3, "Google Analytics is shutting down."

    invoke-static {v3}, Lcom/google/analytics/tracking/android/Log;->e(Ljava/lang/String;)I

    .line 530
    iput-boolean v5, p0, Lcom/google/analytics/tracking/android/GAThread;->mDisabled:Z

    goto :goto_1

    .line 483
    .end local v2           #t:Ljava/lang/Throwable;
    :catch_2
    move-exception v0

    .line 485
    .restart local v0       #e:Ljava/lang/InterruptedException;
    const-string v3, "sleep interrupted in GAThread initialize"

    invoke-static {v3}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)I

    goto :goto_0

    .line 505
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_3
    move-exception v2

    .line 506
    .restart local v2       #t:Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error initializing the GAThread: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/google/analytics/tracking/android/GAThread;->printStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/analytics/tracking/android/Log;->e(Ljava/lang/String;)I

    .line 509
    const-string v3, "Google Analytics will not start up."

    invoke-static {v3}, Lcom/google/analytics/tracking/android/Log;->e(Ljava/lang/String;)I

    .line 510
    iput-boolean v5, p0, Lcom/google/analytics/tracking/android/GAThread;->mDisabled:Z

    goto :goto_1

    .line 533
    .end local v2           #t:Ljava/lang/Throwable;
    :cond_2
    return-void
.end method

.method public sendHit(Ljava/util/Map;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 106
    .local p1, hit:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 107
    .local v0, hitCopy:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 108
    .local v1, hitTime:J
    const-string v3, "hitTime"

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    new-instance v3, Lcom/google/analytics/tracking/android/GAThread$1;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/google/analytics/tracking/android/GAThread$1;-><init>(Lcom/google/analytics/tracking/android/GAThread;Ljava/util/Map;J)V

    invoke-direct {p0, v3}, Lcom/google/analytics/tracking/android/GAThread;->queueToThread(Ljava/lang/Runnable;)V

    .line 135
    return-void
.end method
