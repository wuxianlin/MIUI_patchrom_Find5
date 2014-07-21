.class Lcom/google/analytics/tracking/android/GAServiceProxy$1;
.super Ljava/lang/Object;
.source "GAServiceProxy.java"

# interfaces
.implements Lcom/google/analytics/tracking/android/Clock;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/analytics/tracking/android/GAServiceProxy;-><init>(Landroid/content/Context;Lcom/google/analytics/tracking/android/AnalyticsThread;Lcom/google/analytics/tracking/android/AnalyticsStore;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/analytics/tracking/android/GAServiceProxy;


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/GAServiceProxy;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/analytics/tracking/android/GAServiceProxy$1;->this$0:Lcom/google/analytics/tracking/android/GAServiceProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public currentTimeMillis()J
    .locals 2

    .prologue
    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
