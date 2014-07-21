.class public final Lcom/android/settings_ex/SmsDefaultDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "SmsDefaultDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method private buildDialog(Ljava/lang/String;)Z
    .locals 9
    .parameter "packageName"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 66
    const-string v6, "phone"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/SmsDefaultDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 67
    .local v3, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v6

    if-nez v6, :cond_1

    .line 104
    :cond_0
    :goto_0
    return v4

    .line 72
    :cond_1
    invoke-static {p1, p0}, Lcom/android/internal/telephony/SmsApplication;->getSmsApplicationData(Ljava/lang/String;Landroid/content/Context;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 73
    iget-object v6, p0, Lcom/android/settings_ex/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    if-eqz v6, :cond_0

    .line 77
    const/4 v0, 0x0

    .line 78
    .local v0, oldSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    invoke-static {p0, v5}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v1

    .line 79
    .local v1, oldSmsComponent:Landroid/content/ComponentName;
    if-eqz v1, :cond_2

    .line 80
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p0}, Lcom/android/internal/telephony/SmsApplication;->getSmsApplicationData(Ljava/lang/String;Landroid/content/Context;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v0

    .line 82
    iget-object v6, v0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/settings_ex/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v7, v7, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 88
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/SmsDefaultDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 89
    .local v2, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v6, 0x7f0807a2

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/SmsDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 90
    if-eqz v0, :cond_3

    .line 91
    const v6, 0x7f0807a3

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/settings_ex/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v8, v8, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    aput-object v8, v7, v4

    iget-object v4, v0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    aput-object v4, v7, v5

    invoke-virtual {p0, v6, v7}, Lcom/android/settings_ex/SmsDefaultDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 98
    :goto_1
    const v4, 0x7f080413

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/SmsDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 99
    const v4, 0x7f080414

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/SmsDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 100
    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 101
    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 102
    invoke-virtual {p0}, Lcom/android/settings_ex/SmsDefaultDialog;->setupAlert()V

    move v4, v5

    .line 104
    goto :goto_0

    .line 95
    :cond_3
    const v6, 0x7f0807a4

    new-array v7, v5, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/settings_ex/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v8, v8, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    aput-object v8, v7, v4

    invoke-virtual {p0, v6, v7}, Lcom/android/settings_ex/SmsDefaultDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 55
    packed-switch p2, :pswitch_data_0

    .line 63
    :goto_0
    return-void

    .line 57
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v0, v0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V

    .line 58
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SmsDefaultDialog;->setResult(I)V

    goto :goto_0

    .line 55
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/android/settings_ex/SmsDefaultDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 45
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, packageName:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/SmsDefaultDialog;->setResult(I)V

    .line 48
    invoke-direct {p0, v1}, Lcom/android/settings_ex/SmsDefaultDialog;->buildDialog(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/android/settings_ex/SmsDefaultDialog;->finish()V

    .line 51
    :cond_0
    return-void
.end method
