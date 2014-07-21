.class public Lcom/android/settings_ex/voicewakeup/VoiceWakeupEnabler;
.super Ljava/lang/Object;
.source "VoiceWakeupEnabler.java"

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
    iput-object p1, p0, Lcom/android/settings_ex/voicewakeup/VoiceWakeupEnabler;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/android/settings_ex/voicewakeup/VoiceWakeupEnabler;->mSwitch:Landroid/widget/Switch;

    .line 34
    return-void
.end method

.method private setSwitchState()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 55
    iget-object v3, p0, Lcom/android/settings_ex/voicewakeup/VoiceWakeupEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "voice_wakeup"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    move v0, v1

    .line 57
    .local v0, enabled:Z
    :goto_0
    iput-boolean v1, p0, Lcom/android/settings_ex/voicewakeup/VoiceWakeupEnabler;->mStateMachineEvent:Z

    .line 58
    iget-object v1, p0, Lcom/android/settings_ex/voicewakeup/VoiceWakeupEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 59
    iput-boolean v2, p0, Lcom/android/settings_ex/voicewakeup/VoiceWakeupEnabler;->mStateMachineEvent:Z

    .line 60
    return-void

    .end local v0           #enabled:Z
    :cond_0
    move v0, v2

    .line 55
    goto :goto_0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 63
    iget-boolean v1, p0, Lcom/android/settings_ex/voicewakeup/VoiceWakeupEnabler;->mStateMachineEvent:Z

    if-eqz v1, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/voicewakeup/VoiceWakeupEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "voice_wakeup"

    if-eqz p2, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 71
    if-eqz p2, :cond_0

    .line 72
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.cyanogenmod.voicewakeup.action.START_ENGINE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 73
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings_ex/voicewakeup/VoiceWakeupEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 67
    .end local v0           #i:Landroid/content/Intent;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings_ex/voicewakeup/VoiceWakeupEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 43
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings_ex/voicewakeup/VoiceWakeupEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 38
    invoke-direct {p0}, Lcom/android/settings_ex/voicewakeup/VoiceWakeupEnabler;->setSwitchState()V

    .line 39
    return-void
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 2
    .parameter "switch_"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings_ex/voicewakeup/VoiceWakeupEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v0, p1, :cond_0

    .line 52
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/voicewakeup/VoiceWakeupEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 49
    iput-object p1, p0, Lcom/android/settings_ex/voicewakeup/VoiceWakeupEnabler;->mSwitch:Landroid/widget/Switch;

    .line 50
    iget-object v0, p0, Lcom/android/settings_ex/voicewakeup/VoiceWakeupEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 51
    invoke-direct {p0}, Lcom/android/settings_ex/voicewakeup/VoiceWakeupEnabler;->setSwitchState()V

    goto :goto_0
.end method
