.class final Lcom/android/settings/location/SettingsInjector$Setting;
.super Ljava/lang/Object;
.source "SettingsInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/location/SettingsInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Setting"
.end annotation


# instance fields
.field public final preference:Landroid/preference/Preference;

.field public final setting:Lcom/android/settings/location/InjectedSetting;

.field public startMillis:J

.field final synthetic this$0:Lcom/android/settings/location/SettingsInjector;


# direct methods
.method private constructor <init>(Lcom/android/settings/location/SettingsInjector;Lcom/android/settings/location/InjectedSetting;Landroid/preference/Preference;)V
    .locals 0
    .parameter
    .parameter "setting"
    .parameter "preference"

    .prologue
    .line 392
    iput-object p1, p0, Lcom/android/settings/location/SettingsInjector$Setting;->this$0:Lcom/android/settings/location/SettingsInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 393
    iput-object p2, p0, Lcom/android/settings/location/SettingsInjector$Setting;->setting:Lcom/android/settings/location/InjectedSetting;

    .line 394
    iput-object p3, p0, Lcom/android/settings/location/SettingsInjector$Setting;->preference:Landroid/preference/Preference;

    .line 395
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/location/SettingsInjector;Lcom/android/settings/location/InjectedSetting;Landroid/preference/Preference;Lcom/android/settings/location/SettingsInjector$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 386
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/location/SettingsInjector$Setting;-><init>(Lcom/android/settings/location/SettingsInjector;Lcom/android/settings/location/InjectedSetting;Landroid/preference/Preference;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 411
    if-eq p0, p1, :cond_0

    instance-of v0, p1, Lcom/android/settings/location/SettingsInjector$Setting;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/location/SettingsInjector$Setting;->setting:Lcom/android/settings/location/InjectedSetting;

    check-cast p1, Lcom/android/settings/location/SettingsInjector$Setting;

    .end local p1
    iget-object v1, p1, Lcom/android/settings/location/SettingsInjector$Setting;->setting:Lcom/android/settings/location/InjectedSetting;

    invoke-virtual {v0, v1}, Lcom/android/settings/location/InjectedSetting;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getElapsedTime()J
    .locals 4

    .prologue
    .line 458
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 459
    .local v0, end:J
    iget-wide v2, p0, Lcom/android/settings/location/SettingsInjector$Setting;->startMillis:J

    sub-long v2, v0, v2

    return-wide v2
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/settings/location/SettingsInjector$Setting;->setting:Lcom/android/settings/location/InjectedSetting;

    invoke-virtual {v0}, Lcom/android/settings/location/InjectedSetting;->hashCode()I

    move-result v0

    return v0
.end method

.method public maybeLogElapsedTime()V
    .locals 6

    .prologue
    .line 463
    const-string v2, "SettingsInjector"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/android/settings/location/SettingsInjector$Setting;->startMillis:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 464
    invoke-virtual {p0}, Lcom/android/settings/location/SettingsInjector$Setting;->getElapsedTime()J

    move-result-wide v0

    .line 465
    .local v0, elapsed:J
    const-string v2, "SettingsInjector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " update took "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " millis"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    .end local v0           #elapsed:J
    :cond_0
    return-void
.end method

.method public startService()V
    .locals 6

    .prologue
    .line 424
    new-instance v0, Lcom/android/settings/location/SettingsInjector$Setting$1;

    invoke-direct {v0, p0}, Lcom/android/settings/location/SettingsInjector$Setting$1;-><init>(Lcom/android/settings/location/SettingsInjector$Setting;)V

    .line 439
    .local v0, handler:Landroid/os/Handler;
    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 441
    .local v2, messenger:Landroid/os/Messenger;
    iget-object v3, p0, Lcom/android/settings/location/SettingsInjector$Setting;->setting:Lcom/android/settings/location/InjectedSetting;

    invoke-virtual {v3}, Lcom/android/settings/location/InjectedSetting;->getServiceIntent()Landroid/content/Intent;

    move-result-object v1

    .line 442
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "messenger"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 444
    const-string v3, "SettingsInjector"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 445
    const-string v3, "SettingsInjector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/settings/location/SettingsInjector$Setting;->setting:Lcom/android/settings/location/InjectedSetting;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": sending update intent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", handler: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/settings/location/SettingsInjector$Setting;->startMillis:J

    .line 454
    :goto_0
    iget-object v3, p0, Lcom/android/settings/location/SettingsInjector$Setting;->this$0:Lcom/android/settings/location/SettingsInjector;

    #getter for: Lcom/android/settings/location/SettingsInjector;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/location/SettingsInjector;->access$400(Lcom/android/settings/location/SettingsInjector;)Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 455
    return-void

    .line 449
    :cond_0
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/settings/location/SettingsInjector$Setting;->startMillis:J

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting{setting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/location/SettingsInjector$Setting;->setting:Lcom/android/settings/location/InjectedSetting;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", preference="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/location/SettingsInjector$Setting;->preference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
