.class public Lcom/koushikdutta/widgets/BetterListFragmentInternal$MyAdapter;
.super Lcom/koushikdutta/widgets/SeparatedListAdapter;
.source "BetterListFragmentInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/widgets/BetterListFragmentInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/koushikdutta/widgets/SeparatedListAdapter",
        "<",
        "Lcom/koushikdutta/widgets/BetterListFragmentInternal$ListItemAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/widgets/BetterListFragmentInternal;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/widgets/BetterListFragmentInternal;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/koushikdutta/widgets/BetterListFragmentInternal$MyAdapter;->this$0:Lcom/koushikdutta/widgets/BetterListFragmentInternal;

    .line 51
    invoke-direct {p0, p2}, Lcom/koushikdutta/widgets/SeparatedListAdapter;-><init>(Landroid/content/Context;)V

    .line 52
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method protected getListHeaderResource()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/koushikdutta/widgets/BetterListFragmentInternal$MyAdapter;->this$0:Lcom/koushikdutta/widgets/BetterListFragmentInternal;

    invoke-virtual {v0}, Lcom/koushikdutta/widgets/BetterListFragmentInternal;->getListHeaderResource()I

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 3
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-super {p0, p1}, Lcom/koushikdutta/widgets/SeparatedListAdapter;->isEnabled(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 71
    :cond_0
    :goto_0
    return v1

    .line 68
    :cond_1
    invoke-virtual {p0, p1}, Lcom/koushikdutta/widgets/BetterListFragmentInternal$MyAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/widgets/ListItem;

    .line 69
    .local v0, item:Lcom/koushikdutta/widgets/ListItem;
    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0}, Lcom/koushikdutta/widgets/ListItem;->getEnabled()Z

    move-result v1

    goto :goto_0
.end method
