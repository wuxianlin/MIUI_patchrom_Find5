.class public Lcom/koushikdutta/superuser/PolicyFragmentInternal;
.super Lcom/koushikdutta/widgets/ListContentFragmentInternal;
.source "PolicyFragmentInternal.java"


# instance fields
.field mContent:Lcom/koushikdutta/widgets/FragmentInterfaceWrapper;

.field mWrapper:Landroid/view/ContextThemeWrapper;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/widgets/FragmentInterfaceWrapper;)V
    .locals 0
    .parameter "fragment"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/koushikdutta/widgets/ListContentFragmentInternal;-><init>(Lcom/koushikdutta/widgets/FragmentInterfaceWrapper;)V

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/koushikdutta/superuser/PolicyFragmentInternal;Lcom/koushikdutta/superuser/db/UidPolicy;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/koushikdutta/superuser/PolicyFragmentInternal;->showErrorDialog(Lcom/koushikdutta/superuser/db/UidPolicy;I)V

    return-void
.end method

.method private showErrorDialog(Lcom/koushikdutta/superuser/db/UidPolicy;I)V
    .locals 5
    .parameter "policy"
    .parameter "resource"

    .prologue
    .line 217
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/koushikdutta/superuser/PolicyFragmentInternal;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p1, Lcom/koushikdutta/superuser/db/UidPolicy;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/koushikdutta/superuser/PolicyFragmentInternal;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p1, Lcom/koushikdutta/superuser/db/UidPolicy;->packageName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/koushikdutta/superuser/Helper;->loadPackageIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/koushikdutta/superuser/PolicyFragmentInternal;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/koushikdutta/superuser/PolicyFragmentInternal$3;

    invoke-direct {v4, p0}, Lcom/koushikdutta/superuser/PolicyFragmentInternal$3;-><init>(Lcom/koushikdutta/superuser/PolicyFragmentInternal;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 227
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 228
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 229
    return-void
.end method


# virtual methods
.method addPolicy(Lcom/koushikdutta/superuser/db/UidPolicy;I)V
    .locals 10
    .parameter "up"
    .parameter "last"

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/koushikdutta/superuser/PolicyFragmentInternal;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getLongDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v6

    .line 131
    .local v6, df:Ljava/text/DateFormat;
    if-nez p2, :cond_0

    .line 132
    const/4 v4, 0x0

    .line 135
    .local v4, date:Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Lcom/koushikdutta/superuser/db/UidPolicy;->getPolicyResource()I

    move-result v9

    new-instance v0, Lcom/koushikdutta/superuser/PolicyFragmentInternal$1;

    iget-object v3, p1, Lcom/koushikdutta/superuser/db/UidPolicy;->name:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/superuser/PolicyFragmentInternal$1;-><init>(Lcom/koushikdutta/superuser/PolicyFragmentInternal;Lcom/koushikdutta/widgets/BetterListFragmentInternal;Ljava/lang/String;Ljava/lang/String;Lcom/koushikdutta/superuser/db/UidPolicy;)V

    invoke-virtual {p0, v9, v0}, Lcom/koushikdutta/superuser/PolicyFragmentInternal;->addItem(ILcom/koushikdutta/widgets/ListItem;)Lcom/koushikdutta/widgets/ListItem;

    move-result-object v8

    .line 148
    .local v8, li:Lcom/koushikdutta/widgets/ListItem;
    invoke-virtual {p0}, Lcom/koushikdutta/superuser/PolicyFragmentInternal;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p1, Lcom/koushikdutta/superuser/db/UidPolicy;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/koushikdutta/superuser/Helper;->loadPackageIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 149
    .local v7, icon:Landroid/graphics/drawable/Drawable;
    if-nez v7, :cond_1

    .line 150
    const v0, 0x7f020076

    invoke-virtual {v8, v0}, Lcom/koushikdutta/widgets/ListItem;->setIcon(I)Lcom/koushikdutta/widgets/ListItem;

    .line 153
    :goto_1
    return-void

    .line 134
    .end local v4           #date:Ljava/lang/String;
    .end local v7           #icon:Landroid/graphics/drawable/Drawable;
    .end local v8           #li:Lcom/koushikdutta/widgets/ListItem;
    :cond_0
    invoke-virtual {p0, p2}, Lcom/koushikdutta/superuser/PolicyFragmentInternal;->getLastDate(I)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #date:Ljava/lang/String;
    goto :goto_0

    .line 152
    .restart local v7       #icon:Landroid/graphics/drawable/Drawable;
    .restart local v8       #li:Lcom/koushikdutta/widgets/ListItem;
    :cond_1
    invoke-virtual {v8, v7}, Lcom/koushikdutta/widgets/ListItem;->setDrawable(Landroid/graphics/drawable/Drawable;)Lcom/koushikdutta/widgets/ListItem;

    goto :goto_1
.end method

.method protected createLogNativeFragment()Lcom/koushikdutta/superuser/LogNativeFragment;
    .locals 1

    .prologue
    .line 235
    new-instance v0, Lcom/koushikdutta/superuser/LogNativeFragment;

    invoke-direct {v0}, Lcom/koushikdutta/superuser/LogNativeFragment;-><init>()V

    return-object v0
.end method

.method protected createSettingsNativeFragment()Lcom/koushikdutta/superuser/SettingsNativeFragment;
    .locals 1

    .prologue
    .line 239
    new-instance v0, Lcom/koushikdutta/superuser/SettingsNativeFragment;

    invoke-direct {v0}, Lcom/koushikdutta/superuser/SettingsNativeFragment;-><init>()V

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 4

    .prologue
    .line 65
    iget-object v1, p0, Lcom/koushikdutta/superuser/PolicyFragmentInternal;->mWrapper:Landroid/view/ContextThemeWrapper;

    if-eqz v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/koushikdutta/superuser/PolicyFragmentInternal;->mWrapper:Landroid/view/ContextThemeWrapper;

    .line 70
    :goto_0
    return-object v1

    .line 67
    :cond_0
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 68
    .local v0, value:Landroid/util/TypedValue;
    invoke-super {p0}, Lcom/koushikdutta/widgets/ListContentFragmentInternal;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x7f01000b

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 69
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-super {p0}, Lcom/koushikdutta/widgets/ListContentFragmentInternal;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/koushikdutta/superuser/PolicyFragmentInternal;->mWrapper:Landroid/view/ContextThemeWrapper;

    .line 70
    iget-object v1, p0, Lcom/koushikdutta/superuser/PolicyFragmentInternal;->mWrapper:Landroid/view/ContextThemeWrapper;

    goto :goto_0
.end method

.method public getLastDate(I)Ljava/util/Date;
    .locals 5
    .parameter "last"

    .prologue
    .line 125
    new-instance v0, Ljava/util/Date;

    int-to-long v1, p1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method load()V
    .locals 8

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/koushikdutta/superuser/PolicyFragmentInternal;->clear()V

    .line 80
    invoke-virtual {p0}, Lcom/koushikdutta/superuser/PolicyFragmentInternal;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/koushikdutta/superuser/db/SuDatabaseHelper;->getPolicies(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v4

    .line 82
    .local v4, policies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/koushikdutta/superuser/db/UidPolicy;>;"
    new-instance v6, Lcom/koushikdutta/superuser/db/SuperuserDatabaseHelper;

    invoke-virtual {p0}, Lcom/koushikdutta/superuser/PolicyFragmentInternal;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/koushikdutta/superuser/db/SuperuserDatabaseHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Lcom/koushikdutta/superuser/db/SuperuserDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 84
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/koushikdutta/superuser/db/UidPolicy;

    .line 85
    .local v5, up:Lcom/koushikdutta/superuser/db/UidPolicy;
    const/4 v2, 0x0

    .line 86
    .local v2, last:I
    const/4 v6, 0x1

    invoke-static {v0, v5, v6}, Lcom/koushikdutta/superuser/db/SuperuserDatabaseHelper;->getLogs(Landroid/database/sqlite/SQLiteDatabase;Lcom/koushikdutta/superuser/db/UidPolicy;I)Ljava/util/ArrayList;

    move-result-object v3

    .line 87
    .local v3, logs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/koushikdutta/superuser/db/LogEntry;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 88
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/koushikdutta/superuser/db/LogEntry;

    iget v2, v6, Lcom/koushikdutta/superuser/db/LogEntry;->date:I

    .line 89
    :cond_0
    invoke-virtual {p0, v5, v2}, Lcom/koushikdutta/superuser/PolicyFragmentInternal;->addPolicy(Lcom/koushikdutta/superuser/db/UidPolicy;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 93
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #last:I
    .end local v3           #logs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/koushikdutta/superuser/db/LogEntry;>;"
    .end local v5           #up:Lcom/koushikdutta/superuser/db/UidPolicy;
    :catchall_0
    move-exception v6

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v6

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 95
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 232
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/view/View;)V
    .locals 3
    .parameter "savedInstanceState"
    .parameter "view"

    .prologue
    .line 107
    invoke-super {p0, p1, p2}, Lcom/koushikdutta/widgets/ListContentFragmentInternal;->onCreate(Landroid/os/Bundle;Landroid/view/View;)V

    .line 109
    invoke-virtual {p0}, Lcom/koushikdutta/superuser/PolicyFragmentInternal;->getFragment()Lcom/koushikdutta/widgets/FragmentInterfaceWrapper;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/koushikdutta/widgets/FragmentInterfaceWrapper;->setHasOptionsMenu(Z)V

    .line 111
    const v1, 0x7f080014

    invoke-virtual {p0, v1}, Lcom/koushikdutta/superuser/PolicyFragmentInternal;->setEmpty(I)V

    .line 113
    invoke-virtual {p0}, Lcom/koushikdutta/superuser/PolicyFragmentInternal;->load()V

    .line 115
    const-string v1, "com.koushikdutta.superuser"

    invoke-virtual {p0}, Lcom/koushikdutta/superuser/PolicyFragmentInternal;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    const v1, 0x7f0d0110

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 117
    .local v0, watermark:Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 118
    const v1, 0x7f020027

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 120
    .end local v0           #watermark:Landroid/widget/ImageView;
    :cond_0
    invoke-virtual {p0}, Lcom/koushikdutta/superuser/PolicyFragmentInternal;->isPaged()Z

    move-result v1

    if-nez v1, :cond_1

    .line 121
    invoke-virtual {p0}, Lcom/koushikdutta/superuser/PolicyFragmentInternal;->showAllLogs()V

    .line 122
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 279
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 281
    invoke-super {p0, p1, p2}, Lcom/koushikdutta/widgets/ListContentFragmentInternal;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 282
    new-instance v1, Landroid/view/MenuInflater;

    invoke-virtual {p0}, Lcom/koushikdutta/superuser/PolicyFragmentInternal;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    .line 283
    .local v1, mi:Landroid/view/MenuInflater;
    const v3, 0x7f100005

    invoke-virtual {v1, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 284
    const v3, 0x7f0d02ec

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 285
    .local v0, log:Landroid/view/MenuItem;
    new-instance v3, Lcom/koushikdutta/superuser/PolicyFragmentInternal$4;

    invoke-direct {v3, p0}, Lcom/koushikdutta/superuser/PolicyFragmentInternal$4;-><init>(Lcom/koushikdutta/superuser/PolicyFragmentInternal;)V

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 293
    const v3, 0x7f0d02ed

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 294
    .local v2, settings:Landroid/view/MenuItem;
    new-instance v3, Lcom/koushikdutta/superuser/PolicyFragmentInternal$5;

    invoke-direct {v3, p0}, Lcom/koushikdutta/superuser/PolicyFragmentInternal$5;-><init>(Lcom/koushikdutta/superuser/PolicyFragmentInternal;)V

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 310
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 98
    invoke-super {p0}, Lcom/koushikdutta/widgets/ListContentFragmentInternal;->onResume()V

    .line 99
    invoke-virtual {p0}, Lcom/koushikdutta/superuser/PolicyFragmentInternal;->load()V

    .line 100
    return-void
.end method

.method setContent(Lcom/koushikdutta/widgets/ListItem;Lcom/koushikdutta/superuser/db/UidPolicy;)V
    .locals 4
    .parameter "li"
    .parameter "up"

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/koushikdutta/superuser/PolicyFragmentInternal;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Landroid/support/v4/app/FragmentActivity;

    if-eqz v1, :cond_0

    .line 258
    new-instance v0, Lcom/koushikdutta/superuser/LogFragment;

    invoke-direct {v0}, Lcom/koushikdutta/superuser/LogFragment;-><init>()V

    .line 259
    .local v0, l:Lcom/koushikdutta/superuser/LogFragment;
    invoke-virtual {v0}, Lcom/koushikdutta/superuser/LogFragment;->getInternal()Lcom/koushikdutta/widgets/FragmentInterface;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/superuser/LogFragmentInternal;

    invoke-virtual {v1, p2}, Lcom/koushikdutta/superuser/LogFragmentInternal;->setUidPolicy(Lcom/koushikdutta/superuser/db/UidPolicy;)Lcom/koushikdutta/superuser/LogFragmentInternal;

    .line 260
    invoke-virtual {v0}, Lcom/koushikdutta/superuser/LogFragment;->getInternal()Lcom/koushikdutta/widgets/FragmentInterface;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/superuser/LogFragmentInternal;

    invoke-virtual {p0}, Lcom/koushikdutta/superuser/PolicyFragmentInternal;->getFragment()Lcom/koushikdutta/widgets/FragmentInterfaceWrapper;

    move-result-object v2

    invoke-interface {v2}, Lcom/koushikdutta/widgets/FragmentInterfaceWrapper;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/koushikdutta/superuser/LogFragmentInternal;->setListContentId(I)V

    .line 261
    iput-object v0, p0, Lcom/koushikdutta/superuser/PolicyFragmentInternal;->mContent:Lcom/koushikdutta/widgets/FragmentInterfaceWrapper;

    .line 267
    .end local v0           #l:Lcom/koushikdutta/superuser/LogFragment;
    :goto_0
    iget-object v3, p0, Lcom/koushikdutta/superuser/PolicyFragmentInternal;->mContent:Lcom/koushikdutta/widgets/FragmentInterfaceWrapper;

    if-nez p2, :cond_1

    const/4 v1, 0x1

    move v2, v1

    :goto_1
    if-nez p2, :cond_2

    const v1, 0x7f080010

    invoke-virtual {p0, v1}, Lcom/koushikdutta/superuser/PolicyFragmentInternal;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {p0, v3, v2, v1}, Lcom/koushikdutta/superuser/PolicyFragmentInternal;->setContent(Lcom/koushikdutta/widgets/FragmentInterfaceWrapper;ZLjava/lang/String;)V

    .line 268
    return-void

    .line 264
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/superuser/PolicyFragmentInternal;->setContentNative(Lcom/koushikdutta/widgets/ListItem;Lcom/koushikdutta/superuser/db/UidPolicy;)Lcom/koushikdutta/widgets/FragmentInterfaceWrapper;

    move-result-object v1

    iput-object v1, p0, Lcom/koushikdutta/superuser/PolicyFragmentInternal;->mContent:Lcom/koushikdutta/widgets/FragmentInterfaceWrapper;

    goto :goto_0

    .line 267
    :cond_1
    const/4 v1, 0x0

    move v2, v1

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Lcom/koushikdutta/superuser/db/UidPolicy;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method

.method setContentNative(Lcom/koushikdutta/widgets/ListItem;Lcom/koushikdutta/superuser/db/UidPolicy;)Lcom/koushikdutta/widgets/FragmentInterfaceWrapper;
    .locals 4
    .parameter "li"
    .parameter "up"

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/koushikdutta/superuser/PolicyFragmentInternal;->createLogNativeFragment()Lcom/koushikdutta/superuser/LogNativeFragment;

    move-result-object v1

    .line 244
    .local v1, l:Lcom/koushikdutta/superuser/LogNativeFragment;
    invoke-virtual {v1}, Lcom/koushikdutta/superuser/LogNativeFragment;->getInternal()Lcom/koushikdutta/widgets/FragmentInterface;

    move-result-object v2

    check-cast v2, Lcom/koushikdutta/superuser/LogFragmentInternal;

    invoke-virtual {v2, p2}, Lcom/koushikdutta/superuser/LogFragmentInternal;->setUidPolicy(Lcom/koushikdutta/superuser/db/UidPolicy;)Lcom/koushikdutta/superuser/LogFragmentInternal;

    .line 245
    if-eqz p2, :cond_0

    .line 246
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 247
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "command"

    iget-object v3, p2, Lcom/koushikdutta/superuser/db/UidPolicy;->command:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string v2, "uid"

    iget v3, p2, Lcom/koushikdutta/superuser/db/UidPolicy;->uid:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 249
    const-string v2, "desiredUid"

    iget v3, p2, Lcom/koushikdutta/superuser/db/UidPolicy;->desiredUid:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 250
    invoke-virtual {v1, v0}, Lcom/koushikdutta/superuser/LogNativeFragment;->setArguments(Landroid/os/Bundle;)V

    .line 252
    .end local v0           #args:Landroid/os/Bundle;
    :cond_0
    invoke-virtual {v1}, Lcom/koushikdutta/superuser/LogNativeFragment;->getInternal()Lcom/koushikdutta/widgets/FragmentInterface;

    move-result-object v2

    check-cast v2, Lcom/koushikdutta/superuser/LogFragmentInternal;

    invoke-virtual {p0}, Lcom/koushikdutta/superuser/PolicyFragmentInternal;->getFragment()Lcom/koushikdutta/widgets/FragmentInterfaceWrapper;

    move-result-object v3

    invoke-interface {v3}, Lcom/koushikdutta/widgets/FragmentInterfaceWrapper;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/koushikdutta/superuser/LogFragmentInternal;->setListContentId(I)V

    .line 253
    return-object v1
.end method

.method showAllLogs()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-virtual {p0, v0, v0}, Lcom/koushikdutta/superuser/PolicyFragmentInternal;->setContent(Lcom/koushikdutta/widgets/ListItem;Lcom/koushikdutta/superuser/db/UidPolicy;)V

    .line 75
    invoke-virtual {p0}, Lcom/koushikdutta/superuser/PolicyFragmentInternal;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->clearChoices()V

    .line 76
    return-void
.end method

.method public showExtraActions(Lcom/koushikdutta/superuser/db/UidPolicy;Lcom/koushikdutta/widgets/ListItem;)V
    .locals 6
    .parameter "up"
    .parameter "item"

    .prologue
    .line 156
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/koushikdutta/superuser/PolicyFragmentInternal;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 157
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v4, p1, Lcom/koushikdutta/superuser/db/UidPolicy;->name:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 158
    invoke-virtual {p0}, Lcom/koushikdutta/superuser/PolicyFragmentInternal;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p1, Lcom/koushikdutta/superuser/db/UidPolicy;->packageName:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/koushikdutta/superuser/Helper;->loadPackageIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    .line 159
    iget-object v4, p1, Lcom/koushikdutta/superuser/db/UidPolicy;->policy:Ljava/lang/String;

    const-string v5, "allow"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/koushikdutta/superuser/PolicyFragmentInternal;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 162
    .local v3, permissionChange:Ljava/lang/String;
    :goto_0
    const/4 v4, 0x3

    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v4, 0x1

    const v5, 0x7f080056

    invoke-virtual {p0, v5}, Lcom/koushikdutta/superuser/PolicyFragmentInternal;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const v5, 0x7f080057

    invoke-virtual {p0, v5}, Lcom/koushikdutta/superuser/PolicyFragmentInternal;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 164
    .local v2, items:[Ljava/lang/String;
    new-instance v4, Lcom/koushikdutta/superuser/PolicyFragmentInternal$2;

    invoke-direct {v4, p0, v3, p1, p2}, Lcom/koushikdutta/superuser/PolicyFragmentInternal$2;-><init>(Lcom/koushikdutta/superuser/PolicyFragmentInternal;Ljava/lang/String;Lcom/koushikdutta/superuser/db/UidPolicy;Lcom/koushikdutta/widgets/ListItem;)V

    invoke-virtual {v0, v2, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 212
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 213
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 214
    return-void

    .line 159
    .end local v1           #dialog:Landroid/app/AlertDialog;
    .end local v2           #items:[Ljava/lang/String;
    .end local v3           #permissionChange:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/koushikdutta/superuser/PolicyFragmentInternal;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method
