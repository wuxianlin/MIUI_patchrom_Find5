.class Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$6;
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
    .line 270
    iput-object p1, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$6;->this$0:Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const v3, 0x7f080001

    .line 272
    iget-object v0, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$6;->this$0:Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;

    iget-object v0, v0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mAllow:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$6;->this$0:Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;

    invoke-virtual {v2, v3}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$6;->this$0:Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;

    iget v2, v2, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mTimeLeft:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 273
    iget-object v0, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$6;->this$0:Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;

    iget v1, v0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mTimeLeft:I

    add-int/lit8 v2, v1, -0x1

    iput v2, v0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mTimeLeft:I

    if-gtz v1, :cond_1

    .line 274
    iget-object v0, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$6;->this$0:Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;

    iget-object v0, v0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mAllow:Landroid/widget/Button;

    iget-object v1, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$6;->this$0:Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;

    invoke-virtual {v1, v3}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 275
    iget-object v0, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$6;->this$0:Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;

    iget-boolean v0, v0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mHandled:Z

    if-nez v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$6;->this$0:Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;

    iget-object v0, v0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mAllow:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$6;->this$0:Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;

    iget-object v0, v0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
