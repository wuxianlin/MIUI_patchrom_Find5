.class Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$8$2;
.super Ljava/lang/Object;
.source "MultitaskSuRequestActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$8;


# direct methods
.method constructor <init>(Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$8;)V
    .locals 0
    .parameter

    .prologue
    .line 364
    iput-object p1, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$8$2;->this$1:Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$8$2;->this$1:Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$8;

    iget-object v0, v0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$8;->this$0:Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;

    invoke-virtual {v0}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->finish()V

    .line 368
    return-void
.end method
