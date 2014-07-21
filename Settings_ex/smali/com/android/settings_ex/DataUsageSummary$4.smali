.class Lcom/android/settings_ex/DataUsageSummary$4;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 1112
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageSummary$4;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 1115
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary$4;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #getter for: Lcom/android/settings_ex/DataUsageSummary;->mBinding:Z
    invoke-static {v2}, Lcom/android/settings_ex/DataUsageSummary;->access$300(Lcom/android/settings_ex/DataUsageSummary;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1130
    :goto_0
    return-void

    .line 1117
    :cond_0
    move v1, p2

    .line 1118
    .local v1, dataEnabled:Z
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary$4;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #getter for: Lcom/android/settings_ex/DataUsageSummary;->mCurrentTab:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings_ex/DataUsageSummary;->access$400(Lcom/android/settings_ex/DataUsageSummary;)Ljava/lang/String;

    move-result-object v0

    .line 1119
    .local v0, currentTab:Ljava/lang/String;
    const-string v2, "mobile"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "SIM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1120
    :cond_1
    if-eqz v1, :cond_3

    .line 1121
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary$4;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    const/4 v3, 0x1

    #calls: Lcom/android/settings_ex/DataUsageSummary;->setMobileDataEnabled(Z)V
    invoke-static {v2, v3}, Lcom/android/settings_ex/DataUsageSummary;->access$500(Lcom/android/settings_ex/DataUsageSummary;Z)V

    .line 1129
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary$4;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    const/4 v3, 0x0

    #calls: Lcom/android/settings_ex/DataUsageSummary;->updatePolicy(Z)V
    invoke-static {v2, v3}, Lcom/android/settings_ex/DataUsageSummary;->access$600(Lcom/android/settings_ex/DataUsageSummary;Z)V

    goto :goto_0

    .line 1125
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary$4;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment;->show(Lcom/android/settings_ex/DataUsageSummary;)V

    goto :goto_1
.end method
