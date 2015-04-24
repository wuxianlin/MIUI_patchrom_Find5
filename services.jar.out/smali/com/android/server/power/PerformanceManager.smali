.class Lcom/android/server/power/PerformanceManager;
.super Ljava/lang/Object;
.source "PerformanceManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PerformanceManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentProfile:Ljava/lang/String;

.field private mLock:Ljava/lang/Object;

.field private mPatterns:[Ljava/util/regex/Pattern;

.field private final mPerfProfileDefault:Ljava/lang/String;

.field private final mPerfProfileProperty:Ljava/lang/String;

.field private mProfileSetByUser:Z

.field private mProfiles:[Ljava/lang/String;

.field private mProfilesEnabled:Z

.field private mUsePowerHAL:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v5, p0, Lcom/android/server/power/PerformanceManager;->mPatterns:[Ljava/util/regex/Pattern;

    .line 39
    iput-object v5, p0, Lcom/android/server/power/PerformanceManager;->mProfiles:[Ljava/lang/String;

    .line 41
    iput-object v5, p0, Lcom/android/server/power/PerformanceManager;->mCurrentProfile:Ljava/lang/String;

    .line 43
    iput-boolean v4, p0, Lcom/android/server/power/PerformanceManager;->mProfileSetByUser:Z

    .line 44
    iput-boolean v4, p0, Lcom/android/server/power/PerformanceManager;->mProfilesEnabled:Z

    .line 45
    iput-boolean v4, p0, Lcom/android/server/power/PerformanceManager;->mUsePowerHAL:Z

    .line 47
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/android/server/power/PerformanceManager;->mLock:Ljava/lang/Object;

    .line 50
    iput-object p1, p0, Lcom/android/server/power/PerformanceManager;->mContext:Landroid/content/Context;

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x107003a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "activities":[Ljava/lang/String;
    if-eqz v0, :cond_1

    array-length v5, v0

    if-lez v5, :cond_1

    .line 55
    array-length v5, v0

    new-array v5, v5, [Ljava/util/regex/Pattern;

    iput-object v5, p0, Lcom/android/server/power/PerformanceManager;->mPatterns:[Ljava/util/regex/Pattern;

    .line 56
    array-length v5, v0

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/android/server/power/PerformanceManager;->mProfiles:[Ljava/lang/String;

    .line 57
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v0

    if-ge v1, v5, :cond_1

    .line 58
    aget-object v5, v0, v1

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, "info":[Ljava/lang/String;
    array-length v5, v2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 60
    iget-object v5, p0, Lcom/android/server/power/PerformanceManager;->mPatterns:[Ljava/util/regex/Pattern;

    aget-object v6, v2, v4

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    aput-object v6, v5, v1

    .line 61
    iget-object v5, p0, Lcom/android/server/power/PerformanceManager;->mProfiles:[Ljava/lang/String;

    aget-object v6, v2, v3

    aput-object v6, v5, v1

    .line 57
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    .end local v1    # "i":I
    .end local v2    # "info":[Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1040133

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/power/PerformanceManager;->mPerfProfileDefault:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1040132

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/power/PerformanceManager;->mPerfProfileProperty:Ljava/lang/String;

    .line 70
    iget-object v5, p0, Lcom/android/server/power/PerformanceManager;->mPerfProfileDefault:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/server/power/PerformanceManager;->mPerfProfileProperty:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    :goto_1
    iput-boolean v3, p0, Lcom/android/server/power/PerformanceManager;->mProfilesEnabled:Z

    .line 73
    iget-boolean v3, p0, Lcom/android/server/power/PerformanceManager;->mProfilesEnabled:Z

    if-eqz v3, :cond_2

    .line 77
    const-string v3, "powerhal"

    iget-object v4, p0, Lcom/android/server/power/PerformanceManager;->mPerfProfileProperty:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/power/PerformanceManager;->mUsePowerHAL:Z

    .line 81
    iget-object v3, p0, Lcom/android/server/power/PerformanceManager;->mPerfProfileDefault:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/power/PerformanceManager;->setPowerProfileLocked(Ljava/lang/String;)V

    .line 83
    :cond_2
    return-void

    :cond_3
    move v3, v4

    .line 70
    goto :goto_1
.end method

.method private getProfileForActivity(Landroid/content/Intent;)Ljava/lang/String;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 127
    if-eqz p1, :cond_1

    .line 128
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 129
    .local v1, "cn":Landroid/content/ComponentName;
    if-eqz v1, :cond_1

    .line 130
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "activity":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/power/PerformanceManager;->mPatterns:[Ljava/util/regex/Pattern;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 132
    iget-object v3, p0, Lcom/android/server/power/PerformanceManager;->mPatterns:[Ljava/util/regex/Pattern;

    aget-object v3, v3, v2

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 133
    iget-object v3, p0, Lcom/android/server/power/PerformanceManager;->mProfiles:[Ljava/lang/String;

    aget-object v3, v3, v2

    .line 138
    .end local v0    # "activity":Ljava/lang/String;
    .end local v1    # "cn":Landroid/content/ComponentName;
    .end local v2    # "i":I
    :goto_1
    return-object v3

    .line 131
    .restart local v0    # "activity":Ljava/lang/String;
    .restart local v1    # "cn":Landroid/content/ComponentName;
    .restart local v2    # "i":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 138
    .end local v0    # "activity":Ljava/lang/String;
    .end local v1    # "cn":Landroid/content/ComponentName;
    .end local v2    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/android/server/power/PerformanceManager;->mPerfProfileDefault:Ljava/lang/String;

    goto :goto_1
.end method

.method private hasAppProfiles()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 95
    iget-boolean v1, p0, Lcom/android/server/power/PerformanceManager;->mProfilesEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/power/PerformanceManager;->mPatterns:[Ljava/util/regex/Pattern;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/power/PerformanceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "app_perf_profiles_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private selectProfile(Ljava/lang/String;)V
    .locals 1
    .param p1, "profile"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/server/power/PerformanceManager;->mCurrentProfile:Ljava/lang/String;

    .line 88
    iget-boolean v0, p0, Lcom/android/server/power/PerformanceManager;->mUsePowerHAL:Z

    if-eqz v0, :cond_0

    .line 89
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->nativeSetPowerProfile(I)V

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/PerformanceManager;->mPerfProfileProperty:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setPowerProfileLocked(Ljava/lang/String;)V
    .locals 4
    .param p1, "profile"    # Ljava/lang/String;

    .prologue
    .line 114
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 116
    .local v0, "token":J
    invoke-direct {p0, p1}, Lcom/android/server/power/PerformanceManager;->selectProfile(Ljava/lang/String;)V

    .line 117
    iget-object v2, p0, Lcom/android/server/power/PerformanceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "performance_profile"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 119
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 120
    return-void
.end method


# virtual methods
.method activityResumed(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/android/server/power/PerformanceManager;->hasAppProfiles()Z

    move-result v1

    if-nez v1, :cond_0

    .line 159
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-object v2, p0, Lcom/android/server/power/PerformanceManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 148
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/PerformanceManager;->mProfileSetByUser:Z

    if-eqz v1, :cond_1

    .line 149
    monitor-exit v2

    goto :goto_0

    .line 158
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 152
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/power/PerformanceManager;->getProfileForActivity(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "forApp":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/power/PerformanceManager;->mCurrentProfile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 154
    monitor-exit v2

    goto :goto_0

    .line 157
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/server/power/PerformanceManager;->setPowerProfileLocked(Ljava/lang/String;)V

    .line 158
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method getPowerProfile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/server/power/PerformanceManager;->mCurrentProfile:Ljava/lang/String;

    return-object v0
.end method

.method setPowerProfile(Ljava/lang/String;)V
    .locals 2
    .param p1, "profile"    # Ljava/lang/String;

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/android/server/power/PerformanceManager;->mProfilesEnabled:Z

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Power profiles not enabled on this device"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/power/PerformanceManager;->getPowerProfile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 111
    :cond_1
    :goto_0
    return-void

    .line 107
    :cond_2
    iget-object v1, p0, Lcom/android/server/power/PerformanceManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PerformanceManager;->mPerfProfileDefault:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/server/power/PerformanceManager;->mProfileSetByUser:Z

    .line 109
    invoke-direct {p0, p1}, Lcom/android/server/power/PerformanceManager;->setPowerProfileLocked(Ljava/lang/String;)V

    .line 110
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 108
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method
