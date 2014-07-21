.class Lcom/android/settings/privacyguard/PrivacyGuardManager$HelpDialogFragment$1;
.super Ljava/lang/Object;
.source "PrivacyGuardManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/privacyguard/PrivacyGuardManager$HelpDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/privacyguard/PrivacyGuardManager$HelpDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/privacyguard/PrivacyGuardManager$HelpDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 338
    iput-object p1, p0, Lcom/android/settings/privacyguard/PrivacyGuardManager$HelpDialogFragment$1;->this$1:Lcom/android/settings/privacyguard/PrivacyGuardManager$HelpDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 341
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 342
    return-void
.end method
