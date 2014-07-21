.class Lcom/google/analytics/tracking/android/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final HEXBYTES:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/analytics/tracking/android/Utils;->HEXBYTES:[C

    return-void

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static filterCampaign(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "campaign"

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 76
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 126
    :goto_0
    return-object v6

    .line 80
    :cond_0
    move-object v4, p0

    .line 81
    .local v4, urlParameters:Ljava/lang/String;
    const-string v7, "?"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 83
    const-string v7, "[\\?]"

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v4, v7, v8

    .line 91
    :cond_1
    const-string v7, "%3D"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 94
    :try_start_0
    const-string v7, "UTF-8"

    invoke-static {v4, v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 103
    :cond_2
    invoke-static {v4}, Lcom/google/analytics/tracking/android/Utils;->parseURLParameters(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 105
    .local v3, paramsMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v6, 0x9

    new-array v5, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "dclid"

    aput-object v7, v5, v6

    const-string v6, "utm_source"

    aput-object v6, v5, v8

    const/4 v6, 0x2

    const-string v7, "gclid"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, "utm_campaign"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "utm_medium"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const-string v7, "utm_term"

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string v7, "utm_content"

    aput-object v7, v5, v6

    const/4 v6, 0x7

    const-string v7, "utm_id"

    aput-object v7, v5, v6

    const/16 v6, 0x8

    const-string v7, "gmob_t"

    aput-object v7, v5, v6

    .line 117
    .local v5, validParameters:[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .local v2, params:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v6, v5

    if-ge v1, v6, :cond_6

    .line 119
    aget-object v6, v5, v1

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 120
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 121
    const-string v6, "&"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    :cond_3
    aget-object v6, v5, v1

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v6, v5, v1

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 95
    .end local v1           #i:I
    .end local v2           #params:Ljava/lang/StringBuilder;
    .end local v3           #paramsMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5           #validParameters:[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 96
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    goto/16 :goto_0

    .line 98
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :cond_5
    const-string v7, "="

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    goto/16 :goto_0

    .line 126
    .restart local v1       #i:I
    .restart local v2       #params:Ljava/lang/StringBuilder;
    .restart local v3       #paramsMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5       #validParameters:[Ljava/lang/String;
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0
.end method

.method static fromHexDigit(C)I
    .locals 2
    .parameter "hexDigit"

    .prologue
    .line 163
    add-int/lit8 v0, p0, -0x30

    .line 166
    .local v0, value:I
    const/16 v1, 0x9

    if-le v0, v1, :cond_0

    .line 167
    add-int/lit8 v0, v0, -0x7

    .line 169
    :cond_0
    return v0
.end method

.method static getLanguage(Ljava/util/Locale;)Ljava/lang/String;
    .locals 3
    .parameter "locale"

    .prologue
    const/4 v1, 0x0

    .line 138
    if-nez p0, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-object v1

    .line 141
    :cond_1
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .local v0, lang:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 147
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method static hexDecode(Ljava/lang/String;)[B
    .locals 4
    .parameter "s"

    .prologue
    .line 173
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    new-array v0, v2, [B

    .line 174
    .local v0, bytes:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 175
    mul-int/lit8 v2, v1, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/google/analytics/tracking/android/Utils;->fromHexDigit(C)I

    move-result v2

    shl-int/lit8 v2, v2, 0x4

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/google/analytics/tracking/android/Utils;->fromHexDigit(C)I

    move-result v3

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 174
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 178
    :cond_0
    return-object v0
.end method

.method public static parseURLParameters(Ljava/lang/String;)Ljava/util/Map;
    .locals 11
    .parameter "parameterString"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 24
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 25
    .local v3, parameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "&"

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 26
    .local v4, params:[Ljava/lang/String;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v5, v0, v1

    .line 27
    .local v5, s:Ljava/lang/String;
    const-string v7, "="

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 28
    .local v6, ss:[Ljava/lang/String;
    array-length v7, v6

    if-le v7, v10, :cond_1

    .line 29
    aget-object v7, v6, v9

    aget-object v8, v6, v10

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 30
    :cond_1
    array-length v7, v6

    if-ne v7, v10, :cond_0

    aget-object v7, v6, v9

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_0

    .line 31
    aget-object v7, v6, v9

    const/4 v8, 0x0

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 34
    .end local v5           #s:Ljava/lang/String;
    .end local v6           #ss:[Ljava/lang/String;
    :cond_2
    return-object v3
.end method

.method public static safeParseBoolean(Ljava/lang/String;)Z
    .locals 1
    .parameter "s"

    .prologue
    .line 63
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static safeParseDouble(Ljava/lang/String;)D
    .locals 3
    .parameter "s"

    .prologue
    const-wide/16 v1, 0x0

    .line 39
    if-nez p0, :cond_0

    .line 45
    :goto_0
    return-wide v1

    .line 43
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, e:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method
