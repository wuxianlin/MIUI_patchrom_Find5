.class public Lcom/koushikdutta/superuser/PolicyNativeFragment;
.super Lcom/koushikdutta/widgets/NativeFragment;
.source "PolicyNativeFragment.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/superuser/PolicyNativeFragment$FragmentInternal;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/koushikdutta/widgets/NativeFragment",
        "<",
        "Lcom/koushikdutta/superuser/PolicyFragmentInternal;",
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
.method public createFragmentInterface()Lcom/koushikdutta/superuser/PolicyFragmentInternal;
    .locals 1

    .prologue
    .line 72
    new-instance v0, Lcom/koushikdutta/superuser/PolicyNativeFragment$FragmentInternal;

    invoke-direct {v0, p0, p0}, Lcom/koushikdutta/superuser/PolicyNativeFragment$FragmentInternal;-><init>(Lcom/koushikdutta/superuser/PolicyNativeFragment;Lcom/koushikdutta/widgets/FragmentInterfaceWrapper;)V

    return-object v0
.end method

.method public bridge synthetic createFragmentInterface()Lcom/koushikdutta/widgets/FragmentInterface;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/koushikdutta/superuser/PolicyNativeFragment;->createFragmentInterface()Lcom/koushikdutta/superuser/PolicyFragmentInternal;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 3

    .prologue
    .line 35
    iget-object v0, p0, Lcom/koushikdutta/superuser/PolicyNativeFragment;->mWrapper:Landroid/view/ContextThemeWrapper;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/koushikdutta/superuser/PolicyNativeFragment;->mWrapper:Landroid/view/ContextThemeWrapper;

    .line 38
    :goto_0
    return-object v0

    .line 37
    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-super {p0}, Lcom/koushikdutta/widgets/NativeFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090006

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/koushikdutta/superuser/PolicyNativeFragment;->mWrapper:Landroid/view/ContextThemeWrapper;

    .line 38
    iget-object v0, p0, Lcom/koushikdutta/superuser/PolicyNativeFragment;->mWrapper:Landroid/view/ContextThemeWrapper;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/koushikdutta/superuser/PolicyNativeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    invoke-super {p0, v0, p2, p3}, Lcom/koushikdutta/widgets/NativeFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
