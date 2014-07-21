.class Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$2;
.super Ljava/lang/Object;
.source "PersistentAnalyticsStore.java"

# interfaces
.implements Lcom/google/analytics/tracking/android/HttpClientFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;->createDefaultHttpClientFactory()Lcom/google/analytics/tracking/android/HttpClientFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore$2;->this$0:Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newInstance()Lorg/apache/http/client/HttpClient;
    .locals 1

    .prologue
    .line 145
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    return-object v0
.end method
