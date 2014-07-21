.class Lcom/koushikdutta/superuser/SuCheckerReceiver$1$1;
.super Ljava/lang/Object;
.source "SuCheckerReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/superuser/SuCheckerReceiver$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/koushikdutta/superuser/SuCheckerReceiver$1;


# direct methods
.method constructor <init>(Lcom/koushikdutta/superuser/SuCheckerReceiver$1;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/koushikdutta/superuser/SuCheckerReceiver$1$1;->this$1:Lcom/koushikdutta/superuser/SuCheckerReceiver$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/koushikdutta/superuser/SuCheckerReceiver$1$1;->this$1:Lcom/koushikdutta/superuser/SuCheckerReceiver$1;

    iget-object v0, v0, Lcom/koushikdutta/superuser/SuCheckerReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/koushikdutta/superuser/SuCheckerReceiver;->doNotification(Landroid/content/Context;)V

    .line 63
    return-void
.end method
