.class final Lcom/android/settings/location/SettingsInjector$StatusLoadingHandler;
.super Landroid/os/Handler;
.source "SettingsInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/location/SettingsInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StatusLoadingHandler"
.end annotation


# instance fields
.field private mReloadRequested:Z

.field private mSettingsBeingLoaded:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/settings/location/SettingsInjector$Setting;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingsToLoad:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/settings/location/SettingsInjector$Setting;",
            ">;"
        }
    .end annotation
.end field

.field private mTimedOutSettings:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/settings/location/SettingsInjector$Setting;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/location/SettingsInjector;


# direct methods
.method private constructor <init>(Lcom/android/settings/location/SettingsInjector;)V
    .locals 1
    .parameter

    .prologue
    .line 270
    iput-object p1, p0, Lcom/android/settings/location/SettingsInjector$StatusLoadingHandler;->this$0:Lcom/android/settings/location/SettingsInjector;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 275
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/location/SettingsInjector$StatusLoadingHandler;->mSettingsToLoad:Ljava/util/Set;

    .line 281
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/location/SettingsInjector$StatusLoadingHandler;->mSettingsBeingLoaded:Ljava/util/Set;

    .line 288
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/location/SettingsInjector$StatusLoadingHandler;->mTimedOutSettings:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/location/SettingsInjector;Lcom/android/settings/location/SettingsInjector$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 270
    invoke-direct {p0, p1}, Lcom/android/settings/location/SettingsInjector$StatusLoadingHandler;-><init>(Lcom/android/settings/location/SettingsInjector;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x2

    const/4 v9, 0x3

    .line 294
    const-string v5, "SettingsInjector"

    invoke-static {v5, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 295
    const-string v5, "SettingsInjector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleMessage start: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_0
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 320
    const-string v5, "SettingsInjector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected what: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/android/settings/location/SettingsInjector$StatusLoadingHandler;->mSettingsBeingLoaded:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    if-gtz v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/location/SettingsInjector$StatusLoadingHandler;->mTimedOutSettings:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    if-le v5, v11, :cond_4

    .line 330
    :cond_2
    const-string v5, "SettingsInjector"

    invoke-static {v5, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 331
    const-string v5, "SettingsInjector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "too many services already live for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_3
    :goto_1
    return-void

    .line 301
    :pswitch_0
    iput-boolean v11, p0, Lcom/android/settings/location/SettingsInjector$StatusLoadingHandler;->mReloadRequested:Z

    goto :goto_0

    .line 304
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/settings/location/SettingsInjector$Setting;

    .line 305
    .local v1, receivedSetting:Lcom/android/settings/location/SettingsInjector$Setting;
    invoke-virtual {v1}, Lcom/android/settings/location/SettingsInjector$Setting;->maybeLogElapsedTime()V

    .line 306
    iget-object v5, p0, Lcom/android/settings/location/SettingsInjector$StatusLoadingHandler;->mSettingsBeingLoaded:Ljava/util/Set;

    invoke-interface {v5, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 307
    iget-object v5, p0, Lcom/android/settings/location/SettingsInjector$StatusLoadingHandler;->mTimedOutSettings:Ljava/util/Set;

    invoke-interface {v5, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 308
    invoke-virtual {p0, v9, v1}, Lcom/android/settings/location/SettingsInjector$StatusLoadingHandler;->removeMessages(ILjava/lang/Object;)V

    goto :goto_0

    .line 311
    .end local v1           #receivedSetting:Lcom/android/settings/location/SettingsInjector$Setting;
    :pswitch_2
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/settings/location/SettingsInjector$Setting;

    .line 312
    .local v3, timedOutSetting:Lcom/android/settings/location/SettingsInjector$Setting;
    iget-object v5, p0, Lcom/android/settings/location/SettingsInjector$StatusLoadingHandler;->mSettingsBeingLoaded:Ljava/util/Set;

    invoke-interface {v5, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 313
    iget-object v5, p0, Lcom/android/settings/location/SettingsInjector$StatusLoadingHandler;->mTimedOutSettings:Ljava/util/Set;

    invoke-interface {v5, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 314
    const-string v5, "SettingsInjector"

    const/4 v6, 0x5

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 315
    const-string v5, "SettingsInjector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Timed out after "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/settings/location/SettingsInjector$Setting;->getElapsedTime()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " millis trying to get status for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 336
    .end local v3           #timedOutSetting:Lcom/android/settings/location/SettingsInjector$Setting;
    :cond_4
    iget-boolean v5, p0, Lcom/android/settings/location/SettingsInjector$StatusLoadingHandler;->mReloadRequested:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/settings/location/SettingsInjector$StatusLoadingHandler;->mSettingsToLoad:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/settings/location/SettingsInjector$StatusLoadingHandler;->mSettingsBeingLoaded:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/settings/location/SettingsInjector$StatusLoadingHandler;->mTimedOutSettings:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 338
    const-string v5, "SettingsInjector"

    invoke-static {v5, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 339
    const-string v5, "SettingsInjector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reloading because idle and reload requesteed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_5
    iget-object v5, p0, Lcom/android/settings/location/SettingsInjector$StatusLoadingHandler;->mSettingsToLoad:Ljava/util/Set;

    iget-object v6, p0, Lcom/android/settings/location/SettingsInjector$StatusLoadingHandler;->this$0:Lcom/android/settings/location/SettingsInjector;

    #getter for: Lcom/android/settings/location/SettingsInjector;->mSettings:Ljava/util/Set;
    invoke-static {v6}, Lcom/android/settings/location/SettingsInjector;->access$200(Lcom/android/settings/location/SettingsInjector;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 343
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/settings/location/SettingsInjector$StatusLoadingHandler;->mReloadRequested:Z

    .line 347
    :cond_6
    iget-object v5, p0, Lcom/android/settings/location/SettingsInjector$StatusLoadingHandler;->mSettingsToLoad:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 348
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/settings/location/SettingsInjector$Setting;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_7

    .line 349
    const-string v5, "SettingsInjector"

    invoke-static {v5, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 350
    const-string v5, "SettingsInjector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "nothing left to do for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 354
    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/location/SettingsInjector$Setting;

    .line 355
    .local v2, setting:Lcom/android/settings/location/SettingsInjector$Setting;
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 358
    invoke-virtual {v2}, Lcom/android/settings/location/SettingsInjector$Setting;->startService()V

    .line 359
    iget-object v5, p0, Lcom/android/settings/location/SettingsInjector$StatusLoadingHandler;->mSettingsBeingLoaded:Ljava/util/Set;

    invoke-interface {v5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 363
    invoke-virtual {p0, v9, v2}, Lcom/android/settings/location/SettingsInjector$StatusLoadingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 364
    .local v4, timeoutMsg:Landroid/os/Message;
    const-wide/16 v5, 0x3e8

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/settings/location/SettingsInjector$StatusLoadingHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 366
    const-string v5, "SettingsInjector"

    invoke-static {v5, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 367
    const-string v5, "SettingsInjector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleMessage end "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", started loading "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 299
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StatusLoadingHandler{mSettingsToLoad="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/location/SettingsInjector$StatusLoadingHandler;->mSettingsToLoad:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSettingsBeingLoaded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/location/SettingsInjector$StatusLoadingHandler;->mSettingsBeingLoaded:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTimedOutSettings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/location/SettingsInjector$StatusLoadingHandler;->mTimedOutSettings:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mReloadRequested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/location/SettingsInjector$StatusLoadingHandler;->mReloadRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
