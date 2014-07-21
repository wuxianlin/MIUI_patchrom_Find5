.class Lcom/google/analytics/tracking/android/GoogleAnalytics$1;
.super Ljava/lang/Object;
.source "GoogleAnalytics.java"

# interfaces
.implements Lcom/google/analytics/tracking/android/GoogleAnalytics$AppOptOutCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/analytics/tracking/android/GoogleAnalytics;-><init>(Landroid/content/Context;Lcom/google/analytics/tracking/android/AnalyticsThread;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/analytics/tracking/android/GoogleAnalytics;


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/GoogleAnalytics;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics$1;->this$0:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reportAppOptOut(Z)V
    .locals 2
    .parameter "optOut"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics$1;->this$0:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    #setter for: Lcom/google/analytics/tracking/android/GoogleAnalytics;->mAppOptOut:Ljava/lang/Boolean;
    invoke-static {v0, v1}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->access$002(Lcom/google/analytics/tracking/android/GoogleAnalytics;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 71
    return-void
.end method
