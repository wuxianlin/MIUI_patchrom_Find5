.class Lcom/android/server/ThemeService$ThemeWorkerHandler;
.super Landroid/os/Handler;
.source "ThemeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ThemeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThemeWorkerHandler"
.end annotation


# static fields
.field private static final MESSAGE_APPLY_DEFAULT_THEME:I = 0x2

.field private static final MESSAGE_BUILD_ICON_CACHE:I = 0x3

.field private static final MESSAGE_CHANGE_THEME:I = 0x1

.field private static final MESSAGE_DEQUEUE_AND_PROCESS_THEME:I = 0x5

.field private static final MESSAGE_QUEUE_THEME_FOR_PROCESSING:I = 0x4


# instance fields
.field final synthetic this$0:Lcom/android/server/ThemeService;


# direct methods
.method public constructor <init>(Lcom/android/server/ThemeService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/server/ThemeService$ThemeWorkerHandler;->this$0:Lcom/android/server/ThemeService;

    .line 120
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 121
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 125
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 164
    invoke-static {}, Lcom/android/server/ThemeService;->access$500()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown message "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 127
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    .line 128
    .local v0, componentMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/ThemeService$ThemeWorkerHandler;->this$0:Lcom/android/server/ThemeService;

    #calls: Lcom/android/server/ThemeService;->doApplyTheme(Ljava/util/Map;)V
    invoke-static {v2, v0}, Lcom/android/server/ThemeService;->access$000(Lcom/android/server/ThemeService;Ljava/util/Map;)V

    goto :goto_0

    .line 131
    .end local v0           #componentMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_1
    iget-object v2, p0, Lcom/android/server/ThemeService$ThemeWorkerHandler;->this$0:Lcom/android/server/ThemeService;

    #calls: Lcom/android/server/ThemeService;->doApplyDefaultTheme()V
    invoke-static {v2}, Lcom/android/server/ThemeService;->access$100(Lcom/android/server/ThemeService;)V

    goto :goto_0

    .line 134
    :pswitch_2
    iget-object v2, p0, Lcom/android/server/ThemeService$ThemeWorkerHandler;->this$0:Lcom/android/server/ThemeService;

    #calls: Lcom/android/server/ThemeService;->doBuildIconCache()V
    invoke-static {v2}, Lcom/android/server/ThemeService;->access$200(Lcom/android/server/ThemeService;)V

    goto :goto_0

    .line 137
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 138
    .local v1, pkgName:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/ThemeService$ThemeWorkerHandler;->this$0:Lcom/android/server/ThemeService;

    #getter for: Lcom/android/server/ThemeService;->mThemesToProcessQueue:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/ThemeService;->access$300(Lcom/android/server/ThemeService;)Ljava/util/ArrayList;

    move-result-object v3

    monitor-enter v3

    .line 139
    :try_start_0
    iget-object v2, p0, Lcom/android/server/ThemeService$ThemeWorkerHandler;->this$0:Lcom/android/server/ThemeService;

    #getter for: Lcom/android/server/ThemeService;->mThemesToProcessQueue:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/ThemeService;->access$300(Lcom/android/server/ThemeService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 141
    iget-object v2, p0, Lcom/android/server/ThemeService$ThemeWorkerHandler;->this$0:Lcom/android/server/ThemeService;

    #getter for: Lcom/android/server/ThemeService;->mThemesToProcessQueue:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/ThemeService;->access$300(Lcom/android/server/ThemeService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    iget-object v2, p0, Lcom/android/server/ThemeService$ThemeWorkerHandler;->this$0:Lcom/android/server/ThemeService;

    #getter for: Lcom/android/server/ThemeService;->mThemesToProcessQueue:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/ThemeService;->access$300(Lcom/android/server/ThemeService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 143
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/android/server/ThemeService$ThemeWorkerHandler;->sendEmptyMessage(I)Z

    .line 146
    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 149
    .end local v1           #pkgName:Ljava/lang/String;
    :pswitch_4
    iget-object v2, p0, Lcom/android/server/ThemeService$ThemeWorkerHandler;->this$0:Lcom/android/server/ThemeService;

    #getter for: Lcom/android/server/ThemeService;->mThemesToProcessQueue:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/ThemeService;->access$300(Lcom/android/server/ThemeService;)Ljava/util/ArrayList;

    move-result-object v3

    monitor-enter v3

    .line 150
    :try_start_1
    iget-object v2, p0, Lcom/android/server/ThemeService$ThemeWorkerHandler;->this$0:Lcom/android/server/ThemeService;

    #getter for: Lcom/android/server/ThemeService;->mThemesToProcessQueue:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/ThemeService;->access$300(Lcom/android/server/ThemeService;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 151
    .restart local v1       #pkgName:Ljava/lang/String;
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 152
    if-eqz v1, :cond_0

    .line 154
    iget-object v2, p0, Lcom/android/server/ThemeService$ThemeWorkerHandler;->this$0:Lcom/android/server/ThemeService;

    #getter for: Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/ThemeService;->access$400(Lcom/android/server/ThemeService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->processThemeResources(Ljava/lang/String;)I

    .line 155
    iget-object v2, p0, Lcom/android/server/ThemeService$ThemeWorkerHandler;->this$0:Lcom/android/server/ThemeService;

    #getter for: Lcom/android/server/ThemeService;->mThemesToProcessQueue:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/ThemeService;->access$300(Lcom/android/server/ThemeService;)Ljava/util/ArrayList;

    move-result-object v3

    monitor-enter v3

    .line 156
    :try_start_2
    iget-object v2, p0, Lcom/android/server/ThemeService$ThemeWorkerHandler;->this$0:Lcom/android/server/ThemeService;

    #getter for: Lcom/android/server/ThemeService;->mThemesToProcessQueue:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/ThemeService;->access$300(Lcom/android/server/ThemeService;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 157
    iget-object v2, p0, Lcom/android/server/ThemeService$ThemeWorkerHandler;->this$0:Lcom/android/server/ThemeService;

    #getter for: Lcom/android/server/ThemeService;->mThemesToProcessQueue:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/ThemeService;->access$300(Lcom/android/server/ThemeService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 158
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/android/server/ThemeService$ThemeWorkerHandler;->sendEmptyMessage(I)Z

    .line 160
    :cond_2
    monitor-exit v3

    goto/16 :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 151
    .end local v1           #pkgName:Ljava/lang/String;
    :catchall_2
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v2

    .line 125
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
