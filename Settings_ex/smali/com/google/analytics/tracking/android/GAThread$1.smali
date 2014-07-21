.class Lcom/google/analytics/tracking/android/GAThread$1;
.super Ljava/lang/Object;
.source "GAThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/analytics/tracking/android/GAThread;->sendHit(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/analytics/tracking/android/GAThread;

.field final synthetic val$hitCopy:Ljava/util/Map;

.field final synthetic val$hitTime:J


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/GAThread;Ljava/util/Map;J)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/google/analytics/tracking/android/GAThread$1;->this$0:Lcom/google/analytics/tracking/android/GAThread;

    iput-object p2, p0, Lcom/google/analytics/tracking/android/GAThread$1;->val$hitCopy:Ljava/util/Map;

    iput-wide p3, p0, Lcom/google/analytics/tracking/android/GAThread$1;->val$hitTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAThread$1;->val$hitCopy:Ljava/util/Map;

    const-string v2, "clientId"

    iget-object v3, p0, Lcom/google/analytics/tracking/android/GAThread$1;->this$0:Lcom/google/analytics/tracking/android/GAThread;

    #getter for: Lcom/google/analytics/tracking/android/GAThread;->mClientId:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/analytics/tracking/android/GAThread;->access$000(Lcom/google/analytics/tracking/android/GAThread;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAThread$1;->this$0:Lcom/google/analytics/tracking/android/GAThread;

    #getter for: Lcom/google/analytics/tracking/android/GAThread;->mAppOptOut:Z
    invoke-static {v0}, Lcom/google/analytics/tracking/android/GAThread;->access$100(Lcom/google/analytics/tracking/android/GAThread;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAThread$1;->this$0:Lcom/google/analytics/tracking/android/GAThread;

    iget-object v2, p0, Lcom/google/analytics/tracking/android/GAThread$1;->val$hitCopy:Ljava/util/Map;

    #calls: Lcom/google/analytics/tracking/android/GAThread;->isSampledOut(Ljava/util/Map;)Z
    invoke-static {v0, v2}, Lcom/google/analytics/tracking/android/GAThread;->access$200(Lcom/google/analytics/tracking/android/GAThread;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAThread$1;->this$0:Lcom/google/analytics/tracking/android/GAThread;

    #getter for: Lcom/google/analytics/tracking/android/GAThread;->mInstallCampaign:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/analytics/tracking/android/GAThread;->access$300(Lcom/google/analytics/tracking/android/GAThread;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 125
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAThread$1;->val$hitCopy:Ljava/util/Map;

    const-string v2, "campaign"

    iget-object v3, p0, Lcom/google/analytics/tracking/android/GAThread$1;->this$0:Lcom/google/analytics/tracking/android/GAThread;

    #getter for: Lcom/google/analytics/tracking/android/GAThread;->mInstallCampaign:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/analytics/tracking/android/GAThread;->access$300(Lcom/google/analytics/tracking/android/GAThread;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAThread$1;->this$0:Lcom/google/analytics/tracking/android/GAThread;

    const/4 v2, 0x0

    #setter for: Lcom/google/analytics/tracking/android/GAThread;->mInstallCampaign:Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/google/analytics/tracking/android/GAThread;->access$302(Lcom/google/analytics/tracking/android/GAThread;Ljava/lang/String;)Ljava/lang/String;

    .line 128
    :cond_2
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAThread$1;->this$0:Lcom/google/analytics/tracking/android/GAThread;

    iget-object v2, p0, Lcom/google/analytics/tracking/android/GAThread$1;->val$hitCopy:Ljava/util/Map;

    #calls: Lcom/google/analytics/tracking/android/GAThread;->fillAppParameters(Ljava/util/Map;)V
    invoke-static {v0, v2}, Lcom/google/analytics/tracking/android/GAThread;->access$400(Lcom/google/analytics/tracking/android/GAThread;Ljava/util/Map;)V

    .line 129
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAThread$1;->this$0:Lcom/google/analytics/tracking/android/GAThread;

    iget-object v2, p0, Lcom/google/analytics/tracking/android/GAThread$1;->val$hitCopy:Ljava/util/Map;

    #calls: Lcom/google/analytics/tracking/android/GAThread;->fillCampaignParameters(Ljava/util/Map;)V
    invoke-static {v0, v2}, Lcom/google/analytics/tracking/android/GAThread;->access$500(Lcom/google/analytics/tracking/android/GAThread;Ljava/util/Map;)V

    .line 130
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAThread$1;->this$0:Lcom/google/analytics/tracking/android/GAThread;

    iget-object v2, p0, Lcom/google/analytics/tracking/android/GAThread$1;->val$hitCopy:Ljava/util/Map;

    #calls: Lcom/google/analytics/tracking/android/GAThread;->fillExceptionParameters(Ljava/util/Map;)V
    invoke-static {v0, v2}, Lcom/google/analytics/tracking/android/GAThread;->access$600(Lcom/google/analytics/tracking/android/GAThread;Ljava/util/Map;)V

    .line 131
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAThread$1;->this$0:Lcom/google/analytics/tracking/android/GAThread;

    #getter for: Lcom/google/analytics/tracking/android/GAThread;->mMetaModel:Lcom/google/analytics/tracking/android/MetaModel;
    invoke-static {v0}, Lcom/google/analytics/tracking/android/GAThread;->access$700(Lcom/google/analytics/tracking/android/GAThread;)Lcom/google/analytics/tracking/android/MetaModel;

    move-result-object v0

    iget-object v2, p0, Lcom/google/analytics/tracking/android/GAThread$1;->val$hitCopy:Ljava/util/Map;

    invoke-static {v0, v2}, Lcom/google/analytics/tracking/android/HitBuilder;->generateHitParams(Lcom/google/analytics/tracking/android/MetaModel;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 132
    .local v1, wireFormatParams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAThread$1;->this$0:Lcom/google/analytics/tracking/android/GAThread;

    #getter for: Lcom/google/analytics/tracking/android/GAThread;->mServiceProxy:Lcom/google/analytics/tracking/android/ServiceProxy;
    invoke-static {v0}, Lcom/google/analytics/tracking/android/GAThread;->access$1000(Lcom/google/analytics/tracking/android/GAThread;)Lcom/google/analytics/tracking/android/ServiceProxy;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/analytics/tracking/android/GAThread$1;->val$hitTime:J

    iget-object v4, p0, Lcom/google/analytics/tracking/android/GAThread$1;->this$0:Lcom/google/analytics/tracking/android/GAThread;

    iget-object v5, p0, Lcom/google/analytics/tracking/android/GAThread$1;->val$hitCopy:Ljava/util/Map;

    #calls: Lcom/google/analytics/tracking/android/GAThread;->getHostUrl(Ljava/util/Map;)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/google/analytics/tracking/android/GAThread;->access$800(Lcom/google/analytics/tracking/android/GAThread;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/analytics/tracking/android/GAThread$1;->this$0:Lcom/google/analytics/tracking/android/GAThread;

    #getter for: Lcom/google/analytics/tracking/android/GAThread;->mCommands:Ljava/util/List;
    invoke-static {v5}, Lcom/google/analytics/tracking/android/GAThread;->access$900(Lcom/google/analytics/tracking/android/GAThread;)Ljava/util/List;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/google/analytics/tracking/android/ServiceProxy;->putHit(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V

    goto :goto_0
.end method
