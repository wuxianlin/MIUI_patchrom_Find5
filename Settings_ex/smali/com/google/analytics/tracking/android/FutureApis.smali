.class Lcom/google/analytics/tracking/android/FutureApis;
.super Ljava/lang/Object;
.source "FutureApis.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method static setOwnerOnlyReadWrite(Ljava/lang/String;)Z
    .locals 6
    .parameter "path"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 39
    const/16 v1, 0x9

    .line 40
    .local v1, minVersionForSetReadableWritable:I
    invoke-static {}, Lcom/google/analytics/tracking/android/FutureApis;->version()I

    move-result v5

    if-ge v5, v1, :cond_0

    .line 53
    :goto_0
    return v3

    .line 43
    :cond_0
    const/4 v2, 0x1

    .line 44
    .local v2, ownerOnly:Z
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0, v3, v3}, Ljava/io/File;->setReadable(ZZ)Z

    .line 48
    invoke-virtual {v0, v3, v3}, Ljava/io/File;->setWritable(ZZ)Z

    .line 51
    invoke-virtual {v0, v4, v4}, Ljava/io/File;->setReadable(ZZ)Z

    .line 52
    invoke-virtual {v0, v4, v4}, Ljava/io/File;->setWritable(ZZ)Z

    move v3, v4

    .line 53
    goto :goto_0
.end method

.method public static version()I
    .locals 4

    .prologue
    .line 26
    :try_start_0
    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 31
    .local v1, version:I
    :goto_0
    return v1

    .line 27
    .end local v1           #version:I
    :catch_0
    move-exception v0

    .line 28
    .local v0, ignored:Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid version number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/analytics/tracking/android/Log;->e(Ljava/lang/String;)I

    .line 29
    const/4 v1, 0x0

    .restart local v1       #version:I
    goto :goto_0
.end method
