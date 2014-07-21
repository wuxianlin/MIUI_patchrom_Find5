.class public Lcom/koushikdutta/widgets/ListContentFragmentInternal;
.super Lcom/koushikdutta/widgets/BetterListFragmentInternal;
.source "ListContentFragmentInternal.java"


# instance fields
.field listener:Ljava/lang/Object;

.field mContainer:Landroid/view/ViewGroup;

.field mContent:Landroid/view/ViewGroup;

.field mCurrentContent:Lcom/koushikdutta/widgets/FragmentInterfaceWrapper;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/widgets/FragmentInterfaceWrapper;)V
    .locals 0
    .parameter "fragment"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/koushikdutta/widgets/BetterListFragmentInternal;-><init>(Lcom/koushikdutta/widgets/FragmentInterfaceWrapper;)V

    .line 43
    return-void
.end method

.method private onDetachNative()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/koushikdutta/widgets/ListContentFragmentInternal;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 79
    .local v0, fa:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "content"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 80
    return-void
.end method


# virtual methods
.method getContentId()I
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/koushikdutta/widgets/ListContentFragmentInternal;->isPaged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    const v0, 0x7f0d010f

    .line 69
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0d0114

    goto :goto_0
.end method

.method protected getListFragmentResource()I
    .locals 1

    .prologue
    .line 211
    const v0, 0x7f040054

    return v0
.end method

.method protected getListHeaderResource()I
    .locals 1

    .prologue
    .line 47
    const v0, 0x7f040055

    return v0
.end method

.method protected getListItemResource()I
    .locals 1

    .prologue
    .line 206
    const v0, 0x7f04005c

    return v0
.end method

.method public isPaged()Z
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/koushikdutta/widgets/ListContentFragmentInternal;->mContent:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/view/View;)V
    .locals 2
    .parameter "savedInstanceState"
    .parameter "ret"

    .prologue
    .line 54
    const v0, 0x7f0d0114

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/koushikdutta/widgets/ListContentFragmentInternal;->mContent:Landroid/view/ViewGroup;

    .line 55
    const v0, 0x7f0d010f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/koushikdutta/widgets/ListContentFragmentInternal;->mContainer:Landroid/view/ViewGroup;

    .line 57
    invoke-virtual {p0}, Lcom/koushikdutta/widgets/ListContentFragmentInternal;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 59
    invoke-super {p0, p1, p2}, Lcom/koushikdutta/widgets/BetterListFragmentInternal;->onCreate(Landroid/os/Bundle;Landroid/view/View;)V

    .line 60
    return-void
.end method

.method public onDetach()V
    .locals 4

    .prologue
    .line 84
    invoke-super {p0}, Lcom/koushikdutta/widgets/BetterListFragmentInternal;->onDetach()V

    .line 86
    invoke-virtual {p0}, Lcom/koushikdutta/widgets/ListContentFragmentInternal;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/koushikdutta/widgets/ListContentFragmentInternal;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/koushikdutta/widgets/ListContentFragmentInternal;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    invoke-virtual {p0}, Lcom/koushikdutta/widgets/ListContentFragmentInternal;->isPaged()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/koushikdutta/widgets/ListContentFragmentInternal;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Landroid/support/v4/app/FragmentActivity;

    if-eqz v1, :cond_2

    .line 93
    invoke-virtual {p0}, Lcom/koushikdutta/widgets/ListContentFragmentInternal;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    .line 94
    .local v0, fa:Landroid/support/v4/app/FragmentActivity;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "content"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    goto :goto_0

    .line 97
    .end local v0           #fa:Landroid/support/v4/app/FragmentActivity;
    :cond_2
    invoke-direct {p0}, Lcom/koushikdutta/widgets/ListContentFragmentInternal;->onDetachNative()V

    goto :goto_0
.end method

