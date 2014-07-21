.class public Lcom/koushikdutta/widgets/BetterListFragment;
.super Lcom/koushikdutta/widgets/SupportFragment;
.source "BetterListFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/koushikdutta/widgets/SupportFragment",
        "<",
        "Lcom/koushikdutta/widgets/BetterListFragmentInternal;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/koushikdutta/widgets/SupportFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public addItem(ILcom/koushikdutta/widgets/ListItem;)Lcom/koushikdutta/widgets/ListItem;
    .locals 1
    .parameter "sectionName"
    .parameter "item"

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/koushikdutta/widgets/BetterListFragment;->getInternal()Lcom/koushikdutta/widgets/FragmentInterface;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/widgets/BetterListFragmentInternal;

    invoke-virtual {v0, p1, p2}, Lcom/koushikdutta/widgets/BetterListFragmentInternal;->addItem(ILcom/koushikdutta/widgets/ListItem;)Lcom/koushikdutta/widgets/ListItem;

    move-result-object v0

    return-object v0
.end method

.method public createFragmentInterface()Lcom/koushikdutta/widgets/BetterListFragmentInternal;
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/koushikdutta/widgets/BetterListFragment$1;

    invoke-direct {v0, p0, p0}, Lcom/koushikdutta/widgets/BetterListFragment$1;-><init>(Lcom/koushikdutta/widgets/BetterListFragment;Lcom/koushikdutta/widgets/FragmentInterfaceWrapper;)V

    return-object v0
.end method

.method public bridge synthetic createFragmentInterface()Lcom/koushikdutta/widgets/FragmentInterface;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/koushikdutta/widgets/BetterListFragment;->createFragmentInterface()Lcom/koushikdutta/widgets/BetterListFragmentInternal;

    move-result-object v0

    return-object v0
.end method

.method protected getListFragmentResource()I
    .locals 1

    .prologue
    .line 45
    const/4 v0, -0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/view/View;)V
    .locals 0
    .parameter "savedInstanceState"
    .parameter "view"

    .prologue
    .line 49
    return-void
.end method
