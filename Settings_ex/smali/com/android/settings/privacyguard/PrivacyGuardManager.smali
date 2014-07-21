.class public Lcom/android/settings/privacyguard/PrivacyGuardManager;
.super Landroid/app/Fragment;
.source "PrivacyGuardManager.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/privacyguard/PrivacyGuardManager$ResetDialogFragment;,
        Lcom/android/settings/privacyguard/PrivacyGuardManager$HelpDialogFragment;,
        Lcom/android/settings/privacyguard/PrivacyGuardManager$AppInfo;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAdapter:Lcom/android/settings/privacyguard/PrivacyGuardAppListAdapter;

.field private mAppOps:Landroid/app/AppOpsManager;

.field private mApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/privacyguard/PrivacyGuardManager$AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAppsList:Landroid/widget/ListView;

.field private mNoUserAppsInstalled:Landroid/widget/TextView;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mSavedFirstItemOffset:I

.field private mSavedFirstVisiblePosition:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mSavedFirstVisiblePosition:I

    .line 358
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/privacyguard/PrivacyGuardManager;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/privacyguard/PrivacyGuardManager;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mApps:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/privacyguard/PrivacyGuardManager;)Landroid/app/AppOpsManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mAppOps:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/privacyguard/PrivacyGuardManager;)Lcom/android/settings/privacyguard/PrivacyGuardAppListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mAdapter:Lcom/android/settings/privacyguard/PrivacyGuardAppListAdapter;

    return-object v0
.end method

