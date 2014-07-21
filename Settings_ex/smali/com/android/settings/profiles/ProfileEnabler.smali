.class public Lcom/android/settings/profiles/ProfileEnabler;
.super Ljava/lang/Object;
.source "ProfileEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mStateMachineEvent:Z

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 0
    .parameter "context"
    .parameter "switch_"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/settings/profiles/ProfileEnabler;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/android/settings/profiles/ProfileEnabler;->mSwitch:Landroid/widget/Switch;

    .line 34
    return-void
.end method

.method private setSwitchState()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 54
    iget-object v3, p0, Lcom/android/settings/profiles/ProfileEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "system_profiles_enabled"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    move v0, v1

    .line 56
    .local v0, enabled:Z
    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/profiles/ProfileEnabler;->mStateMachineEvent:Z

    .line 57
    iget-object v1, p0, Lcom/android/settings/profiles/ProfileEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 58
    iput-boolean v2, p0, Lcom/android/settings/profiles/ProfileEnabler;->mStateMachineEvent:Z

    .line 59
    return-void

    .end local v0           #enabled:Z
    :cond_0
    move v0, v2

    .line 54
    goto :goto_0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 62
    iget-boolean v1, p0, Lcom/android/settings/profiles/ProfileEnabler;->mStateMachineEvent:Z

    if-eqz v1, :cond_0

    .line 79
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v1, p0, Lcom/android/settings/profiles/ProfileEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "system_profiles_enabled"

    if-eqz p2, :cond_1

    move v1, v2

    :goto_1
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 71
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.profiles.PROFILES_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "profile_state"

    if-eqz p2, :cond_2

    :goto_2
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 77
    iget-object v1, p0, Lcom/android/settings/profiles/ProfileEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    move v1, v3

    .line 66
    goto :goto_1

    .restart local v0       #intent:Landroid/content/Intent;
    :cond_2
    move v2, v3

    .line 72
    goto :goto_2
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/profiles/ProfileEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 43
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings/profiles/ProfileEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 38
    invoke-direct {p0}, Lcom/android/settings/profiles/ProfileEnabler;->setSwitchState()V

    .line 39
    return-void
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 2
    .parameter "switch_"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/profiles/ProfileEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v0, p1, :cond_0

    .line 51
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/android/settings/profiles/ProfileEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 48
    iput-object p1, p0, Lcom/android/settings/profiles/ProfileEnabler;->mSwitch:Landroid/widget/Switch;

    .line 49
    iget-object v0, p0, Lcom/android/settings/profiles/ProfileEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 50
    invoke-direct {p0}, Lcom/android/settings/profiles/ProfileEnabler;->setSwitchState()V

    goto :goto_0
.end method
