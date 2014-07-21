.class public Lcom/koushikdutta/superuser/SettingsNativeFragment;
.super Lcom/koushikdutta/widgets/NativeFragment;
.source "SettingsNativeFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/koushikdutta/widgets/NativeFragment",
        "<",
        "Lcom/koushikdutta/superuser/SettingsFragmentInternal;",
        ">;"
    }
.end annotation


# instance fields
.field mWrapper:Landroid/view/ContextThemeWrapper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/koushikdutta/widgets/NativeFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public createFragmentInterface()Lcom/koushikdutta/superuser/SettingsFragmentInternal;
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/koushikdutta/superuser/SettingsNativeFragment$1;

    invoke-direct {v0, p0, p0}, Lcom/koushikdutta/superuser/SettingsNativeFragment$1;-><init>(Lcom/koushikdutta/superuser/SettingsNativeFragment;Lcom/koushikdutta/widgets/FragmentInterfaceWrapper;)V

    return-object v0
.end method

.method public bridge synthetic createFragmentInterface()Lcom/koushikdutta/widgets/FragmentInterface;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/koushikdutta/superuser/SettingsNativeFragment;->createFragmentInterface()Lcom/koushikdutta/superuser/SettingsFragmentInternal;

    move-result-object v0

    return-object v0
.end method

.method public getContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 2
    .parameter "ctx"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/koushikdutta/superuser/SettingsNativeFragment;->mWrapper:Landroid/view/ContextThemeWrapper;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/koushikdutta/superuser/SettingsNativeFragment;->mWrapper:Landroid/view/ContextThemeWrapper;

    .line 35
    :goto_0
    return-object v0

    .line 34
    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x7f090003

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/koushikdutta/superuser/SettingsNativeFragment;->mWrapper:Landroid/view/ContextThemeWrapper;

    .line 35
    iget-object v0, p0, Lcom/koushikdutta/superuser/SettingsNativeFragment;->mWrapper:Landroid/view/ContextThemeWrapper;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 50
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/superuser/SettingsNativeFragment;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    invoke-super {p0, v0, p2, p3}, Lcom/koushikdutta/widgets/NativeFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
