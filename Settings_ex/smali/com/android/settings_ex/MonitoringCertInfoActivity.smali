.class public Lcom/android/settings_ex/MonitoringCertInfoActivity;
.super Landroid/app/Activity;
.source "MonitoringCertInfoActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private hasDeviceOwner:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/MonitoringCertInfoActivity;->hasDeviceOwner:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 84
    iget-boolean v1, p0, Lcom/android/settings_ex/MonitoringCertInfoActivity;->hasDeviceOwner:Z

    if-eqz v1, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/android/settings_ex/MonitoringCertInfoActivity;->finish()V

    .line 93
    :goto_0
    return-void

    .line 87
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings_ex.TRUSTED_CREDENTIALS_USER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 90
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/MonitoringCertInfoActivity;->startActivity(Landroid/content/Intent;)V

    .line 91
    invoke-virtual {p0}, Lcom/android/settings_ex/MonitoringCertInfoActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedStates"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const-string v5, "device_policy"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/MonitoringCertInfoActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    .line 47
    .local v3, dpm:Landroid/app/admin/DevicePolicyManager;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 48
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f080b45

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 49
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 50
    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lcom/android/settings_ex/MonitoringCertInfoActivity;->hasDeviceOwner:Z

    .line 52
    iget-boolean v5, p0, Lcom/android/settings_ex/MonitoringCertInfoActivity;->hasDeviceOwner:Z

    if-eqz v5, :cond_1

    .line 54
    invoke-virtual {p0}, Lcom/android/settings_ex/MonitoringCertInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f080b46

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v7

    invoke-virtual {v5, v8, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 56
    .local v4, message:Ljava/lang/String;
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 57
    const v1, 0x7f080b44

    .line 65
    .end local v4           #message:Ljava/lang/String;
    .local v1, buttonLabel:I
    :goto_1
    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 67
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 68
    .local v2, dialog:Landroid/app/Dialog;
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d3

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 70
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/IWindowManager;->dismissKeyguard()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_2
    new-instance v5, Lcom/android/settings_ex/MonitoringCertInfoActivity$1;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/MonitoringCertInfoActivity$1;-><init>(Lcom/android/settings_ex/MonitoringCertInfoActivity;)V

    invoke-virtual {v2, v5}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 79
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 80
    return-void

    .end local v1           #buttonLabel:I
    .end local v2           #dialog:Landroid/app/Dialog;
    :cond_0
    move v5, v7

    .line 50
    goto :goto_0

    .line 60
    :cond_1
    const v5, 0x1080078

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 61
    const v5, 0x7f080b47

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 62
    const v1, 0x7f080b48

    .restart local v1       #buttonLabel:I
    goto :goto_1

    .line 71
    .restart local v2       #dialog:Landroid/app/Dialog;
    :catch_0
    move-exception v5

    goto :goto_2
.end method
