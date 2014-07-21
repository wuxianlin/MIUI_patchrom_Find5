.class public Lcom/koushikdutta/superuser/LogNativeFragment;
.super Lcom/koushikdutta/widgets/NativeFragment;
.source "LogNativeFragment.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/koushikdutta/widgets/NativeFragment",
        "<",
        "Lcom/koushikdutta/superuser/LogFragmentInternal;",
        ">;"
    }
.end annotation


# instance fields
.field mWrapper:Landroid/view/ContextThemeWrapper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/koushikdutta/widgets/NativeFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public createFragmentInterface()Lcom/koushikdutta/superuser/LogFragmentInternal;
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/koushikdutta/superuser/LogNativeFragment$1;

    invoke-direct {v0, p0, p0}, Lcom/koushikdutta/superuser/LogNativeFragment$1;-><init>(Lcom/koushikdutta/superuser/LogNativeFragment;Lcom/koushikdutta/widgets/FragmentInterfaceWrapper;)V

    return-object v0
.end method

.method public bridge synthetic createFragmentInterface()Lcom/koushikdutta/widgets/FragmentInterface;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/koushikdutta/superuser/LogNativeFragment;->createFragmentInterface()Lcom/koushikdutta/superuser/LogFragmentInternal;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 3

    .prologue
    .line 34
    iget-object v0, p0, Lcom/koushikdutta/superuser/LogNativeFragment;->mWrapper:Landroid/view/ContextThemeWrapper;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/koushikdutta/superuser/LogNativeFragment;->mWrapper:Landroid/view/ContextThemeWrapper;

    .line 37
    :goto_0
    return-object v0

    .line 36
    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-super {p0}, Lcom/koushikdutta/widgets/NativeFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090003

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/koushikdutta/superuser/LogNativeFragment;->mWrapper:Landroid/view/ContextThemeWrapper;

    .line 37
    iget-object v0, p0, Lcom/koushikdutta/superuser/LogNativeFragment;->mWrapper:Landroid/view/ContextThemeWrapper;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/koushikdutta/superuser/LogNativeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    invoke-super {p0, v0, p2, p3}, Lcom/koushikdutta/widgets/NativeFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method onDelete(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/koushikdutta/superuser/LogNativeFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 65
    .local v0, f:Landroid/app/Fragment;
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/koushikdutta/superuser/PolicyNativeFragment;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 66
    check-cast v1, Lcom/koushikdutta/superuser/PolicyNativeFragment;

    .line 67
    .local v1, p:Lcom/koushikdutta/superuser/PolicyNativeFragment;
    invoke-virtual {v1}, Lcom/koushikdutta/superuser/PolicyNativeFragment;->getInternal()Lcom/koushikdutta/widgets/FragmentInterface;

    move-result-object v2

    check-cast v2, Lcom/koushikdutta/superuser/PolicyFragmentInternal;

    invoke-virtual {v2}, Lcom/koushikdutta/superuser/PolicyFragmentInternal;->load()V

    .line 68
    invoke-virtual {v1}, Lcom/koushikdutta/superuser/PolicyNativeFragment;->getInternal()Lcom/koushikdutta/widgets/FragmentInterface;

    move-result-object v2

    check-cast v2, Lcom/koushikdutta/superuser/PolicyFragmentInternal;

    invoke-virtual {v2}, Lcom/koushikdutta/superuser/PolicyFragmentInternal;->showAllLogs()V

    .line 70
    .end local v1           #p:Lcom/koushikdutta/superuser/PolicyNativeFragment;
    :cond_0
    return-void
.end method
