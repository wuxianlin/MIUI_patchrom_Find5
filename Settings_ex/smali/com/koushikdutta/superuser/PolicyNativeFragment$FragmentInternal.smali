.class public Lcom/koushikdutta/superuser/PolicyNativeFragment$FragmentInternal;
.super Lcom/koushikdutta/superuser/PolicyFragmentInternal;
.source "PolicyNativeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/superuser/PolicyNativeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "FragmentInternal"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/superuser/PolicyNativeFragment;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/superuser/PolicyNativeFragment;Lcom/koushikdutta/widgets/FragmentInterfaceWrapper;)V
    .locals 0
    .parameter
    .parameter "fragment"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/koushikdutta/superuser/PolicyNativeFragment$FragmentInternal;->this$0:Lcom/koushikdutta/superuser/PolicyNativeFragment;

    .line 43
    invoke-direct {p0, p2}, Lcom/koushikdutta/superuser/PolicyFragmentInternal;-><init>(Lcom/koushikdutta/widgets/FragmentInterfaceWrapper;)V

    .line 44
    return-void
.end method


# virtual methods
.method protected createLogNativeFragment()Lcom/koushikdutta/superuser/LogNativeFragment;
    .locals 1

    .prologue
    .line 59
    invoke-super {p0}, Lcom/koushikdutta/superuser/PolicyFragmentInternal;->createLogNativeFragment()Lcom/koushikdutta/superuser/LogNativeFragment;

    move-result-object v0

    return-object v0
.end method

.method protected createSettingsNativeFragment()Lcom/koushikdutta/superuser/SettingsNativeFragment;
    .locals 1

    .prologue
    .line 65
    invoke-super {p0}, Lcom/koushikdutta/superuser/PolicyFragmentInternal;->createSettingsNativeFragment()Lcom/koushikdutta/superuser/SettingsNativeFragment;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/koushikdutta/superuser/PolicyNativeFragment$FragmentInternal;->this$0:Lcom/koushikdutta/superuser/PolicyNativeFragment;

    invoke-virtual {v0}, Lcom/koushikdutta/superuser/PolicyNativeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method protected getListFragmentResource()I
    .locals 1

    .prologue
    .line 53
    const v0, 0x7f040080

    return v0
.end method
