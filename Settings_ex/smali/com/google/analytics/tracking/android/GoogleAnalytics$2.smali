.class Lcom/google/analytics/tracking/android/GoogleAnalytics$2;
.super Ljava/lang/Object;
.source "GoogleAnalytics.java"

# interfaces
.implements Lcom/google/analytics/tracking/android/AnalyticsThread$ClientIdCallback;


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
    .line 74
    iput-object p1, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics$2;->this$0:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reportClientId(Ljava/lang/String;)V
    .locals 1
    .parameter "clientId"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics$2;->this$0:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    #setter for: Lcom/google/analytics/tracking/android/GoogleAnalytics;->mClientId:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->access$102(Lcom/google/analytics/tracking/android/GoogleAnalytics;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    return-void
.end method
