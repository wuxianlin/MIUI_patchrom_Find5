.class public Lcom/koushikdutta/widgets/BetterListFragmentInternal;
.super Lcom/koushikdutta/widgets/FragmentInterface;
.source "BetterListFragmentInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/widgets/BetterListFragmentInternal$ActivityBaseFragmentListener;,
        Lcom/koushikdutta/widgets/BetterListFragmentInternal$ListItemAdapter;,
        Lcom/koushikdutta/widgets/BetterListFragmentInternal$MyAdapter;
    }
.end annotation


# instance fields
.field mAdapter:Lcom/koushikdutta/widgets/BetterListFragmentInternal$MyAdapter;

.field mEmpty:Landroid/widget/TextView;

.field mListView:Landroid/widget/ListView;

.field private mListener:Lcom/koushikdutta/widgets/BetterListFragmentInternal$ActivityBaseFragmentListener;

.field mTitleContainer:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/widgets/FragmentInterfaceWrapper;)V
    .locals 0
    .parameter "fragment"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/koushikdutta/widgets/FragmentInterface;-><init>(Lcom/koushikdutta/widgets/FragmentInterfaceWrapper;)V

    .line 47
    return-void
.end method


# virtual methods
.method public addItem(ILcom/koushikdutta/widgets/ListItem;)Lcom/koushikdutta/widgets/ListItem;
    .locals 1
    .parameter "sectionName"
    .parameter "item"

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/koushikdutta/widgets/BetterListFragmentInternal;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/koushikdutta/widgets/BetterListFragmentInternal;->addItem(Ljava/lang/String;Lcom/koushikdutta/widgets/ListItem;)Lcom/koushikdutta/widgets/ListItem;

    move-result-object v0

    return-object v0
.end method

.method public addItem(Ljava/lang/String;Lcom/koushikdutta/widgets/ListItem;)Lcom/koushikdutta/widgets/ListItem;
    .locals 1
    .parameter "sectionName"
    .parameter "item"

    .prologue
    .line 184
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/koushikdutta/widgets/BetterListFragmentInternal;->addItem(Ljava/lang/String;Lcom/koushikdutta/widgets/ListItem;I)Lcom/koushikdutta/widgets/ListItem;

    move-result-object v0

    return-object v0
.end method

.method public addItem(Ljava/lang/String;Lcom/koushikdutta/widgets/ListItem;I)Lcom/koushikdutta/widgets/ListItem;
    .locals 3
    .parameter "sectionName"
    .parameter "item"
    .parameter "index"

    .prologue
    .line 199
    iget-object v1, p0, Lcom/koushikdutta/widgets/BetterListFragmentInternal;->mAdapter:Lcom/koushikdutta/widgets/BetterListFragmentInternal$MyAdapter;

    invoke-virtual {v1, p1}, Lcom/koushikdutta/widgets/BetterListFragmentInternal$MyAdapter;->getSection(Ljava/lang/String;)Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/widgets/BetterListFragmentInternal$ListItemAdapter;

    .line 200
    .local v0, adapter:Lcom/koushikdutta/widgets/BetterListFragmentInternal$ListItemAdapter;
    if-nez v0, :cond_0

    .line 201
    new-instance v0, Lcom/koushikdutta/widgets/BetterListFragmentInternal$ListItemAdapter;

    .end local v0           #adapter:Lcom/koushikdutta/widgets/BetterListFragmentInternal$ListItemAdapter;
    invoke-virtual {p0}, Lcom/koushikdutta/widgets/BetterListFragmentInternal;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/koushikdutta/widgets/BetterListFragmentInternal$ListItemAdapter;-><init>(Lcom/koushikdutta/widgets/BetterListFragmentInternal;Landroid/content/Context;)V

    .line 202
    .restart local v0       #adapter:Lcom/koushikdutta/widgets/BetterListFragmentInternal$ListItemAdapter;
    iget-object v1, p0, Lcom/koushikdutta/widgets/BetterListFragmentInternal;->mAdapter:Lcom/koushikdutta/widgets/BetterListFragmentInternal$MyAdapter;

    invoke-virtual {v1, p1, v0}, Lcom/koushikdutta/widgets/BetterListFragmentInternal$MyAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    .line 203
    iget-object v1, p0, Lcom/koushikdutta/widgets/BetterListFragmentInternal;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_0

    .line 204
    iget-object v1, p0, Lcom/koushikdutta/widgets/BetterListFragmentInternal;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 205
    iget-object v1, p0, Lcom/koushikdutta/widgets/BetterListFragmentInternal;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/koushikdutta/widgets/BetterListFragmentInternal;->mAdapter:Lcom/koushikdutta/widgets/BetterListFragmentInternal$MyAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 210
    :cond_0
    const/4 v1, -0x1

    if-eq p3, v1, :cond_1

    .line 211
    invoke-virtual {v0, p2, p3}, Lcom/koushikdutta/widgets/BetterListFragmentInternal$ListItemAdapter;->insert(Ljava/lang/Object;I)V

    .line 215
    :goto_0
    iget-object v1, p0, Lcom/koushikdutta/widgets/BetterListFragmentInternal;->mAdapter:Lcom/koushikdutta/widgets/BetterListFragmentInternal$MyAdapter;

    invoke-virtual {v1}, Lcom/koushikdutta/widgets/BetterListFragmentInternal$MyAdapter;->notifyDataSetChanged()V

    .line 216
    return-object p2

    .line 213
    :cond_1
    invoke-virtual {v0, p2}, Lcom/koushikdutta/widgets/BetterListFragmentInternal$ListItemAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/koushikdutta/widgets/BetterListFragmentInternal;->mAdapter:Lcom/koushikdutta/widgets/BetterListFragmentInternal$MyAdapter;

    invoke-virtual {v0}, Lcom/koushikdutta/widgets/BetterListFragmentInternal$MyAdapter;->clear()V

    .line 274
    return-void
