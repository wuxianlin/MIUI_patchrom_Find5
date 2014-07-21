.class Lcom/android/settings/location/SettingsInjector$Setting$1;
.super Landroid/os/Handler;
.source "SettingsInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/location/SettingsInjector$Setting;->startService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/location/SettingsInjector$Setting;


# direct methods
.method constructor <init>(Lcom/android/settings/location/SettingsInjector$Setting;)V
    .locals 0
    .parameter

    .prologue
    .line 424
    iput-object p1, p0, Lcom/android/settings/location/SettingsInjector$Setting$1;->this$1:Lcom/android/settings/location/SettingsInjector$Setting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 427
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 428
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "summary"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 429
    .local v2, summary:Ljava/lang/String;
    const-string v3, "enabled"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 430
    .local v1, enabled:Z
    const-string v3, "SettingsInjector"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 431
    const-string v3, "SettingsInjector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/settings/location/SettingsInjector$Setting$1;->this$1:Lcom/android/settings/location/SettingsInjector$Setting;

    iget-object v5, v5, Lcom/android/settings/location/SettingsInjector$Setting;->setting:Lcom/android/settings/location/InjectedSetting;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": received "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", bundle: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :cond_0
    iget-object v3, p0, Lcom/android/settings/location/SettingsInjector$Setting$1;->this$1:Lcom/android/settings/location/SettingsInjector$Setting;

    iget-object v3, v3, Lcom/android/settings/location/SettingsInjector$Setting;->preference:Landroid/preference/Preference;

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 434
    iget-object v3, p0, Lcom/android/settings/location/SettingsInjector$Setting$1;->this$1:Lcom/android/settings/location/SettingsInjector$Setting;

    iget-object v3, v3, Lcom/android/settings/location/SettingsInjector$Setting;->preference:Landroid/preference/Preference;

    invoke-virtual {v3, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 435
    iget-object v3, p0, Lcom/android/settings/location/SettingsInjector$Setting$1;->this$1:Lcom/android/settings/location/SettingsInjector$Setting;

    iget-object v3, v3, Lcom/android/settings/location/SettingsInjector$Setting;->this$0:Lcom/android/settings/location/SettingsInjector;

    #getter for: Lcom/android/settings/location/SettingsInjector;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/settings/location/SettingsInjector;->access$300(Lcom/android/settings/location/SettingsInjector;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/location/SettingsInjector$Setting$1;->this$1:Lcom/android/settings/location/SettingsInjector$Setting;

    iget-object v4, v4, Lcom/android/settings/location/SettingsInjector$Setting;->this$0:Lcom/android/settings/location/SettingsInjector;

    #getter for: Lcom/android/settings/location/SettingsInjector;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/settings/location/SettingsInjector;->access$300(Lcom/android/settings/location/SettingsInjector;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/android/settings/location/SettingsInjector$Setting$1;->this$1:Lcom/android/settings/location/SettingsInjector$Setting;

    invoke-virtual {v4, v5, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 437
    return-void
.end method
