.class Lcom/google/analytics/tracking/android/GAThread$4;
.super Ljava/lang/Object;
.source "GAThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/analytics/tracking/android/GAThread;->requestAppOptOut(Lcom/google/analytics/tracking/android/GoogleAnalytics$AppOptOutCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/analytics/tracking/android/GAThread;

.field final synthetic val$callback:Lcom/google/analytics/tracking/android/GoogleAnalytics$AppOptOutCallback;


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/GAThread;Lcom/google/analytics/tracking/android/GoogleAnalytics$AppOptOutCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 304
    iput-object p1, p0, Lcom/google/analytics/tracking/android/GAThread$4;->this$0:Lcom/google/analytics/tracking/android/GAThread;

    iput-object p2, p0, Lcom/google/analytics/tracking/android/GAThread$4;->val$callback:Lcom/google/analytics/tracking/android/GoogleAnalytics$AppOptOutCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAThread$4;->val$callback:Lcom/google/analytics/tracking/android/GoogleAnalytics$AppOptOutCallback;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAThread$4;->this$0:Lcom/google/analytics/tracking/android/GAThread;

    #getter for: Lcom/google/analytics/tracking/android/GAThread;->mAppOptOut:Z
    invoke-static {v1}, Lcom/google/analytics/tracking/android/GAThread;->access$100(Lcom/google/analytics/tracking/android/GAThread;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/analytics/tracking/android/GoogleAnalytics$AppOptOutCallback;->reportAppOptOut(Z)V

    .line 309
    return-void
.end method
