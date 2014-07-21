.class Lcom/android/settings/profiles/AppGroupConfig$PackageAdaptor;
.super Landroid/widget/BaseAdapter;
.source "AppGroupConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/profiles/AppGroupConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageAdaptor"
.end annotation


# instance fields
.field protected mInstalledPackageInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mInstalledPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/profiles/AppGroupConfig$PackageItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/profiles/AppGroupConfig;


# direct methods
.method public constructor <init>(Lcom/android/settings/profiles/AppGroupConfig;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 379
    .local p2, installedPackagesInfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    iput-object p1, p0, Lcom/android/settings/profiles/AppGroupConfig$PackageAdaptor;->this$0:Lcom/android/settings/profiles/AppGroupConfig;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 345
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/profiles/AppGroupConfig$PackageAdaptor;->mInstalledPackages:Ljava/util/List;

    .line 380
    iput-object p2, p0, Lcom/android/settings/profiles/AppGroupConfig$PackageAdaptor;->mInstalledPackageInfo:Ljava/util/List;

    .line 381
    return-void
.end method

.method private reloadList()V
    .locals 3

    .prologue
    .line 348
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 349
    .local v0, handler:Landroid/os/Handler;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/settings/profiles/AppGroupConfig$PackageAdaptor$1;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/profiles/AppGroupConfig$PackageAdaptor$1;-><init>(Lcom/android/settings/profiles/AppGroupConfig$PackageAdaptor;Landroid/os/Handler;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 377
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/settings/profiles/AppGroupConfig$PackageAdaptor;->mInstalledPackages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/settings/profiles/AppGroupConfig$PackageItem;
    .locals 1
    .parameter "position"

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/settings/profiles/AppGroupConfig$PackageAdaptor;->mInstalledPackages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/profiles/AppGroupConfig$PackageItem;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 341
    invoke-virtual {p0, p1}, Lcom/android/settings/profiles/AppGroupConfig$PackageAdaptor;->getItem(I)Lcom/android/settings/profiles/AppGroupConfig$PackageItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/settings/profiles/AppGroupConfig$PackageAdaptor;->mInstalledPackages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/profiles/AppGroupConfig$PackageItem;

    iget-object v0, v0, Lcom/android/settings/profiles/AppGroupConfig$PackageItem;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 405
    if-eqz p2, :cond_3

    .line 406
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/profiles/AppGroupConfig$ViewHolder;

    .line 417
    .local v1, holder:Lcom/android/settings/profiles/AppGroupConfig$ViewHolder;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/profiles/AppGroupConfig$PackageAdaptor;->getItem(I)Lcom/android/settings/profiles/AppGroupConfig$PackageItem;

    move-result-object v0

    .line 419
    .local v0, applicationInfo:Lcom/android/settings/profiles/AppGroupConfig$PackageItem;
    iget-object v4, v1, Lcom/android/settings/profiles/AppGroupConfig$ViewHolder;->title:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 420
    iget-object v4, v1, Lcom/android/settings/profiles/AppGroupConfig$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/android/settings/profiles/AppGroupConfig$PackageItem;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 422
    :cond_0
    iget-object v4, v1, Lcom/android/settings/profiles/AppGroupConfig$ViewHolder;->summary:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    .line 423
    iget-object v4, v1, Lcom/android/settings/profiles/AppGroupConfig$ViewHolder;->summary:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 425
    :cond_1
    iget-object v4, v1, Lcom/android/settings/profiles/AppGroupConfig$ViewHolder;->icon:Landroid/widget/ImageView;

    if-eqz v4, :cond_2

    .line 426
    iget-object v3, v0, Lcom/android/settings/profiles/AppGroupConfig$PackageItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 427
    .local v3, loadIcon:Landroid/graphics/drawable/Drawable;
    iget-object v4, v1, Lcom/android/settings/profiles/AppGroupConfig$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 429
    .end local v3           #loadIcon:Landroid/graphics/drawable/Drawable;
    :cond_2
    return-object p2

    .line 408
    .end local v0           #applicationInfo:Lcom/android/settings/profiles/AppGroupConfig$PackageItem;
    .end local v1           #holder:Lcom/android/settings/profiles/AppGroupConfig$ViewHolder;
    :cond_3
    iget-object v4, p0, Lcom/android/settings/profiles/AppGroupConfig$PackageAdaptor;->this$0:Lcom/android/settings/profiles/AppGroupConfig;

    const-string v5, "layout_inflater"

    #calls: Lcom/android/settings/profiles/AppGroupConfig;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v4, v5}, Lcom/android/settings/profiles/AppGroupConfig;->access$500(Lcom/android/settings/profiles/AppGroupConfig;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 409
    .local v2, layoutInflater:Landroid/view/LayoutInflater;
    const v4, 0x7f040095

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 410
    new-instance v1, Lcom/android/settings/profiles/AppGroupConfig$ViewHolder;

    invoke-direct {v1}, Lcom/android/settings/profiles/AppGroupConfig$ViewHolder;-><init>()V

    .line 411
    .restart local v1       #holder:Lcom/android/settings/profiles/AppGroupConfig$ViewHolder;
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 412
    const v4, 0x1020016

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/android/settings/profiles/AppGroupConfig$ViewHolder;->title:Landroid/widget/TextView;

    .line 413
    const v4, 0x1020010

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/android/settings/profiles/AppGroupConfig$ViewHolder;->summary:Landroid/widget/TextView;

    .line 415
    const v4, 0x7f0d0038

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v1, Lcom/android/settings/profiles/AppGroupConfig$ViewHolder;->icon:Landroid/widget/ImageView;

    goto :goto_0
.end method

.method public update()V
    .locals 0

    .prologue
    .line 384
    invoke-direct {p0}, Lcom/android/settings/profiles/AppGroupConfig$PackageAdaptor;->reloadList()V

    .line 385
    return-void
.end method
