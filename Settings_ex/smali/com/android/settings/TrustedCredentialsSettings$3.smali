.class Lcom/android/settings/TrustedCredentialsSettings$3;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/TrustedCredentialsSettings;->showCertDialog(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TrustedCredentialsSettings;

.field final synthetic val$certDialog:Landroid/app/Dialog;

.field final synthetic val$certHolder:Lcom/android/settings/TrustedCredentialsSettings$CertHolder;


# direct methods
.method constructor <init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$CertHolder;Landroid/app/Dialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 381
    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$3;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    iput-object p2, p0, Lcom/android/settings/TrustedCredentialsSettings$3;->val$certHolder:Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    iput-object p3, p0, Lcom/android/settings/TrustedCredentialsSettings$3;->val$certDialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 383
    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsSettings$3;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    #getter for: Lcom/android/settings/TrustedCredentialsSettings;->mUserManager:Landroid/os/UserManager;
    invoke-static {v2}, Lcom/android/settings/TrustedCredentialsSettings;->access$2800(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserManager;->hasRestrictionsChallenge()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsSettings$3;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    #getter for: Lcom/android/settings/TrustedCredentialsSettings;->mChallengeSucceeded:Z
    invoke-static {v2}, Lcom/android/settings/TrustedCredentialsSettings;->access$2900(Lcom/android/settings/TrustedCredentialsSettings;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 384
    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsSettings$3;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    #calls: Lcom/android/settings/TrustedCredentialsSettings;->ensurePin()V
    invoke-static {v2}, Lcom/android/settings/TrustedCredentialsSettings;->access$3000(Lcom/android/settings/TrustedCredentialsSettings;)V

    .line 406
    :goto_0
    return-void

    .line 388
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsSettings$3;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-virtual {v2}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 389
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsSettings$3;->val$certHolder:Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    #getter for: Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mTab:Lcom/android/settings/TrustedCredentialsSettings$Tab;
    invoke-static {v2}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->access$100(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Lcom/android/settings/TrustedCredentialsSettings$Tab;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/TrustedCredentialsSettings$3;->val$certHolder:Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    #calls: Lcom/android/settings/TrustedCredentialsSettings$Tab;->getButtonConfirmation(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)I
    invoke-static {v2, v3}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->access$3100(Lcom/android/settings/TrustedCredentialsSettings$Tab;Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 390
    const v2, 0x1040013

    new-instance v3, Lcom/android/settings/TrustedCredentialsSettings$3$1;

    invoke-direct {v3, p0}, Lcom/android/settings/TrustedCredentialsSettings$3$1;-><init>(Lcom/android/settings/TrustedCredentialsSettings$3;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 398
    const v2, 0x1040009

    new-instance v3, Lcom/android/settings/TrustedCredentialsSettings$3$2;

    invoke-direct {v3, p0}, Lcom/android/settings/TrustedCredentialsSettings$3$2;-><init>(Lcom/android/settings/TrustedCredentialsSettings$3;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 404
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 405
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method
