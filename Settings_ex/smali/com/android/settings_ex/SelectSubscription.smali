.class public Lcom/android/settings_ex/SelectSubscription;
.super Landroid/app/TabActivity;
.source "SelectSubscription.java"


# instance fields
.field private subscriptionPref:Landroid/widget/TabHost$TabSpec;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 96
    const-string v0, "SelectSubscription"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "icicle"

    .prologue
    const/4 v12, 0x1

    .line 63
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const-string v9, "Creating activity"

    invoke-static {v9}, Lcom/android/settings_ex/SelectSubscription;->log(Ljava/lang/String;)V

    .line 66
    const v9, 0x7f0400c4

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/SelectSubscription;->setContentView(I)V

    .line 68
    invoke-virtual {p0}, Lcom/android/settings_ex/SelectSubscription;->getTabHost()Landroid/widget/TabHost;

    move-result-object v6

    .line 70
    .local v6, tabHost:Landroid/widget/TabHost;
    invoke-virtual {p0}, Lcom/android/settings_ex/SelectSubscription;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 71
    .local v1, intent:Landroid/content/Intent;
    const-string v9, "PACKAGE"

    invoke-virtual {v1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 72
    .local v5, pkg:Ljava/lang/String;
    const-string v9, "TARGET_CLASS"

    invoke-virtual {v1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 73
    .local v7, targetClass:Ljava/lang/String;
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v8

    .line 75
    .local v8, tm:Landroid/telephony/MSimTelephonyManager;
    invoke-virtual {v8}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v3

    .line 77
    .local v3, numPhones:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 78
    invoke-virtual {v8, v0}, Landroid/telephony/MSimTelephonyManager;->getSimState(I)I

    move-result v9

    if-eq v9, v12, :cond_0

    invoke-virtual {v8, v0}, Landroid/telephony/MSimTelephonyManager;->getNetworkOperatorName(I)Ljava/lang/String;

    move-result-object v4

    .line 80
    .local v4, operatorName:Ljava/lang/String;
    :goto_1
    const v9, 0x7f080400

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v4, v10, v11

    add-int/lit8 v11, v0, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-virtual {p0, v9, v10}, Lcom/android/settings_ex/SelectSubscription;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, label:Ljava/lang/String;
    invoke-virtual {v6, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings_ex/SelectSubscription;->subscriptionPref:Landroid/widget/TabHost$TabSpec;

    .line 82
    iget-object v9, p0, Lcom/android/settings_ex/SelectSubscription;->subscriptionPref:Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v9, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    .line 83
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v9, v5, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    const-string v10, "subscription"

    invoke-virtual {v9, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 85
    iget-object v9, p0, Lcom/android/settings_ex/SelectSubscription;->subscriptionPref:Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v9, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    .line 86
    iget-object v9, p0, Lcom/android/settings_ex/SelectSubscription;->subscriptionPref:Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v6, v9}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    .end local v2           #label:Ljava/lang/String;
    .end local v4           #operatorName:Ljava/lang/String;
    :cond_0
    const v9, 0x7f0803ff

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/SelectSubscription;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 88
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 54
    invoke-super {p0}, Landroid/app/TabActivity;->onPause()V

    .line 55
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 92
    invoke-super {p0}, Landroid/app/TabActivity;->onResume()V

    .line 93
    return-void
.end method
