.class Lcom/android/settings/privacyguard/PrivacyGuardManager$ResetDialogFragment;
.super Landroid/app/DialogFragment;
.source "PrivacyGuardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/privacyguard/PrivacyGuardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResetDialogFragment"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/privacyguard/PrivacyGuardManager;


# direct methods
.method private constructor <init>(Lcom/android/settings/privacyguard/PrivacyGuardManager;)V
    .locals 0
    .parameter

    .prologue
    .line 358
    iput-object p1, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager$ResetDialogFragment;->this$0:Lcom/android/settings/privacyguard/PrivacyGuardManager;

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/privacyguard/PrivacyGuardManager;Lcom/android/settings/privacyguard/PrivacyGuardManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 358
    invoke-direct {p0, p1}, Lcom/android/settings/privacyguard/PrivacyGuardManager$ResetDialogFragment;-><init>(Lcom/android/settings/privacyguard/PrivacyGuardManager;)V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 361
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/privacyguard/PrivacyGuardManager$ResetDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08025c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08025d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0801f0

    new-instance v2, Lcom/android/settings/privacyguard/PrivacyGuardManager$ResetDialogFragment$2;

    invoke-direct {v2, p0}, Lcom/android/settings/privacyguard/PrivacyGuardManager$ResetDialogFragment$2;-><init>(Lcom/android/settings/privacyguard/PrivacyGuardManager$ResetDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0804f7

    new-instance v2, Lcom/android/settings/privacyguard/PrivacyGuardManager$ResetDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/android/settings/privacyguard/PrivacyGuardManager$ResetDialogFragment$1;-><init>(Lcom/android/settings/privacyguard/PrivacyGuardManager$ResetDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
