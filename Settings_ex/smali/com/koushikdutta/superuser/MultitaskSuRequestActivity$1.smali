.class Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$1;
.super Ljava/lang/Object;
.source "MultitaskSuRequestActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$appInfo:Landroid/view/View;

.field final synthetic val$packageInfo:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$1;->this$0:Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;

    iput-object p2, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$1;->val$packageInfo:Landroid/view/View;

    iput-object p3, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$1;->val$appInfo:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/16 v1, 0x8

    .line 163
    iget-object v0, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$1;->val$packageInfo:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 164
    iget-object v0, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$1;->val$appInfo:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$1;->val$packageInfo:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 167
    :cond_0
    return-void
.end method
