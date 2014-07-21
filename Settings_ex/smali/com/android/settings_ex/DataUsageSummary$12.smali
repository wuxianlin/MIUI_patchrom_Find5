.class Lcom/android/settings_ex/DataUsageSummary$12;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DataUsageSummary;)V
    .locals 0
    .parameter

    .prologue
    .line 1374
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageSummary$12;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInspectRangeChanged()V
    .locals 1

    .prologue
    .line 1378
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$12;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #calls: Lcom/android/settings_ex/DataUsageSummary;->updateDetailData()V
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->access$1500(Lcom/android/settings_ex/DataUsageSummary;)V

    .line 1379
    return-void
.end method

.method public onLimitChanged()V
    .locals 3

    .prologue
    .line 1388
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$12;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$12;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #getter for: Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;
    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary;->access$1400(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/widget/ChartDataUsageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings_ex/widget/ChartDataUsageView;->getLimitBytes()J

    move-result-wide v1

    #calls: Lcom/android/settings_ex/DataUsageSummary;->setPolicyLimitBytes(J)V
    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/DataUsageSummary;->access$800(Lcom/android/settings_ex/DataUsageSummary;J)V

    .line 1389
    return-void
.end method

.method public onWarningChanged()V
    .locals 3

    .prologue
    .line 1383
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$12;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$12;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #getter for: Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;
    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary;->access$1400(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/widget/ChartDataUsageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings_ex/widget/ChartDataUsageView;->getWarningBytes()J

    move-result-wide v1

    #calls: Lcom/android/settings_ex/DataUsageSummary;->setPolicyWarningBytes(J)V
    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/DataUsageSummary;->access$2400(Lcom/android/settings_ex/DataUsageSummary;J)V

    .line 1384
    return-void
.end method

.method public requestLimitEdit()V
    .locals 1

    .prologue
    .line 1398
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$12;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary$LimitEditorFragment;->show(Lcom/android/settings_ex/DataUsageSummary;)V

    .line 1399
    return-void
.end method

.method public requestWarningEdit()V
    .locals 1

    .prologue
    .line 1393
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$12;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary$WarningEditorFragment;->show(Lcom/android/settings_ex/DataUsageSummary;)V

    .line 1394
    return-void
.end method
