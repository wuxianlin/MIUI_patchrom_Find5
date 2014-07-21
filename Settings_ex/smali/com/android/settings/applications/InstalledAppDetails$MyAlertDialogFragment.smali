.class public Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;
.super Landroid/app/DialogFragment;
.source "InstalledAppDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/InstalledAppDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyAlertDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1091
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(II)Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;
    .locals 3
    .parameter "id"
    .parameter "moveErrorCode"

    .prologue
    .line 1094
    new-instance v1, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-direct {v1}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;-><init>()V

    .line 1095
    .local v1, frag:Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1096
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "id"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1097
    const-string v2, "moveError"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1098
    invoke-virtual {v1, v0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1099
    return-object v1
.end method


# virtual methods
.method getOwner()Lcom/android/settings/applications/InstalledAppDetails;
    .locals 1

    .prologue
    .line 1103
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/InstalledAppDetails;

    return-object v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 1271
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1272
    .local v0, id:I
    packed-switch v0, :pswitch_data_0

    .line 1282
    :goto_0
    :pswitch_0
    return-void

    .line 1275
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->getOwner()Lcom/android/settings/applications/InstalledAppDetails;

    move-result-object v1

    #getter for: Lcom/android/settings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;
    invoke-static {v1}, Lcom/android/settings/applications/InstalledAppDetails;->access$1300(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/widget/CompoundButton;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    .line 1279
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->getOwner()Lcom/android/settings/applications/InstalledAppDetails;

    move-result-object v1

    #getter for: Lcom/android/settings/applications/InstalledAppDetails;->mPrivacyGuardSwitch:Landroid/widget/CompoundButton;
    invoke-static {v1}, Lcom/android/settings/applications/InstalledAppDetails;->access$1400(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/widget/CompoundButton;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    .line 1272
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const v6, 0x7f080844

    const/4 v11, 0x0

    const v7, 0x7f080843

    const v10, 0x7f080842

    const v9, 0x1010355

    .line 1108
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "id"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1109
    .local v0, id:I
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "moveError"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1110
    .local v2, moveErrorCode:I
    packed-switch v0, :pswitch_data_0

    .line 1266
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unknown id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1112
    :pswitch_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f080840

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f080841

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment$1;

    invoke-direct {v5, p0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment$1;-><init>(Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;)V

    invoke-virtual {v4, v10, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v7, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 1248
    :goto_0
    return-object v4

    .line 1126
    :pswitch_1
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f080847

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f080848

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment$2;

    invoke-direct {v5, p0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment$2;-><init>(Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;)V

    invoke-virtual {v4, v10, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v7, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    goto :goto_0

    .line 1141
    :pswitch_2
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    new-instance v6, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment$3;

    invoke-direct {v6, p0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment$3;-><init>(Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    goto :goto_0

    .line 1154
    :pswitch_3
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f080849

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f08084a

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment$4;

    invoke-direct {v5, p0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment$4;-><init>(Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;)V

    invoke-virtual {v4, v10, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    goto/16 :goto_0

    .line 1168
    :pswitch_4
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f080860

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f080861

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment$5;

    invoke-direct {v5, p0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment$5;-><init>(Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;)V

    invoke-virtual {v4, v10, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v7, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    goto/16 :goto_0

    .line 1182
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f080863

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->getOwner()Lcom/android/settings/applications/InstalledAppDetails;

    move-result-object v8

    #calls: Lcom/android/settings/applications/InstalledAppDetails;->getMoveErrMsg(I)Ljava/lang/CharSequence;
    invoke-static {v8, v2}, Lcom/android/settings/applications/InstalledAppDetails;->access$1000(Lcom/android/settings/applications/InstalledAppDetails;I)Ljava/lang/CharSequence;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1184
    .local v3, msg:Ljava/lang/CharSequence;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f080862

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    goto/16 :goto_0

    .line 1191
    .end local v3           #msg:Ljava/lang/CharSequence;
    :pswitch_6
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f080866

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f080867

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment$6;

    invoke-direct {v5, p0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment$6;-><init>(Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;)V

    invoke-virtual {v4, v10, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v7, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    goto/16 :goto_0

    .line 1207
    :pswitch_7
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f08086a

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f08086b

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment$8;

    invoke-direct {v5, p0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment$8;-><init>(Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;)V

    invoke-virtual {v4, v10, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment$7;

    invoke-direct {v5, p0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment$7;-><init>(Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;)V

    invoke-virtual {v4, v7, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    goto/16 :goto_0

    .line 1226
    :pswitch_8
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f080868

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f080869

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment$9;

    invoke-direct {v5, p0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment$9;-><init>(Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;)V

    invoke-virtual {v4, v10, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v7, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    goto/16 :goto_0

    .line 1242
    :pswitch_9
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->getOwner()Lcom/android/settings/applications/InstalledAppDetails;

    move-result-object v4

    #getter for: Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;
    invoke-static {v4}, Lcom/android/settings/applications/InstalledAppDetails;->access$100(Lcom/android/settings/applications/InstalledAppDetails;)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v4

    iget-object v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    .line 1243
    const v1, 0x7f080254

    .line 1248
    .local v1, messageResId:I
    :goto_1
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f080252

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment$11;

    invoke-direct {v5, p0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment$11;-><init>(Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;)V

    invoke-virtual {v4, v10, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment$10;

    invoke-direct {v5, p0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment$10;-><init>(Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;)V

    invoke-virtual {v4, v7, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    goto/16 :goto_0

    .line 1245
    .end local v1           #messageResId:I
    :cond_0
    const v1, 0x7f080253

    .restart local v1       #messageResId:I
    goto :goto_1

    .line 1110
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
