.class Lcom/android/settings/wfd/WifiDisplaySettings$4;
.super Landroid/preference/ListPreference;
.source "WifiDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wfd/WifiDisplaySettings;->buildCertificationMenu(Landroid/preference/PreferenceScreen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wfd/WifiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 411
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$4;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-direct {p0, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 3
    .parameter "positiveResult"

    .prologue
    .line 414
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onDialogClosed(Z)V

    .line 415
    if-eqz p1, :cond_0

    .line 416
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$4;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings$4;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    #setter for: Lcom/android/settings/wfd/WifiDisplaySettings;->mWpsConfig:I
    invoke-static {v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$602(Lcom/android/settings/wfd/WifiDisplaySettings;I)I

    .line 417
    const-string v0, "%1$s"

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WifiDisplaySettings$4;->setSummary(Ljava/lang/CharSequence;)V

    .line 418
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$4;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-virtual {v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 419
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$4;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-virtual {v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_display_wps_config"

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$4;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    #getter for: Lcom/android/settings/wfd/WifiDisplaySettings;->mWpsConfig:I
    invoke-static {v2}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$600(Lcom/android/settings/wfd/WifiDisplaySettings;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 422
    :cond_0
    return-void
.end method
