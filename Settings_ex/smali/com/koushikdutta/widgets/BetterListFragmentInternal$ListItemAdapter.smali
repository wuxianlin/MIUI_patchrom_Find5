.class public Lcom/koushikdutta/widgets/BetterListFragmentInternal$ListItemAdapter;
.super Landroid/widget/ArrayAdapter;
.source "BetterListFragmentInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/widgets/BetterListFragmentInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/koushikdutta/widgets/ListItem;",
        ">;"
    }
.end annotation


# instance fields
.field public ALPHA:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/koushikdutta/widgets/ListItem;",
            ">;"
        }
    .end annotation
.end field

.field public ALPHAIGNORECASE:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/koushikdutta/widgets/ListItem;",
            ">;"
        }
    .end annotation
.end field

.field public NONE:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/koushikdutta/widgets/ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private sorter:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/koushikdutta/widgets/ListItem;",
            ">;"
        }
    .end annotation
.end field

.field sorting:Z

.field final synthetic this$0:Lcom/koushikdutta/widgets/BetterListFragmentInternal;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/widgets/BetterListFragmentInternal;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/koushikdutta/widgets/BetterListFragmentInternal$ListItemAdapter;->this$0:Lcom/koushikdutta/widgets/BetterListFragmentInternal;

    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 121
    new-instance v0, Lcom/koushikdutta/widgets/BetterListFragmentInternal$ListItemAdapter$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/widgets/BetterListFragmentInternal$ListItemAdapter$1;-><init>(Lcom/koushikdutta/widgets/BetterListFragmentInternal$ListItemAdapter;)V

    iput-object v0, p0, Lcom/koushikdutta/widgets/BetterListFragmentInternal$ListItemAdapter;->ALPHA:Ljava/util/Comparator;

    .line 128
    new-instance v0, Lcom/koushikdutta/widgets/BetterListFragmentInternal$ListItemAdapter$2;

    invoke-direct {v0, p0}, Lcom/koushikdutta/widgets/BetterListFragmentInternal$ListItemAdapter$2;-><init>(Lcom/koushikdutta/widgets/BetterListFragmentInternal$ListItemAdapter;)V

    iput-object v0, p0, Lcom/koushikdutta/widgets/BetterListFragmentInternal$ListItemAdapter;->ALPHAIGNORECASE:Ljava/util/Comparator;

    .line 135
    new-instance v0, Lcom/koushikdutta/widgets/BetterListFragmentInternal$ListItemAdapter$3;

    invoke-direct {v0, p0}, Lcom/koushikdutta/widgets/BetterListFragmentInternal$ListItemAdapter$3;-><init>(Lcom/koushikdutta/widgets/BetterListFragmentInternal$ListItemAdapter;)V

    iput-object v0, p0, Lcom/koushikdutta/widgets/BetterListFragmentInternal$ListItemAdapter;->NONE:Ljava/util/Comparator;

    .line 78
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/koushikdutta/widgets/BetterListFragmentInternal$ListItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/widgets/ListItem;

    .line 83
    .local v0, item:Lcom/koushikdutta/widgets/ListItem;
    invoke-virtual {p0}, Lcom/koushikdutta/widgets/BetterListFragmentInternal$ListItemAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/koushikdutta/widgets/ListItem;->getView(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public isEnabled(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lcom/koushikdutta/widgets/BetterListFragmentInternal$ListItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/widgets/ListItem;

    .line 94
    .local v0, item:Lcom/koushikdutta/widgets/ListItem;
    invoke-virtual {v0}, Lcom/koushikdutta/widgets/ListItem;->getEnabled()Z

    move-result v1

    return v1
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/koushikdutta/widgets/BetterListFragmentInternal$ListItemAdapter;->sorter:Ljava/util/Comparator;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/koushikdutta/widgets/BetterListFragmentInternal$ListItemAdapter;->sorting:Z

    if-nez v0, :cond_0

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/widgets/BetterListFragmentInternal$ListItemAdapter;->sorting:Z

    .line 102
    iget-object v0, p0, Lcom/koushikdutta/widgets/BetterListFragmentInternal$ListItemAdapter;->sorter:Ljava/util/Comparator;

    invoke-super {p0, v0}, Landroid/widget/ArrayAdapter;->sort(Ljava/util/Comparator;)V

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/koushikdutta/widgets/BetterListFragmentInternal$ListItemAdapter;->sorting:Z

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_0
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
