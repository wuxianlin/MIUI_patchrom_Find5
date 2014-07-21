.class Lcom/android/settings/print/PrintServiceSettingsFragment$2;
.super Landroid/database/DataSetObserver;
.source "PrintServiceSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/print/PrintServiceSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/print/PrintServiceSettingsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$2;->this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method private invalidateOptionsMenuIfNeeded()V
    .locals 2

    .prologue
    .line 107
    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$2;->this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;

    #getter for: Lcom/android/settings/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;
    invoke-static {v1}, Lcom/android/settings/print/PrintServiceSettingsFragment;->access$200(Lcom/android/settings/print/PrintServiceSettingsFragment;)Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->getUnfilteredCount()I

    move-result v0

    .line 108
    .local v0, unfilteredItemCount:I
    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$2;->this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;

    #getter for: Lcom/android/settings/print/PrintServiceSettingsFragment;->mLastUnfilteredItemCount:I
    invoke-static {v1}, Lcom/android/settings/print/PrintServiceSettingsFragment;->access$300(Lcom/android/settings/print/PrintServiceSettingsFragment;)I

    move-result v1

    if-gtz v1, :cond_0

    if-gtz v0, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$2;->this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;

    #getter for: Lcom/android/settings/print/PrintServiceSettingsFragment;->mLastUnfilteredItemCount:I
    invoke-static {v1}, Lcom/android/settings/print/PrintServiceSettingsFragment;->access$300(Lcom/android/settings/print/PrintServiceSettingsFragment;)I

    move-result v1

    if-lez v1, :cond_2

    if-gtz v0, :cond_2

    .line 110
    :cond_1
    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$2;->this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-virtual {v1}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 112
    :cond_2
    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$2;->this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;

    #setter for: Lcom/android/settings/print/PrintServiceSettingsFragment;->mLastUnfilteredItemCount:I
    invoke-static {v1, v0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->access$302(Lcom/android/settings/print/PrintServiceSettingsFragment;I)I

    .line 113
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment$2;->invalidateOptionsMenuIfNeeded()V

    .line 98
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$2;->this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;

    #calls: Lcom/android/settings/print/PrintServiceSettingsFragment;->updateEmptyView()V
    invoke-static {v0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->access$100(Lcom/android/settings/print/PrintServiceSettingsFragment;)V

    .line 99
    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment$2;->invalidateOptionsMenuIfNeeded()V

    .line 104
    return-void
.end method
