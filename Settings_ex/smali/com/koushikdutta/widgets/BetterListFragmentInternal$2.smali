.class Lcom/koushikdutta/widgets/BetterListFragmentInternal$2;
.super Ljava/lang/Object;
.source "BetterListFragmentInternal.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/widgets/BetterListFragmentInternal;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/widgets/BetterListFragmentInternal;


# direct methods
.method constructor <init>(Lcom/koushikdutta/widgets/BetterListFragmentInternal;)V
    .locals 0
    .parameter

    .prologue
    .line 352
    iput-object p1, p0, Lcom/koushikdutta/widgets/BetterListFragmentInternal$2;->this$0:Lcom/koushikdutta/widgets/BetterListFragmentInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 3
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 356
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/koushikdutta/widgets/BetterListFragmentInternal$2;->this$0:Lcom/koushikdutta/widgets/BetterListFragmentInternal;

    iget-object v2, v2, Lcom/koushikdutta/widgets/BetterListFragmentInternal;->mAdapter:Lcom/koushikdutta/widgets/BetterListFragmentInternal$MyAdapter;

    invoke-virtual {v2, p3}, Lcom/koushikdutta/widgets/BetterListFragmentInternal$MyAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 357
    .local v0, item:Ljava/lang/Object;
    instance-of v2, v0, Lcom/koushikdutta/widgets/ListItem;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 358
    check-cast v1, Lcom/koushikdutta/widgets/ListItem;

    .line 359
    .local v1, li:Lcom/koushikdutta/widgets/ListItem;
    invoke-virtual {v1}, Lcom/koushikdutta/widgets/ListItem;->onLongClick()Z

    move-result v2

    .line 361
    .end local v1           #li:Lcom/koushikdutta/widgets/ListItem;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
