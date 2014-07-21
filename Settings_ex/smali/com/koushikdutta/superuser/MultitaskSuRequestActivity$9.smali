.class Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$9;
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
    .line 402
    iput-object p1, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$9;->this$0:Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 404
    iget-object v0, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$9;->this$0:Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;

    invoke-virtual {v0}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    :goto_0
    return-void

    .line 406
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$9;->this$0:Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;

    iget-object v1, v1, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mSocketPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 407
    iget-object v0, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$9;->this$0:Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;

    invoke-virtual {v0}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->finish()V

    goto :goto_0

    .line 411
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$9;->this$0:Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;

    iget-object v0, v0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
