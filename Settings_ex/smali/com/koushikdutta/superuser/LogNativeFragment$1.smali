.class Lcom/koushikdutta/superuser/LogNativeFragment$1;
.super Lcom/koushikdutta/superuser/LogFragmentInternal;
.source "LogNativeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/superuser/LogNativeFragment;->createFragmentInterface()Lcom/koushikdutta/superuser/LogFragmentInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/superuser/LogNativeFragment;


# direct methods
.method constructor <init>(Lcom/koushikdutta/superuser/LogNativeFragment;Lcom/koushikdutta/widgets/FragmentInterfaceWrapper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/koushikdutta/superuser/LogNativeFragment$1;->this$0:Lcom/koushikdutta/superuser/LogNativeFragment;

    invoke-direct {p0, p2}, Lcom/koushikdutta/superuser/LogFragmentInternal;-><init>(Lcom/koushikdutta/widgets/FragmentInterfaceWrapper;)V

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/koushikdutta/superuser/LogNativeFragment$1;->this$0:Lcom/koushikdutta/superuser/LogNativeFragment;

    invoke-virtual {v0}, Lcom/koushikdutta/superuser/LogNativeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method onDelete()V
    .locals 2

    .prologue
    .line 50
    invoke-super {p0}, Lcom/koushikdutta/superuser/LogFragmentInternal;->onDelete()V

    .line 51
    iget-object v0, p0, Lcom/koushikdutta/superuser/LogNativeFragment$1;->this$0:Lcom/koushikdutta/superuser/LogNativeFragment;

    invoke-virtual {p0}, Lcom/koushikdutta/superuser/LogNativeFragment$1;->getListContentId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/koushikdutta/superuser/LogNativeFragment;->onDelete(I)V

    .line 52
    return-void
.end method
