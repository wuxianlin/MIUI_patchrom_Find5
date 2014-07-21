.class public Lcom/android/settings_ex/applications/AppOpsCategory;
.super Landroid/app/ListFragment;
.source "AppOpsCategory.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/applications/AppOpsCategory$AppListAdapter;,
        Lcom/android/settings_ex/applications/AppOpsCategory$AppListLoader;,
        Lcom/android/settings_ex/applications/AppOpsCategory$PackageIntentReceiver;,
        Lcom/android/settings_ex/applications/AppOpsCategory$InterestingConfigChanges;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/ListFragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/android/settings_ex/applications/AppOpsState$AppOpEntry;",
        ">;>;"
    }
.end annotation


# instance fields
.field mAdapter:Lcom/android/settings_ex/applications/AppOpsCategory$AppListAdapter;

.field mCurrentPkgName:Ljava/lang/String;

.field mState:Lcom/android/settings_ex/applications/AppOpsState;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 58
    return-void
.end method

.method public constructor <init>(Lcom/android/settings_ex/applications/AppOpsState$OpsTemplate;)V
    .locals 2
    .parameter "template"

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 61
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 62
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "template"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 63
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/AppOpsCategory;->setArguments(Landroid/os/Bundle;)V

    .line 64
    return-void
.end method

.method private startApplicationDetailsActivity()V
    .locals 7

    .prologue
    .line 333
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 334
    const-string v0, "package"

    iget-object v1, p0, Lcom/android/settings_ex/applications/AppOpsCategory;->mCurrentPkgName:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/AppOpsCategory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 337
    const-class v1, Lcom/android/settings_ex/applications/AppOpsDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f08086c

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 339
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 310
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 314
    const-string v0, "No applications"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/AppOpsCategory;->setEmptyText(Ljava/lang/CharSequence;)V

    .line 317
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/AppOpsCategory;->setHasOptionsMenu(Z)V

    .line 320
    new-instance v0, Lcom/android/settings_ex/applications/AppOpsCategory$AppListAdapter;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/AppOpsCategory;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/applications/AppOpsCategory;->mState:Lcom/android/settings_ex/applications/AppOpsState;

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/applications/AppOpsCategory$AppListAdapter;-><init>(Landroid/content/Context;Lcom/android/settings_ex/applications/AppOpsState;)V

    iput-object v0, p0, Lcom/android/settings_ex/applications/AppOpsCategory;->mAdapter:Lcom/android/settings_ex/applications/AppOpsCategory$AppListAdapter;

    .line 321
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppOpsCategory;->mAdapter:Lcom/android/settings_ex/applications/AppOpsCategory$AppListAdapter;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/AppOpsCategory;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 324
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/applications/AppOpsCategory;->setListShown(Z)V

    .line 327
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/AppOpsCategory;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 328
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 305
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 306
    new-instance v0, Lcom/android/settings_ex/applications/AppOpsState;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/AppOpsCategory;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings_ex/applications/AppOpsState;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/applications/AppOpsCategory;->mState:Lcom/android/settings_ex/applications/AppOpsState;

    .line 307
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 5
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/applications/AppOpsState$AppOpEntry;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/AppOpsCategory;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 351
    .local v0, fargs:Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 352
    .local v1, template:Lcom/android/settings_ex/applications/AppOpsState$OpsTemplate;
    if-eqz v0, :cond_0

    .line 353
    const-string v2, "template"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .end local v1           #template:Lcom/android/settings_ex/applications/AppOpsState$OpsTemplate;
    check-cast v1, Lcom/android/settings_ex/applications/AppOpsState$OpsTemplate;

    .line 355
    .restart local v1       #template:Lcom/android/settings_ex/applications/AppOpsState$OpsTemplate;
    :cond_0
    new-instance v2, Lcom/android/settings_ex/applications/AppOpsCategory$AppListLoader;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/AppOpsCategory;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/applications/AppOpsCategory;->mState:Lcom/android/settings_ex/applications/AppOpsState;

    invoke-direct {v2, v3, v4, v1}, Lcom/android/settings_ex/applications/AppOpsCategory$AppListLoader;-><init>(Landroid/content/Context;Lcom/android/settings_ex/applications/AppOpsState;Lcom/android/settings_ex/applications/AppOpsState$OpsTemplate;)V

    return-object v2
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 342
    iget-object v1, p0, Lcom/android/settings_ex/applications/AppOpsCategory;->mAdapter:Lcom/android/settings_ex/applications/AppOpsCategory$AppListAdapter;

    invoke-virtual {v1, p3}, Lcom/android/settings_ex/applications/AppOpsCategory$AppListAdapter;->getItem(I)Lcom/android/settings_ex/applications/AppOpsState$AppOpEntry;

    move-result-object v0

    .line 343
    .local v0, entry:Lcom/android/settings_ex/applications/AppOpsState$AppOpEntry;
    if-eqz v0, :cond_0

    .line 344
    invoke-virtual {v0}, Lcom/android/settings_ex/applications/AppOpsState$AppOpEntry;->getAppEntry()Lcom/android/settings_ex/applications/AppOpsState$AppEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings_ex/applications/AppOpsState$AppEntry;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings_ex/applications/AppOpsCategory;->mCurrentPkgName:Ljava/lang/String;

    .line 345
    invoke-direct {p0}, Lcom/android/settings_ex/applications/AppOpsCategory;->startApplicationDetailsActivity()V

    .line 347
    :cond_0
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    check-cast p2, Ljava/util/List;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ex/applications/AppOpsCategory;->onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/applications/AppOpsState$AppOpEntry;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/applications/AppOpsState$AppOpEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Ljava/util/List<Lcom/android/settings_ex/applications/AppOpsState$AppOpEntry;>;>;"
    .local p2, data:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings_ex/applications/AppOpsState$AppOpEntry;>;"
    const/4 v1, 0x1

    .line 360
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppOpsCategory;->mAdapter:Lcom/android/settings_ex/applications/AppOpsCategory$AppListAdapter;

    invoke-virtual {v0, p2}, Lcom/android/settings_ex/applications/AppOpsCategory$AppListAdapter;->setData(Ljava/util/List;)V

    .line 363
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/AppOpsCategory;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/applications/AppOpsCategory;->setListShown(Z)V

    .line 368
    :goto_0
    return-void

    .line 366
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/applications/AppOpsCategory;->setListShownNoAnimation(Z)V

    goto :goto_0
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/applications/AppOpsState$AppOpEntry;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 372
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Ljava/util/List<Lcom/android/settings_ex/applications/AppOpsState$AppOpEntry;>;>;"
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppOpsCategory;->mAdapter:Lcom/android/settings_ex/applications/AppOpsCategory$AppListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/applications/AppOpsCategory$AppListAdapter;->setData(Ljava/util/List;)V

    .line 373
    return-void
.end method
