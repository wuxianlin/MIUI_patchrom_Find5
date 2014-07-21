.class Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$4;
.super Ljava/lang/Object;
.source "MultitaskSuRequestActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->requestReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;


# direct methods
.method constructor <init>(Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 250
    iput-object p1, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$4;->this$0:Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 253
    iget-object v0, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$4;->this$0:Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;

    iget-boolean v0, v0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mHandled:Z

    if-nez v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$4;->this$0:Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->handleAction(ZLjava/lang/Integer;)V

    .line 255
    :cond_0
    return-void
.end method
