.class Lcom/android/settings_ex/privacyguard/PrivacyGuardManager$ResetDialogFragment$2;
.super Ljava/lang/Object;
.source "PrivacyGuardManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/privacyguard/PrivacyGuardManager$ResetDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/privacyguard/PrivacyGuardManager$ResetDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/privacyguard/PrivacyGuardManager$ResetDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 365
    iput-object p1, p0, Lcom/android/settings_ex/privacyguard/PrivacyGuardManager$ResetDialogFragment$2;->this$1:Lcom/android/settings_ex/privacyguard/PrivacyGuardManager$ResetDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 368
    iget-object v2, p0, Lcom/android/settings_ex/privacyguard/PrivacyGuardManager$ResetDialogFragment$2;->this$1:Lcom/android/settings_ex/privacyguard/PrivacyGuardManager$ResetDialogFragment;

    iget-object v2, v2, Lcom/android/settings_ex/privacyguard/PrivacyGuardManager$ResetDialogFragment;->this$0:Lcom/android/settings_ex/privacyguard/PrivacyGuardManager;

    #getter for: Lcom/android/settings_ex/privacyguard/PrivacyGuardManager;->mApps:Ljava/util/List;
    invoke-static {v2}, Lcom/android/settings_ex/privacyguard/PrivacyGuardManager;->access$200(Lcom/android/settings_ex/privacyguard/PrivacyGuardManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/privacyguard/PrivacyGuardManager$AppInfo;

    .line 369
    .local v0, app:Lcom/android/settings_ex/privacyguard/PrivacyGuardManager$AppInfo;
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/settings_ex/privacyguard/PrivacyGuardManager$AppInfo;->privacyGuardEnabled:Z

    goto :goto_0

    .line 371
    .end local v0           #app:Lcom/android/settings_ex/privacyguard/PrivacyGuardManager$AppInfo;
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/privacyguard/PrivacyGuardManager$ResetDialogFragment$2;->this$1:Lcom/android/settings_ex/privacyguard/PrivacyGuardManager$ResetDialogFragment;

    iget-object v2, v2, Lcom/android/settings_ex/privacyguard/PrivacyGuardManager$ResetDialogFragment;->this$0:Lcom/android/settings_ex/privacyguard/PrivacyGuardManager;

    #getter for: Lcom/android/settings_ex/privacyguard/PrivacyGuardManager;->mAppOps:Landroid/app/AppOpsManager;
    invoke-static {v2}, Lcom/android/settings_ex/privacyguard/PrivacyGuardManager;->access$300(Lcom/android/settings_ex/privacyguard/PrivacyGuardManager;)Landroid/app/AppOpsManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpsManager;->resetAllModes()V

    .line 372
    iget-object v2, p0, Lcom/android/settings_ex/privacyguard/PrivacyGuardManager$ResetDialogFragment$2;->this$1:Lcom/android/settings_ex/privacyguard/PrivacyGuardManager$ResetDialogFragment;

    iget-object v2, v2, Lcom/android/settings_ex/privacyguard/PrivacyGuardManager$ResetDialogFragment;->this$0:Lcom/android/settings_ex/privacyguard/PrivacyGuardManager;

    #getter for: Lcom/android/settings_ex/privacyguard/PrivacyGuardManager;->mAdapter:Lcom/android/settings_ex/privacyguard/PrivacyGuardAppListAdapter;
    invoke-static {v2}, Lcom/android/settings_ex/privacyguard/PrivacyGuardManager;->access$400(Lcom/android/settings_ex/privacyguard/PrivacyGuardManager;)Lcom/android/settings_ex/privacyguard/PrivacyGuardAppListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings_ex/privacyguard/PrivacyGuardAppListAdapter;->notifyDataSetChanged()V

    .line 373
    return-void
.end method
