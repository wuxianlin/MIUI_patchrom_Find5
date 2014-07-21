.class Lcom/android/settings_ex/SettingsLicenseActivity$3;
.super Landroid/webkit/WebViewClient;
.source "SettingsLicenseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/SettingsLicenseActivity;->showPageOfText(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/SettingsLicenseActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/SettingsLicenseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Lcom/android/settings_ex/SettingsLicenseActivity$3;->this$0:Lcom/android/settings_ex/SettingsLicenseActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "url"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/settings_ex/SettingsLicenseActivity$3;->this$0:Lcom/android/settings_ex/SettingsLicenseActivity;

    #getter for: Lcom/android/settings_ex/SettingsLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/settings_ex/SettingsLicenseActivity;->access$200(Lcom/android/settings_ex/SettingsLicenseActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 206
    iget-object v0, p0, Lcom/android/settings_ex/SettingsLicenseActivity$3;->this$0:Lcom/android/settings_ex/SettingsLicenseActivity;

    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsLicenseActivity;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/android/settings_ex/SettingsLicenseActivity$3;->this$0:Lcom/android/settings_ex/SettingsLicenseActivity;

    #getter for: Lcom/android/settings_ex/SettingsLicenseActivity;->mTextDlg:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/settings_ex/SettingsLicenseActivity;->access$300(Lcom/android/settings_ex/SettingsLicenseActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 209
    :cond_0
    return-void
.end method
