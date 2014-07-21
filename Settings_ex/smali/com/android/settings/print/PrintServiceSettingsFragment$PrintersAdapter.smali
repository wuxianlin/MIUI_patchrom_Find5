.class final Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;
.super Landroid/widget/BaseAdapter;
.source "PrintServiceSettingsFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/print/PrintServiceSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PrintersAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/BaseAdapter;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Ljava/util/List",
        "<",
        "Landroid/print/PrinterInfo;",
        ">;>;",
        "Landroid/widget/Filterable;"
    }
.end annotation


# instance fields
.field private final mFilteredPrinters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastSearchString:Ljava/lang/CharSequence;

.field private final mLock:Ljava/lang/Object;

.field private final mPrinters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;


# direct methods
.method private constructor <init>(Lcom/android/settings/print/PrintServiceSettingsFragment;)V
    .locals 1
    .parameter

    .prologue
    .line 515
    iput-object p1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 517
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->mLock:Ljava/lang/Object;

    .line 519
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->mPrinters:Ljava/util/List;

    .line 521
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->mFilteredPrinters:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/print/PrintServiceSettingsFragment;Lcom/android/settings/print/PrintServiceSettingsFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 515
    invoke-direct {p0, p1}, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;-><init>(Lcom/android/settings/print/PrintServiceSettingsFragment;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 515
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 515
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->mPrinters:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 515
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->mFilteredPrinters:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 515
    iput-object p1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->mLastSearchString:Ljava/lang/CharSequence;

    return-object p1
.end method


# virtual methods
.method public disable()V
    .locals 2

    .prologue
    .line 530
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-virtual {v0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 531
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->mPrinters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 532
    return-void
.end method

.method public enable()V
    .locals 3

    .prologue
    .line 526
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-virtual {v0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 527
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 589
    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 590
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->mFilteredPrinters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 591
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 540
    new-instance v0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter$1;-><init>(Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;)V

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 596
    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 597
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->mFilteredPrinters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 598
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 603
    int-to-long v0, p1

    return-wide v0
.end method

.method public getUnfilteredCount()I
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->mPrinters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 608
    if-nez p2, :cond_0

    .line 609
    iget-object v8, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-virtual {v8}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f0400ab

    const/4 v10, 0x0

    invoke-virtual {v8, v9, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 613
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/print/PrinterInfo;

    .line 614
    .local v3, printer:Landroid/print/PrinterInfo;
    invoke-virtual {v3}, Landroid/print/PrinterInfo;->getName()Ljava/lang/String;

    move-result-object v6

    .line 615
    .local v6, title:Ljava/lang/CharSequence;
    const/4 v4, 0x0

    .line 616
    .local v4, subtitle:Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 618
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v8, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;

    #calls: Lcom/android/settings/print/PrintServiceSettingsFragment;->getPackageManager()Landroid/content/pm/PackageManager;
    invoke-static {v8}, Lcom/android/settings/print/PrintServiceSettingsFragment;->access$1500(Lcom/android/settings/print/PrintServiceSettingsFragment;)Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v3}, Landroid/print/PrinterInfo;->getId()Landroid/print/PrinterId;

    move-result-object v9

    invoke-virtual {v9}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 620
    .local v2, packageInfo:Landroid/content/pm/PackageInfo;
    iget-object v8, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;

    #calls: Lcom/android/settings/print/PrintServiceSettingsFragment;->getPackageManager()Landroid/content/pm/PackageManager;
    invoke-static {v9}, Lcom/android/settings/print/PrintServiceSettingsFragment;->access$1600(Lcom/android/settings/print/PrintServiceSettingsFragment;)Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 621
    iget-object v8, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;

    #calls: Lcom/android/settings/print/PrintServiceSettingsFragment;->getPackageManager()Landroid/content/pm/PackageManager;
    invoke-static {v9}, Lcom/android/settings/print/PrintServiceSettingsFragment;->access$1700(Lcom/android/settings/print/PrintServiceSettingsFragment;)Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 626
    .end local v2           #packageInfo:Landroid/content/pm/PackageInfo;
    :goto_0
    const v8, 0x7f0d0039

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 627
    .local v7, titleView:Landroid/widget/TextView;
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 629
    const v8, 0x7f0d01aa

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 630
    .local v5, subtitleView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 631
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 632
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 638
    :goto_1
    const v8, 0x7f0d0038

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 639
    .local v1, iconView:Landroid/widget/ImageView;
    if-eqz v0, :cond_2

    .line 640
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 641
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 646
    :goto_2
    return-object p2

    .line 634
    .end local v1           #iconView:Landroid/widget/ImageView;
    :cond_1
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 635
    const/16 v8, 0x8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 643
    .restart local v1       #iconView:Landroid/widget/ImageView;
    :cond_2
    const/16 v8, 0x8

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 622
    .end local v1           #iconView:Landroid/widget/ImageView;
    .end local v5           #subtitleView:Landroid/widget/TextView;
    .end local v7           #titleView:Landroid/widget/TextView;
    :catch_0
    move-exception v8

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 651
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 2
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
            "Landroid/print/PrinterInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 656
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 657
    new-instance v0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersLoader;

    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-virtual {v1}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersLoader;-><init>(Landroid/content/Context;)V

    .line 659
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 515
    check-cast p2, Ljava/util/List;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterInfo;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 665
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Ljava/util/List<Landroid/print/PrinterInfo;>;>;"
    .local p2, printers:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrinterInfo;>;"
    iget-object v4, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 666
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->mPrinters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 667
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    .line 668
    .local v2, printerCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 669
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/print/PrinterInfo;

    .line 670
    .local v1, printer:Landroid/print/PrinterInfo;
    invoke-virtual {v1}, Landroid/print/PrinterInfo;->getId()Landroid/print/PrinterId;

    move-result-object v3

    invoke-virtual {v3}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;

    #getter for: Lcom/android/settings/print/PrintServiceSettingsFragment;->mComponentName:Landroid/content/ComponentName;
    invoke-static {v5}, Lcom/android/settings/print/PrintServiceSettingsFragment;->access$1800(Lcom/android/settings/print/PrintServiceSettingsFragment;)Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 671
    iget-object v3, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->mPrinters:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 668
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 674
    .end local v1           #printer:Landroid/print/PrinterInfo;
    :cond_1
    iget-object v3, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->mFilteredPrinters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 675
    iget-object v3, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->mFilteredPrinters:Ljava/util/List;

    iget-object v5, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->mPrinters:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 676
    iget-object v3, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->mLastSearchString:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 677
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->mLastSearchString:Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 679
    :cond_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 680
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->notifyDataSetChanged()V

    .line 681
    return-void

    .line 679
    .end local v0           #i:I
    .end local v2           #printerCount:I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
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
            "Landroid/print/PrinterInfo;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 685
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Ljava/util/List<Landroid/print/PrinterInfo;>;>;"
    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 686
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->mPrinters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 687
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->mFilteredPrinters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 688
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->mLastSearchString:Ljava/lang/CharSequence;

    .line 689
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 690
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->notifyDataSetInvalidated()V

    .line 691
    return-void

    .line 689
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