.end method

.method protected getListFragmentResource()I
    .locals 1

    .prologue
    .line 253
    const v0, 0x7f040058

    return v0
.end method

.method protected getListHeaderResource()I
    .locals 1

    .prologue
    .line 265
    const v0, 0x7f040059

    return v0
.end method

.method protected getListItemResource()I
    .locals 1

    .prologue
    .line 269
    const v0, 0x7f04005a

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/koushikdutta/widgets/BetterListFragmentInternal;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 331
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 322
    iget-object v0, p0, Lcom/koushikdutta/widgets/BetterListFragmentInternal;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 323
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 374
    new-instance v0, Lcom/koushikdutta/widgets/BetterListFragmentInternal$MyAdapter;

    invoke-virtual {p0}, Lcom/koushikdutta/widgets/BetterListFragmentInternal;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/koushikdutta/widgets/BetterListFragmentInternal$MyAdapter;-><init>(Lcom/koushikdutta/widgets/BetterListFragmentInternal;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/koushikdutta/widgets/BetterListFragmentInternal;->mAdapter:Lcom/koushikdutta/widgets/BetterListFragmentInternal$MyAdapter;

    .line 375
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/view/View;)V
    .locals 1
    .parameter "savedInstanceState"
    .parameter "view"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/koushikdutta/widgets/BetterListFragmentInternal;->mListener:Lcom/koushikdutta/widgets/BetterListFragmentInternal$ActivityBaseFragmentListener;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/koushikdutta/widgets/BetterListFragmentInternal;->mListener:Lcom/koushikdutta/widgets/BetterListFragmentInternal$ActivityBaseFragmentListener;

    invoke-interface {v0, p1, p2}, Lcom/koushikdutta/widgets/BetterListFragmentInternal$ActivityBaseFragmentListener;->onCreate(Landroid/os/Bundle;Landroid/view/View;)V

    .line 250
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 379
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/koushikdutta/widgets/BetterListFragmentInternal;->getListFragmentResource()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 337
    .local v0, ret:Landroid/view/View;
    const v1, 0x7f0d0111

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/koushikdutta/widgets/BetterListFragmentInternal;->mTitleContainer:Landroid/view/ViewGroup;

    .line 339
    const v1, 0x7f0d0112

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/koushikdutta/widgets/BetterListFragmentInternal;->mListView:Landroid/widget/ListView;

    .line 340
    iget-object v1, p0, Lcom/koushikdutta/widgets/BetterListFragmentInternal;->mListView:Landroid/widget/ListView;

    new-instance v2, Lcom/koushikdutta/widgets/BetterListFragmentInternal$1;

    invoke-direct {v2, p0}, Lcom/koushikdutta/widgets/BetterListFragmentInternal$1;-><init>(Lcom/koushikdutta/widgets/BetterListFragmentInternal;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 352
    iget-object v1, p0, Lcom/koushikdutta/widgets/BetterListFragmentInternal;->mListView:Landroid/widget/ListView;

    new-instance v2, Lcom/koushikdutta/widgets/BetterListFragmentInternal$2;

    invoke-direct {v2, p0}, Lcom/koushikdutta/widgets/BetterListFragmentInternal$2;-><init>(Lcom/koushikdutta/widgets/BetterListFragmentInternal;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 365
    const v1, 0x7f0d0113

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/koushikdutta/widgets/BetterListFragmentInternal;->mEmpty:Landroid/widget/TextView;

    .line 367
    invoke-virtual {p0, p3, v0}, Lcom/koushikdutta/widgets/BetterListFragmentInternal;->onCreate(Landroid/os/Bundle;Landroid/view/View;)V

    .line 368
    iget-object v1, p0, Lcom/koushikdutta/widgets/BetterListFragmentInternal;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/koushikdutta/widgets/BetterListFragmentInternal;->mAdapter:Lcom/koushikdutta/widgets/BetterListFragmentInternal$MyAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 369
    return-object v0
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 327
    return-void
.end method

.method onListItemClick(Lcom/koushikdutta/widgets/ListItem;)V
    .locals 0
    .parameter "li"

    .prologue
    .line 258
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 43
    return-void
.end method

.method public removeItem(Lcom/koushikdutta/widgets/ListItem;)V
    .locals 3
    .parameter "item"

    .prologue
    .line 297
    iget-object v2, p0, Lcom/koushikdutta/widgets/BetterListFragmentInternal;->mAdapter:Lcom/koushikdutta/widgets/BetterListFragmentInternal$MyAdapter;

    invoke-virtual {v2}, Lcom/koushikdutta/widgets/BetterListFragmentInternal$MyAdapter;->getSections()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/widgets/BetterListFragmentInternal$ListItemAdapter;

    .line 298
    .local v0, adapter:Lcom/koushikdutta/widgets/BetterListFragmentInternal$ListItemAdapter;
    invoke-virtual {v0, p1}, Lcom/koushikdutta/widgets/BetterListFragmentInternal$ListItemAdapter;->remove(Ljava/lang/Object;)V

    goto :goto_0

    .line 300
    .end local v0           #adapter:Lcom/koushikdutta/widgets/BetterListFragmentInternal$ListItemAdapter;
    :cond_0
    iget-object v2, p0, Lcom/koushikdutta/widgets/BetterListFragmentInternal;->mAdapter:Lcom/koushikdutta/widgets/BetterListFragmentInternal$MyAdapter;

    invoke-virtual {v2}, Lcom/koushikdutta/widgets/BetterListFragmentInternal$MyAdapter;->notifyDataSetChanged()V

    .line 301
    return-void
.end method

.method public setEmpty(I)V
    .locals 2
    .parameter "res"

    .prologue
    .line 304
    iget-object v0, p0, Lcom/koushikdutta/widgets/BetterListFragmentInternal;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/koushikdutta/widgets/BetterListFragmentInternal;->mEmpty:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 305
    iget-object v0, p0, Lcom/koushikdutta/widgets/BetterListFragmentInternal;->mEmpty:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 306
    return-void
.end method

.method public setListener(Lcom/koushikdutta/widgets/BetterListFragmentInternal$ActivityBaseFragmentListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 240
    iput-object p1, p0, Lcom/koushikdutta/widgets/BetterListFragmentInternal;->mListener:Lcom/koushikdutta/widgets/BetterListFragmentInternal$ActivityBaseFragmentListener;

    .line 241
    return-void
.end method
