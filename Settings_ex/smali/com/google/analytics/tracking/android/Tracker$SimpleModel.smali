.class Lcom/google/analytics/tracking/android/Tracker$SimpleModel;
.super Ljava/lang/Object;
.source "Tracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/tracking/android/Tracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimpleModel"
.end annotation


# instance fields
.field private permanentMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private temporaryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 790
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 791
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/Tracker$SimpleModel;->temporaryMap:Ljava/util/Map;

    .line 792
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/Tracker$SimpleModel;->permanentMap:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/analytics/tracking/android/Tracker$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 790
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/Tracker$SimpleModel;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized clearTemporaryValues()V
    .locals 1

    .prologue
    .line 803
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker$SimpleModel;->temporaryMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 804
    monitor-exit p0

    return-void

    .line 803
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getKeysAndValues()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 823
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/Tracker$SimpleModel;->permanentMap:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 824
    .local v0, result:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/google/analytics/tracking/android/Tracker$SimpleModel;->temporaryMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 825
    monitor-exit p0

    return-object v0

    .line 823
    .end local v0           #result:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 799
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker$SimpleModel;->permanentMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 800
    monitor-exit p0

    return-void

    .line 799
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAll(Ljava/util/Map;Ljava/lang/Boolean;)V
    .locals 1
    .parameter
    .parameter "isForNextHit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .prologue
    .line 815
    .local p1, keysAndValues:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 816
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker$SimpleModel;->temporaryMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 820
    :goto_0
    monitor-exit p0

    return-void

    .line 818
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker$SimpleModel;->permanentMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 815
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setForNextHit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 795
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker$SimpleModel;->temporaryMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 796
    monitor-exit p0

    return-void

    .line 795
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
