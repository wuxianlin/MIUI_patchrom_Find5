.class Lcom/koushikdutta/superuser/PolicyFragmentInternal$2$2;
.super Ljava/lang/Thread;
.source "PolicyFragmentInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/superuser/PolicyFragmentInternal$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/koushikdutta/superuser/PolicyFragmentInternal$2;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/koushikdutta/superuser/PolicyFragmentInternal$2;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lcom/koushikdutta/superuser/PolicyFragmentInternal$2$2;->this$1:Lcom/koushikdutta/superuser/PolicyFragmentInternal$2;

    iput-object p2, p0, Lcom/koushikdutta/superuser/PolicyFragmentInternal$2$2;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 194
    iget-object v3, p0, Lcom/koushikdutta/superuser/PolicyFragmentInternal$2$2;->this$1:Lcom/koushikdutta/superuser/PolicyFragmentInternal$2;

    iget-object v3, v3, Lcom/koushikdutta/superuser/PolicyFragmentInternal$2;->this$0:Lcom/koushikdutta/superuser/PolicyFragmentInternal;

    invoke-virtual {v3}, Lcom/koushikdutta/superuser/PolicyFragmentInternal;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/koushikdutta/superuser/PolicyFragmentInternal$2$2;->this$1:Lcom/koushikdutta/superuser/PolicyFragmentInternal$2;

    iget-object v4, v4, Lcom/koushikdutta/superuser/PolicyFragmentInternal$2;->val$up:Lcom/koushikdutta/superuser/db/UidPolicy;

    invoke-static {v3, v4}, Lcom/koushikdutta/superuser/db/SuDatabaseHelper;->delete(Landroid/content/Context;Lcom/koushikdutta/superuser/db/UidPolicy;)Z

    move-result v1

    .line 195
    .local v1, done:Z
    iget-object v3, p0, Lcom/koushikdutta/superuser/PolicyFragmentInternal$2$2;->val$handler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 196
    .local v2, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 197
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "deleted"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 198
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 199
    iget-object v3, p0, Lcom/koushikdutta/superuser/PolicyFragmentInternal$2$2;->val$handler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 200
    return-void
.end method
