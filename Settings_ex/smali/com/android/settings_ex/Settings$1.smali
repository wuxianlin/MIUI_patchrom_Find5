.class Lcom/android/settings_ex/Settings$1;
.super Landroid/content/BroadcastReceiver;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/Settings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/Settings;)V
    .locals 0
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/android/settings_ex/Settings$1;->this$0:Lcom/android/settings_ex/Settings;

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
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 209
    invoke-static {p2}, Lcom/android/settings_ex/Utils;->isBatteryPresent(Landroid/content/Intent;)Z

    move-result v1

    .line 211
    .local v1, batteryPresent:Z
    iget-object v2, p0, Lcom/android/settings_ex/Settings$1;->this$0:Lcom/android/settings_ex/Settings;

    #getter for: Lcom/android/settings_ex/Settings;->mBatteryPresent:Z
    invoke-static {v2}, Lcom/android/settings_ex/Settings;->access$000(Lcom/android/settings_ex/Settings;)Z

    move-result v2

    if-eq v2, v1, :cond_0

    .line 212
    iget-object v2, p0, Lcom/android/settings_ex/Settings$1;->this$0:Lcom/android/settings_ex/Settings;

    #setter for: Lcom/android/settings_ex/Settings;->mBatteryPresent:Z
    invoke-static {v2, v1}, Lcom/android/settings_ex/Settings;->access$002(Lcom/android/settings_ex/Settings;Z)Z

    .line 213
    iget-object v2, p0, Lcom/android/settings_ex/Settings$1;->this$0:Lcom/android/settings_ex/Settings;

    invoke-virtual {v2}, Lcom/android/settings_ex/Settings;->invalidateHeaders()V

    .line 216
    .end local v1           #batteryPresent:Z
    :cond_0
    return-void
.end method
