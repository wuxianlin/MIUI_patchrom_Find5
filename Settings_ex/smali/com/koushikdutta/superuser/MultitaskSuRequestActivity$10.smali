.class Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$10;
.super Ljava/lang/Object;
.source "MultitaskSuRequestActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 415
    iput-object p1, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$10;->this$0:Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 418
    iget-object v0, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$10;->this$0:Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;

    invoke-virtual {v0}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 422
    :cond_0
    :goto_0
    return-void

    .line 420
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$10;->this$0:Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;

    iget-boolean v0, v0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mHandled:Z

    if-nez v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$10;->this$0:Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->handleAction(ZLjava/lang/Integer;)V

    goto :goto_0
.end method
