.class public Lcom/android/settings/BrightnessPreference;
.super Landroid/preference/Preference;
.source "BrightnessPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method


# virtual methods
.method protected onClick()V
    .locals 3

    .prologue
    .line 33
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SHOW_BRIGHTNESS_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 34
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 35
    return-void
.end method
