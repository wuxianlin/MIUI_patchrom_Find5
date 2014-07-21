.class public Lcom/android/settings/users/AppRestrictionsFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AppRestrictionsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;,
        Lcom/android/settings/users/AppRestrictionsFragment$AppLabelComparator;,
        Lcom/android/settings/users/AppRestrictionsFragment$AppLoadingTask;,
        Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;,
        Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAppList:Landroid/preference/PreferenceGroup;

.field private mAppListChanged:Z

.field private mAppLoadingTask:Landroid/os/AsyncTask;

.field private mCustomRequestCode:I

.field private mCustomRequestMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstTime:Z

.field protected mIPm:Landroid/content/pm/IPackageManager;

.field private mNewUser:Z

.field protected mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageObserver:Landroid/content/BroadcastReceiver;

.field protected mRestrictedProfile:Z

.field mSelectedPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mSysPackageInfo:Landroid/content/pm/PackageInfo;

.field protected mUser:Landroid/os/UserHandle;

.field private mUserApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUserBackgrounding:Landroid/content/BroadcastReceiver;

.field protected mUserManager:Landroid/os/UserManager;

.field private mVisibleApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const-class v0, Lcom/android/settings/users/AppRestrictionsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/users/AppRestrictionsFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mSelectedPackages:Ljava/util/HashMap;

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mFirstTime:Z

    .line 112
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mCustomRequestCode:I

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mCustomRequestMap:Ljava/util/HashMap;

    .line 121
    new-instance v0, Lcom/android/settings/users/AppRestrictionsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/users/AppRestrictionsFragment$1;-><init>(Lcom/android/settings/users/AppRestrictionsFragment;)V

    iput-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUserBackgrounding:Landroid/content/BroadcastReceiver;

    .line 135
    new-instance v0, Lcom/android/settings/users/AppRestrictionsFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/users/AppRestrictionsFragment$2;-><init>(Lcom/android/settings/users/AppRestrictionsFragment;)V

    iput-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mPackageObserver:Landroid/content/BroadcastReceiver;

    .line 897
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/users/AppRestrictionsFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppListChanged:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/users/AppRestrictionsFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->applyUserAppsStates()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/users/AppRestrictionsFragment;Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/users/AppRestrictionsFragment;->onRestrictionsReceived(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/users/AppRestrictionsFragment;Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/settings/users/AppRestrictionsFragment;->generateCustomActivityRequestCode(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/users/AppRestrictionsFragment;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/settings/users/AppRestrictionsFragment;->onPackageChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/users/AppRestrictionsFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->fetchAndMergeApps()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/users/AppRestrictionsFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->populateApps()V

    return-void
.end method

.method private addSystemApps(Ljava/util/List;Landroid/content/Intent;Ljava/util/Set;)V
    .locals 11
    .parameter
    .parameter "intent"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;",
            ">;",
            "Landroid/content/Intent;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 479
    .local p1, visibleApps:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;>;"
    .local p3, excludePackages:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    if-nez v9, :cond_1

    .line 514
    :cond_0
    return-void

    .line 480
    :cond_1
    iget-object v7, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 481
    .local v7, pm:Landroid/content/pm/PackageManager;
    const/16 v9, 0x2200

    invoke-virtual {v7, p2, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 483
    .local v5, launchableApps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 484
    .local v0, app:Landroid/content/pm/ResolveInfo;
    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v9, :cond_2

    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v9, :cond_2

    .line 485
    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 486
    .local v6, packageName:Ljava/lang/String;
    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 487
    .local v2, flags:I
    and-int/lit8 v9, v2, 0x1

    if-nez v9, :cond_3

    and-int/lit16 v9, v2, 0x80

    if-eqz v9, :cond_2

    .line 491
    :cond_3
    invoke-interface {p3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 492
    invoke-virtual {v7, v6}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v1

    .line 493
    .local v1, enabled:I
    const/4 v9, 0x4

    if-eq v1, v9, :cond_4

    const/4 v9, 0x2

    if-ne v1, v9, :cond_5

    .line 496
    :cond_4
    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-direct {p0, v6, v9, v10}, Lcom/android/settings/users/AppRestrictionsFragment;->getAppInfoForUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 498
    .local v8, targetUserAppInfo:Landroid/content/pm/ApplicationInfo;
    if-eqz v8, :cond_2

    iget v9, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v10, 0x80

    and-int/2addr v9, v10

    if-eqz v9, :cond_2

    .line 503
    .end local v8           #targetUserAppInfo:Landroid/content/pm/ApplicationInfo;
    :cond_5
    new-instance v4, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;

    invoke-direct {v4}, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;-><init>()V

    .line 504
    .local v4, info:Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;
    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v9, v4, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->packageName:Ljava/lang/String;

    .line 505
    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v9, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, v4, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->appName:Ljava/lang/CharSequence;

    .line 506
    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v9, v7}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, v4, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 507
    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v9, v7}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, v4, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    .line 508
    iget-object v9, v4, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    if-nez v9, :cond_6

    iget-object v9, v4, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->appName:Ljava/lang/CharSequence;

    iput-object v9, v4, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    .line 510
    :cond_6
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private addSystemImes(Ljava/util/Set;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 455
    .local p1, excludePackages:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 456
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_1

    .line 469
    :cond_0
    return-void

    .line 457
    :cond_1
    const-string v5, "input_method"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    .line 459
    .local v4, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v3

    .line 460
    .local v3, imis:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 462
    .local v2, imi:Landroid/view/inputmethod/InputMethodInfo;
    :try_start_0
    invoke-virtual {v2, v0}, Landroid/view/inputmethod/InputMethodInfo;->isDefault(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/users/AppRestrictionsFragment;->isSystemPackage(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 463
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 465
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method private applyUserAppState(Ljava/lang/String;Z)V
    .locals 6
    .parameter "packageName"
    .parameter "enabled"

    .prologue
    const/high16 v4, 0x80

    .line 376
    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 377
    .local v1, userId:I
    if-eqz p2, :cond_3

    .line 380
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mIPm:Landroid/content/pm/IPackageManager;

    const/16 v3, 0x2000

    invoke-interface {v2, p1, v3, v1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 382
    .local v0, info:Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    iget-boolean v2, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v2, :cond_0

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v2, v4

    if-nez v2, :cond_1

    .line 384
    :cond_0
    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mIPm:Landroid/content/pm/IPackageManager;

    iget-object v3, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-interface {v2, p1, v3}, Landroid/content/pm/IPackageManager;->installExistingPackageAsUser(Ljava/lang/String;I)I

    .line 389
    :cond_1
    if-eqz v0, :cond_2

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x800

    and-int/2addr v2, v3

    if-eqz v2, :cond_2

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v2, v4

    if-eqz v2, :cond_2

    .line 391
    invoke-direct {p0, p1}, Lcom/android/settings/users/AppRestrictionsFragment;->disableUiForPackage(Ljava/lang/String;)V

    .line 392
    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mIPm:Landroid/content/pm/IPackageManager;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3, v1}, Landroid/content/pm/IPackageManager;->setApplicationBlockedSettingAsUser(Ljava/lang/String;ZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 421
    .end local v0           #info:Landroid/content/pm/ApplicationInfo;
    :cond_2
    :goto_0
    return-void

    .line 402
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mIPm:Landroid/content/pm/IPackageManager;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3, v1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 403
    .restart local v0       #info:Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_2

    .line 404
    iget-boolean v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mRestrictedProfile:Z

    if-eqz v2, :cond_4

    .line 405
    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mIPm:Landroid/content/pm/IPackageManager;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    const/4 v5, 0x4

    invoke-interface {v2, p1, v3, v4, v5}, Landroid/content/pm/IPackageManager;->deletePackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V

    goto :goto_0

    .line 418
    .end local v0           #info:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v2

    goto :goto_0

    .line 411
    .restart local v0       #info:Landroid/content/pm/ApplicationInfo;
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/settings/users/AppRestrictionsFragment;->disableUiForPackage(Ljava/lang/String;)V

    .line 412
    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mIPm:Landroid/content/pm/IPackageManager;

    const/4 v3, 0x1

    invoke-interface {v2, p1, v3, v1}, Landroid/content/pm/IPackageManager;->setApplicationBlockedSettingAsUser(Ljava/lang/String;ZI)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 397
    .end local v0           #info:Landroid/content/pm/ApplicationInfo;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method private applyUserAppsStates()V
    .locals 7

    .prologue
    .line 363
    iget-object v5, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 364
    .local v4, userId:I
    iget-object v5, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5, v4}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 365
    sget-object v5, Lcom/android/settings/users/AppRestrictionsFragment;->TAG:Ljava/lang/String;

    const-string v6, "Cannot apply application restrictions on another user!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_0
    return-void

    .line 368
    :cond_1
    iget-object v5, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mSelectedPackages:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 369
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 370
    .local v3, packageName:Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 371
    .local v0, enabled:Z
    invoke-direct {p0, v3, v0}, Lcom/android/settings/users/AppRestrictionsFragment;->applyUserAppState(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private disableUiForPackage(Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"

    .prologue
    .line 424
    invoke-direct {p0, p1}, Lcom/android/settings/users/AppRestrictionsFragment;->getKeyForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/users/AppRestrictionsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    .line 426
    .local v0, pref:Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;
    if-eqz v0, :cond_0

    .line 427
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setEnabled(Z)V

    .line 429
    :cond_0
    return-void
.end method

.method private fetchAndMergeApps()V
    .locals 21

    .prologue
    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppList:Landroid/preference/PreferenceGroup;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 546
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/users/AppRestrictionsFragment;->mVisibleApps:Ljava/util/List;

    .line 547
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .line 548
    .local v5, context:Landroid/content/Context;
    if-nez v5, :cond_1

    .line 646
    :cond_0
    return-void

    .line 549
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v16, v0

    .line 550
    .local v16, pm:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mIPm:Landroid/content/pm/IPackageManager;

    .line 552
    .local v12, ipm:Landroid/content/pm/IPackageManager;
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 553
    .local v7, excludePackages:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/settings/users/AppRestrictionsFragment;->addSystemImes(Ljava/util/Set;)V

    .line 556
    new-instance v13, Landroid/content/Intent;

    const-string v18, "android.intent.action.MAIN"

    move-object/from16 v0, v18

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 557
    .local v13, launcherIntent:Landroid/content/Intent;
    const-string v18, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mVisibleApps:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v13, v7}, Lcom/android/settings/users/AppRestrictionsFragment;->addSystemApps(Ljava/util/List;Landroid/content/Intent;Ljava/util/Set;)V

    .line 561
    new-instance v17, Landroid/content/Intent;

    const-string v18, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct/range {v17 .. v18}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 562
    .local v17, widgetIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mVisibleApps:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2, v7}, Lcom/android/settings/users/AppRestrictionsFragment;->addSystemApps(Ljava/util/List;Landroid/content/Intent;Ljava/util/Set;)V

    .line 564
    const/16 v18, 0x2000

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v11

    .line 566
    .local v11, installedApps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 568
    .local v3, app:Landroid/content/pm/ApplicationInfo;
    iget v0, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v18, v0

    const/high16 v19, 0x80

    and-int v18, v18, v19

    if-eqz v18, :cond_2

    .line 570
    iget v0, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0x1

    if-nez v18, :cond_3

    iget v0, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v18, v0

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0x80

    move/from16 v18, v0

    if-nez v18, :cond_3

    .line 573
    new-instance v10, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;

    invoke-direct {v10}, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;-><init>()V

    .line 574
    .local v10, info:Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;
    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v10, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->packageName:Ljava/lang/String;

    .line 575
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v10, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->appName:Ljava/lang/CharSequence;

    .line 576
    iget-object v0, v10, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->appName:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v10, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    .line 577
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v10, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mVisibleApps:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 581
    .end local v10           #info:Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;
    :cond_3
    :try_start_0
    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v15

    .line 585
    .local v15, pi:Landroid/content/pm/PackageInfo;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mRestrictedProfile:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    iget-object v0, v15, Landroid/content/pm/PackageInfo;->requiredAccountType:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    iget-object v0, v15, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    move-object/from16 v18, v0

    if-nez v18, :cond_2

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mSelectedPackages:Ljava/util/HashMap;

    move-object/from16 v18, v0

    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 589
    .end local v15           #pi:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v18

    goto/16 :goto_0

    .line 595
    .end local v3           #app:Landroid/content/pm/ApplicationInfo;
    :cond_4
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/users/AppRestrictionsFragment;->mUserApps:Ljava/util/List;

    .line 597
    const/16 v18, 0x2000

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v12, v0, v1}, Landroid/content/pm/IPackageManager;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/users/AppRestrictionsFragment;->mUserApps:Ljava/util/List;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 602
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mUserApps:Ljava/util/List;

    move-object/from16 v18, v0

    if-eqz v18, :cond_6

    .line 603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mUserApps:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_5
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 604
    .restart local v3       #app:Landroid/content/pm/ApplicationInfo;
    iget v0, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v18, v0

    const/high16 v19, 0x80

    and-int v18, v18, v19

    if-eqz v18, :cond_5

    .line 606
    iget v0, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0x1

    if-nez v18, :cond_5

    iget v0, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v18, v0

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0x80

    move/from16 v18, v0

    if-nez v18, :cond_5

    .line 609
    new-instance v10, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;

    invoke-direct {v10}, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;-><init>()V

    .line 610
    .restart local v10       #info:Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;
    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v10, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->packageName:Ljava/lang/String;

    .line 611
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v10, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->appName:Ljava/lang/CharSequence;

    .line 612
    iget-object v0, v10, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->appName:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v10, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    .line 613
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v10, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mVisibleApps:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 620
    .end local v3           #app:Landroid/content/pm/ApplicationInfo;
    .end local v10           #info:Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mVisibleApps:Ljava/util/List;

    move-object/from16 v18, v0

    new-instance v19, Lcom/android/settings/users/AppRestrictionsFragment$AppLabelComparator;

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/settings/users/AppRestrictionsFragment$AppLabelComparator;-><init>(Lcom/android/settings/users/AppRestrictionsFragment;Lcom/android/settings/users/AppRestrictionsFragment$1;)V

    invoke-static/range {v18 .. v19}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 623
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 624
    .local v6, dedupPackageSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mVisibleApps:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    add-int/lit8 v8, v18, -0x1

    .local v8, i:I
    :goto_3
    if-ltz v8, :cond_8

    .line 625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mVisibleApps:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;

    .line 627
    .restart local v10       #info:Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v10, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "+"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v10, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 628
    .local v4, both:Ljava/lang/String;
    iget-object v0, v10, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_7

    iget-object v0, v10, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_7

    invoke-interface {v6, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mVisibleApps:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 624
    :goto_4
    add-int/lit8 v8, v8, -0x1

    goto :goto_3

    .line 633
    :cond_7
    invoke-interface {v6, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 638
    .end local v4           #both:Ljava/lang/String;
    .end local v10           #info:Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;
    :cond_8
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 639
    .local v14, packageMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mVisibleApps:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;

    .line 640
    .restart local v10       #info:Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;
    iget-object v0, v10, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 641
    iget-object v0, v10, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;

    move-object/from16 v0, v18

    iput-object v0, v10, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->masterEntry:Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;

    goto :goto_5

    .line 643
    :cond_9
    iget-object v0, v10, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v14, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 599
    .end local v6           #dedupPackageSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v8           #i:I
    .end local v10           #info:Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;
    .end local v14           #packageMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;>;"
    :catch_1
    move-exception v18

    goto/16 :goto_1
.end method

.method private findInArray([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "choiceEntries"
    .parameter "choiceValues"
    .parameter "selectedString"

    .prologue
    .line 1046
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 1047
    aget-object v1, p2, v0

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1048
    aget-object p3, p1, v0

    .line 1051
    .end local p3
    :cond_0
    return-object p3

    .line 1046
    .restart local p3
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private generateCustomActivityRequestCode(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)I
    .locals 2
    .parameter "preference"

    .prologue
    .line 1010
    iget v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mCustomRequestCode:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mCustomRequestCode:I

    .line 1011
    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mCustomRequestMap:Ljava/util/HashMap;

    iget v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mCustomRequestCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1012
    iget v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mCustomRequestCode:I

    return v0
.end method

.method private getAppInfoForUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;
    .locals 4
    .parameter "packageName"
    .parameter "flags"
    .parameter "user"

    .prologue
    .line 518
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mIPm:Landroid/content/pm/IPackageManager;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-interface {v2, p1, p2, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 522
    :goto_0
    return-object v1

    .line 521
    :catch_0
    move-exception v0

    .line 522
    .local v0, re:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getKeyForPackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "packageName"

    .prologue
    .line 744
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pkg_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isAppEnabledForUser(Landroid/content/pm/PackageInfo;)Z
    .locals 3
    .parameter "pi"

    .prologue
    const/4 v1, 0x0

    .line 654
    if-nez p1, :cond_1

    .line 657
    :cond_0
    :goto_0
    return v1

    .line 655
    :cond_1
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 657
    .local v0, flags:I
    const/high16 v2, 0x80

    and-int/2addr v2, v0

    if-eqz v2, :cond_0

    const/high16 v2, 0x800

    and-int/2addr v2, v0

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isPlatformSigned(Landroid/content/pm/PackageInfo;)Z
    .locals 3
    .parameter "pi"

    .prologue
    const/4 v0, 0x0

    .line 649
    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mSysPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v1, v1, v0

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isSystemPackage(Ljava/lang/String;)Z
    .locals 5
    .parameter "packageName"

    .prologue
    const/4 v2, 0x0

    .line 433
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 434
    .local v1, pi:Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v3, :cond_1

    .line 443
    .end local v1           #pi:Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return v2

    .line 435
    .restart local v1       #pi:Landroid/content/pm/PackageInfo;
    :cond_1
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v3, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    .local v0, flags:I
    and-int/lit8 v3, v0, 0x1

    if-nez v3, :cond_2

    and-int/lit16 v3, v0, 0x80

    if-eqz v3, :cond_0

    .line 438
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .line 440
    .end local v0           #flags:I
    .end local v1           #pi:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private onAppSettingsIconClicked(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)V
    .locals 5
    .parameter "preference"

    .prologue
    const/4 v2, 0x1

    .line 859
    invoke-virtual {p1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pkg_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 860
    invoke-virtual {p1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isPanelOpen()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 861
    invoke-direct {p0, p1}, Lcom/android/settings/users/AppRestrictionsFragment;->removeRestrictionsForApp(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)V

    .line 873
    :goto_0
    invoke-virtual {p1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isPanelOpen()Z

    move-result v3

    if-nez v3, :cond_3

    :goto_1
    invoke-virtual {p1, v2}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setPanelOpen(Z)V

    .line 875
    :cond_0
    return-void

    .line 863
    :cond_1
    invoke-virtual {p1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pkg_"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 864
    .local v0, packageName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 866
    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-static {v3, v4}, Lcom/android/settings/users/RestrictionUtils;->getRestrictions(Landroid/content/Context;Landroid/os/UserHandle;)Ljava/util/ArrayList;

    move-result-object v1

    .line 868
    .local v1, restrictions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/RestrictionEntry;>;"
    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/users/AppRestrictionsFragment;->onRestrictionsReceived(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 870
    .end local v1           #restrictions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/RestrictionEntry;>;"
    :cond_2
    invoke-direct {p0, v0, p1, v2}, Lcom/android/settings/users/AppRestrictionsFragment;->requestRestrictionsForApp(Ljava/lang/String;Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;Z)V

    goto :goto_0

    .line 873
    .end local v0           #packageName:Ljava/lang/String;
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private onPackageChanged(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 331
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 334
    .local v1, packageName:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/settings/users/AppRestrictionsFragment;->getKeyForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/users/AppRestrictionsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    .line 336
    .local v2, pref:Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;
    if-nez v2, :cond_1

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_0

    .line 340
    :cond_3
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private onRestrictionsReceived(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 16
    .parameter "preference"
    .parameter "packageName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/RestrictionEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 939
    .local p3, restrictions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/RestrictionEntry;>;"
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/users/AppRestrictionsFragment;->removeRestrictionsForApp(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)V

    .line 941
    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 942
    .local v3, context:Landroid/content/Context;
    const/4 v4, 0x1

    .line 943
    .local v4, count:I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/RestrictionEntry;

    .line 944
    .local v5, entry:Landroid/content/RestrictionEntry;
    const/4 v9, 0x0

    .line 945
    .local v9, p:Landroid/preference/Preference;
    invoke-virtual {v5}, Landroid/content/RestrictionEntry;->getType()I

    move-result v13

    packed-switch v13, :pswitch_data_0

    .line 982
    :goto_1
    if-eqz v9, :cond_0

    .line 983
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 984
    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->getOrder()I

    move-result v13

    add-int/2addr v13, v4

    invoke-virtual {v9, v13}, Landroid/preference/Preference;->setOrder(I)V

    .line 986
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->getKey()Ljava/lang/String;

    move-result-object v14

    const-string v15, "pkg_"

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ";"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Landroid/content/RestrictionEntry;->getKey()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 988
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v13, v9}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 989
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 990
    #getter for: Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->mChildren:Ljava/util/List;
    invoke-static/range {p1 .. p1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->access$1100(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 991
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 947
    :pswitch_0
    new-instance v9, Landroid/preference/CheckBoxPreference;

    .end local v9           #p:Landroid/preference/Preference;
    invoke-direct {v9, v3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 948
    .restart local v9       #p:Landroid/preference/Preference;
    invoke-virtual {v5}, Landroid/content/RestrictionEntry;->getTitle()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 949
    invoke-virtual {v5}, Landroid/content/RestrictionEntry;->getDescription()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    move-object v13, v9

    .line 950
    check-cast v13, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/content/RestrictionEntry;->getSelectedState()Z

    move-result v14

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    .line 954
    :pswitch_1
    new-instance v9, Landroid/preference/ListPreference;

    .end local v9           #p:Landroid/preference/Preference;
    invoke-direct {v9, v3}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 955
    .restart local v9       #p:Landroid/preference/Preference;
    invoke-virtual {v5}, Landroid/content/RestrictionEntry;->getTitle()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 956
    invoke-virtual {v5}, Landroid/content/RestrictionEntry;->getSelectedString()Ljava/lang/String;

    move-result-object v12

    .line 957
    .local v12, value:Ljava/lang/String;
    if-nez v12, :cond_1

    .line 958
    invoke-virtual {v5}, Landroid/content/RestrictionEntry;->getDescription()Ljava/lang/String;

    move-result-object v12

    .line 960
    :cond_1
    invoke-virtual {v5}, Landroid/content/RestrictionEntry;->getChoiceEntries()[Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5}, Landroid/content/RestrictionEntry;->getChoiceValues()[Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v12}, Lcom/android/settings/users/AppRestrictionsFragment;->findInArray([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    move-object v13, v9

    .line 962
    check-cast v13, Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/content/RestrictionEntry;->getChoiceValues()[Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    move-object v13, v9

    .line 963
    check-cast v13, Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/content/RestrictionEntry;->getChoiceEntries()[Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    move-object v13, v9

    .line 964
    check-cast v13, Landroid/preference/ListPreference;

    invoke-virtual {v13, v12}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    move-object v13, v9

    .line 965
    check-cast v13, Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/content/RestrictionEntry;->getTitle()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 968
    .end local v12           #value:Ljava/lang/String;
    :pswitch_2
    new-instance v9, Landroid/preference/MultiSelectListPreference;

    .end local v9           #p:Landroid/preference/Preference;
    invoke-direct {v9, v3}, Landroid/preference/MultiSelectListPreference;-><init>(Landroid/content/Context;)V

    .line 969
    .restart local v9       #p:Landroid/preference/Preference;
    invoke-virtual {v5}, Landroid/content/RestrictionEntry;->getTitle()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    move-object v13, v9

    .line 970
    check-cast v13, Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v5}, Landroid/content/RestrictionEntry;->getChoiceValues()[Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/preference/MultiSelectListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    move-object v13, v9

    .line 971
    check-cast v13, Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v5}, Landroid/content/RestrictionEntry;->getChoiceEntries()[Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/preference/MultiSelectListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 972
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 973
    .local v11, set:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v5}, Landroid/content/RestrictionEntry;->getAllSelectedStrings()[Ljava/lang/String;

    move-result-object v2

    .local v2, arr$:[Ljava/lang/String;
    array-length v8, v2

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_2
    if-ge v7, v8, :cond_2

    aget-object v10, v2, v7

    .line 974
    .local v10, s:Ljava/lang/String;
    invoke-virtual {v11, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 973
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .end local v10           #s:Ljava/lang/String;
    :cond_2
    move-object v13, v9

    .line 976
    check-cast v13, Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v13, v11}, Landroid/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    move-object v13, v9

    .line 977
    check-cast v13, Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v5}, Landroid/content/RestrictionEntry;->getTitle()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/preference/MultiSelectListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 994
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v5           #entry:Landroid/content/RestrictionEntry;
    .end local v7           #i$:I
    .end local v8           #len$:I
    .end local v9           #p:Landroid/preference/Preference;
    .end local v11           #set:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_3
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setRestrictions(Ljava/util/ArrayList;)V

    .line 995
    const/4 v13, 0x1

    if-ne v4, v13, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isImmutable()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 999
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppList:Landroid/preference/PreferenceGroup;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1001
    :cond_4
    return-void

    .line 945
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private populateApps()V
    .locals 18

    .prologue
    .line 662
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 663
    .local v2, context:Landroid/content/Context;
    if-nez v2, :cond_1

    .line 741
    :cond_0
    :goto_0
    return-void

    .line 664
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 665
    .local v11, pm:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mIPm:Landroid/content/pm/IPackageManager;

    .line 667
    .local v6, ipm:Landroid/content/pm/IPackageManager;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v14}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 668
    new-instance v13, Landroid/content/Intent;

    const-string v14, "android.intent.action.GET_RESTRICTION_ENTRIES"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 669
    .local v13, restrictionsIntent:Landroid/content/Intent;
    const/4 v14, 0x0

    invoke-virtual {v11, v13, v14}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v12

    .line 670
    .local v12, receivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v4, 0x0

    .line 671
    .local v4, i:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mVisibleApps:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_f

    .line 672
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mVisibleApps:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;

    .line 673
    .local v1, app:Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;
    iget-object v9, v1, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->packageName:Ljava/lang/String;

    .line 674
    .local v9, packageName:Ljava/lang/String;
    if-eqz v9, :cond_2

    .line 675
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 676
    .local v7, isSettingsApp:Z
    new-instance v8, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    move-object/from16 v0, p0

    invoke-direct {v8, v2, v0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    .line 677
    .local v8, p:Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v9}, Lcom/android/settings/users/AppRestrictionsFragment;->resolveInfoListHasPackage(Ljava/util/List;Ljava/lang/String;)Z

    move-result v3

    .line 678
    .local v3, hasSettings:Z
    iget-object v14, v1, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v14, :cond_b

    iget-object v14, v1, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    :goto_2
    invoke-virtual {v8, v14}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 679
    const/4 v14, 0x0

    invoke-virtual {v8, v14}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setChecked(Z)V

    .line 680
    iget-object v14, v1, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    invoke-virtual {v8, v14}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 681
    iget-object v14, v1, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->masterEntry:Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;

    if-eqz v14, :cond_3

    .line 682
    const v14, 0x7f080b9b

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    iget-object v0, v1, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->masterEntry:Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    invoke-virtual {v2, v14, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 685
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/settings/users/AppRestrictionsFragment;->getKeyForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setKey(Ljava/lang/String;)V

    .line 686
    if-nez v3, :cond_4

    if-eqz v7, :cond_c

    :cond_4
    const/4 v14, 0x1

    :goto_3
    #calls: Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setSettingsEnabled(Z)V
    invoke-static {v8, v14}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->access$800(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;Z)V

    .line 687
    const/4 v14, 0x0

    invoke-virtual {v8, v14}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setPersistent(Z)V

    .line 688
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 689
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 690
    const/4 v10, 0x0

    .line 692
    .local v10, pi:Landroid/content/pm/PackageInfo;
    const/16 v14, 0x2040

    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v15}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v15

    invoke-interface {v6, v9, v14, v15}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 697
    :goto_4
    if-eqz v10, :cond_d

    iget-boolean v14, v10, Landroid/content/pm/PackageInfo;->requiredForAllUsers:Z

    if-nez v14, :cond_5

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/settings/users/AppRestrictionsFragment;->isPlatformSigned(Landroid/content/pm/PackageInfo;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 698
    :cond_5
    const/4 v14, 0x1

    invoke-virtual {v8, v14}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setChecked(Z)V

    .line 699
    const/4 v14, 0x1

    invoke-virtual {v8, v14}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setImmutable(Z)V

    .line 701
    if-nez v3, :cond_6

    if-eqz v7, :cond_2

    .line 705
    :cond_6
    if-eqz v3, :cond_7

    .line 706
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v8, v14}, Lcom/android/settings/users/AppRestrictionsFragment;->requestRestrictionsForApp(Ljava/lang/String;Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;Z)V

    .line 711
    :cond_7
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mRestrictedProfile:Z

    if-eqz v14, :cond_8

    iget-object v14, v10, Landroid/content/pm/PackageInfo;->requiredAccountType:Ljava/lang/String;

    if-eqz v14, :cond_8

    iget-object v14, v10, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    if-nez v14, :cond_8

    .line 713
    const/4 v14, 0x0

    invoke-virtual {v8, v14}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setChecked(Z)V

    .line 714
    const/4 v14, 0x1

    invoke-virtual {v8, v14}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setImmutable(Z)V

    .line 715
    const v14, 0x7f080b9c

    invoke-virtual {v8, v14}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setSummary(I)V

    .line 717
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mRestrictedProfile:Z

    if-eqz v14, :cond_9

    iget-object v14, v10, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    if-eqz v14, :cond_9

    .line 718
    const v14, 0x7f080b9d

    invoke-virtual {v8, v14}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setSummary(I)V

    .line 720
    :cond_9
    iget-object v14, v1, Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;->masterEntry:Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;

    if-eqz v14, :cond_a

    .line 721
    const/4 v14, 0x1

    invoke-virtual {v8, v14}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setImmutable(Z)V

    .line 722
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mSelectedPackages:Ljava/util/HashMap;

    invoke-virtual {v14, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    invoke-virtual {v8, v14}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setChecked(Z)V

    .line 724
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v14, v8}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 725
    if-eqz v7, :cond_e

    .line 726
    const/16 v14, 0x64

    invoke-virtual {v8, v14}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setOrder(I)V

    .line 730
    :goto_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mSelectedPackages:Ljava/util/HashMap;

    invoke-virtual {v8}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v15

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v14, v9, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppListChanged:Z

    .line 732
    add-int/lit8 v4, v4, 0x1

    .line 733
    goto/16 :goto_1

    .line 678
    .end local v10           #pi:Landroid/content/pm/PackageInfo;
    :cond_b
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 686
    :cond_c
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 708
    .restart local v10       #pi:Landroid/content/pm/PackageInfo;
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mNewUser:Z

    if-nez v14, :cond_7

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/settings/users/AppRestrictionsFragment;->isAppEnabledForUser(Landroid/content/pm/PackageInfo;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 709
    const/4 v14, 0x1

    invoke-virtual {v8, v14}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setChecked(Z)V

    goto/16 :goto_5

    .line 728
    :cond_e
    add-int/lit8 v14, v4, 0x2

    mul-int/lit8 v14, v14, 0x64

    invoke-virtual {v8, v14}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setOrder(I)V

    goto :goto_6

    .line 737
    .end local v1           #app:Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;
    .end local v3           #hasSettings:Z
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v7           #isSettingsApp:Z
    .end local v8           #p:Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;
    .end local v9           #packageName:Ljava/lang/String;
    .end local v10           #pi:Landroid/content/pm/PackageInfo;
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mNewUser:Z

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mFirstTime:Z

    if-eqz v14, :cond_0

    .line 738
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mFirstTime:Z

    .line 739
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/users/AppRestrictionsFragment;->applyUserAppsStates()V

    goto/16 :goto_0

    .line 695
    .restart local v1       #app:Lcom/android/settings/users/AppRestrictionsFragment$SelectableAppInfo;
    .restart local v3       #hasSettings:Z
    .restart local v5       #i$:Ljava/util/Iterator;
    .restart local v7       #isSettingsApp:Z
    .restart local v8       #p:Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;
    .restart local v9       #packageName:Ljava/lang/String;
    .restart local v10       #pi:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v14

    goto/16 :goto_4
.end method

.method private removeRestrictionsForApp(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)V
    .locals 3
    .parameter "preference"

    .prologue
    .line 852
    #getter for: Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->mChildren:Ljava/util/List;
    invoke-static {p1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->access$1100(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference;

    .line 853
    .local v1, p:Landroid/preference/Preference;
    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 855
    .end local v1           #p:Landroid/preference/Preference;
    :cond_0
    #getter for: Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->mChildren:Ljava/util/List;
    invoke-static {p1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->access$1100(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 856
    return-void
.end method

.method private requestRestrictionsForApp(Ljava/lang/String;Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;Z)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 886
    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0, p1, v1}, Landroid/os/UserManager;->getApplicationRestrictions(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/os/Bundle;

    move-result-object v0

    .line 888
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.GET_RESTRICTION_ENTRIES"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 889
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 890
    const-string v3, "android.intent.extra.restrictions_bundle"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 891
    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 892
    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v3, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;-><init>(Lcom/android/settings/users/AppRestrictionsFragment;Ljava/lang/String;Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;Z)V

    const/4 v5, -0x1

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 895
    return-void
.end method

.method private resolveInfoListHasPackage(Ljava/util/List;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 758
    .local p1, receivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 759
    .local v1, info:Landroid/content/pm/ResolveInfo;
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 760
    const/4 v2, 0x1

    .line 763
    .end local v1           #info:Landroid/content/pm/ResolveInfo;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateAllEntries(Ljava/lang/String;Z)V
    .locals 3
    .parameter "prefKey"
    .parameter "checked"

    .prologue
    .line 767
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 768
    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    .line 769
    .local v1, pref:Landroid/preference/Preference;
    instance-of v2, v1, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    if-eqz v2, :cond_0

    .line 770
    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 771
    check-cast v1, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    .end local v1           #pref:Landroid/preference/Preference;
    invoke-virtual {v1, p2}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setChecked(Z)V

    .line 767
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 775
    :cond_1
    return-void
.end method


# virtual methods
.method protected getAppPreferenceGroup()Landroid/preference/PreferenceGroup;
    .locals 1

    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method protected getCircularUserIcon()Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    .line 349
    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v3, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 350
    .local v1, userIcon:Landroid/graphics/Bitmap;
    if-nez v1, :cond_0

    .line 351
    const/4 v0, 0x0

    .line 355
    :goto_0
    return-object v0

    .line 353
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/settings/users/CircleFramedDrawable;->getInstance(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/android/settings/users/CircleFramedDrawable;

    move-result-object v0

    .line 355
    .local v0, circularIcon:Lcom/android/settings/users/CircleFramedDrawable;
    goto :goto_0
.end method

.method protected init(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 261
    if-eqz p1, :cond_2

    .line 262
    new-instance v1, Landroid/os/UserHandle;

    const-string v2, "user_id"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    iput-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    .line 273
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    if-nez v1, :cond_1

    .line 274
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    .line 277
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 278
    const-string v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mIPm:Landroid/content/pm/IPackageManager;

    .line 279
    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    .line 280
    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mRestrictedProfile:Z

    .line 282
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android"

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mSysPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :goto_1
    const v1, 0x7f050006

    invoke-virtual {p0, v1}, Lcom/android/settings/users/AppRestrictionsFragment;->addPreferencesFromResource(I)V

    .line 288
    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getAppPreferenceGroup()Landroid/preference/PreferenceGroup;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppList:Landroid/preference/PreferenceGroup;

    .line 289
    return-void

    .line 264
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 265
    .local v0, args:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 266
    const-string v1, "user_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 267
    new-instance v1, Landroid/os/UserHandle;

    const-string v2, "user_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    iput-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    .line 269
    :cond_3
    const-string v1, "new_user"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mNewUser:Z

    goto :goto_0

    .line 284
    .end local v0           #args:Landroid/os/Bundle;
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1017
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1019
    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mCustomRequestMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    .line 1020
    if-nez v0, :cond_0

    .line 1021
    sget-object v0, Lcom/android/settings/users/AppRestrictionsFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown requestCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    :goto_0
    return-void

    .line 1025
    :cond_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 1026
    invoke-virtual {v0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pkg_"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1027
    const-string v2, "android.intent.extra.restrictions_list"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1029
    const-string v3, "android.intent.extra.restrictions_bundle"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 1030
    if-eqz v2, :cond_2

    .line 1032
    invoke-virtual {v0, v2}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setRestrictions(Ljava/util/ArrayList;)V

    .line 1033
    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    invoke-static {v2}, Lcom/android/settings/users/RestrictionUtils;->restrictionsToBundle(Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/UserManager;->setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 1041
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mCustomRequestMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1035
    :cond_2
    if-eqz v3, :cond_1

    .line 1037
    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v3, v2}, Landroid/os/UserManager;->setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 779
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    if-eqz v2, :cond_0

    .line 780
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    .line 781
    .local v1, pref:Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v5, 0x7f0d015c

    if-ne v2, v5, :cond_1

    .line 782
    invoke-direct {p0, v1}, Lcom/android/settings/users/AppRestrictionsFragment;->onAppSettingsIconClicked(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)V

    .line 800
    .end local v1           #pref:Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;
    :cond_0
    :goto_0
    return-void

    .line 783
    .restart local v1       #pref:Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;
    :cond_1
    invoke-virtual {v1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isImmutable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 784
    invoke-virtual {v1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setChecked(Z)V

    .line 785
    invoke-virtual {v1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v5, "pkg_"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 786
    .local v0, packageName:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mSelectedPackages:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    invoke-virtual {v1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    #getter for: Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->hasSettings:Z
    invoke-static {v1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->access$900(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)Z

    move-result v2

    if-eqz v2, :cond_2

    #getter for: Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->restrictions:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->access$1000(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_2

    .line 790
    invoke-direct {p0, v0, v1, v4}, Lcom/android/settings/users/AppRestrictionsFragment;->requestRestrictionsForApp(Ljava/lang/String;Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;Z)V

    .line 792
    :cond_2
    iput-boolean v3, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppListChanged:Z

    .line 794
    iget-boolean v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mRestrictedProfile:Z

    if-nez v2, :cond_3

    .line 795
    invoke-virtual {v1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/android/settings/users/AppRestrictionsFragment;->applyUserAppState(Ljava/lang/String;Z)V

    .line 797
    :cond_3
    invoke-virtual {v1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings/users/AppRestrictionsFragment;->updateAllEntries(Ljava/lang/String;Z)V

    goto :goto_0

    .end local v0           #packageName:Ljava/lang/String;
    :cond_4
    move v2, v4

    .line 784
    goto :goto_1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 317
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 318
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mNewUser:Z

    .line 319
    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUserBackgrounding:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 320
    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mPackageObserver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 321
    iget-boolean v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppListChanged:Z

    if-eqz v0, :cond_0

    .line 322
    new-instance v0, Lcom/android/settings/users/AppRestrictionsFragment$3;

    invoke-direct {v0, p0}, Lcom/android/settings/users/AppRestrictionsFragment$3;-><init>(Lcom/android/settings/users/AppRestrictionsFragment;)V

    invoke-virtual {v0}, Lcom/android/settings/users/AppRestrictionsFragment$3;->start()V

    .line 328
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 17
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 804
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 805
    .local v5, key:Ljava/lang/String;
    if-eqz v5, :cond_1

    const-string v14, ";"

    invoke-virtual {v5, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 806
    new-instance v13, Ljava/util/StringTokenizer;

    const-string v14, ";"

    invoke-direct {v13, v5, v14}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    .local v13, st:Ljava/util/StringTokenizer;
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 808
    .local v7, packageName:Ljava/lang/String;
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    .line 809
    .local v9, restrictionKey:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppList:Landroid/preference/PreferenceGroup;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "pkg_"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    .line 811
    .local v2, appPref:Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;
    invoke-virtual {v2}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->getRestrictions()Ljava/util/ArrayList;

    move-result-object v10

    .line 812
    .local v10, restrictions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/RestrictionEntry;>;"
    if-eqz v10, :cond_1

    .line 813
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/RestrictionEntry;

    .line 814
    .local v3, entry:Landroid/content/RestrictionEntry;
    invoke-virtual {v3}, Landroid/content/RestrictionEntry;->getKey()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 815
    invoke-virtual {v3}, Landroid/content/RestrictionEntry;->getType()I

    move-result v14

    packed-switch v14, :pswitch_data_0

    goto :goto_0

    .line 817
    :pswitch_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    invoke-virtual {v3, v14}, Landroid/content/RestrictionEntry;->setSelectedState(Z)V

    .line 836
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 837
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-static {v14, v10, v15}, Lcom/android/settings/users/RestrictionUtils;->setRestrictions(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/UserHandle;)V

    .line 848
    .end local v2           #appPref:Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;
    .end local v3           #entry:Landroid/content/RestrictionEntry;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v7           #packageName:Ljava/lang/String;
    .end local v9           #restrictionKey:Ljava/lang/String;
    .end local v10           #restrictions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/RestrictionEntry;>;"
    .end local v13           #st:Ljava/util/StringTokenizer;
    :cond_1
    :goto_2
    const/4 v14, 0x1

    return v14

    .restart local v2       #appPref:Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;
    .restart local v3       #entry:Landroid/content/RestrictionEntry;
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v7       #packageName:Ljava/lang/String;
    .restart local v9       #restrictionKey:Ljava/lang/String;
    .restart local v10       #restrictions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/RestrictionEntry;>;"
    .restart local v13       #st:Ljava/util/StringTokenizer;
    .restart local p2
    :pswitch_1
    move-object/from16 v6, p1

    .line 821
    check-cast v6, Landroid/preference/ListPreference;

    .local v6, listPref:Landroid/preference/ListPreference;
    move-object/from16 v14, p2

    .line 822
    check-cast v14, Ljava/lang/String;

    invoke-virtual {v3, v14}, Landroid/content/RestrictionEntry;->setSelectedString(Ljava/lang/String;)V

    .line 823
    invoke-virtual {v3}, Landroid/content/RestrictionEntry;->getChoiceEntries()[Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3}, Landroid/content/RestrictionEntry;->getChoiceValues()[Ljava/lang/String;

    move-result-object v15

    check-cast p2, Ljava/lang/String;

    .end local p2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v14, v15, v1}, Lcom/android/settings/users/AppRestrictionsFragment;->findInArray([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 825
    .local v8, readable:Ljava/lang/String;
    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .end local v6           #listPref:Landroid/preference/ListPreference;
    .end local v8           #readable:Ljava/lang/String;
    .restart local p2
    :pswitch_2
    move-object/from16 v12, p2

    .line 828
    check-cast v12, Ljava/util/Set;

    .line 829
    .local v12, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v12}, Ljava/util/Set;->size()I

    move-result v14

    new-array v11, v14, [Ljava/lang/String;

    .line 830
    .local v11, selectedValues:[Ljava/lang/String;
    invoke-interface {v12, v11}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 831
    invoke-virtual {v3, v11}, Landroid/content/RestrictionEntry;->setAllSelectedStrings([Ljava/lang/String;)V

    goto :goto_1

    .line 839
    .end local v11           #selectedValues:[Ljava/lang/String;
    .end local v12           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local p2
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    invoke-static {v10}, Lcom/android/settings/users/RestrictionUtils;->restrictionsToBundle(Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v14, v7, v15, v0}, Landroid/os/UserManager;->setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    goto :goto_2

    .line 815
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preference"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 1056
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "pkg_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v0, p1

    .line 1057
    check-cast v0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    .line 1058
    .local v0, arp:Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;
    invoke-virtual {v0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isImmutable()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1059
    invoke-virtual {v0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "pkg_"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1060
    .local v2, packageName:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v4

    if-nez v4, :cond_0

    move v1, v3

    .line 1061
    .local v1, newEnabledState:Z
    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setChecked(Z)V

    .line 1062
    iget-object v4, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mSelectedPackages:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1063
    invoke-virtual {v0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v1}, Lcom/android/settings/users/AppRestrictionsFragment;->updateAllEntries(Ljava/lang/String;Z)V

    .line 1064
    iput-boolean v3, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppListChanged:Z

    .line 1065
    invoke-direct {p0, v2, v1}, Lcom/android/settings/users/AppRestrictionsFragment;->applyUserAppState(Ljava/lang/String;Z)V

    .line 1069
    .end local v0           #arp:Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;
    .end local v1           #newEnabledState:Z
    .end local v2           #packageName:Ljava/lang/String;
    :cond_1
    :goto_0
    return v3

    :cond_2
    move v3, v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 299
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 301
    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUserBackgrounding:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.USER_BACKGROUND"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 303
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 304
    .local v0, packageFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 305
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 306
    const-string v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 307
    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mPackageObserver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 309
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppListChanged:Z

    .line 310
    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppLoadingTask:Landroid/os/AsyncTask;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppLoadingTask:Landroid/os/AsyncTask;

    invoke-virtual {v2}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    sget-object v3, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v2, v3, :cond_1

    .line 311
    :cond_0
    new-instance v2, Lcom/android/settings/users/AppRestrictionsFragment$AppLoadingTask;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/users/AppRestrictionsFragment$AppLoadingTask;-><init>(Lcom/android/settings/users/AppRestrictionsFragment;Lcom/android/settings/users/AppRestrictionsFragment$1;)V

    check-cast v1, [Ljava/lang/Void;

    invoke-virtual {v2, v1}, Lcom/android/settings/users/AppRestrictionsFragment$AppLoadingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppLoadingTask:Landroid/os/AsyncTask;

    .line 313
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 293
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 294
    const-string v0, "user_id"

    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 295
    return-void
.end method
