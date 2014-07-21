.class Lcom/google/analytics/tracking/android/GAThread$5;
.super Ljava/lang/Object;
.source "GAThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/analytics/tracking/android/GAThread;->requestClientId(Lcom/google/analytics/tracking/android/AnalyticsThread$ClientIdCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/analytics/tracking/android/GAThread;

.field final synthetic val$callback:Lcom/google/analytics/tracking/android/AnalyticsThread$ClientIdCallback;


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/GAThread;Lcom/google/analytics/tracking/android/AnalyticsThread$ClientIdCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 316
    iput-object p1, p0, Lcom/google/analytics/tracking/android/GAThread$5;->this$0:Lcom/google/analytics/tracking/android/GAThread;

    iput-object p2, p0, Lcom/google/analytics/tracking/android/GAThread$5;->val$callback:Lcom/google/analytics/tracking/android/AnalyticsThread$ClientIdCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAThread$5;->val$callback:Lcom/google/analytics/tracking/android/AnalyticsThread$ClientIdCallback;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAThread$5;->this$0:Lcom/google/analytics/tracking/android/GAThread;

    #getter for: Lcom/google/analytics/tracking/android/GAThread;->mClientId:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/analytics/tracking/android/GAThread;->access$000(Lcom/google/analytics/tracking/android/GAThread;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/analytics/tracking/android/AnalyticsThread$ClientIdCallback;->reportClientId(Ljava/lang/String;)V

    .line 321
    return-void
.end method
