.class Lcom/koushikdutta/superuser/LogFragment$1;
.super Lcom/koushikdutta/superuser/LogFragmentInternal;
.source "LogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/superuser/LogFragment;->createFragmentInterface()Lcom/koushikdutta/superuser/LogFragmentInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/superuser/LogFragment;


# direct methods
.method constructor <init>(Lcom/koushikdutta/superuser/LogFragment;Lcom/koushikdutta/widgets/FragmentInterfaceWrapper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/koushikdutta/superuser/LogFragment$1;->this$0:Lcom/koushikdutta/superuser/LogFragment;

    invoke-direct {p0, p2}, Lcom/koushikdutta/superuser/LogFragmentInternal;-><init>(Lcom/koushikdutta/widgets/FragmentInterfaceWrapper;)V

    return-void
.end method


# virtual methods
.method onDelete()V
    .locals 2

    .prologue
    .line 31
    invoke-super {p0}, Lcom/koushikdutta/superuser/LogFragmentInternal;->onDelete()V

    .line 32
    iget-object v0, p0, Lcom/koushikdutta/superuser/LogFragment$1;->this$0:Lcom/koushikdutta/superuser/LogFragment;

    invoke-virtual {p0}, Lcom/koushikdutta/superuser/LogFragment$1;->getListContentId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/koushikdutta/superuser/LogFragment;->onDelete(I)V

    .line 33
    return-void
.end method
