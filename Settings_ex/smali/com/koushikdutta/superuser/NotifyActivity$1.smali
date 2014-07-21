.class Lcom/koushikdutta/superuser/NotifyActivity$1;
.super Ljava/lang/Object;
.source "NotifyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/superuser/NotifyActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/superuser/NotifyActivity;


# direct methods
.method constructor <init>(Lcom/koushikdutta/superuser/NotifyActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/koushikdutta/superuser/NotifyActivity$1;->this$0:Lcom/koushikdutta/superuser/NotifyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/koushikdutta/superuser/NotifyActivity$1;->this$0:Lcom/koushikdutta/superuser/NotifyActivity;

    invoke-virtual {v0}, Lcom/koushikdutta/superuser/NotifyActivity;->finish()V

    .line 82
    return-void
.end method
