.class Lcom/android/settings_ex/blacklist/EntryEditDialogFragment$DeleteConfirmationFragment;
.super Landroid/app/DialogFragment;
.source "EntryEditDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeleteConfirmationFragment"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 275
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;)Landroid/app/DialogFragment;
    .locals 2
    .parameter "parent"

    .prologue
    .line 278
    new-instance v0, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment$DeleteConfirmationFragment;

    invoke-direct {v0}, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment$DeleteConfirmationFragment;-><init>()V

    .line 279
    .local v0, fragment:Landroid/app/DialogFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 280
    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 297
    invoke-virtual {p0}, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment$DeleteConfirmationFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;

    .line 298
    .local v0, parent:Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    #calls: Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->onDeleteConfirmResult(Z)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->access$000(Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;Z)V

    .line 299
    return-void

    .line 298
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 285
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment$DeleteConfirmationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080279

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f08027a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080413

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080414

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 292
    .local v0, dialog:Landroid/app/AlertDialog;
    return-object v0
.end method
