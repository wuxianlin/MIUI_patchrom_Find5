.class public Lcom/android/server/AppsLaunchFailureReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AppsLaunchFailureReceiver.java"


# static fields
.field private static final EXPIRATION_TIME_IN_MILLISECONDS:I = 0x7530

.field private static final FAILURES_THRESHOLD:I = 0x3


# instance fields
.field private mFailuresCount:I

.field private mStartTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/AppsLaunchFailureReceiver;->mFailuresCount:I

    .line 37
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/AppsLaunchFailureReceiver;->mStartTime:J

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x0

    .line 46
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "action":Ljava/lang/String;
    const-string v5, "com.tmobile.intent.action.APP_LAUNCH_FAILURE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 48
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 49
    .local v2, "currentTime":J
    iget-wide v5, p0, Lcom/android/server/AppsLaunchFailureReceiver;->mStartTime:J

    sub-long v5, v2, v5

    const-wide/16 v7, 0x7530

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    .line 51
    iput-wide v2, p0, Lcom/android/server/AppsLaunchFailureReceiver;->mStartTime:J

    .line 52
    iput v9, p0, Lcom/android/server/AppsLaunchFailureReceiver;->mFailuresCount:I

    .line 54
    :cond_0
    iget v5, p0, Lcom/android/server/AppsLaunchFailureReceiver;->mFailuresCount:I

    if-gt v5, v10, :cond_1

    .line 55
    iget v5, p0, Lcom/android/server/AppsLaunchFailureReceiver;->mFailuresCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/server/AppsLaunchFailureReceiver;->mFailuresCount:I

    .line 56
    iget v5, p0, Lcom/android/server/AppsLaunchFailureReceiver;->mFailuresCount:I

    if-ne v5, v10, :cond_1

    .line 58
    const-string v5, "themes"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/ThemeManager;

    .line 59
    .local v4, "tm":Landroid/content/res/ThemeManager;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .local v1, "components":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v5, "mods_fonts"

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    const-string v5, "mods_homescreen"

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    const-string v5, "mods_alarms"

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    const-string v5, "mods_bootanim"

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    const-string v5, "mods_icons"

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    const-string v5, "mods_lockscreen"

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    const-string v5, "mods_notifications"

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    const-string v5, "mods_overlays"

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    const-string v5, "mods_ringtones"

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    const-string v5, "holo"

    invoke-virtual {v4, v5, v1}, Landroid/content/res/ThemeManager;->requestThemeChange(Ljava/lang/String;Ljava/util/List;)V

    .line 81
    .end local v1    # "components":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "currentTime":J
    .end local v4    # "tm":Landroid/content/res/ThemeManager;
    :cond_1
    :goto_0
    return-void

    .line 72
    :cond_2
    const-string v5, "com.tmobile.intent.action.APP_LAUNCH_FAILURE_RESET"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "org.cyanogenmod.intent.action.THEME_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 74
    :cond_3
    iput v9, p0, Lcom/android/server/AppsLaunchFailureReceiver;->mFailuresCount:I

    .line 75
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/AppsLaunchFailureReceiver;->mStartTime:J

    goto :goto_0

    .line 76
    :cond_4
    const-string v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 78
    :cond_5
    iput v9, p0, Lcom/android/server/AppsLaunchFailureReceiver;->mFailuresCount:I

    .line 79
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/AppsLaunchFailureReceiver;->mStartTime:J

    goto :goto_0
.end method
