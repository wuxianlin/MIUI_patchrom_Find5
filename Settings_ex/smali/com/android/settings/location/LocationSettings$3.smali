.class Lcom/android/settings/location/LocationSettings$3;
.super Landroid/content/BroadcastReceiver;
.source "LocationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/location/LocationSettings;->addLocationServices(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/location/LocationSettings;

.field final synthetic val$injector:Lcom/android/settings/location/SettingsInjector;


# direct methods
.method constructor <init>(Lcom/android/settings/location/LocationSettings;Lcom/android/settings/location/SettingsInjector;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/android/settings/location/LocationSettings$3;->this$0:Lcom/android/settings/location/LocationSettings;

    iput-object p2, p0, Lcom/android/settings/location/LocationSettings$3;->val$injector:Lcom/android/settings/location/SettingsInjector;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 207
    const-string v0, "LocationSettings"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    const-string v0, "LocationSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received settings change intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings$3;->val$injector:Lcom/android/settings/location/SettingsInjector;

    invoke-virtual {v0}, Lcom/android/settings/location/SettingsInjector;->reloadStatusMessages()V

    .line 211
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings$3;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-virtual {v0}, Lcom/android/settings/location/LocationSettings;->refreshLocationMode()V

    .line 212
    return-void
.end method