.method public setContent(Lcom/koushikdutta/widgets/FragmentInterfaceWrapper;ZLjava/lang/String;)V
    .locals 8
    .parameter "content"
    .parameter "clearChoices"
    .parameter "breadcrumb"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/koushikdutta/widgets/ListContentFragmentInternal;->mCurrentContent:Lcom/koushikdutta/widgets/FragmentInterfaceWrapper;

    .line 150
    invoke-virtual {p0}, Lcom/koushikdutta/widgets/ListContentFragmentInternal;->getActivity()Landroid/app/Activity;

    move-result-object v6

    instance-of v6, v6, Landroid/support/v4/app/FragmentActivity;

    if-eqz v6, :cond_2

    .line 151
    iget-object v0, p0, Lcom/koushikdutta/widgets/ListContentFragmentInternal;->mCurrentContent:Lcom/koushikdutta/widgets/FragmentInterfaceWrapper;

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 152
    .local v0, f:Landroid/support/v4/app/Fragment;
    invoke-virtual {p0}, Lcom/koushikdutta/widgets/ListContentFragmentInternal;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/FragmentActivity;

    .line 153
    .local v1, fa:Landroid/support/v4/app/FragmentActivity;
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    .line 154
    .local v2, fm:Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    .line 155
    .local v3, ft:Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/koushikdutta/widgets/ListContentFragmentInternal;->isPaged()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/koushikdutta/widgets/ListContentFragmentInternal;->getFragment()Lcom/koushikdutta/widgets/FragmentInterfaceWrapper;

    move-result-object v6

    invoke-interface {v6}, Lcom/koushikdutta/widgets/FragmentInterfaceWrapper;->getView()Landroid/view/View;

    move-result-object v5

    .line 157
    .local v5, v:Landroid/view/View;
    invoke-static {v5}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 158
    const v6, 0x7f0d0116

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 159
    .local v4, l:Landroid/view/View;
    invoke-static {v4}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 160
    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 161
    new-instance v6, Lcom/koushikdutta/widgets/ListContentFragmentInternal$2;

    invoke-direct {v6, p0, v2}, Lcom/koushikdutta/widgets/ListContentFragmentInternal$2;-><init>(Lcom/koushikdutta/widgets/ListContentFragmentInternal;Landroid/support/v4/app/FragmentManager;)V

    invoke-virtual {v2, v6}, Landroid/support/v4/app/FragmentManager;->addOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V

    .line 187
    const-string v6, "content"

    const/4 v7, 0x1

    invoke-virtual {v2, v6, v7}, Landroid/support/v4/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 188
    invoke-virtual {v3, p3}, Landroid/support/v4/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/FragmentTransaction;

    .line 189
    invoke-virtual {v3, p3}, Landroid/support/v4/app/FragmentTransaction;->setBreadCrumbShortTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/FragmentTransaction;

    .line 190
    const-string v6, "content"

    invoke-virtual {v3, v6}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 192
    .end local v4           #l:Landroid/view/View;
    .end local v5           #v:Landroid/view/View;
    :cond_0
    invoke-virtual {p0}, Lcom/koushikdutta/widgets/ListContentFragmentInternal;->getContentId()I

    move-result v6

    const-string v7, "content"

    invoke-virtual {v3, v6, v0, v7}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 193
    const/16 v6, 0x1003

    invoke-virtual {v3, v6}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 194
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 200
    .end local v0           #f:Landroid/support/v4/app/Fragment;
    .end local v1           #fa:Landroid/support/v4/app/FragmentActivity;
    .end local v2           #fm:Landroid/support/v4/app/FragmentManager;
    .end local v3           #ft:Landroid/support/v4/app/FragmentTransaction;
    :goto_0
    if-eqz p2, :cond_1

    .line 201
    invoke-virtual {p0}, Lcom/koushikdutta/widgets/ListContentFragmentInternal;->getListView()Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ListView;->clearChoices()V

    .line 202
    :cond_1
    return-void

    .line 197
    :cond_2
    invoke-virtual {p0, p3}, Lcom/koushikdutta/widgets/ListContentFragmentInternal;->setContentNative(Ljava/lang/String;)V

    goto :goto_0
.end method

.method setContentNative(Ljava/lang/String;)V
    .locals 6
    .parameter "breadcrumb"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/koushikdutta/widgets/ListContentFragmentInternal;->mCurrentContent:Lcom/koushikdutta/widgets/FragmentInterfaceWrapper;

    check-cast v0, Landroid/app/Fragment;

    .line 105
    .local v0, f:Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/koushikdutta/widgets/ListContentFragmentInternal;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 106
    .local v1, fa:Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 108
    .local v2, fm:Landroid/app/FragmentManager;
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 109
    .local v3, ft:Landroid/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/koushikdutta/widgets/ListContentFragmentInternal;->isPaged()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 110
    iget-object v4, p0, Lcom/koushikdutta/widgets/ListContentFragmentInternal;->listener:Ljava/lang/Object;

    if-nez v4, :cond_0

    .line 111
    new-instance v4, Lcom/koushikdutta/widgets/ListContentFragmentInternal$1;

    invoke-direct {v4, p0, v2}, Lcom/koushikdutta/widgets/ListContentFragmentInternal$1;-><init>(Lcom/koushikdutta/widgets/ListContentFragmentInternal;Landroid/app/FragmentManager;)V

    invoke-virtual {v2, v4}, Landroid/app/FragmentManager;->addOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V

    .line 138
    :cond_0
    const-string v4, "content"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 139
    invoke-virtual {v3, p1}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    .line 140
    invoke-virtual {v3, p1}, Landroid/app/FragmentTransaction;->setBreadCrumbShortTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    .line 141
    const-string v4, "content"

    invoke-virtual {v3, v4}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 143
    :cond_1
    invoke-virtual {p0}, Lcom/koushikdutta/widgets/ListContentFragmentInternal;->getContentId()I

    move-result v4

    const-string v5, "content"

    invoke-virtual {v3, v4, v0, v5}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 144
    const/16 v4, 0x1003

    invoke-virtual {v3, v4}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 145
    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    .line 146
    return-void
.end method
