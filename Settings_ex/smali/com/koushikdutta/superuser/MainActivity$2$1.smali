.class Lcom/koushikdutta/superuser/MainActivity$2$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/superuser/MainActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/koushikdutta/superuser/MainActivity$2;


# direct methods
.method constructor <init>(Lcom/koushikdutta/superuser/MainActivity$2;)V
    .locals 0
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/koushikdutta/superuser/MainActivity$2$1;->this$1:Lcom/koushikdutta/superuser/MainActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 159
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/koushikdutta/superuser/MainActivity$2$1;->this$1:Lcom/koushikdutta/superuser/MainActivity$2;

    iget-object v1, v1, Lcom/koushikdutta/superuser/MainActivity$2;->this$0:Lcom/koushikdutta/superuser/MainActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 160
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 161
    const v1, 0x7f080046

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 162
    const v1, 0x7f080048

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 163
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 164
    return-void
.end method
