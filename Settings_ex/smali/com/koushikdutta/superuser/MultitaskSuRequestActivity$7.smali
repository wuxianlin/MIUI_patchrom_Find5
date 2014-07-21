.class final Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$7;
.super Ljava/util/HashMap;
.source "MultitaskSuRequestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4e6861acb95ca723L


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 287
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 294
    const-string v0, "command"

    const/16 v1, 0x800

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    return-void
.end method
