.class Lcom/koushikdutta/superuser/SettingsNativeFragment$1;
.super Lcom/koushikdutta/superuser/SettingsFragmentInternal;
.source "SettingsNativeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/superuser/SettingsNativeFragment;->createFragmentInterface()Lcom/koushikdutta/superuser/SettingsFragmentInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/superuser/SettingsNativeFragment;


# direct methods
.method constructor <init>(Lcom/koushikdutta/superuser/SettingsNativeFragment;Lcom/koushikdutta/widgets/FragmentInterfaceWrapper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/koushikdutta/superuser/SettingsNativeFragment$1;->this$0:Lcom/koushikdutta/superuser/SettingsNativeFragment;

    invoke-direct {p0, p2}, Lcom/koushikdutta/superuser/SettingsFragmentInternal;-><init>(Lcom/koushikdutta/widgets/FragmentInterfaceWrapper;)V

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/koushikdutta/superuser/SettingsNativeFragment$1;->this$0:Lcom/koushikdutta/superuser/SettingsNativeFragment;

    invoke-super {p0}, Lcom/koushikdutta/superuser/SettingsFragmentInternal;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/koushikdutta/superuser/SettingsNativeFragment;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method
