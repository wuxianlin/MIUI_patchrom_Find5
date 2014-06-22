.class public Lcom/android/internal/util/cm/DevUtils;
.super Ljava/lang/Object;
.source "DevUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static killForegroundApplication(Landroid/content/Context;)Z
    .locals 15
    .parameter "context"

    .prologue
    .line 26
    const/4 v11, 0x0

    .line 28
    .local v11, targetKilled:Z
    :try_start_0
    new-instance v7, Landroid/content/Intent;

    const-string v13, "android.intent.action.MAIN"

    invoke-direct {v7, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 29
    .local v7, intent:Landroid/content/Intent;
    const-string v4, "com.android.launcher"

    .line 30
    .local v4, defaultHomePackage:Ljava/lang/String;
    const-string v13, "android.intent.category.HOME"

    invoke-virtual {v7, v13}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v7, v14}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v10

    .line 32
    .local v10, res:Landroid/content/pm/ResolveInfo;
    iget-object v13, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v13, :cond_0

    iget-object v13, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v14, "android"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 33
    iget-object v13, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 35
    :cond_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 36
    .local v0, am:Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 37
    .local v2, apps:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 38
    .local v1, appInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v12, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    .line 41
    .local v12, uid:I
    const/16 v13, 0x2710

    if-lt v12, v13, :cond_1

    const/16 v13, 0x4e1f

    if-gt v12, v13, :cond_1

    iget v13, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v14, 0x64

    if-ne v13, v14, :cond_1

    .line 43
    iget-object v13, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz v13, :cond_3

    iget-object v13, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v13, v13

    if-lez v13, :cond_3

    .line 44
    iget-object v3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .local v3, arr$:[Ljava/lang/String;
    array-length v8, v3

    .local v8, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_1
    if-ge v6, v8, :cond_1

    aget-object v9, v3, v6

    .line 45
    .local v9, pkg:Ljava/lang/String;
    const-string v13, "com.android.systemui"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 46
    const/4 v13, -0x2

    invoke-interface {v0, v9, v13}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    .line 47
    const/4 v11, 0x1

    .line 48
    goto :goto_0

    .line 44
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 52
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v6           #i$:I
    .end local v8           #len$:I
    .end local v9           #pkg:Ljava/lang/String;
    :cond_3
    iget v13, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v13}, Landroid/os/Process;->killProcess(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    const/4 v11, 0x1

    .line 61
    .end local v0           #am:Landroid/app/IActivityManager;
    .end local v1           #appInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v2           #apps:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v4           #defaultHomePackage:Ljava/lang/String;
    .end local v7           #intent:Landroid/content/Intent;
    .end local v10           #res:Landroid/content/pm/ResolveInfo;
    .end local v12           #uid:I
    :cond_4
    :goto_2
    return v11

    .line 58
    :catch_0
    move-exception v13

    goto :goto_2
.end method
