.class Lcom/android/settings_ex/RingerVolumePreference$5;
.super Ljava/lang/Object;
.source "RingerVolumePreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/RingerVolumePreference;->onBindDialogView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/RingerVolumePreference;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/RingerVolumePreference;)V
    .locals 0
    .parameter

    .prologue
    .line 306
    iput-object p1, p0, Lcom/android/settings_ex/RingerVolumePreference$5;->this$0:Lcom/android/settings_ex/RingerVolumePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 310
    if-nez p2, :cond_1

    .line 312
    iget-object v1, p0, Lcom/android/settings_ex/RingerVolumePreference$5;->this$0:Lcom/android/settings_ex/RingerVolumePreference;

    const/4 v2, 0x0

    #setter for: Lcom/android/settings_ex/RingerVolumePreference;->mDialogClicked:Z
    invoke-static {v1, v2}, Lcom/android/settings_ex/RingerVolumePreference;->access$302(Lcom/android/settings_ex/RingerVolumePreference;Z)Z

    .line 313
    iget-object v1, p0, Lcom/android/settings_ex/RingerVolumePreference$5;->this$0:Lcom/android/settings_ex/RingerVolumePreference;

    #getter for: Lcom/android/settings_ex/RingerVolumePreference;->mWaiverDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/android/settings_ex/RingerVolumePreference;->access$400(Lcom/android/settings_ex/RingerVolumePreference;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 314
    iget-object v1, p0, Lcom/android/settings_ex/RingerVolumePreference$5;->this$0:Lcom/android/settings_ex/RingerVolumePreference;

    #calls: Lcom/android/settings_ex/RingerVolumePreference;->dismissDialog()V
    invoke-static {v1}, Lcom/android/settings_ex/RingerVolumePreference;->access$500(Lcom/android/settings_ex/RingerVolumePreference;)V

    .line 316
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings_ex/RingerVolumePreference$5;->this$0:Lcom/android/settings_ex/RingerVolumePreference;

    invoke-virtual {v1}, Lcom/android/settings_ex/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 317
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f08017a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 318
    const v1, 0x7f080179

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 319
    const v1, 0x7f0804f7

    new-instance v2, Lcom/android/settings_ex/RingerVolumePreference$5$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/RingerVolumePreference$5$1;-><init>(Lcom/android/settings_ex/RingerVolumePreference$5;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 332
    const v1, 0x7f0801f0

    new-instance v2, Lcom/android/settings_ex/RingerVolumePreference$5$2;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/RingerVolumePreference$5$2;-><init>(Lcom/android/settings_ex/RingerVolumePreference$5;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 346
    iget-object v1, p0, Lcom/android/settings_ex/RingerVolumePreference$5;->this$0:Lcom/android/settings_ex/RingerVolumePreference;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    #setter for: Lcom/android/settings_ex/RingerVolumePreference;->mWaiverDialog:Landroid/app/Dialog;
    invoke-static {v1, v2}, Lcom/android/settings_ex/RingerVolumePreference;->access$402(Lcom/android/settings_ex/RingerVolumePreference;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 347
    iget-object v1, p0, Lcom/android/settings_ex/RingerVolumePreference$5;->this$0:Lcom/android/settings_ex/RingerVolumePreference;

    #getter for: Lcom/android/settings_ex/RingerVolumePreference;->mWaiverDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/android/settings_ex/RingerVolumePreference;->access$400(Lcom/android/settings_ex/RingerVolumePreference;)Landroid/app/Dialog;

    move-result-object v1

    new-instance v2, Lcom/android/settings_ex/RingerVolumePreference$5$3;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/RingerVolumePreference$5$3;-><init>(Lcom/android/settings_ex/RingerVolumePreference$5;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 364
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :goto_0
    return-void

    .line 361
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/RingerVolumePreference$5;->this$0:Lcom/android/settings_ex/RingerVolumePreference;

    invoke-virtual {v1}, Lcom/android/settings_ex/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "safe_headset_volume"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
