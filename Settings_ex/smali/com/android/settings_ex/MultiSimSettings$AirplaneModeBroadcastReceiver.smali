.class Lcom/android/settings_ex/MultiSimSettings$AirplaneModeBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MultiSimSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/MultiSimSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AirplaneModeBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/MultiSimSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/MultiSimSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 259
    iput-object p1, p0, Lcom/android/settings_ex/MultiSimSettings$AirplaneModeBroadcastReceiver;->this$0:Lcom/android/settings_ex/MultiSimSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/MultiSimSettings;Lcom/android/settings_ex/MultiSimSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 259
    invoke-direct {p0, p1}, Lcom/android/settings_ex/MultiSimSettings$AirplaneModeBroadcastReceiver;-><init>(Lcom/android/settings_ex/MultiSimSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 262
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 264
    const-string v1, "MultiSimSettings"

    const-string v2, "Intent ACTION_AIRPLANE_MODE_CHANGED received"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v1, p0, Lcom/android/settings_ex/MultiSimSettings$AirplaneModeBroadcastReceiver;->this$0:Lcom/android/settings_ex/MultiSimSettings;

    const-string v2, "state"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    #setter for: Lcom/android/settings_ex/MultiSimSettings;->mIsAirplaneModeOn:Z
    invoke-static {v1, v2}, Lcom/android/settings_ex/MultiSimSettings;->access$102(Lcom/android/settings_ex/MultiSimSettings;Z)Z

    .line 276
    iget-object v1, p0, Lcom/android/settings_ex/MultiSimSettings$AirplaneModeBroadcastReceiver;->this$0:Lcom/android/settings_ex/MultiSimSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/MultiSimSettings;->finish()V

    .line 278
    :cond_0
    return-void
.end method
