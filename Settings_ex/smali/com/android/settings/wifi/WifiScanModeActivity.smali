.class public Lcom/android/settings/wifi/WifiScanModeActivity;
.super Landroid/app/Activity;
.source "WifiScanModeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment;
    }
.end annotation


# instance fields
.field private mApp:Ljava/lang/String;

.field private mDialog:Landroid/app/DialogFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiScanModeActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiScanModeActivity;->doNegativeClick()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiScanModeActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiScanModeActivity;->doPositiveClick()V

    return-void
.end method

.method private createDialog()V
    .locals 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/wifi/WifiScanModeActivity;->mDialog:Landroid/app/DialogFragment;

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/settings/wifi/WifiScanModeActivity;->mApp:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment;->newInstance(Ljava/lang/String;)Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiScanModeActivity;->mDialog:Landroid/app/DialogFragment;

    .line 68
    iget-object v0, p0, Lcom/android/settings/wifi/WifiScanModeActivity;->mDialog:Landroid/app/DialogFragment;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiScanModeActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 70
    :cond_0
    return-void
.end method

.method private dismissDialog()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/wifi/WifiScanModeActivity;->mDialog:Landroid/app/DialogFragment;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/settings/wifi/WifiScanModeActivity;->mDialog:Landroid/app/DialogFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiScanModeActivity;->mDialog:Landroid/app/DialogFragment;

    .line 77
    :cond_0
    return-void
.end method

.method private doNegativeClick()V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiScanModeActivity;->setResult(I)V

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiScanModeActivity;->finish()V

    .line 89
    return-void
.end method

.method private doPositiveClick()V
    .locals 3

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiScanModeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_scan_always_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 82
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiScanModeActivity;->setResult(I)V

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiScanModeActivity;->finish()V

    .line 84
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiScanModeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 45
    .local v1, intent:Landroid/content/Intent;
    if-nez p1, :cond_1

    .line 46
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.net.wifi.action.REQUEST_SCAN_ALWAYS_AVAILABLE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiScanModeActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/WifiScanModeActivity;->mApp:Ljava/lang/String;

    .line 51
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiScanModeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 52
    .local v2, pm:Landroid/content/pm/PackageManager;
    iget-object v3, p0, Lcom/android/settings/wifi/WifiScanModeActivity;->mApp:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 53
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/android/settings/wifi/WifiScanModeActivity;->mApp:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiScanModeActivity;->createDialog()V

    .line 63
    :goto_1
    return-void

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiScanModeActivity;->finish()V

    goto :goto_1

    .line 60
    :cond_1
    const-string v3, "app"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/WifiScanModeActivity;->mApp:Ljava/lang/String;

    goto :goto_0

    .line 54
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 99
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 100
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiScanModeActivity;->dismissDialog()V

    .line 101
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 104
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 105
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiScanModeActivity;->createDialog()V

    .line 106
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 93
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 94
    const-string v0, "app"

    iget-object v1, p0, Lcom/android/settings/wifi/WifiScanModeActivity;->mApp:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-void
.end method
