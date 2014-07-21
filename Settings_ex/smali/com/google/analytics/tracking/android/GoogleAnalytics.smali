.class public Lcom/google/analytics/tracking/android/GoogleAnalytics;
.super Ljava/lang/Object;
.source "GoogleAnalytics.java"

# interfaces
.implements Lcom/google/analytics/tracking/android/TrackerHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/analytics/tracking/android/GoogleAnalytics$AppOptOutCallback;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;


# instance fields
.field private mAdHitIdGenerator:Lcom/google/analytics/tracking/android/AdHitIdGenerator;

.field private volatile mAppOptOut:Ljava/lang/Boolean;

.field private volatile mClientId:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDefaultTracker:Lcom/google/analytics/tracking/android/Tracker;

.field private mLastTrackingId:Ljava/lang/String;

.field private mThread:Lcom/google/analytics/tracking/android/AnalyticsThread;

.field private final mTrackers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/analytics/tracking/android/Tracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->mTrackers:Ljava/util/Map;

    .line 53
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 56
    invoke-static {p1}, Lcom/google/analytics/tracking/android/GAThread;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/GAThread;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/analytics/tracking/android/GoogleAnalytics;-><init>(Landroid/content/Context;Lcom/google/analytics/tracking/android/AnalyticsThread;)V

    .line 57
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/analytics/tracking/android/AnalyticsThread;)V
    .locals 2
    .parameter "context"
    .parameter "thread"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->mTrackers:Ljava/util/Map;

    .line 60
    if-nez p1, :cond_0

    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->mContext:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->mThread:Lcom/google/analytics/tracking/android/AnalyticsThread;

    .line 65
    new-instance v0, Lcom/google/analytics/tracking/android/AdHitIdGenerator;

    invoke-direct {v0}, Lcom/google/analytics/tracking/android/AdHitIdGenerator;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->mAdHitIdGenerator:Lcom/google/analytics/tracking/android/AdHitIdGenerator;

    .line 66
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->mThread:Lcom/google/analytics/tracking/android/AnalyticsThread;

    new-instance v1, Lcom/google/analytics/tracking/android/GoogleAnalytics$1;

    invoke-direct {v1, p0}, Lcom/google/analytics/tracking/android/GoogleAnalytics$1;-><init>(Lcom/google/analytics/tracking/android/GoogleAnalytics;)V

    invoke-interface {v0, v1}, Lcom/google/analytics/tracking/android/AnalyticsThread;->requestAppOptOut(Lcom/google/analytics/tracking/android/GoogleAnalytics$AppOptOutCallback;)V

    .line 74
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->mThread:Lcom/google/analytics/tracking/android/AnalyticsThread;

    new-instance v1, Lcom/google/analytics/tracking/android/GoogleAnalytics$2;

    invoke-direct {v1, p0}, Lcom/google/analytics/tracking/android/GoogleAnalytics$2;-><init>(Lcom/google/analytics/tracking/android/GoogleAnalytics;)V

    invoke-interface {v0, v1}, Lcom/google/analytics/tracking/android/AnalyticsThread;->requestClientId(Lcom/google/analytics/tracking/android/AnalyticsThread$ClientIdCallback;)V

    .line 82
    return-void
.end method

.method static synthetic access$002(Lcom/google/analytics/tracking/android/GoogleAnalytics;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->mAppOptOut:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$102(Lcom/google/analytics/tracking/android/GoogleAnalytics;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->mClientId:Ljava/lang/String;

    return-object p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/GoogleAnalytics;
    .locals 2
    .parameter

    .prologue
    .line 90
    const-class v1, Lcom/google/analytics/tracking/android/GoogleAnalytics;

    monitor-enter v1

    .line 91
    :try_start_0
    sget-object v0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->sInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Lcom/google/analytics/tracking/android/GoogleAnalytics;

    invoke-direct {v0, p0}, Lcom/google/analytics/tracking/android/GoogleAnalytics;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->sInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    .line 94
    :cond_0
    sget-object v0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->sInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    monitor-exit v1

    return-object v0

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public closeTracker(Lcom/google/analytics/tracking/android/Tracker;)V
    .locals 1
    .parameter "tracker"

    .prologue
    .line 207
    monitor-enter p0

    .line 208
    :try_start_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->mTrackers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 209
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->mDefaultTracker:Lcom/google/analytics/tracking/android/Tracker;

    if-ne p1, v0, :cond_0

    .line 210
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->mDefaultTracker:Lcom/google/analytics/tracking/android/Tracker;

    .line 212
    :cond_0
    monitor-exit p0

    .line 213
    return-void

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getTracker(Ljava/lang/String;)Lcom/google/analytics/tracking/android/Tracker;
    .locals 3
    .parameter "trackingId"

    .prologue
    .line 166
    monitor-enter p0

    .line 167
    if-nez p1, :cond_0

    .line 168
    :try_start_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "trackingId cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 181
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 170
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->mTrackers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/tracking/android/Tracker;

    .line 172
    .local v0, tracker:Lcom/google/analytics/tracking/android/Tracker;
    if-nez v0, :cond_1

    .line 173
    new-instance v0, Lcom/google/analytics/tracking/android/Tracker;

    .end local v0           #tracker:Lcom/google/analytics/tracking/android/Tracker;
    invoke-direct {v0, p1, p0}, Lcom/google/analytics/tracking/android/Tracker;-><init>(Ljava/lang/String;Lcom/google/analytics/tracking/android/TrackerHandler;)V

    .line 174
    .restart local v0       #tracker:Lcom/google/analytics/tracking/android/Tracker;
    iget-object v1, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->mTrackers:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    iget-object v1, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->mDefaultTracker:Lcom/google/analytics/tracking/android/Tracker;

    if-nez v1, :cond_1

    .line 176
    iput-object v0, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->mDefaultTracker:Lcom/google/analytics/tracking/android/Tracker;

    .line 179
    :cond_1
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v1

    sget-object v2, Lcom/google/analytics/tracking/android/GAUsage$Field;->GET_TRACKER:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v1, v2}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 180
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public sendHit(Ljava/util/Map;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 217
    .local p1, hit:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-enter p0

    .line 218
    if-nez p1, :cond_0

    .line 219
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "hit cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 221
    :cond_0
    :try_start_1
    const-string v0, "language"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Lcom/google/analytics/tracking/android/Utils;->getLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    const-string v0, "adSenseAdMobHitId"

    iget-object v1, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->mAdHitIdGenerator:Lcom/google/analytics/tracking/android/AdHitIdGenerator;

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/AdHitIdGenerator;->getAdHitId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    const-string v0, "screenResolution"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    const-string v0, "usage"

    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/GAUsage;->getAndClearSequence()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/GAUsage;->getAndClearUsage()Ljava/lang/String;

    .line 230
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->mThread:Lcom/google/analytics/tracking/android/AnalyticsThread;

    invoke-interface {v0, p1}, Lcom/google/analytics/tracking/android/AnalyticsThread;->sendHit(Ljava/util/Map;)V

    .line 232
    const-string v0, "trackingId"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->mLastTrackingId:Ljava/lang/String;

    .line 233
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 234
    return-void
.end method
