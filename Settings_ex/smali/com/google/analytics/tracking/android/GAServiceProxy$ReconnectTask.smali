.class Lcom/google/analytics/tracking/android/GAServiceProxy$ReconnectTask;
.super Ljava/util/TimerTask;
.source "GAServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/tracking/android/GAServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReconnectTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/analytics/tracking/android/GAServiceProxy;


# direct methods
.method private constructor <init>(Lcom/google/analytics/tracking/android/GAServiceProxy;)V
    .locals 0
    .parameter

    .prologue
    .line 354
    iput-object p1, p0, Lcom/google/analytics/tracking/android/GAServiceProxy$ReconnectTask;->this$0:Lcom/google/analytics/tracking/android/GAServiceProxy;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/analytics/tracking/android/GAServiceProxy;Lcom/google/analytics/tracking/android/GAServiceProxy$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 354
    invoke-direct {p0, p1}, Lcom/google/analytics/tracking/android/GAServiceProxy$ReconnectTask;-><init>(Lcom/google/analytics/tracking/android/GAServiceProxy;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy$ReconnectTask;->this$0:Lcom/google/analytics/tracking/android/GAServiceProxy;

    #calls: Lcom/google/analytics/tracking/android/GAServiceProxy;->connectToService()V
    invoke-static {v0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->access$600(Lcom/google/analytics/tracking/android/GAServiceProxy;)V

    .line 358
    return-void
.end method
