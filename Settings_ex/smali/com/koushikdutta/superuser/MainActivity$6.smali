.class Lcom/koushikdutta/superuser/MainActivity$6;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/superuser/MainActivity;->doWhatsNew()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/superuser/MainActivity;


# direct methods
.method constructor <init>(Lcom/koushikdutta/superuser/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 265
    iput-object p1, p0, Lcom/koushikdutta/superuser/MainActivity$6;->this$0:Lcom/koushikdutta/superuser/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 268
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 269
    .local v0, i:Landroid/content/Intent;
    const-string v1, "market://details?id=com.koushikdutta.superuser"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 270
    iget-object v1, p0, Lcom/koushikdutta/superuser/MainActivity$6;->this$0:Lcom/koushikdutta/superuser/MainActivity;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/superuser/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 271
    return-void
.end method
