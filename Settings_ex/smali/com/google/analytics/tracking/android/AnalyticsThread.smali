.class interface abstract Lcom/google/analytics/tracking/android/AnalyticsThread;
.super Ljava/lang/Object;
.source "AnalyticsThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/analytics/tracking/android/AnalyticsThread$ClientIdCallback;
    }
.end annotation


# virtual methods
.method public abstract dispatch()V
.end method

.method public abstract getQueue()Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getThread()Ljava/lang/Thread;
.end method

.method public abstract requestAppOptOut(Lcom/google/analytics/tracking/android/GoogleAnalytics$AppOptOutCallback;)V
.end method

.method public abstract requestClientId(Lcom/google/analytics/tracking/android/AnalyticsThread$ClientIdCallback;)V
.end method

.method public abstract sendHit(Ljava/util/Map;)V
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
.end method
