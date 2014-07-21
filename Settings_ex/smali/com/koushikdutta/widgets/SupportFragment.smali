.class public abstract Lcom/koushikdutta/widgets/SupportFragment;
.super Landroid/support/v4/app/Fragment;
.source "SupportFragment.java"

# interfaces
.implements Lcom/koushikdutta/widgets/FragmentInterfaceWrapper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/koushikdutta/widgets/FragmentInterface;",
        ">",
        "Landroid/support/v4/app/Fragment;",
        "Lcom/koushikdutta/widgets/FragmentInterfaceWrapper;"
    }
.end annotation


# instance fields
.field internal:Lcom/koushikdutta/widgets/FragmentInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    .local p0, this:Lcom/koushikdutta/widgets/SupportFragment;,"Lcom/koushikdutta/widgets/SupportFragment<TT;>;"
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 46
    invoke-virtual {p0}, Lcom/koushikdutta/widgets/SupportFragment;->createFragmentInterface()Lcom/koushikdutta/widgets/FragmentInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/widgets/SupportFragment;->internal:Lcom/koushikdutta/widgets/FragmentInterface;

    .line 47
    return-void
.end method


# virtual methods
.method public abstract createFragmentInterface()Lcom/koushikdutta/widgets/FragmentInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public bridge synthetic getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 31
    .local p0, this:Lcom/koushikdutta/widgets/SupportFragment;,"Lcom/koushikdutta/widgets/SupportFragment<TT;>;"
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 41
    .local p0, this:Lcom/koushikdutta/widgets/SupportFragment;,"Lcom/koushikdutta/widgets/SupportFragment<TT;>;"
    invoke-virtual {p0}, Lcom/koushikdutta/widgets/SupportFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method public getInternal()Lcom/koushikdutta/widgets/FragmentInterface;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, this:Lcom/koushikdutta/widgets/SupportFragment;,"Lcom/koushikdutta/widgets/SupportFragment<TT;>;"
    iget-object v0, p0, Lcom/koushikdutta/widgets/SupportFragment;->internal:Lcom/koushikdutta/widgets/FragmentInterface;

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 87
    .local p0, this:Lcom/koushikdutta/widgets/SupportFragment;,"Lcom/koushikdutta/widgets/SupportFragment<TT;>;"
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 88
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 62
    .local p0, this:Lcom/koushikdutta/widgets/SupportFragment;,"Lcom/koushikdutta/widgets/SupportFragment<TT;>;"
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 63
    iget-object v0, p0, Lcom/koushikdutta/widgets/SupportFragment;->internal:Lcom/koushikdutta/widgets/FragmentInterface;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/widgets/FragmentInterface;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 64
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 56
    .local p0, this:Lcom/koushikdutta/widgets/SupportFragment;,"Lcom/koushikdutta/widgets/SupportFragment<TT;>;"
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 57
    iget-object v0, p0, Lcom/koushikdutta/widgets/SupportFragment;->internal:Lcom/koushikdutta/widgets/FragmentInterface;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/widgets/FragmentInterface;->onCreate(Landroid/os/Bundle;)V

    .line 58
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 73
    .local p0, this:Lcom/koushikdutta/widgets/SupportFragment;,"Lcom/koushikdutta/widgets/SupportFragment<TT;>;"
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 75
    iget-object v0, p0, Lcom/koushikdutta/widgets/SupportFragment;->internal:Lcom/koushikdutta/widgets/FragmentInterface;

    invoke-virtual {v0, p1, p2}, Lcom/koushikdutta/widgets/FragmentInterface;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 76
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 68
    .local p0, this:Lcom/koushikdutta/widgets/SupportFragment;,"Lcom/koushikdutta/widgets/SupportFragment<TT;>;"
    iget-object v0, p0, Lcom/koushikdutta/widgets/SupportFragment;->internal:Lcom/koushikdutta/widgets/FragmentInterface;

    invoke-virtual {v0, p1, p2, p3}, Lcom/koushikdutta/widgets/FragmentInterface;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 81
    .local p0, this:Lcom/koushikdutta/widgets/SupportFragment;,"Lcom/koushikdutta/widgets/SupportFragment<TT;>;"
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 82
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 36
    .local p0, this:Lcom/koushikdutta/widgets/SupportFragment;,"Lcom/koushikdutta/widgets/SupportFragment<TT;>;"
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 37
    iget-object v0, p0, Lcom/koushikdutta/widgets/SupportFragment;->internal:Lcom/koushikdutta/widgets/FragmentInterface;

    invoke-virtual {v0}, Lcom/koushikdutta/widgets/FragmentInterface;->onResume()V

    .line 38
    return-void
.end method
