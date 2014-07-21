.class Lcom/koushikdutta/superuser/MainActivity$3$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/superuser/MainActivity$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/koushikdutta/superuser/MainActivity$3;

.field final synthetic val$error:Z


# direct methods
.method constructor <init>(Lcom/koushikdutta/superuser/MainActivity$3;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/koushikdutta/superuser/MainActivity$3$1;->this$1:Lcom/koushikdutta/superuser/MainActivity$3;

    iput-boolean p2, p0, Lcom/koushikdutta/superuser/MainActivity$3$1;->val$error:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 212
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/koushikdutta/superuser/MainActivity$3$1;->this$1:Lcom/koushikdutta/superuser/MainActivity$3;

    iget-object v1, v1, Lcom/koushikdutta/superuser/MainActivity$3;->this$0:Lcom/koushikdutta/superuser/MainActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 213
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 214
    const v1, 0x7f080046

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 216
    iget-boolean v1, p0, Lcom/koushikdutta/superuser/MainActivity$3$1;->val$error:Z

    if-eqz v1, :cond_0

    .line 217
    const v1, 0x7f080048

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 222
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 223
    return-void

    .line 220
    :cond_0
    const v1, 0x7f080049

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method
