.class Lcom/android/settings/notificationlight/NotificationLightSettings$PackageAdapter$1$1;
.super Ljava/lang/Object;
.source "NotificationLightSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notificationlight/NotificationLightSettings$PackageAdapter$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/settings/notificationlight/NotificationLightSettings$PackageAdapter$1;

.field final synthetic val$item:Lcom/android/settings/notificationlight/NotificationLightSettings$PackageItem;


# direct methods
.method constructor <init>(Lcom/android/settings/notificationlight/NotificationLightSettings$PackageAdapter$1;Lcom/android/settings/notificationlight/NotificationLightSettings$PackageItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 551
    iput-object p1, p0, Lcom/android/settings/notificationlight/NotificationLightSettings$PackageAdapter$1$1;->this$2:Lcom/android/settings/notificationlight/NotificationLightSettings$PackageAdapter$1;

    iput-object p2, p0, Lcom/android/settings/notificationlight/NotificationLightSettings$PackageAdapter$1$1;->val$item:Lcom/android/settings/notificationlight/NotificationLightSettings$PackageItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 557
    iget-object v1, p0, Lcom/android/settings/notificationlight/NotificationLightSettings$PackageAdapter$1$1;->this$2:Lcom/android/settings/notificationlight/NotificationLightSettings$PackageAdapter$1;

    iget-object v1, v1, Lcom/android/settings/notificationlight/NotificationLightSettings$PackageAdapter$1;->this$1:Lcom/android/settings/notificationlight/NotificationLightSettings$PackageAdapter;

    #getter for: Lcom/android/settings/notificationlight/NotificationLightSettings$PackageAdapter;->mInstalledPackages:Ljava/util/List;
    invoke-static {v1}, Lcom/android/settings/notificationlight/NotificationLightSettings$PackageAdapter;->access$200(Lcom/android/settings/notificationlight/NotificationLightSettings$PackageAdapter;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notificationlight/NotificationLightSettings$PackageAdapter$1$1;->val$item:Lcom/android/settings/notificationlight/NotificationLightSettings$PackageItem;

    invoke-static {v1, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 558
    .local v0, index:I
    if-gez v0, :cond_0

    .line 559
    iget-object v1, p0, Lcom/android/settings/notificationlight/NotificationLightSettings$PackageAdapter$1$1;->this$2:Lcom/android/settings/notificationlight/NotificationLightSettings$PackageAdapter$1;

    iget-object v1, v1, Lcom/android/settings/notificationlight/NotificationLightSettings$PackageAdapter$1;->this$1:Lcom/android/settings/notificationlight/NotificationLightSettings$PackageAdapter;

    #getter for: Lcom/android/settings/notificationlight/NotificationLightSettings$PackageAdapter;->mInstalledPackages:Ljava/util/List;
    invoke-static {v1}, Lcom/android/settings/notificationlight/NotificationLightSettings$PackageAdapter;->access$200(Lcom/android/settings/notificationlight/NotificationLightSettings$PackageAdapter;)Ljava/util/List;

    move-result-object v1

    neg-int v2, v0

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/android/settings/notificationlight/NotificationLightSettings$PackageAdapter$1$1;->val$item:Lcom/android/settings/notificationlight/NotificationLightSettings$PackageItem;

    invoke-interface {v1, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 563
    :goto_0
    iget-object v1, p0, Lcom/android/settings/notificationlight/NotificationLightSettings$PackageAdapter$1$1;->this$2:Lcom/android/settings/notificationlight/NotificationLightSettings$PackageAdapter$1;

    iget-object v1, v1, Lcom/android/settings/notificationlight/NotificationLightSettings$PackageAdapter$1;->this$1:Lcom/android/settings/notificationlight/NotificationLightSettings$PackageAdapter;

    invoke-virtual {v1}, Lcom/android/settings/notificationlight/NotificationLightSettings$PackageAdapter;->notifyDataSetChanged()V

    .line 564
    return-void

    .line 561
    :cond_0
    iget-object v1, p0, Lcom/android/settings/notificationlight/NotificationLightSettings$PackageAdapter$1$1;->this$2:Lcom/android/settings/notificationlight/NotificationLightSettings$PackageAdapter$1;

    iget-object v1, v1, Lcom/android/settings/notificationlight/NotificationLightSettings$PackageAdapter$1;->this$1:Lcom/android/settings/notificationlight/NotificationLightSettings$PackageAdapter;

    #getter for: Lcom/android/settings/notificationlight/NotificationLightSettings$PackageAdapter;->mInstalledPackages:Ljava/util/List;
    invoke-static {v1}, Lcom/android/settings/notificationlight/NotificationLightSettings$PackageAdapter;->access$200(Lcom/android/settings/notificationlight/NotificationLightSettings$PackageAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/notificationlight/NotificationLightSettings$PackageItem;

    iget-object v1, v1, Lcom/android/settings/notificationlight/NotificationLightSettings$PackageItem;->activityTitles:Ljava/util/TreeSet;

    iget-object v2, p0, Lcom/android/settings/notificationlight/NotificationLightSettings$PackageAdapter$1$1;->val$item:Lcom/android/settings/notificationlight/NotificationLightSettings$PackageItem;

    iget-object v2, v2, Lcom/android/settings/notificationlight/NotificationLightSettings$PackageItem;->activityTitles:Ljava/util/TreeSet;

    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method
