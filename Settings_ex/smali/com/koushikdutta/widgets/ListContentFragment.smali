.class public Lcom/koushikdutta/widgets/ListContentFragment;
.super Lcom/koushikdutta/widgets/BetterListFragment;
.source "ListContentFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/koushikdutta/widgets/BetterListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFragmentInterface()Lcom/koushikdutta/widgets/BetterListFragmentInternal;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/koushikdutta/widgets/ListContentFragment;->createFragmentInterface()Lcom/koushikdutta/widgets/ListContentFragmentInternal;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFragmentInterface()Lcom/koushikdutta/widgets/FragmentInterface;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/koushikdutta/widgets/ListContentFragment;->createFragmentInterface()Lcom/koushikdutta/widgets/ListContentFragmentInternal;

    move-result-object v0

    return-object v0
.end method

.method public createFragmentInterface()Lcom/koushikdutta/widgets/ListContentFragmentInternal;
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/koushikdutta/widgets/ListContentFragmentInternal;

    invoke-direct {v0, p0}, Lcom/koushikdutta/widgets/ListContentFragmentInternal;-><init>(Lcom/koushikdutta/widgets/FragmentInterfaceWrapper;)V

    return-object v0
.end method
