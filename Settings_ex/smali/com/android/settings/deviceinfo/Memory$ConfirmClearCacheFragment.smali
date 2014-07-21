.class public Lcom/android/settings/deviceinfo/Memory$ConfirmClearCacheFragment;
.super Landroid/app/DialogFragment;
.source "Memory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/Memory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmClearCacheFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 391
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/settings/deviceinfo/Memory;)V
    .locals 3
    .parameter "parent"

    .prologue
    .line 393
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 398
    :goto_0
    return-void

    .line 395
    :cond_0
    new-instance v0, Lcom/android/settings/deviceinfo/Memory$ConfirmClearCacheFragment;

    invoke-direct {v0}, Lcom/android/settings/deviceinfo/Memory$ConfirmClearCacheFragment;-><init>()V

    .line 396
    .local v0, dialog:Lcom/android/settings/deviceinfo/Memory$ConfirmClearCacheFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/deviceinfo/Memory$ConfirmClearCacheFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 397
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirmClearCache"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/deviceinfo/Memory$ConfirmClearCacheFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 402
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory$ConfirmClearCacheFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 404
    .local v1, context:Landroid/content/Context;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 405
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f080731

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 406
    const v2, 0x7f080732

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/Memory$ConfirmClearCacheFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 408
    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/deviceinfo/Memory$ConfirmClearCacheFragment$1;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/deviceinfo/Memory$ConfirmClearCacheFragment$1;-><init>(Lcom/android/settings/deviceinfo/Memory$ConfirmClearCacheFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 421
    const/high16 v2, 0x104

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 423
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method
