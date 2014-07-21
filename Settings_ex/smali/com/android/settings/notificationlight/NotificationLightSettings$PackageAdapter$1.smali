.class Lcom/android/settings/notificationlight/NotificationLightSettings$PackageAdapter$1;
.super Ljava/lang/Object;
.source "NotificationLightSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notificationlight/NotificationLightSettings$PackageAdapter;->reloadList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/notificationlight/NotificationLightSettings$PackageAdapter;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/android/settings/notificationlight/NotificationLightSettings$PackageAdapter;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 530
    iput-object p1, p0, Lcom/android/settings/notificationlight/NotificationLightSettings$PackageAdapter$1;->this$1:Lcom/android/settings/notificationlight/NotificationLightSettings$PackageAdapter;

    iput-object p2, p0, Lcom/android/settings/notificationlight/NotificationLightSettings$PackageAdapter$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 533
    iget-object v6, p0, Lcom/android/settings/notificationlight/NotificationLightSettings$PackageAdapter$1;->this$1:Lcom/android/settings/notificationlight/NotificationLightSettings$PackageAdapter;

    #getter for: Lcom/android/settings/notificationlight/NotificationLightSettings$PackageAdapter;->mInstalledPackages:Ljava/util/List;
    invoke-static {v6}, Lcom/android/settings/notificationlight/NotificationLightSettings$PackageAdapter;->access$200(Lcom/android/settings/notificationlight/NotificationLightSettings$PackageAdapter;)Ljava/util/List;

    move-result-object v7

    monitor-enter v7

    .line 534
    :try_start_0
    iget-object v6, p0, Lcom/android/settings/notificationlight/NotificationLightSettings$PackageAdapter$1;->this$1:Lcom/android/settings/notificationlight/NotificationLightSettings$PackageAdapter;

    #getter for: Lcom/android/settings/notificationlight/NotificationLightSettings$PackageAdapter;->mInstalledPackages:Ljava/util/List;
    invoke-static {v6}, Lcom/android/settings/notificationlight/NotificationLightSettings$PackageAdapter;->access$200(Lcom/android/settings/notificationlight/NotificationLightSettings$PackageAdapter;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 535
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 537
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v5, v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 538
    .local v5, mainIntent:Landroid/content/Intent;
    const-string v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 539
    iget-object v6, p0, Lcom/android/settings/notificationlight/NotificationLightSettings$PackageAdapter$1;->this$1:Lcom/android/settings/notificationlight/NotificationLightSettings$PackageAdapter;

    iget-object v6, v6, Lcom/android/settings/notificationlight/NotificationLightSettings$PackageAdapter;->this$0:Lcom/android/settings/notificationlight/NotificationLightSettings;

    #getter for: Lcom/android/settings/notificationlight/NotificationLightSettings;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v6}, Lcom/android/settings/notificationlight/NotificationLightSettings;->access$300(Lcom/android/settings/notificationlight/NotificationLightSettings;)Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 542
    .local v3, installedAppsInfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 543
    .local v2, info:Landroid/content/pm/ResolveInfo;
    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 545
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    new-instance v4, Lcom/android/settings/notificationlight/NotificationLightSettings$PackageItem;

    invoke-direct {v4, v8}, Lcom/android/settings/notificationlight/NotificationLightSettings$PackageItem;-><init>(Lcom/android/settings/notificationlight/NotificationLightSettings$1;)V

    .line 546
    .local v4, item:Lcom/android/settings/notificationlight/NotificationLightSettings$PackageItem;
    iget-object v6, p0, Lcom/android/settings/notificationlight/NotificationLightSettings$PackageAdapter$1;->this$1:Lcom/android/settings/notificationlight/NotificationLightSettings$PackageAdapter;

    iget-object v6, v6, Lcom/android/settings/notificationlight/NotificationLightSettings$PackageAdapter;->this$0:Lcom/android/settings/notificationlight/NotificationLightSettings;

    #getter for: Lcom/android/settings/notificationlight/NotificationLightSettings;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v6}, Lcom/android/settings/notificationlight/NotificationLightSettings;->access$300(Lcom/android/settings/notificationlight/NotificationLightSettings;)Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v4, Lcom/android/settings/notificationlight/NotificationLightSettings$PackageItem;->title:Ljava/lang/CharSequence;

    .line 547
    iget-object v6, v4, Lcom/android/settings/notificationlight/NotificationLightSettings$PackageItem;->activityTitles:Ljava/util/TreeSet;

    iget-object v7, p0, Lcom/android/settings/notificationlight/NotificationLightSettings$PackageAdapter$1;->this$1:Lcom/android/settings/notificationlight/NotificationLightSettings$PackageAdapter;

    iget-object v7, v7, Lcom/android/settings/notificationlight/NotificationLightSettings$PackageAdapter;->this$0:Lcom/android/settings/notificationlight/NotificationLightSettings;

    #getter for: Lcom/android/settings/notificationlight/NotificationLightSettings;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v7}, Lcom/android/settings/notificationlight/NotificationLightSettings;->access$300(Lcom/android/settings/notificationlight/NotificationLightSettings;)Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 548
    iget-object v6, p0, Lcom/android/settings/notificationlight/NotificationLightSettings$PackageAdapter$1;->this$1:Lcom/android/settings/notificationlight/NotificationLightSettings$PackageAdapter;

    iget-object v6, v6, Lcom/android/settings/notificationlight/NotificationLightSettings$PackageAdapter;->this$0:Lcom/android/settings/notificationlight/NotificationLightSettings;

    #getter for: Lcom/android/settings/notificationlight/NotificationLightSettings;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v6}, Lcom/android/settings/notificationlight/NotificationLightSettings;->access$300(Lcom/android/settings/notificationlight/NotificationLightSettings;)Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v4, Lcom/android/settings/notificationlight/NotificationLightSettings$PackageItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 549
    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v6, v4, Lcom/android/settings/notificationlight/NotificationLightSettings$PackageItem;->packageName:Ljava/lang/String;

    .line 551
    iget-object v6, p0, Lcom/android/settings/notificationlight/NotificationLightSettings$PackageAdapter$1;->val$handler:Landroid/os/Handler;

    new-instance v7, Lcom/android/settings/notificationlight/NotificationLightSettings$PackageAdapter$1$1;

    invoke-direct {v7, p0, v4}, Lcom/android/settings/notificationlight/NotificationLightSettings$PackageAdapter$1$1;-><init>(Lcom/android/settings/notificationlight/NotificationLightSettings$PackageAdapter$1;Lcom/android/settings/notificationlight/NotificationLightSettings$PackageItem;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 535
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #info:Landroid/content/pm/ResolveInfo;
    .end local v3           #installedAppsInfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4           #item:Lcom/android/settings/notificationlight/NotificationLightSettings$PackageItem;
    .end local v5           #mainIntent:Landroid/content/Intent;
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 567
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #installedAppsInfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v5       #mainIntent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