.method private createAdapter()Lcom/android/settings/privacyguard/PrivacyGuardAppListAdapter;
    .locals 11

    .prologue
    .line 206
    const/4 v3, 0x0

    .line 207
    .local v3, lastSectionIndex:Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 208
    .local v7, sections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .local v5, positions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v8, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mApps:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    .local v1, count:I
    const/4 v4, 0x0

    .line 211
    .local v4, offset:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_4

    .line 212
    iget-object v8, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mApps:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/privacyguard/PrivacyGuardManager$AppInfo;

    .line 215
    .local v0, app:Lcom/android/settings/privacyguard/PrivacyGuardManager$AppInfo;
    iget-boolean v8, v0, Lcom/android/settings/privacyguard/PrivacyGuardManager$AppInfo;->enabled:Z

    if-nez v8, :cond_2

    .line 216
    const-string v6, "--"

    .line 222
    .local v6, sectionIndex:Ljava/lang/String;
    :goto_1
    if-nez v3, :cond_0

    .line 223
    move-object v3, v6

    .line 226
    :cond_0
    invoke-static {v6, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 227
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    move-object v3, v6

    .line 231
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 211
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 217
    .end local v6           #sectionIndex:Ljava/lang/String;
    :cond_2
    iget-object v8, v0, Lcom/android/settings/privacyguard/PrivacyGuardManager$AppInfo;->title:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 218
    const-string v6, ""

    .restart local v6       #sectionIndex:Ljava/lang/String;
    goto :goto_1

    .line 220
    .end local v6           #sectionIndex:Ljava/lang/String;
    :cond_3
    iget-object v8, v0, Lcom/android/settings/privacyguard/PrivacyGuardManager$AppInfo;->title:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    .restart local v6       #sectionIndex:Ljava/lang/String;
    goto :goto_1

    .line 234
    .end local v0           #app:Lcom/android/settings/privacyguard/PrivacyGuardManager$AppInfo;
    .end local v6           #sectionIndex:Ljava/lang/String;
    :cond_4
    new-instance v8, Lcom/android/settings/privacyguard/PrivacyGuardAppListAdapter;

    iget-object v9, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mActivity:Landroid/app/Activity;

    iget-object v10, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mApps:Ljava/util/List;

    invoke-direct {v8, v9, v10, v7, v5}, Lcom/android/settings/privacyguard/PrivacyGuardAppListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v8
.end method

.method private loadApps()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 187
    invoke-direct {p0}, Lcom/android/settings/privacyguard/PrivacyGuardManager;->loadInstalledApps()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mApps:Ljava/util/List;

    .line 191
    iget-object v0, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mApps:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mNoUserAppsInstalled:Landroid/widget/TextView;

    const v1, 0x7f080259

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 193
    iget-object v0, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mNoUserAppsInstalled:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mAppsList:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mAppsList:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 203
    :goto_0
    return-void

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mNoUserAppsInstalled:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mAppsList:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 199
    invoke-direct {p0}, Lcom/android/settings/privacyguard/PrivacyGuardManager;->createAdapter()Lcom/android/settings/privacyguard/PrivacyGuardAppListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mAdapter:Lcom/android/settings/privacyguard/PrivacyGuardAppListAdapter;

    .line 200
    iget-object v0, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mAppsList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mAdapter:Lcom/android/settings/privacyguard/PrivacyGuardAppListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 201
    iget-object v0, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mAppsList:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    goto :goto_0
.end method

.method private loadInstalledApps()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/privacyguard/PrivacyGuardManager$AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    .line 276
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 277
    .local v2, apps:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/privacyguard/PrivacyGuardManager$AppInfo;>;"
    iget-object v10, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mPm:Landroid/content/pm/PackageManager;

    const/16 v11, 0x1040

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v6

    .line 279
    .local v6, packages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-direct {p0}, Lcom/android/settings/privacyguard/PrivacyGuardManager;->shouldShowSystemApps()Z

    move-result v8

    .line 283
    .local v8, showSystemApps:Z
    :try_start_0
    iget-object v10, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mPm:Landroid/content/pm/PackageManager;

    const-string v11, "android"

    const/16 v12, 0x40

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    .line 284
    .local v9, sysInfo:Landroid/content/pm/PackageInfo;
    iget-object v10, v9, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v11, 0x0

    aget-object v7, v10, v11
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    .end local v9           #sysInfo:Landroid/content/pm/PackageInfo;
    .local v7, platformCert:Landroid/content/pm/Signature;
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    .line 290
    .local v5, info:Landroid/content/pm/PackageInfo;
    iget-object v1, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 294
    .local v1, appInfo:Landroid/content/pm/ApplicationInfo;
    if-eqz v7, :cond_1

    iget-object v10, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v10, :cond_1

    iget-object v10, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v10, v10, v13

    invoke-virtual {v7, v10}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 300
    :cond_1
    if-nez v8, :cond_2

    iget v10, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v10, v10, 0x1

    if-nez v10, :cond_0

    .line 304
    :cond_2
    new-instance v0, Lcom/android/settings/privacyguard/PrivacyGuardManager$AppInfo;

    invoke-direct {v0}, Lcom/android/settings/privacyguard/PrivacyGuardManager$AppInfo;-><init>()V

    .line 305
    .local v0, app:Lcom/android/settings/privacyguard/PrivacyGuardManager$AppInfo;
    iget-object v10, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v10}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/android/settings/privacyguard/PrivacyGuardManager$AppInfo;->title:Ljava/lang/String;

    .line 306
    iget-object v10, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v10, v0, Lcom/android/settings/privacyguard/PrivacyGuardManager$AppInfo;->packageName:Ljava/lang/String;

    .line 307
    iget-boolean v10, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    iput-boolean v10, v0, Lcom/android/settings/privacyguard/PrivacyGuardManager$AppInfo;->enabled:Z

    .line 308
    iget-object v10, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v10, v0, Lcom/android/settings/privacyguard/PrivacyGuardManager$AppInfo;->uid:I

    .line 309
    iget-object v10, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mAppOps:Landroid/app/AppOpsManager;

    iget v11, v0, Lcom/android/settings/privacyguard/PrivacyGuardManager$AppInfo;->uid:I

    iget-object v12, v0, Lcom/android/settings/privacyguard/PrivacyGuardManager$AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Landroid/app/AppOpsManager;->getPrivacyGuardSettingForPackage(ILjava/lang/String;)Z

    move-result v10

    iput-boolean v10, v0, Lcom/android/settings/privacyguard/PrivacyGuardManager$AppInfo;->privacyGuardEnabled:Z

    .line 311
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 285
    .end local v0           #app:Lcom/android/settings/privacyguard/PrivacyGuardManager$AppInfo;
    .end local v1           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #info:Landroid/content/pm/PackageInfo;
    .end local v7           #platformCert:Landroid/content/pm/Signature;
    :catch_0
    move-exception v3

    .line 286
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v7, 0x0

    .restart local v7       #platformCert:Landroid/content/pm/Signature;
    goto :goto_0

    .line 315
    .end local v3           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_3
    new-instance v10, Lcom/android/settings/privacyguard/PrivacyGuardManager$1;

    invoke-direct {v10, p0}, Lcom/android/settings/privacyguard/PrivacyGuardManager$1;-><init>(Lcom/android/settings/privacyguard/PrivacyGuardManager;)V

    invoke-static {v2, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 325
    return-object v2
.end method

.method private resetPrivacyGuard()V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mApps:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/privacyguard/PrivacyGuardManager;->showResetDialog()V

    goto :goto_0
.end method

.method private shouldShowSystemApps()Z
    .locals 3

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "show_system_apps"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private showHelp()V
    .locals 3

    .prologue
    .line 354
    new-instance v0, Lcom/android/settings/privacyguard/PrivacyGuardManager$HelpDialogFragment;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/privacyguard/PrivacyGuardManager$HelpDialogFragment;-><init>(Lcom/android/settings/privacyguard/PrivacyGuardManager;Lcom/android/settings/privacyguard/PrivacyGuardManager$1;)V

    .line 355
    .local v0, fragment:Lcom/android/settings/privacyguard/PrivacyGuardManager$HelpDialogFragment;
    invoke-virtual {p0}, Lcom/android/settings/privacyguard/PrivacyGuardManager;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "help_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/privacyguard/PrivacyGuardManager$HelpDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 356
    return-void
.end method

.method private showResetDialog()V
    .locals 3

    .prologue
    .line 386
    new-instance v0, Lcom/android/settings/privacyguard/PrivacyGuardManager$ResetDialogFragment;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/privacyguard/PrivacyGuardManager$ResetDialogFragment;-><init>(Lcom/android/settings/privacyguard/PrivacyGuardManager;Lcom/android/settings/privacyguard/PrivacyGuardManager$1;)V

    .line 387
    .local v0, dialog:Lcom/android/settings/privacyguard/PrivacyGuardManager$ResetDialogFragment;
    invoke-virtual {p0}, Lcom/android/settings/privacyguard/PrivacyGuardManager;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "reset_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/privacyguard/PrivacyGuardManager$ResetDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 388
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 119
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 121
    iget-object v0, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0d0058

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mNoUserAppsInstalled:Landroid/widget/TextView;

    .line 123
    iget-object v0, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0d01ac

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mAppsList:Landroid/widget/ListView;

    .line 124
    iget-object v0, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mAppsList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 125
    iget-object v0, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mAppsList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 128
    iget-object v0, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mActivity:Landroid/app/Activity;

    const-string v1, "privacy_guard_manager"

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mPreferences:Landroid/content/SharedPreferences;

    .line 129
    iget-object v0, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "first_help_shown"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    invoke-direct {p0}, Lcom/android/settings/privacyguard/PrivacyGuardManager;->showHelp()V

    .line 133
    :cond_0
    if-eqz p1, :cond_1

    .line 134
    const-string v0, "last_list_pos"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mSavedFirstVisiblePosition:I

    .line 136
    const-string v0, "last_list_offset"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mSavedFirstItemOffset:I

    .line 143
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/privacyguard/PrivacyGuardManager;->loadApps()V

    .line 145
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/privacyguard/PrivacyGuardManager;->setHasOptionsMenu(Z)V

    .line 146
    return-void

    .line 138
    :cond_1
    iput v3, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mSavedFirstVisiblePosition:I

    .line 139
    iput v2, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mSavedFirstItemOffset:I

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 392
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 393
    const v0, 0x7f100009

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 394
    const v0, 0x7f0d02de

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings/privacyguard/PrivacyGuardManager;->shouldShowSystemApps()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 395
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/android/settings/privacyguard/PrivacyGuardManager;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mActivity:Landroid/app/Activity;

    .line 101
    iget-object v0, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mPm:Landroid/content/pm/PackageManager;

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/privacyguard/PrivacyGuardManager;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mAppOps:Landroid/app/AppOpsManager;

    .line 104
    const v0, 0x7f0400ac

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    .line 109
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/privacyguard/PrivacyGuardManager;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 111
    .local v1, fm:Landroid/app/FragmentManager;
    const v2, 0x7f0d01ab

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 112
    .local v0, f:Landroid/app/Fragment;
    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroid/app/FragmentManager;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 113
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 115
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 247
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/privacyguard/PrivacyGuardManager$AppInfo;

    .line 249
    .local v0, app:Lcom/android/settings/privacyguard/PrivacyGuardManager$AppInfo;
    iget-boolean v1, v0, Lcom/android/settings/privacyguard/PrivacyGuardManager$AppInfo;->privacyGuardEnabled:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v0, Lcom/android/settings/privacyguard/PrivacyGuardManager$AppInfo;->privacyGuardEnabled:Z

    .line 250
    iget-object v1, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mAppOps:Landroid/app/AppOpsManager;

    iget v2, v0, Lcom/android/settings/privacyguard/PrivacyGuardManager$AppInfo;->uid:I

    iget-object v3, v0, Lcom/android/settings/privacyguard/PrivacyGuardManager$AppInfo;->packageName:Ljava/lang/String;

    iget-boolean v4, v0, Lcom/android/settings/privacyguard/PrivacyGuardManager$AppInfo;->privacyGuardEnabled:Z

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AppOpsManager;->setPrivacyGuardSettingForPackage(ILjava/lang/String;Z)V

    .line 252
    iget-object v1, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mAdapter:Lcom/android/settings/privacyguard/PrivacyGuardAppListAdapter;

    invoke-virtual {v1}, Lcom/android/settings/privacyguard/PrivacyGuardAppListAdapter;->notifyDataSetChanged()V

    .line 253
    return-void

    .line 249
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 258
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/privacyguard/PrivacyGuardManager$AppInfo;

    .line 260
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 261
    const-string v1, "package"

    iget-object v0, v0, Lcom/android/settings/privacyguard/PrivacyGuardManager$AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-virtual {p0}, Lcom/android/settings/privacyguard/PrivacyGuardManager;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 264
    const-class v1, Lcom/android/settings/applications/AppOpsDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f08086c

    const/4 v4, 0x0

    const/4 v6, 0x2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 266
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 399
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 420
    invoke-super {p0, p1}, Landroid/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 401
    :sswitch_0
    invoke-direct {p0}, Lcom/android/settings/privacyguard/PrivacyGuardManager;->showHelp()V

    goto :goto_0

    .line 404
    :sswitch_1
    invoke-direct {p0}, Lcom/android/settings/privacyguard/PrivacyGuardManager;->resetPrivacyGuard()V

    goto :goto_0

    .line 407
    :sswitch_2
    const-string v0, "show_system_apps"

    .line 410
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_1
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 411
    iget-object v0, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "show_system_apps"

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 412
    invoke-direct {p0}, Lcom/android/settings/privacyguard/PrivacyGuardManager;->loadApps()V

    goto :goto_0

    .line 410
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 415
    :sswitch_3
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 416
    iget-object v2, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mActivity:Landroid/app/Activity;

    const-class v3, Lcom/android/settings/Settings$AppOpsSummaryActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 417
    iget-object v2, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 399
    :sswitch_data_0
    .sparse-switch
        0x7f0d02de -> :sswitch_2
        0x7f0d02f4 -> :sswitch_1
        0x7f0d02f5 -> :sswitch_3
        0x7f0d02f6 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 163
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 168
    iget-object v2, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mAppsList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    iput v2, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mSavedFirstVisiblePosition:I

    .line 169
    iget-object v2, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mAppsList:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 170
    .local v0, firstChild:Landroid/view/View;
    if-nez v0, :cond_0

    :goto_0
    iput v1, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mSavedFirstItemOffset:I

    .line 171
    return-void

    .line 170
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 175
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 178
    invoke-direct {p0}, Lcom/android/settings/privacyguard/PrivacyGuardManager;->loadApps()V

    .line 180
    iget v0, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mSavedFirstVisiblePosition:I

    if-eq v0, v3, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mAppsList:Landroid/widget/ListView;

    iget v1, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mSavedFirstVisiblePosition:I

    iget v2, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mSavedFirstItemOffset:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 182
    iput v3, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mSavedFirstVisiblePosition:I

    .line 184
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 155
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 157
    const-string v0, "last_list_pos"

    iget v1, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mSavedFirstVisiblePosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 158
    const-string v0, "last_list_offset"

    iget v1, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager;->mSavedFirstItemOffset:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 159
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 150
    invoke-super {p0, p1}, Landroid/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 151
    return-void
.end method
