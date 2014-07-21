.class public Lcom/android/settings_ex/SettingsSafetyLegalActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "SettingsSafetyLegalActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mErrorDialog:Landroid/app/AlertDialog;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/SettingsSafetyLegalActivity;->mErrorDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/SettingsSafetyLegalActivity;)Lcom/android/internal/app/AlertController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings_ex/SettingsSafetyLegalActivity;->mAlert:Lcom/android/internal/app/AlertController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/SettingsSafetyLegalActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/settings_ex/SettingsSafetyLegalActivity;->showErrorAndFinish(Ljava/lang/String;)V

    return-void
.end method

.method private showErrorAndFinish(Ljava/lang/String;)V
    .locals 5
    .parameter "url"

    .prologue
    const/4 v3, 0x1

    .line 106
    iget-object v0, p0, Lcom/android/settings_ex/SettingsSafetyLegalActivity;->mErrorDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_1

    .line 107
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0807d2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/SettingsSafetyLegalActivity;->mErrorDialog:Landroid/app/AlertDialog;

    .line 118
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/SettingsSafetyLegalActivity;->mErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsSafetyLegalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0807d3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v0, p0, Lcom/android/settings_ex/SettingsSafetyLegalActivity;->mErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 121
    return-void

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/SettingsSafetyLegalActivity;->mErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/settings_ex/SettingsSafetyLegalActivity;->mErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 135
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/settings_ex/SettingsSafetyLegalActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/settings_ex/SettingsSafetyLegalActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 139
    const/4 v0, 0x1

    .line 142
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsSafetyLegalActivity;->finish()V

    .line 151
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsSafetyLegalActivity;->finish()V

    .line 147
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 49
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsSafetyLegalActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    .line 52
    .local v4, mActionBar:Landroid/app/ActionBar;
    if-eqz v4, :cond_0

    .line 53
    invoke-virtual {v4, v9}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 56
    :cond_0
    const-string v7, "ro.url.safetylegal"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 58
    .local v6, userSafetylegalUrl:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsSafetyLegalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 59
    .local v0, configuration:Landroid/content/res/Configuration;
    iget-object v7, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, language:Ljava/lang/String;
    iget-object v7, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, country:Ljava/lang/String;
    const-string v7, "locale=%s-%s"

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v2, v8, v10

    aput-object v1, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 64
    .local v3, loc:Ljava/lang/String;
    const-string v7, "%s&%s"

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v6, v8, v10

    aput-object v3, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 66
    new-instance v7, Landroid/webkit/WebView;

    invoke-direct {v7, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/settings_ex/SettingsSafetyLegalActivity;->mWebView:Landroid/webkit/WebView;

    .line 69
    iget-object v7, p0, Lcom/android/settings_ex/SettingsSafetyLegalActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 70
    if-nez p1, :cond_1

    .line 71
    iget-object v7, p0, Lcom/android/settings_ex/SettingsSafetyLegalActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v7, v6}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 75
    :goto_0
    iget-object v7, p0, Lcom/android/settings_ex/SettingsSafetyLegalActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v8, Lcom/android/settings_ex/SettingsSafetyLegalActivity$1;

    invoke-direct {v8, p0}, Lcom/android/settings_ex/SettingsSafetyLegalActivity$1;-><init>(Lcom/android/settings_ex/SettingsSafetyLegalActivity;)V

    invoke-virtual {v7, v8}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 89
    iget-object v5, p0, Lcom/android/settings_ex/SettingsSafetyLegalActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 90
    .local v5, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v7, 0x7f0807d4

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/SettingsSafetyLegalActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 91
    iget-object v7, p0, Lcom/android/settings_ex/SettingsSafetyLegalActivity;->mWebView:Landroid/webkit/WebView;

    iput-object v7, v5, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 92
    iput-boolean v9, v5, Lcom/android/internal/app/AlertController$AlertParams;->mForceInverseBackground:Z

    .line 93
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsSafetyLegalActivity;->setupAlert()V

    .line 94
    return-void

    .line 73
    .end local v5           #p:Lcom/android/internal/app/AlertController$AlertParams;
    :cond_1
    iget-object v7, p0, Lcom/android/settings_ex/SettingsSafetyLegalActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v7, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 125
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 127
    iget-object v0, p0, Lcom/android/settings_ex/SettingsSafetyLegalActivity;->mErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/settings_ex/SettingsSafetyLegalActivity;->mErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/SettingsSafetyLegalActivity;->mErrorDialog:Landroid/app/AlertDialog;

    .line 131
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 98
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsSafetyLegalActivity;->finish()V

    .line 100
    const/4 v0, 0x1

    .line 102
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/settings_ex/SettingsSafetyLegalActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 156
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 157
    return-void
.end method
