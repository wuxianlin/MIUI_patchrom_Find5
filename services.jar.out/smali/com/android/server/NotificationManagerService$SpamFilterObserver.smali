.class Lcom/android/server/NotificationManagerService$SpamFilterObserver;
.super Landroid/database/ContentObserver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SpamFilterObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/NotificationManagerService;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1398
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$SpamFilterObserver;->this$0:Lcom/android/server/NotificationManagerService;

    .line 1399
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1400
    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    .prologue
    .line 1403
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$SpamFilterObserver;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1404
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/internal/util/cm/SpamFilter;->NOTIFICATION_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1405
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 12
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1409
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 1410
    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    .line 1411
    .local v6, "pathSegments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x2

    if-lt v8, v9, :cond_2

    .line 1412
    const/4 v8, 0x0

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "delete"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1413
    const/4 v8, 0x1

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1414
    .local v7, "pkg":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/NotificationManagerService$SpamFilterObserver;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-virtual {v8, v7}, Lcom/android/server/NotificationManagerService;->getActiveNotifications(Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 1415
    .local v0, "activeNotifications":[Landroid/service/notification/StatusBarNotification;
    move-object v1, v0

    .local v1, "arr$":[Landroid/service/notification/StatusBarNotification;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v5, v1, v2

    .line 1416
    .local v5, "notification":Landroid/service/notification/StatusBarNotification;
    iget-object v8, p0, Lcom/android/server/NotificationManagerService$SpamFilterObserver;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v10

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v11

    # invokes: Lcom/android/server/NotificationManagerService;->indexOfNotificationLocked(Ljava/lang/String;Ljava/lang/String;II)I
    invoke-static {v8, v7, v9, v10, v11}, Lcom/android/server/NotificationManagerService;->access$2800(Lcom/android/server/NotificationManagerService;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v3

    .line 1418
    .local v3, "idx":I
    if-gez v3, :cond_0

    .line 1415
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1422
    :cond_0
    iget-object v8, p0, Lcom/android/server/NotificationManagerService$SpamFilterObserver;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/server/NotificationManagerService;->access$100(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v9

    monitor-enter v9

    .line 1423
    :try_start_0
    iget-object v8, p0, Lcom/android/server/NotificationManagerService$SpamFilterObserver;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/server/NotificationManagerService;->access$100(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1424
    monitor-exit v9

    goto :goto_1

    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 1428
    .end local v3    # "idx":I
    .end local v5    # "notification":Landroid/service/notification/StatusBarNotification;
    :cond_1
    iget-object v8, p0, Lcom/android/server/NotificationManagerService$SpamFilterObserver;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mSpamCache:Landroid/util/LruCache;
    invoke-static {v8}, Lcom/android/server/NotificationManagerService;->access$2900(Lcom/android/server/NotificationManagerService;)Landroid/util/LruCache;

    move-result-object v8

    invoke-virtual {v8}, Landroid/util/LruCache;->evictAll()V

    .line 1432
    .end local v0    # "activeNotifications":[Landroid/service/notification/StatusBarNotification;
    .end local v1    # "arr$":[Landroid/service/notification/StatusBarNotification;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "pathSegments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "pkg":Ljava/lang/String;
    :cond_2
    return-void
.end method
