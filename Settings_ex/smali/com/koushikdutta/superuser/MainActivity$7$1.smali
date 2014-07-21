.class Lcom/koushikdutta/superuser/MainActivity$7$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/superuser/MainActivity$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/koushikdutta/superuser/MainActivity$7;

.field final synthetic val$error:Z


# direct methods
.method constructor <init>(Lcom/koushikdutta/superuser/MainActivity$7;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 304
    iput-object p1, p0, Lcom/koushikdutta/superuser/MainActivity$7$1;->this$1:Lcom/koushikdutta/superuser/MainActivity$7;

    iput-boolean p2, p0, Lcom/koushikdutta/superuser/MainActivity$7$1;->val$error:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 307
    iget-boolean v0, p0, Lcom/koushikdutta/superuser/MainActivity$7$1;->val$error:Z

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/koushikdutta/superuser/MainActivity$7$1;->this$1:Lcom/koushikdutta/superuser/MainActivity$7;

    iget-object v0, v0, Lcom/koushikdutta/superuser/MainActivity$7;->this$0:Lcom/koushikdutta/superuser/MainActivity;

    invoke-virtual {v0}, Lcom/koushikdutta/superuser/MainActivity;->doInstall()V

    .line 313
    :goto_0
    return-void

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/superuser/MainActivity$7$1;->this$1:Lcom/koushikdutta/superuser/MainActivity$7;

    iget-object v0, v0, Lcom/koushikdutta/superuser/MainActivity$7;->this$0:Lcom/koushikdutta/superuser/MainActivity;

    invoke-virtual {v0}, Lcom/koushikdutta/superuser/MainActivity;->doWhatsNew()V

    goto :goto_0
.end method
