.class Lcom/android/settings_ex/wfd/WifiDisplaySettings$2;
.super Landroid/preference/CheckBoxPreference;
.source "WifiDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wfd/WifiDisplaySettings;->buildCertificationMenu(Landroid/preference/PreferenceScreen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wfd/WifiDisplaySettings;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 381
    iput-object p1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$2;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    invoke-direct {p0, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onClick()V
    .locals 2

    .prologue
    .line 384
    iget-object v1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$2;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$2;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    #getter for: Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mListen:Z
    invoke-static {v0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->access$100(Lcom/android/settings_ex/wfd/WifiDisplaySettings;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #setter for: Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mListen:Z
    invoke-static {v1, v0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->access$102(Lcom/android/settings_ex/wfd/WifiDisplaySettings;Z)Z

    .line 385
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$2;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    iget-object v1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$2;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    #getter for: Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mListen:Z
    invoke-static {v1}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->access$100(Lcom/android/settings_ex/wfd/WifiDisplaySettings;)Z

    move-result v1

    #calls: Lcom/android/settings_ex/wfd/WifiDisplaySettings;->setListenMode(Z)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->access$200(Lcom/android/settings_ex/wfd/WifiDisplaySettings;Z)V

    .line 386
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$2;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    #getter for: Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mListen:Z
    invoke-static {v0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->access$100(Lcom/android/settings_ex/wfd/WifiDisplaySettings;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings$2;->setChecked(Z)V

    .line 387
    return-void

    .line 384
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
