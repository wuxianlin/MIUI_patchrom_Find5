.class final Lcom/android/settings_ex/print/PrintServiceSettingsFragment$AnnounceFilterResult;
.super Ljava/lang/Object;
.source "PrintServiceSettingsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/print/PrintServiceSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AnnounceFilterResult"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/print/PrintServiceSettingsFragment;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/print/PrintServiceSettingsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 482
    iput-object p1, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$AnnounceFilterResult;->this$0:Lcom/android/settings_ex/print/PrintServiceSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/print/PrintServiceSettingsFragment;Lcom/android/settings_ex/print/PrintServiceSettingsFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 482
    invoke-direct {p0, p1}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$AnnounceFilterResult;-><init>(Lcom/android/settings_ex/print/PrintServiceSettingsFragment;)V

    return-void
.end method


# virtual methods
.method public post()V
    .locals 3

    .prologue
    .line 486
    invoke-virtual {p0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$AnnounceFilterResult;->remove()V

    .line 487
    iget-object v0, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$AnnounceFilterResult;->this$0:Lcom/android/settings_ex/print/PrintServiceSettingsFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 488
    return-void
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$AnnounceFilterResult;->this$0:Lcom/android/settings_ex/print/PrintServiceSettingsFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 492
    return-void
.end method

.method public run()V
    .locals 7

    .prologue
    .line 496
    iget-object v2, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$AnnounceFilterResult;->this$0:Lcom/android/settings_ex/print/PrintServiceSettingsFragment;

    invoke-virtual {v2}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 498
    .local v0, count:I
    if-gtz v0, :cond_0

    .line 499
    iget-object v2, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$AnnounceFilterResult;->this$0:Lcom/android/settings_ex/print/PrintServiceSettingsFragment;

    const v3, 0x7f080952

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 504
    .local v1, text:Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$AnnounceFilterResult;->this$0:Lcom/android/settings_ex/print/PrintServiceSettingsFragment;

    invoke-virtual {v2}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 505
    return-void

    .line 501
    .end local v1           #text:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$AnnounceFilterResult;->this$0:Lcom/android/settings_ex/print/PrintServiceSettingsFragment;

    invoke-virtual {v2}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e000b

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #text:Ljava/lang/String;
    goto :goto_0
.end method
