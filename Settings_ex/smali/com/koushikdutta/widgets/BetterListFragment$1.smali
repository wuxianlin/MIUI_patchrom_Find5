.class Lcom/koushikdutta/widgets/BetterListFragment$1;
.super Lcom/koushikdutta/widgets/BetterListFragmentInternal;
.source "BetterListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/widgets/BetterListFragment;->createFragmentInterface()Lcom/koushikdutta/widgets/BetterListFragmentInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/widgets/BetterListFragment;


# direct methods
.method constructor <init>(Lcom/koushikdutta/widgets/BetterListFragment;Lcom/koushikdutta/widgets/FragmentInterfaceWrapper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/koushikdutta/widgets/BetterListFragment$1;->this$0:Lcom/koushikdutta/widgets/BetterListFragment;

    invoke-direct {p0, p2}, Lcom/koushikdutta/widgets/BetterListFragmentInternal;-><init>(Lcom/koushikdutta/widgets/FragmentInterfaceWrapper;)V

    return-void
.end method


# virtual methods
.method protected getListFragmentResource()I
    .locals 2

    .prologue
    .line 30
    iget-object v1, p0, Lcom/koushikdutta/widgets/BetterListFragment$1;->this$0:Lcom/koushikdutta/widgets/BetterListFragment;

    invoke-virtual {v1}, Lcom/koushikdutta/widgets/BetterListFragment;->getListFragmentResource()I

    move-result v0

    .line 31
    .local v0, ret:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 32
    invoke-super {p0}, Lcom/koushikdutta/widgets/BetterListFragmentInternal;->getListFragmentResource()I

    move-result v0

    .line 33
    .end local v0           #ret:I
    :cond_0
    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/view/View;)V
    .locals 1
    .parameter "savedInstanceState"
    .parameter "view"

    .prologue
    .line 38
    invoke-super {p0, p1, p2}, Lcom/koushikdutta/widgets/BetterListFragmentInternal;->onCreate(Landroid/os/Bundle;Landroid/view/View;)V

    .line 39
    iget-object v0, p0, Lcom/koushikdutta/widgets/BetterListFragment$1;->this$0:Lcom/koushikdutta/widgets/BetterListFragment;

    invoke-virtual {v0, p1, p2}, Lcom/koushikdutta/widgets/BetterListFragment;->onCreate(Landroid/os/Bundle;Landroid/view/View;)V

    .line 40
    return-void
.end method
