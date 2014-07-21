.class Lcom/android/settings_ex/DataUsageSummary$10;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/android/settings_ex/net/ChartData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DataUsageSummary;)V
    .locals 0
    .parameter

    .prologue
    .line 1287
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageSummary$10;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/settings_ex/net/ChartData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1290
    new-instance v0, Lcom/android/settings_ex/net/ChartDataLoader;

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$10;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-virtual {v1}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary$10;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #getter for: Lcom/android/settings_ex/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;
    invoke-static {v2}, Lcom/android/settings_ex/DataUsageSummary;->access$1600(Lcom/android/settings_ex/DataUsageSummary;)Landroid/net/INetworkStatsSession;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lcom/android/settings_ex/net/ChartDataLoader;-><init>(Landroid/content/Context;Landroid/net/INetworkStatsSession;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/android/settings_ex/net/ChartData;)V
    .locals 2
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/settings_ex/net/ChartData;",
            ">;",
            "Lcom/android/settings_ex/net/ChartData;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1295
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/android/settings_ex/net/ChartData;>;"
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$10;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #setter for: Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;
    invoke-static {v0, p2}, Lcom/android/settings_ex/DataUsageSummary;->access$1702(Lcom/android/settings_ex/DataUsageSummary;Lcom/android/settings_ex/net/ChartData;)Lcom/android/settings_ex/net/ChartData;

    .line 1296
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$10;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #getter for: Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->access$1400(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/widget/ChartDataUsageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$10;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #getter for: Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;
    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary;->access$1700(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/net/ChartData;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settings_ex/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/ChartDataUsageView;->bindNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 1297
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$10;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #getter for: Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->access$1400(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/widget/ChartDataUsageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$10;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #getter for: Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;
    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary;->access$1700(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/net/ChartData;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settings_ex/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/ChartDataUsageView;->bindDetailNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 1300
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$10;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    const/4 v1, 0x1

    #calls: Lcom/android/settings_ex/DataUsageSummary;->updatePolicy(Z)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/DataUsageSummary;->access$600(Lcom/android/settings_ex/DataUsageSummary;Z)V

    .line 1301
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$10;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #calls: Lcom/android/settings_ex/DataUsageSummary;->updateAppDetail()V
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->access$1800(Lcom/android/settings_ex/DataUsageSummary;)V

    .line 1304
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$10;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #getter for: Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->access$1700(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/net/ChartData;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settings_ex/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    if-eqz v0, :cond_0

    .line 1305
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$10;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #getter for: Lcom/android/settings_ex/DataUsageSummary;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->access$1900(Lcom/android/settings_ex/DataUsageSummary;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 1307
    :cond_0
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1287
    check-cast p2, Lcom/android/settings_ex/net/ChartData;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ex/DataUsageSummary$10;->onLoadFinished(Landroid/content/Loader;Lcom/android/settings_ex/net/ChartData;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/settings_ex/net/ChartData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/android/settings_ex/net/ChartData;>;"
    const/4 v1, 0x0

    .line 1311
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$10;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #setter for: Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;
    invoke-static {v0, v1}, Lcom/android/settings_ex/DataUsageSummary;->access$1702(Lcom/android/settings_ex/DataUsageSummary;Lcom/android/settings_ex/net/ChartData;)Lcom/android/settings_ex/net/ChartData;

    .line 1312
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$10;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #getter for: Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->access$1400(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/widget/ChartDataUsageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/ChartDataUsageView;->bindNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 1313
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$10;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #getter for: Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->access$1400(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/widget/ChartDataUsageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/ChartDataUsageView;->bindDetailNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 1314
    return-void
.end method
