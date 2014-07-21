.class public Lcom/koushikdutta/superuser/AboutFragment;
.super Lcom/koushikdutta/widgets/BetterListFragment;
.source "AboutFragment.java"


# instance fields
.field mWrapper:Landroid/view/ContextThemeWrapper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/koushikdutta/widgets/BetterListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 4

    .prologue
    .line 21
    iget-object v1, p0, Lcom/koushikdutta/superuser/AboutFragment;->mWrapper:Landroid/view/ContextThemeWrapper;

    if-eqz v1, :cond_0

    .line 22
    iget-object v1, p0, Lcom/koushikdutta/superuser/AboutFragment;->mWrapper:Landroid/view/ContextThemeWrapper;

    .line 26
    :goto_0
    return-object v1

    .line 23
    :cond_0
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 24
    .local v0, value:Landroid/util/TypedValue;
    invoke-super {p0}, Lcom/koushikdutta/widgets/BetterListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x7f01000b

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 25
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-super {p0}, Lcom/koushikdutta/widgets/BetterListFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/koushikdutta/superuser/AboutFragment;->mWrapper:Landroid/view/ContextThemeWrapper;

    .line 26
    iget-object v1, p0, Lcom/koushikdutta/superuser/AboutFragment;->mWrapper:Landroid/view/ContextThemeWrapper;

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/view/View;)V
    .locals 14
    .parameter "savedInstanceState"
    .parameter "view"

    .prologue
    .line 31
    invoke-super/range {p0 .. p2}, Lcom/koushikdutta/widgets/BetterListFragment;->onCreate(Landroid/os/Bundle;Landroid/view/View;)V

    .line 33
    invoke-virtual {p0}, Lcom/koushikdutta/superuser/AboutFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 34
    .local v12, manager:Landroid/content/pm/PackageManager;
    const-string v4, "unknown"

    .line 36
    .local v4, version:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/koushikdutta/superuser/AboutFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v12, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    .line 37
    .local v11, info:Landroid/content/pm/PackageInfo;
    iget-object v4, v11, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .end local v11           #info:Landroid/content/pm/PackageInfo;
    :goto_0
    const v6, 0x7f08003f

    new-instance v0, Lcom/koushikdutta/superuser/AboutFragment$1;

    invoke-virtual {p0}, Lcom/koushikdutta/superuser/AboutFragment;->getInternal()Lcom/koushikdutta/widgets/FragmentInterface;

    move-result-object v2

    check-cast v2, Lcom/koushikdutta/widgets/BetterListFragmentInternal;

    const/high16 v1, 0x7f08

    invoke-virtual {p0, v1}, Lcom/koushikdutta/superuser/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f020076

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/superuser/AboutFragment$1;-><init>(Lcom/koushikdutta/superuser/AboutFragment;Lcom/koushikdutta/widgets/BetterListFragmentInternal;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v6, v0}, Lcom/koushikdutta/superuser/AboutFragment;->addItem(ILcom/koushikdutta/widgets/ListItem;)Lcom/koushikdutta/widgets/ListItem;

    .line 52
    const v0, 0x7f08003f

    new-instance v5, Lcom/koushikdutta/superuser/AboutFragment$2;

    invoke-virtual {p0}, Lcom/koushikdutta/superuser/AboutFragment;->getInternal()Lcom/koushikdutta/widgets/FragmentInterface;

    move-result-object v7

    check-cast v7, Lcom/koushikdutta/widgets/BetterListFragmentInternal;

    const-string v8, "Koushik Dutta"

    const-string v9, "@koush"

    const v10, 0x7f0200fd

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Lcom/koushikdutta/superuser/AboutFragment$2;-><init>(Lcom/koushikdutta/superuser/AboutFragment;Lcom/koushikdutta/widgets/BetterListFragmentInternal;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v0, v5}, Lcom/koushikdutta/superuser/AboutFragment;->addItem(ILcom/koushikdutta/widgets/ListItem;)Lcom/koushikdutta/widgets/ListItem;

    .line 69
    const-string v13, "http://github.com/koush/Superuser"

    .line 70
    .local v13, uri:Ljava/lang/String;
    const v0, 0x7f08003f

    new-instance v5, Lcom/koushikdutta/superuser/AboutFragment$3;

    invoke-virtual {p0}, Lcom/koushikdutta/superuser/AboutFragment;->getInternal()Lcom/koushikdutta/widgets/FragmentInterface;

    move-result-object v7

    check-cast v7, Lcom/koushikdutta/widgets/BetterListFragmentInternal;

    const-string v8, "Github"

    const-string v9, "http://github.com/koush/Superuser"

    const v10, 0x7f020042

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Lcom/koushikdutta/superuser/AboutFragment$3;-><init>(Lcom/koushikdutta/superuser/AboutFragment;Lcom/koushikdutta/widgets/BetterListFragmentInternal;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v0, v5}, Lcom/koushikdutta/superuser/AboutFragment;->addItem(ILcom/koushikdutta/widgets/ListItem;)Lcom/koushikdutta/widgets/ListItem;

    .line 81
    const v0, 0x7f080040

    new-instance v5, Lcom/koushikdutta/superuser/AboutFragment$4;

    invoke-virtual {p0}, Lcom/koushikdutta/superuser/AboutFragment;->getInternal()Lcom/koushikdutta/widgets/FragmentInterface;

    move-result-object v7

    check-cast v7, Lcom/koushikdutta/widgets/BetterListFragmentInternal;

    const-string v8, "ROM Manager"

    const-string v9, "The ultimate backup, restore, and ROM installation tool"

    const v10, 0x7f020027

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Lcom/koushikdutta/superuser/AboutFragment$4;-><init>(Lcom/koushikdutta/superuser/AboutFragment;Lcom/koushikdutta/widgets/BetterListFragmentInternal;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v0, v5}, Lcom/koushikdutta/superuser/AboutFragment;->addItem(ILcom/koushikdutta/widgets/ListItem;)Lcom/koushikdutta/widgets/ListItem;

    .line 90
    const v0, 0x7f080040

    new-instance v5, Lcom/koushikdutta/superuser/AboutFragment$5;

    invoke-virtual {p0}, Lcom/koushikdutta/superuser/AboutFragment;->getInternal()Lcom/koushikdutta/widgets/FragmentInterface;

    move-result-object v7

    check-cast v7, Lcom/koushikdutta/widgets/BetterListFragmentInternal;

    const-string v8, "Helium"

    const-string v9, "Android\'s missing backup solution"

    const v10, 0x7f020026

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Lcom/koushikdutta/superuser/AboutFragment$5;-><init>(Lcom/koushikdutta/superuser/AboutFragment;Lcom/koushikdutta/widgets/BetterListFragmentInternal;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v0, v5}, Lcom/koushikdutta/superuser/AboutFragment;->addItem(ILcom/koushikdutta/widgets/ListItem;)Lcom/koushikdutta/widgets/ListItem;

    .line 99
    const v0, 0x7f080040

    new-instance v5, Lcom/koushikdutta/superuser/AboutFragment$6;

    invoke-virtual {p0}, Lcom/koushikdutta/superuser/AboutFragment;->getInternal()Lcom/koushikdutta/widgets/FragmentInterface;

    move-result-object v7

    check-cast v7, Lcom/koushikdutta/widgets/BetterListFragmentInternal;

    const-string v8, "DeskSMS"

    const-string v9, "Seamlessly text message from your email, browser, or instant messenger"

    const v10, 0x7f02003b

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Lcom/koushikdutta/superuser/AboutFragment$6;-><init>(Lcom/koushikdutta/superuser/AboutFragment;Lcom/koushikdutta/widgets/BetterListFragmentInternal;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v0, v5}, Lcom/koushikdutta/superuser/AboutFragment;->addItem(ILcom/koushikdutta/widgets/ListItem;)Lcom/koushikdutta/widgets/ListItem;

    .line 108
    const v0, 0x7f080040

    new-instance v5, Lcom/koushikdutta/superuser/AboutFragment$7;

    invoke-virtual {p0}, Lcom/koushikdutta/superuser/AboutFragment;->getInternal()Lcom/koushikdutta/widgets/FragmentInterface;

    move-result-object v7

    check-cast v7, Lcom/koushikdutta/widgets/BetterListFragmentInternal;

    const-string v8, "Tether"

    const-string v9, "Use your phone\'s web connection on a laptop or PC"

    const v10, 0x7f020131

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Lcom/koushikdutta/superuser/AboutFragment$7;-><init>(Lcom/koushikdutta/superuser/AboutFragment;Lcom/koushikdutta/widgets/BetterListFragmentInternal;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v0, v5}, Lcom/koushikdutta/superuser/AboutFragment;->addItem(ILcom/koushikdutta/widgets/ListItem;)Lcom/koushikdutta/widgets/ListItem;

    .line 117
    return-void

    .line 39
    .end local v13           #uri:Ljava/lang/String;
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method
