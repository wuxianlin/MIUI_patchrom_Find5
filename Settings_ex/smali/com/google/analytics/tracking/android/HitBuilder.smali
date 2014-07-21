.class Lcom/google/analytics/tracking/android/HitBuilder;
.super Ljava/lang/Object;
.source "HitBuilder.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "input"

    .prologue
    .line 81
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "URL encoding failed for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method static generateHitParams(Lcom/google/analytics/tracking/android/MetaModel;Ljava/util/Map;)Ljava/util/Map;
    .locals 7
    .parameter "metaModel"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/analytics/tracking/android/MetaModel;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    .local p1, hit:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 26
    .local v3, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 27
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/google/analytics/tracking/android/MetaModel;->getMetaInfo(Ljava/lang/String;)Lcom/google/analytics/tracking/android/MetaModel$MetaInfo;

    move-result-object v2

    .line 28
    .local v2, metaInfo:Lcom/google/analytics/tracking/android/MetaModel$MetaInfo;
    if-eqz v2, :cond_0

    .line 31
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/google/analytics/tracking/android/MetaModel$MetaInfo;->getUrlParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 32
    .local v4, urlParam:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 38
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 39
    .local v5, value:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/google/analytics/tracking/android/MetaModel$MetaInfo;->getFormatter()Lcom/google/analytics/tracking/android/MetaModel$Formatter;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 40
    invoke-virtual {v2}, Lcom/google/analytics/tracking/android/MetaModel$MetaInfo;->getFormatter()Lcom/google/analytics/tracking/android/MetaModel$Formatter;

    move-result-object v6

    invoke-interface {v6, v5}, Lcom/google/analytics/tracking/android/MetaModel$Formatter;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 42
    :cond_1
    if-eqz v5, :cond_0

    invoke-virtual {v2}, Lcom/google/analytics/tracking/android/MetaModel$MetaInfo;->getDefaultValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 45
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 47
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2           #metaInfo:Lcom/google/analytics/tracking/android/MetaModel$MetaInfo;
    .end local v4           #urlParam:Ljava/lang/String;
    .end local v5           #value:Ljava/lang/String;
    :cond_2
    return-object v3
.end method

.method static postProcessHit(Lcom/google/analytics/tracking/android/Hit;J)Ljava/lang/String;
    .locals 7
    .parameter "hit"
    .parameter "currentTimeMillis"

    .prologue
    const-wide/16 v5, 0x0

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/Hit;->getHitParams()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/Hit;->getHitTime()J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/Hit;->getHitTime()J

    move-result-wide v3

    sub-long v1, p1, v3

    .line 65
    .local v1, queueTime:J
    cmp-long v3, v1, v5

    if-ltz v3, :cond_0

    .line 66
    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "qt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 74
    .end local v1           #queueTime:J
    :cond_0
    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "z"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/Hit;->getHitId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
