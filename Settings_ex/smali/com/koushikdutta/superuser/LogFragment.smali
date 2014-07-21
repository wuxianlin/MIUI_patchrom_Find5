.class public Lcom/koushikdutta/superuser/LogFragment;
.super Lcom/koushikdutta/widgets/SupportFragment;
.source "LogFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/koushikdutta/widgets/SupportFragment",
        "<",
        "Lcom/koushikdutta/superuser/LogFragmentInternal;",
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
.method public createFragmentInterface()Lcom/koushikdutta/superuser/LogFragmentInternal;
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/koushikdutta/superuser/LogFragment$1;

    invoke-direct {v0, p0, p0}, Lcom/koushikdutta/superuser/LogFragment$1;-><init>(Lcom/koushikdutta/superuser/LogFragment;Lcom/koushikdutta/widgets/FragmentInterfaceWrapper;)V

    return-object v0
.end method

.method public bridge synthetic createFragmentInterface()Lcom/koushikdutta/widgets/FragmentInterface;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/koushikdutta/superuser/LogFragment;->createFragmentInterface()Lcom/koushikdutta/superuser/LogFragmentInternal;

    move-result-object v0

    return-object v0
.end method

.method onDelete(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/koushikdutta/superuser/LogFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 41
    .local v0, f:Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/koushikdutta/superuser/PolicyFragment;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 42
    check-cast v1, Lcom/koushikdutta/superuser/PolicyFragment;

    .line 43
    .local v1, p:Lcom/koushikdutta/superuser/PolicyFragment;
    invoke-virtual {v1}, Lcom/koushikdutta/superuser/PolicyFragment;->getInternal()Lcom/koushikdutta/widgets/FragmentInterface;

    move-result-object v2

    check-cast v2, Lcom/koushikdutta/superuser/PolicyFragmentInternal;

    invoke-virtual {v2}, Lcom/koushikdutta/superuser/PolicyFragmentInternal;->load()V

    .line 44
    invoke-virtual {v1}, Lcom/koushikdutta/superuser/PolicyFragment;->getInternal()Lcom/koushikdutta/widgets/FragmentInterface;

    move-result-object v2

    check-cast v2, Lcom/koushikdutta/superuser/PolicyFragmentInternal;

    invoke-virtual {v2}, Lcom/koushikdutta/superuser/PolicyFragmentInternal;->showAllLogs()V

    .line 46
    .end local v1           #p:Lcom/koushikdutta/superuser/PolicyFragment;
    :cond_0
    return-void
.end method
