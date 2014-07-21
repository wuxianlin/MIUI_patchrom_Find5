.class public Lcom/android/settings/location/LocationEnabler;
.super Ljava/lang/Object;
.source "LocationEnabler.java"

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
    iput-object p1, p0, Lcom/android/settings/location/LocationEnabler;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/android/settings/location/LocationEnabler;->mSwitch:Landroid/widget/Switch;

    .line 34
    return-void
.end method

.method private setSwitchState()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 54
    iget-object v3, p0, Lcom/android/settings/location/LocationEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "location_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 56
    .local v0, mode:I
    iput-boolean v1, p0, Lcom/android/settings/location/LocationEnabler;->mStateMachineEvent:Z

    .line 57
    iget-object v3, p0, Lcom/android/settings/location/LocationEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    :goto_0
    invoke-virtual {v3, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 58
    iput-boolean v2, p0, Lcom/android/settings/location/LocationEnabler;->mStateMachineEvent:Z

    .line 59
    return-void

    :cond_0
    move v1, v2

    .line 57
    goto :goto_0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v1, 0x0

    .line 62
    iget-boolean v2, p0, Lcom/android/settings/location/LocationEnabler;->mStateMachineEvent:Z

    if-eqz v2, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v2, p0, Lcom/android/settings/location/LocationEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/location/LocationSettingsBase;->isRestricted(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 69
    const-string v2, "LocationEnabler"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    const-string v2, "LocationEnabler"

    const-string v3, "Restricted user, not setting location mode"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 75
    :cond_2
    iget-object v2, p0, Lcom/android/settings/location/LocationEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "location_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 77
    .local v0, currentMode:I
    if-eqz p2, :cond_3

    const/4 v1, 0x3

    .line 79
    .local v1, newMode:I
    :cond_3
    iget-object v2, p0, Lcom/android/settings/location/LocationEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/android/settings/location/LocationSettingsBase;->sendModeChangingIntent(Landroid/content/Context;II)V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/location/LocationEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 43
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings/location/LocationEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 38
    invoke-direct {p0}, Lcom/android/settings/location/LocationEnabler;->setSwitchState()V

    .line 39
    return-void
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 2
    .parameter "switch_"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/location/LocationEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v0, p1, :cond_0

    .line 51
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/android/settings/location/LocationEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 48
    iput-object p1, p0, Lcom/android/settings/location/LocationEnabler;->mSwitch:Landroid/widget/Switch;

    .line 49
    iget-object v0, p0, Lcom/android/settings/location/LocationEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 50
    invoke-direct {p0}, Lcom/android/settings/location/LocationEnabler;->setSwitchState()V

    goto :goto_0
.end method
