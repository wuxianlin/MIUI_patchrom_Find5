.class public Lcom/android/settings_ex/TrustedCredentialsSettings;
.super Landroid/app/Fragment;
.source "TrustedCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/TrustedCredentialsSettings$4;,
        Lcom/android/settings_ex/TrustedCredentialsSettings$AliasOperation;,
        Lcom/android/settings_ex/TrustedCredentialsSettings$ViewHolder;,
        Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;,
        Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter;,
        Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;
    }
.end annotation


# instance fields
.field private mChallengeRequested:Z

.field private mChallengeSucceeded:Z

.field private final mStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

.field private mTabHost:Landroid/widget/TabHost;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 155
    new-instance v0, Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-direct {v0}, Lcom/android/org/conscrypt/TrustedCertificateStore;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    .line 441
    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/TrustedCredentialsSettings;Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/settings_ex/TrustedCredentialsSettings;->showCertDialog(Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/settings_ex/TrustedCredentialsSettings;)Landroid/widget/TabHost;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/settings_ex/TrustedCredentialsSettings;)Lcom/android/org/conscrypt/TrustedCertificateStore;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/settings_ex/TrustedCredentialsSettings;)Landroid/os/UserManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/settings_ex/TrustedCredentialsSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mChallengeSucceeded:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/settings_ex/TrustedCredentialsSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/settings_ex/TrustedCredentialsSettings;->ensurePin()V

    return-void
.end method

.method private addTab(Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;)V
    .locals 6
    .parameter "tab"

    .prologue
    .line 181
    iget-object v3, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    #getter for: Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->mTag:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->access$500(Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings_ex/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    #getter for: Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->mLabel:I
    invoke-static {p1}, Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->access$700(Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    #getter for: Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->mView:I
    invoke-static {p1}, Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->access$600(Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    .line 184
    .local v2, systemSpec:Landroid/widget/TabHost$TabSpec;
    iget-object v3, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 186
    iget-object v3, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    #getter for: Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->mList:I
    invoke-static {p1}, Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->access$800(Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 187
    .local v1, lv:Landroid/widget/ListView;
    new-instance v0, Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter;

    const/4 v3, 0x0

    invoke-direct {v0, p0, p1, v3}, Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter;-><init>(Lcom/android/settings_ex/TrustedCredentialsSettings;Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;Lcom/android/settings_ex/TrustedCredentialsSettings$1;)V

    .line 188
    .local v0, adapter:Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter;
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 189
    new-instance v3, Lcom/android/settings_ex/TrustedCredentialsSettings$1;

    invoke-direct {v3, p0, v0}, Lcom/android/settings_ex/TrustedCredentialsSettings$1;-><init>(Lcom/android/settings_ex/TrustedCredentialsSettings;Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 194
    return-void
.end method

.method private ensurePin()V
    .locals 3

    .prologue
    .line 426
    iget-boolean v2, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mChallengeSucceeded:Z

    if-nez v2, :cond_0

    .line 427
    invoke-virtual {p0}, Lcom/android/settings_ex/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    .line 428
    .local v1, um:Landroid/os/UserManager;
    iget-boolean v2, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mChallengeRequested:Z

    if-nez v2, :cond_0

    .line 429
    invoke-virtual {v1}, Landroid/os/UserManager;->hasRestrictionsChallenge()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 430
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.RESTRICTIONS_CHALLENGE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 432
    .local v0, requestPin:Landroid/content/Intent;
    const/16 v2, 0x3015

    invoke-virtual {p0, v0, v2}, Lcom/android/settings_ex/TrustedCredentialsSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 433
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mChallengeRequested:Z

    .line 437
    .end local v0           #requestPin:Landroid/content/Intent;
    .end local v1           #um:Landroid/os/UserManager;
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mChallengeSucceeded:Z

    .line 438
    return-void
.end method

.method private showCertDialog(Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;)V
    .locals 8
    .parameter "certHolder"

    .prologue
    .line 363
    #getter for: Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mSslCert:Landroid/net/http/SslCertificate;
    invoke-static {p1}, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->access$2600(Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;)Landroid/net/http/SslCertificate;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings_ex/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/http/SslCertificate;->inflateCertificateView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v5

    .line 364
    .local v5, view:Landroid/view/View;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 365
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v6, 0x10405dd

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 366
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 367
    const v6, 0x104000a

    new-instance v7, Lcom/android/settings_ex/TrustedCredentialsSettings$2;

    invoke-direct {v7, p0}, Lcom/android/settings_ex/TrustedCredentialsSettings$2;-><init>(Lcom/android/settings_ex/TrustedCredentialsSettings;)V

    invoke-virtual {v1, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 372
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 374
    .local v2, certDialog:Landroid/app/Dialog;
    const v6, 0x1020301

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 375
    .local v0, body:Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/android/settings_ex/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 376
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f0400d1

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 379
    .local v4, removeButton:Landroid/widget/Button;
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 380
    #getter for: Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mTab:Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;
    invoke-static {p1}, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->access$100(Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;)Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;

    move-result-object v6

    #calls: Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->getButtonLabel(Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;)I
    invoke-static {v6, p1}, Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->access$2700(Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setText(I)V

    .line 381
    new-instance v6, Lcom/android/settings_ex/TrustedCredentialsSettings$3;

    invoke-direct {v6, p0, p1, v2}, Lcom/android/settings_ex/TrustedCredentialsSettings$3;-><init>(Lcom/android/settings_ex/TrustedCredentialsSettings;Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;Landroid/app/Dialog;)V

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 409
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 410
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 414
    const/16 v0, 0x3015

    if-ne p1, v0, :cond_1

    .line 415
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mChallengeRequested:Z

    .line 416
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 417
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mChallengeSucceeded:Z

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 422
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 161
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 162
    invoke-virtual {p0}, Lcom/android/settings_ex/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mUserManager:Landroid/os/UserManager;

    .line 163
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "parent"
    .parameter "savedInstanceState"

    .prologue
    .line 168
    const v0, 0x7f0400d2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    .line 169
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    .line 170
    sget-object v0, Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->SYSTEM:Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/TrustedCredentialsSettings;->addTab(Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;)V

    .line 172
    sget-object v0, Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->USER:Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/TrustedCredentialsSettings;->addTab(Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;)V

    .line 173
    invoke-virtual {p0}, Lcom/android/settings_ex/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "com.android.settings_ex.TRUSTED_CREDENTIALS_USER"

    invoke-virtual {p0}, Lcom/android/settings_ex/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    sget-object v1, Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->USER:Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;

    #getter for: Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->mTag:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->access$500(Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method
