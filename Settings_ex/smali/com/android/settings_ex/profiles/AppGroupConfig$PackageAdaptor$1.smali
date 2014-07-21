.class Lcom/android/settings_ex/profiles/AppGroupConfig$PackageAdaptor$1;
.super Ljava/lang/Object;
.source "AppGroupConfig.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/profiles/AppGroupConfig$PackageAdaptor;->reloadList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/profiles/AppGroupConfig$PackageAdaptor;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/profiles/AppGroupConfig$PackageAdaptor;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 349
    iput-object p1, p0, Lcom/android/settings_ex/profiles/AppGroupConfig$PackageAdaptor$1;->this$1:Lcom/android/settings_ex/profiles/AppGroupConfig$PackageAdaptor;

    iput-object p2, p0, Lcom/android/settings_ex/profiles/AppGroupConfig$PackageAdaptor$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 353
    iget-object v4, p0, Lcom/android/settings_ex/profiles/AppGroupConfig$PackageAdaptor$1;->this$1:Lcom/android/settings_ex/profiles/AppGroupConfig$PackageAdaptor;

    iget-object v5, v4, Lcom/android/settings_ex/profiles/AppGroupConfig$PackageAdaptor;->mInstalledPackages:Ljava/util/List;

    monitor-enter v5

    .line 354
    :try_start_0
    iget-object v4, p0, Lcom/android/settings_ex/profiles/AppGroupConfig$PackageAdaptor$1;->this$1:Lcom/android/settings_ex/profiles/AppGroupConfig$PackageAdaptor;

    iget-object v4, v4, Lcom/android/settings_ex/profiles/AppGroupConfig$PackageAdaptor;->mInstalledPackages:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 355
    iget-object v4, p0, Lcom/android/settings_ex/profiles/AppGroupConfig$PackageAdaptor$1;->this$1:Lcom/android/settings_ex/profiles/AppGroupConfig$PackageAdaptor;

    iget-object v4, v4, Lcom/android/settings_ex/profiles/AppGroupConfig$PackageAdaptor;->mInstalledPackageInfo:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 356
    .local v2, info:Landroid/content/pm/PackageInfo;
    new-instance v3, Lcom/android/settings_ex/profiles/AppGroupConfig$PackageItem;

    iget-object v4, p0, Lcom/android/settings_ex/profiles/AppGroupConfig$PackageAdaptor$1;->this$1:Lcom/android/settings_ex/profiles/AppGroupConfig$PackageAdaptor;

    iget-object v4, v4, Lcom/android/settings_ex/profiles/AppGroupConfig$PackageAdaptor;->this$0:Lcom/android/settings_ex/profiles/AppGroupConfig;

    invoke-direct {v3, v4}, Lcom/android/settings_ex/profiles/AppGroupConfig$PackageItem;-><init>(Lcom/android/settings_ex/profiles/AppGroupConfig;)V

    .line 357
    .local v3, item:Lcom/android/settings_ex/profiles/AppGroupConfig$PackageItem;
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 358
    .local v0, applicationInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v4, p0, Lcom/android/settings_ex/profiles/AppGroupConfig$PackageAdaptor$1;->this$1:Lcom/android/settings_ex/profiles/AppGroupConfig$PackageAdaptor;

    iget-object v4, v4, Lcom/android/settings_ex/profiles/AppGroupConfig$PackageAdaptor;->this$0:Lcom/android/settings_ex/profiles/AppGroupConfig;

    #getter for: Lcom/android/settings_ex/profiles/AppGroupConfig;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v4}, Lcom/android/settings_ex/profiles/AppGroupConfig;->access$400(Lcom/android/settings_ex/profiles/AppGroupConfig;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/settings_ex/profiles/AppGroupConfig$PackageItem;->title:Ljava/lang/String;

    .line 359
    iget-object v4, p0, Lcom/android/settings_ex/profiles/AppGroupConfig$PackageAdaptor$1;->this$1:Lcom/android/settings_ex/profiles/AppGroupConfig$PackageAdaptor;

    iget-object v4, v4, Lcom/android/settings_ex/profiles/AppGroupConfig$PackageAdaptor;->this$0:Lcom/android/settings_ex/profiles/AppGroupConfig;

    #getter for: Lcom/android/settings_ex/profiles/AppGroupConfig;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v4}, Lcom/android/settings_ex/profiles/AppGroupConfig;->access$400(Lcom/android/settings_ex/profiles/AppGroupConfig;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v3, Lcom/android/settings_ex/profiles/AppGroupConfig$PackageItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 360
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/settings_ex/profiles/AppGroupConfig$PackageItem;->packageName:Ljava/lang/String;

    .line 361
    iget-boolean v4, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    iput-boolean v4, v3, Lcom/android/settings_ex/profiles/AppGroupConfig$PackageItem;->enabled:Z

    .line 362
    iget-object v4, p0, Lcom/android/settings_ex/profiles/AppGroupConfig$PackageAdaptor$1;->val$handler:Landroid/os/Handler;

    new-instance v6, Lcom/android/settings_ex/profiles/AppGroupConfig$PackageAdaptor$1$1;

    invoke-direct {v6, p0, v3}, Lcom/android/settings_ex/profiles/AppGroupConfig$PackageAdaptor$1$1;-><init>(Lcom/android/settings_ex/profiles/AppGroupConfig$PackageAdaptor$1;Lcom/android/settings_ex/profiles/AppGroupConfig$PackageItem;)V

    invoke-virtual {v4, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 374
    .end local v0           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #info:Landroid/content/pm/PackageInfo;
    .end local v3           #item:Lcom/android/settings_ex/profiles/AppGroupConfig$PackageItem;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 375
    return-void
.end method
