.class public abstract Lcom/koushikdutta/widgets/FragmentInterface;
.super Ljava/lang/Object;
.source "FragmentInterface.java"


# instance fields
.field protected mFragment:Lcom/koushikdutta/widgets/FragmentInterfaceWrapper;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/widgets/FragmentInterfaceWrapper;)V
    .locals 0
    .parameter "fragment"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/koushikdutta/widgets/FragmentInterface;->mFragment:Lcom/koushikdutta/widgets/FragmentInterfaceWrapper;

    .line 47
    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/koushikdutta/widgets/FragmentInterface;->getFragment()Lcom/koushikdutta/widgets/FragmentInterfaceWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/koushikdutta/widgets/FragmentInterfaceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/koushikdutta/widgets/FragmentInterface;->getFragment()Lcom/koushikdutta/widgets/FragmentInterfaceWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/koushikdutta/widgets/FragmentInterfaceWrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getFragment()Lcom/koushikdutta/widgets/FragmentInterfaceWrapper;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/koushikdutta/widgets/FragmentInterface;->mFragment:Lcom/koushikdutta/widgets/FragmentInterfaceWrapper;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/koushikdutta/widgets/FragmentInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .parameter "res"

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/koushikdutta/widgets/FragmentInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "res"
    .parameter "formatArgs"

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/koushikdutta/widgets/FragmentInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract onAttach(Landroid/app/Activity;)V
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract onCreate(Landroid/os/Bundle;)V
.end method

.method public abstract onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end method

.method public abstract onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end method

.method public abstract onDetach()V
.end method

.method public abstract onResume()V
.end method
