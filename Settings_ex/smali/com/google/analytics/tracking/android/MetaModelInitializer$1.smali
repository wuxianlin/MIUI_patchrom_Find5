.class final Lcom/google/analytics/tracking/android/MetaModelInitializer$1;
.super Ljava/lang/Object;
.source "MetaModelInitializer.java"

# interfaces
.implements Lcom/google/analytics/tracking/android/MetaModel$Formatter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/tracking/android/MetaModelInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public format(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "rawValue"

    .prologue
    .line 17
    invoke-static {p1}, Lcom/google/analytics/tracking/android/Utils;->safeParseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method
