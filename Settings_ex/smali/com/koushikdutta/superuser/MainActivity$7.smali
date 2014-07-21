.class Lcom/koushikdutta/superuser/MainActivity$7;
.super Ljava/lang/Thread;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/superuser/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/superuser/MainActivity;

.field final synthetic val$dlg:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/koushikdutta/superuser/MainActivity;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 292
    iput-object p1, p0, Lcom/koushikdutta/superuser/MainActivity$7;->this$0:Lcom/koushikdutta/superuser/MainActivity;

    iput-object p2, p0, Lcom/koushikdutta/superuser/MainActivity$7;->val$dlg:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 294
    const/4 v0, 0x0

    .line 296
    .local v0, _error:Z
    :try_start_0
    iget-object v3, p0, Lcom/koushikdutta/superuser/MainActivity$7;->this$0:Lcom/koushikdutta/superuser/MainActivity;

    invoke-static {v3}, Lcom/koushikdutta/superuser/util/SuHelper;->checkSu(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    :goto_0
    move v2, v0

    .line 303
    .local v2, error:Z
    iget-object v3, p0, Lcom/koushikdutta/superuser/MainActivity$7;->val$dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 304
    iget-object v3, p0, Lcom/koushikdutta/superuser/MainActivity$7;->this$0:Lcom/koushikdutta/superuser/MainActivity;

    new-instance v4, Lcom/koushikdutta/superuser/MainActivity$7$1;

    invoke-direct {v4, p0, v2}, Lcom/koushikdutta/superuser/MainActivity$7$1;-><init>(Lcom/koushikdutta/superuser/MainActivity$7;Z)V

    invoke-virtual {v3, v4}, Lcom/koushikdutta/superuser/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 315
    return-void

    .line 298
    .end local v2           #error:Z
    :catch_0
    move-exception v1

    .line 299
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 300
    const/4 v0, 0x1

    goto :goto_0
.end method
