.class public Lcom/koushikdutta/superuser/SettingsFragment;
.super Lcom/koushikdutta/widgets/SupportFragment;
.source "SettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/koushikdutta/widgets/SupportFragment",
        "<",
        "Lcom/koushikdutta/superuser/SettingsFragmentInternal;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/koushikdutta/widgets/SupportFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public createFragmentInterface()Lcom/koushikdutta/superuser/SettingsFragmentInternal;
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/koushikdutta/superuser/SettingsFragmentInternal;

    invoke-direct {v0, p0}, Lcom/koushikdutta/superuser/SettingsFragmentInternal;-><init>(Lcom/koushikdutta/widgets/FragmentInterfaceWrapper;)V

    return-object v0
.end method

.method public bridge synthetic createFragmentInterface()Lcom/koushikdutta/widgets/FragmentInterface;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/koushikdutta/superuser/SettingsFragment;->createFragmentInterface()Lcom/koushikdutta/superuser/SettingsFragmentInternal;

    move-result-object v0

    return-object v0
.end method
