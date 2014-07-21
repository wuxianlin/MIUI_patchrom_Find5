.class public Lcom/koushikdutta/superuser/PolicyFragment;
.super Lcom/koushikdutta/widgets/BetterListFragment;
.source "PolicyFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/koushikdutta/widgets/BetterListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public createFragmentInterface()Lcom/koushikdutta/superuser/PolicyFragmentInternal;
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/koushikdutta/superuser/PolicyFragmentInternal;

    invoke-direct {v0, p0}, Lcom/koushikdutta/superuser/PolicyFragmentInternal;-><init>(Lcom/koushikdutta/widgets/FragmentInterfaceWrapper;)V

    return-object v0
.end method

.method public bridge synthetic createFragmentInterface()Lcom/koushikdutta/widgets/BetterListFragmentInternal;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/koushikdutta/superuser/PolicyFragment;->createFragmentInterface()Lcom/koushikdutta/superuser/PolicyFragmentInternal;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFragmentInterface()Lcom/koushikdutta/widgets/FragmentInterface;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/koushikdutta/superuser/PolicyFragment;->createFragmentInterface()Lcom/koushikdutta/superuser/PolicyFragmentInternal;

    move-result-object v0

    return-object v0
.end method
