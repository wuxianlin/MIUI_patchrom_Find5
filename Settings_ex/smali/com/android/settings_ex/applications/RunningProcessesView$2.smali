.class Lcom/android/settings_ex/applications/RunningProcessesView$2;
.super Ljava/lang/Object;
.source "RunningProcessesView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/applications/RunningProcessesView;->doCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/applications/RunningProcessesView;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/applications/RunningProcessesView;)V
    .locals 0
    .parameter

    .prologue
    .line 443
    iput-object p1, p0, Lcom/android/settings_ex/applications/RunningProcessesView$2;->this$0:Lcom/android/settings_ex/applications/RunningProcessesView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView$2;->this$0:Lcom/android/settings_ex/applications/RunningProcessesView;

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mAdapter:Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->setShowBackground(Z)V

    .line 447
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView$2;->this$0:Lcom/android/settings_ex/applications/RunningProcessesView;

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mOwner:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView$2;->this$0:Lcom/android/settings_ex/applications/RunningProcessesView;

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mOwner:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 450
    :cond_0
    return-void
.end method
