.class Lcom/koushikdutta/superuser/AboutFragment$2;
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
    .line 52
    iput-object p1, p0, Lcom/koushikdutta/superuser/AboutFragment$2;->this$0:Lcom/koushikdutta/superuser/AboutFragment;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/koushikdutta/widgets/ListItem;-><init>(Lcom/koushikdutta/widgets/BetterListFragmentInternal;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/koushikdutta/widgets/ListItem;->onClick(Landroid/view/View;)V

    .line 56
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 57
    .local v1, i:Landroid/content/Intent;
    const-string v2, "com.twitter.android"

    const-string v3, "com.twitter.android.ProfileActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    const-string v2, "screen_name"

    const-string v3, "koush"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    :try_start_0
    iget-object v2, p0, Lcom/koushikdutta/superuser/AboutFragment$2;->this$0:Lcom/koushikdutta/superuser/AboutFragment;

    invoke-virtual {v2, v1}, Lcom/koushikdutta/superuser/AboutFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
