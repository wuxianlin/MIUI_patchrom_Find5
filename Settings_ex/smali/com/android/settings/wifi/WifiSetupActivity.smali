.class public Lcom/android/settings/wifi/WifiSetupActivity;
.super Lcom/android/settings/wifi/WifiPickerActivity;
.source "WifiSetupActivity.java"

# interfaces
.implements Lcom/android/settings/ButtonBarHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiPickerActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 5
    .parameter "theme"
    .parameter "resid"
    .parameter "first"

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSetupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "theme"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, themeName:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "holo_light"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "SetupWizardWifiTheme.Light"

    const-string v3, "style"

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSetupActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 39
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/wifi/WifiPickerActivity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 40
    return-void
.end method
