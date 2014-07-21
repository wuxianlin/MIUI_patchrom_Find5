.class Lcom/koushikdutta/superuser/AboutFragment$1;
.super Lcom/koushikdutta/widgets/ListItem;
.source "AboutFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/superuser/AboutFragment;->onCreate(Landroid/os/Bundle;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/superuser/AboutFragment;


# direct methods
.method constructor <init>(Lcom/koushikdutta/superuser/AboutFragment;Lcom/koushikdutta/widgets/BetterListFragmentInternal;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/koushikdutta/superuser/AboutFragment$1;->this$0:Lcom/koushikdutta/superuser/AboutFragment;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/koushikdutta/widgets/ListItem;-><init>(Lcom/koushikdutta/widgets/BetterListFragmentInternal;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/koushikdutta/widgets/ListItem;->onClick(Landroid/view/View;)V

    .line 46
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 47
    .local v0, i:Landroid/content/Intent;
    const-string v1, "market://details?id=com.koushikdutta.superuser"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 48
    iget-object v1, p0, Lcom/koushikdutta/superuser/AboutFragment$1;->this$0:Lcom/koushikdutta/superuser/AboutFragment;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/superuser/AboutFragment;->startActivity(Landroid/content/Intent;)V

    .line 49
    return-void
.end method
