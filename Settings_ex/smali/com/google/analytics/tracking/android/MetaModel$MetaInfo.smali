.class public Lcom/google/analytics/tracking/android/MetaModel$MetaInfo;
.super Ljava/lang/Object;
.source "MetaModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/tracking/android/MetaModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MetaInfo"
.end annotation


# instance fields
.field private final mDefaultValue:Ljava/lang/String;

.field private final mFormatter:Lcom/google/analytics/tracking/android/MetaModel$Formatter;

.field private final mUrlParam:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/analytics/tracking/android/MetaModel$Formatter;)V
    .locals 0
    .parameter "urlParam"
    .parameter "defaultValue"
    .parameter "formatter"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/google/analytics/tracking/android/MetaModel$MetaInfo;->mUrlParam:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lcom/google/analytics/tracking/android/MetaModel$MetaInfo;->mDefaultValue:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Lcom/google/analytics/tracking/android/MetaModel$MetaInfo;->mFormatter:Lcom/google/analytics/tracking/android/MetaModel$Formatter;

    .line 58
    return-void
.end method


# virtual methods
.method public getDefaultValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/analytics/tracking/android/MetaModel$MetaInfo;->mDefaultValue:Ljava/lang/String;

    return-object v0
.end method

.method public getFormatter()Lcom/google/analytics/tracking/android/MetaModel$Formatter;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/analytics/tracking/android/MetaModel$MetaInfo;->mFormatter:Lcom/google/analytics/tracking/android/MetaModel$Formatter;

    return-object v0
.end method

.method public getUrlParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "actualKey"

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 71
    const-string v5, "*"

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 72
    iget-object v1, p0, Lcom/google/analytics/tracking/android/MetaModel$MetaInfo;->mUrlParam:Ljava/lang/String;

    .line 73
    .local v1, param:Ljava/lang/String;
    const/4 v2, 0x0

    .line 74
    .local v2, slot:I
    const-string v5, "\\*"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 75
    .local v3, splits:[Ljava/lang/String;
    array-length v5, v3

    if-le v5, v6, :cond_0

    .line 77
    const/4 v5, 0x1

    :try_start_0
    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 83
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 88
    .end local v1           #param:Ljava/lang/String;
    .end local v2           #slot:I
    .end local v3           #splits:[Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v4

    .line 79
    .restart local v1       #param:Ljava/lang/String;
    .restart local v2       #slot:I
    .restart local v3       #splits:[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 80
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to parse slot for url parameter "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)I

    goto :goto_0

    .line 88
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v1           #param:Ljava/lang/String;
    .end local v2           #slot:I
    .end local v3           #splits:[Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/google/analytics/tracking/android/MetaModel$MetaInfo;->mUrlParam:Ljava/lang/String;

    goto :goto_0
.end method
