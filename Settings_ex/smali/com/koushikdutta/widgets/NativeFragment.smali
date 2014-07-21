.class public abstract Lcom/koushikdutta/widgets/NativeFragment;
.super Landroid/app/Fragment;
.source "NativeFragment.java"

# interfaces
.implements Lcom/koushikdutta/widgets/FragmentInterfaceWrapper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/koushikdutta/widgets/FragmentInterface;",
        ">",
        "Landroid/app/Fragment;",
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
    .line 56
    .local p0, this:Lcom/koushikdutta/widgets/NativeFragment;,"Lcom/koushikdutta/widgets/NativeFragment<TT;>;"
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 57
    invoke-virtual {p0}, Lcom/koushikdutta/widgets/NativeFragment;->createFragmentInterface()Lcom/koushikdutta/widgets/FragmentInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/widgets/NativeFragment;->internal:Lcom/koushikdutta/widgets/FragmentInterface;

    .line 58
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

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 42
    .local p0, this:Lcom/koushikdutta/widgets/NativeFragment;,"Lcom/koushikdutta/widgets/NativeFragment<TT;>;"
    invoke-virtual {p0}, Lcom/koushikdutta/widgets/NativeFragment;->getActivity()Landroid/app/Activity;

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
    .line 62
    .local p0, this:Lcom/koushikdutta/widgets/NativeFragment;,"Lcom/koushikdutta/widgets/NativeFragment<TT;>;"
    iget-object v0, p0, Lcom/koushikdutta/widgets/NativeFragment;->internal:Lcom/koushikdutta/widgets/FragmentInterface;

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 51
    .local p0, this:Lcom/koushikdutta/widgets/NativeFragment;,"Lcom/koushikdutta/widgets/NativeFragment<TT;>;"
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 52
    iget-object v0, p0, Lcom/koushikdutta/widgets/NativeFragment;->internal:Lcom/koushikdutta/widgets/FragmentInterface;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/widgets/FragmentInterface;->onAttach(Landroid/app/Activity;)V

    .line 53
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 73
    .local p0, this:Lcom/koushikdutta/widgets/NativeFragment;,"Lcom/koushikdutta/widgets/NativeFragment<TT;>;"
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 74
    iget-object v0, p0, Lcom/koushikdutta/widgets/NativeFragment;->internal:Lcom/koushikdutta/widgets/FragmentInterface;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/widgets/FragmentInterface;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 75
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 67
    .local p0, this:Lcom/koushikdutta/widgets/NativeFragment;,"Lcom/koushikdutta/widgets/NativeFragment<TT;>;"
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 68
    iget-object v0, p0, Lcom/koushikdutta/widgets/NativeFragment;->internal:Lcom/koushikdutta/widgets/FragmentInterface;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/widgets/FragmentInterface;->onCreate(Landroid/os/Bundle;)V

    .line 69
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 84
    .local p0, this:Lcom/koushikdutta/widgets/NativeFragment;,"Lcom/koushikdutta/widgets/NativeFragment<TT;>;"
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 86
    iget-object v0, p0, Lcom/koushikdutta/widgets/NativeFragment;->internal:Lcom/koushikdutta/widgets/FragmentInterface;

    invoke-virtual {v0, p1, p2}, Lcom/koushikdutta/widgets/FragmentInterface;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 87
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 79
    .local p0, this:Lcom/koushikdutta/widgets/NativeFragment;,"Lcom/koushikdutta/widgets/NativeFragment<TT;>;"
    iget-object v0, p0, Lcom/koushikdutta/widgets/NativeFragment;->internal:Lcom/koushikdutta/widgets/FragmentInterface;

    invoke-virtual {v0, p1, p2, p3}, Lcom/koushikdutta/widgets/FragmentInterface;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 46
    .local p0, this:Lcom/koushikdutta/widgets/NativeFragment;,"Lcom/koushikdutta/widgets/NativeFragment<TT;>;"
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 47
    iget-object v0, p0, Lcom/koushikdutta/widgets/NativeFragment;->internal:Lcom/koushikdutta/widgets/FragmentInterface;

    invoke-virtual {v0}, Lcom/koushikdutta/widgets/FragmentInterface;->onDetach()V

    .line 48
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 36
    .local p0, this:Lcom/koushikdutta/widgets/NativeFragment;,"Lcom/koushikdutta/widgets/NativeFragment<TT;>;"
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 37
    iget-object v0, p0, Lcom/koushikdutta/widgets/NativeFragment;->internal:Lcom/koushikdutta/widgets/FragmentInterface;

    invoke-virtual {v0}, Lcom/koushikdutta/widgets/FragmentInterface;->onResume()V

    .line 38
    return-void
.end method
