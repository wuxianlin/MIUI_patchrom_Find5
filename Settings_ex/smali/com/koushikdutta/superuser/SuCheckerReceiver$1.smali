.class Lcom/koushikdutta/superuser/SuCheckerReceiver$1;
.super Ljava/lang/Thread;
.source "SuCheckerReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/superuser/SuCheckerReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/superuser/SuCheckerReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/koushikdutta/superuser/SuCheckerReceiver;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/koushikdutta/superuser/SuCheckerReceiver$1;->this$0:Lcom/koushikdutta/superuser/SuCheckerReceiver;

    iput-object p2, p0, Lcom/koushikdutta/superuser/SuCheckerReceiver$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/koushikdutta/superuser/SuCheckerReceiver$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 56
    :try_start_0
    iget-object v1, p0, Lcom/koushikdutta/superuser/SuCheckerReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/koushikdutta/superuser/util/SuHelper;->checkSu(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, ex:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/koushikdutta/superuser/SuCheckerReceiver$1;->val$handler:Landroid/os/Handler;

    new-instance v2, Lcom/koushikdutta/superuser/SuCheckerReceiver$1$1;

    invoke-direct {v2, p0}, Lcom/koushikdutta/superuser/SuCheckerReceiver$1$1;-><init>(Lcom/koushikdutta/superuser/SuCheckerReceiver$1;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
