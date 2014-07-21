.class public Lcom/koushikdutta/widgets/SeparatedListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SeparatedListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/widget/Adapter;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field private final headers:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final sections:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 43
    .local p0, this:Lcom/koushikdutta/widgets/SeparatedListAdapter;,"Lcom/koushikdutta/widgets/SeparatedListAdapter<TT;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/widgets/SeparatedListAdapter;->sections:Ljava/util/HashMap;

    .line 44
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/koushikdutta/widgets/SeparatedListAdapter;->getListHeaderResource()I

    move-result v1

    const v2, 0x1020014

    invoke-direct {v0, p1, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/koushikdutta/widgets/SeparatedListAdapter;->headers:Landroid/widget/ArrayAdapter;

    .line 45
    return-void
.end method


# virtual methods
.method public addSection(Ljava/lang/String;Landroid/widget/Adapter;)V
    .locals 1
    .parameter "section"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, this:Lcom/koushikdutta/widgets/SeparatedListAdapter;,"Lcom/koushikdutta/widgets/SeparatedListAdapter<TT;>;"
    .local p2, adapter:Landroid/widget/Adapter;,"TT;"
    iget-object v0, p0, Lcom/koushikdutta/widgets/SeparatedListAdapter;->headers:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 49
    iget-object v0, p0, Lcom/koushikdutta/widgets/SeparatedListAdapter;->sections:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-virtual {p0}, Lcom/koushikdutta/widgets/SeparatedListAdapter;->notifyDataSetChanged()V

    .line 51
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 30
    .local p0, this:Lcom/koushikdutta/widgets/SeparatedListAdapter;,"Lcom/koushikdutta/widgets/SeparatedListAdapter<TT;>;"
    iget-object v0, p0, Lcom/koushikdutta/widgets/SeparatedListAdapter;->sections:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 31
    iget-object v0, p0, Lcom/koushikdutta/widgets/SeparatedListAdapter;->headers:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 32
    invoke-virtual {p0}, Lcom/koushikdutta/widgets/SeparatedListAdapter;->notifyDataSetChanged()V

    .line 33
    return-void
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 94
    .local p0, this:Lcom/koushikdutta/widgets/SeparatedListAdapter;,"Lcom/koushikdutta/widgets/SeparatedListAdapter<TT;>;"
    const/4 v2, 0x0

    .line 95
    .local v2, total:I
    iget-object v3, p0, Lcom/koushikdutta/widgets/SeparatedListAdapter;->sections:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    .line 96
    .local v0, adapter:Landroid/widget/Adapter;
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    goto :goto_0

    .line 97
    .end local v0           #adapter:Landroid/widget/Adapter;
    :cond_0
    return v2
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 5
    .parameter "position"

    .prologue
    .line 75
    .local p0, this:Lcom/koushikdutta/widgets/SeparatedListAdapter;,"Lcom/koushikdutta/widgets/SeparatedListAdapter<TT;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/koushikdutta/widgets/SeparatedListAdapter;->headers:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 76
    iget-object v4, p0, Lcom/koushikdutta/widgets/SeparatedListAdapter;->headers:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 77
    .local v2, section:Ljava/lang/String;
    iget-object v4, p0, Lcom/koushikdutta/widgets/SeparatedListAdapter;->sections:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    .line 78
    .local v0, adapter:Landroid/widget/Adapter;
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    add-int/lit8 v3, v4, 0x1

    .line 81
    .local v3, size:I
    if-nez p1, :cond_0

    .line 89
    .end local v0           #adapter:Landroid/widget/Adapter;
    .end local v2           #section:Ljava/lang/String;
    .end local v3           #size:I
    :goto_1
    return-object v2

    .line 83
    .restart local v0       #adapter:Landroid/widget/Adapter;
    .restart local v2       #section:Ljava/lang/String;
    .restart local v3       #size:I
    :cond_0
    if-ge p1, v3, :cond_1

    .line 84
    add-int/lit8 v4, p1, -0x1

    invoke-interface {v0, v4}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 87
    :cond_1
    sub-int/2addr p1, v3

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 89
    .end local v0           #adapter:Landroid/widget/Adapter;
    .end local v2           #section:Ljava/lang/String;
    .end local v3           #size:I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 163
    .local p0, this:Lcom/koushikdutta/widgets/SeparatedListAdapter;,"Lcom/koushikdutta/widgets/SeparatedListAdapter<TT;>;"
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 6
    .parameter "position"

    .prologue
    .line 116
    .local p0, this:Lcom/koushikdutta/widgets/SeparatedListAdapter;,"Lcom/koushikdutta/widgets/SeparatedListAdapter<TT;>;"
    const/4 v4, 0x1

    .line 117
    .local v4, type:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v5, p0, Lcom/koushikdutta/widgets/SeparatedListAdapter;->headers:Landroid/widget/ArrayAdapter;

    invoke-virtual {v5}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 118
    iget-object v5, p0, Lcom/koushikdutta/widgets/SeparatedListAdapter;->headers:Landroid/widget/ArrayAdapter;

    invoke-virtual {v5, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 119
    .local v2, section:Ljava/lang/String;
    iget-object v5, p0, Lcom/koushikdutta/widgets/SeparatedListAdapter;->sections:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    .line 120
    .local v0, adapter:Landroid/widget/Adapter;
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v5

    add-int/lit8 v3, v5, 0x1

    .line 123
    .local v3, size:I
    if-nez p1, :cond_0

    .line 124
    const/4 v5, 0x0

    .line 132
    .end local v0           #adapter:Landroid/widget/Adapter;
    .end local v2           #section:Ljava/lang/String;
    .end local v3           #size:I
    :goto_1
    return v5

    .line 125
    .restart local v0       #adapter:Landroid/widget/Adapter;
    .restart local v2       #section:Ljava/lang/String;
    .restart local v3       #size:I
    :cond_0
    if-ge p1, v3, :cond_1

    .line 126
    add-int/lit8 v5, p1, -0x1

    invoke-interface {v0, v5}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result v5

    add-int/2addr v5, v4

    goto :goto_1

    .line 129
    :cond_1
    sub-int/2addr p1, v3

    .line 130
    invoke-interface {v0}, Landroid/widget/Adapter;->getViewTypeCount()I

    move-result v5

    add-int/2addr v4, v5

    .line 117
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    .end local v0           #adapter:Landroid/widget/Adapter;
    .end local v2           #section:Ljava/lang/String;
    .end local v3           #size:I
    :cond_2
    const/4 v5, -0x1

    goto :goto_1
.end method

.method protected getListHeaderResource()I
    .locals 1

    .prologue
    .line 36
    .local p0, this:Lcom/koushikdutta/widgets/SeparatedListAdapter;,"Lcom/koushikdutta/widgets/SeparatedListAdapter<TT;>;"
    const v0, 0x7f040059

    return v0
.end method

.method public getSection(Ljava/lang/String;)Landroid/widget/Adapter;
    .locals 1
    .parameter "section"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, this:Lcom/koushikdutta/widgets/SeparatedListAdapter;,"Lcom/koushikdutta/widgets/SeparatedListAdapter<TT;>;"
    iget-object v0, p0, Lcom/koushikdutta/widgets/SeparatedListAdapter;->sections:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    return-object v0
.end method

.method public getSections()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, this:Lcom/koushikdutta/widgets/SeparatedListAdapter;,"Lcom/koushikdutta/widgets/SeparatedListAdapter<TT;>;"
    iget-object v0, p0, Lcom/koushikdutta/widgets/SeparatedListAdapter;->sections:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 142
    .local p0, this:Lcom/koushikdutta/widgets/SeparatedListAdapter;,"Lcom/koushikdutta/widgets/SeparatedListAdapter<TT;>;"
    const/4 v3, 0x0

    .line 143
    .local v3, sectionnum:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v5, p0, Lcom/koushikdutta/widgets/SeparatedListAdapter;->headers:Landroid/widget/ArrayAdapter;

    invoke-virtual {v5}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 144
    iget-object v5, p0, Lcom/koushikdutta/widgets/SeparatedListAdapter;->headers:Landroid/widget/ArrayAdapter;

    invoke-virtual {v5, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 145
    .local v2, section:Ljava/lang/String;
    iget-object v5, p0, Lcom/koushikdutta/widgets/SeparatedListAdapter;->sections:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    .line 146
    .local v0, adapter:Landroid/widget/Adapter;
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v5

    add-int/lit8 v4, v5, 0x1

    .line 149
    .local v4, size:I
    if-nez p1, :cond_0

    .line 150
    iget-object v5, p0, Lcom/koushikdutta/widgets/SeparatedListAdapter;->headers:Landroid/widget/ArrayAdapter;

    invoke-virtual {v5, v3, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 158
    .end local v0           #adapter:Landroid/widget/Adapter;
    .end local v2           #section:Ljava/lang/String;
    .end local v4           #size:I
    :goto_1
    return-object v5

    .line 151
    .restart local v0       #adapter:Landroid/widget/Adapter;
    .restart local v2       #section:Ljava/lang/String;
    .restart local v4       #size:I
    :cond_0
    if-ge p1, v4, :cond_1

    .line 152
    add-int/lit8 v5, p1, -0x1

    invoke-interface {v0, v5, p2, p3}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    goto :goto_1

    .line 155
    :cond_1
    sub-int/2addr p1, v4

    .line 156
    add-int/lit8 v3, v3, 0x1

    .line 143
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 158
    .end local v0           #adapter:Landroid/widget/Adapter;
    .end local v2           #section:Ljava/lang/String;
    .end local v4           #size:I
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 4

    .prologue
    .line 108
    .local p0, this:Lcom/koushikdutta/widgets/SeparatedListAdapter;,"Lcom/koushikdutta/widgets/SeparatedListAdapter<TT;>;"
    const/4 v2, 0x2

    .line 109
    .local v2, total:I
    iget-object v3, p0, Lcom/koushikdutta/widgets/SeparatedListAdapter;->sections:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    .line 110
    .local v0, adapter:Landroid/widget/Adapter;
    invoke-interface {v0}, Landroid/widget/Adapter;->getViewTypeCount()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 111
    .end local v0           #adapter:Landroid/widget/Adapter;
    :cond_0
    return v2
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 137
    .local p0, this:Lcom/koushikdutta/widgets/SeparatedListAdapter;,"Lcom/koushikdutta/widgets/SeparatedListAdapter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/koushikdutta/widgets/SeparatedListAdapter;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
