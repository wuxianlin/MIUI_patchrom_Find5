.class Lcom/koushikdutta/superuser/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/superuser/MainActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
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
    .line 60
    iput-object p1, p0, Lcom/koushikdutta/superuser/MainActivity$1;->this$0:Lcom/koushikdutta/superuser/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v4, 0x1

    .line 63
    iget-object v0, p0, Lcom/koushikdutta/superuser/MainActivity$1;->this$0:Lcom/koushikdutta/superuser/MainActivity;

    invoke-virtual {v0}, Lcom/koushikdutta/superuser/MainActivity;->getFragment()Lcom/koushikdutta/superuser/PolicyFragmentInternal;

    move-result-object v0

    new-instance v1, Lcom/koushikdutta/superuser/AboutFragment;

    invoke-direct {v1}, Lcom/koushikdutta/superuser/AboutFragment;-><init>()V

    iget-object v2, p0, Lcom/koushikdutta/superuser/MainActivity$1;->this$0:Lcom/koushikdutta/superuser/MainActivity;

    const v3, 0x7f08003f

    invoke-virtual {v2, v3}, Lcom/koushikdutta/superuser/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v2}, Lcom/koushikdutta/superuser/PolicyFragmentInternal;->setContent(Lcom/koushikdutta/widgets/FragmentInterfaceWrapper;ZLjava/lang/String;)V

    .line 64
    return v4
.end method
