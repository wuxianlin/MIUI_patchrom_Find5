.class public Lcom/android/settings_ex/cyanogenmod/BootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private configureCPU(Landroid/content/Context;)V
    .locals 11
    .parameter "ctx"

    .prologue
    const/4 v7, 0x0

    const/4 v10, 0x0

    .line 93
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 95
    .local v8, prefs:Landroid/content/SharedPreferences;
    const-string v9, "pref_cpu_set_on_boot"

    invoke-interface {v8, v9, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_0

    .line 96
    const-string v9, "BootReceiver"

    const-string v10, "CPU restore disabled by user preference."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :goto_0
    return-void

    .line 100
    :cond_0
    const-string v9, "pref_cpu_gov"

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 101
    .local v3, governor:Ljava/lang/String;
    const-string v9, "pref_cpu_freq_min"

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 102
    .local v6, minFrequency:Ljava/lang/String;
    const-string v9, "pref_cpu_freq_max"

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 103
    .local v5, maxFrequency:Ljava/lang/String;
    const-string v9, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_available_frequencies"

    invoke-static {v9}, Lcom/android/settings_ex/Utils;->fileReadOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, availableFrequenciesLine:Ljava/lang/String;
    const-string v9, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_available_governors"

    invoke-static {v9}, Lcom/android/settings_ex/Utils;->fileReadOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, availableGovernorsLine:Ljava/lang/String;
    if-eqz v1, :cond_1

    if-nez v3, :cond_3

    :cond_1
    if-eqz v0, :cond_2

    if-nez v6, :cond_3

    if-nez v5, :cond_3

    :cond_2
    const/4 v7, 0x1

    .line 107
    .local v7, noSettings:Z
    :cond_3
    const/4 v2, 0x0

    .line 108
    .local v2, frequencies:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 110
    .local v4, governors:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v7, :cond_4

    .line 111
    const-string v9, "BootReceiver"

    const-string v10, "No CPU settings saved. Nothing to restore."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 113
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/settings_ex/cyanogenmod/BootReceiver;->initFreqCapFiles(Landroid/content/Context;)V

    .line 114
    if-eqz v1, :cond_5

    .line 115
    const-string v9, " "

    invoke-virtual {v1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 117
    :cond_5
    if-eqz v0, :cond_6

    .line 118
    const-string v9, " "

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 120
    :cond_6
    if-eqz v5, :cond_7

    if-eqz v2, :cond_7

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 121
    sget-object v9, Lcom/android/settings_ex/cyanogenmod/Processor;->FREQ_MAX_FILE:Ljava/lang/String;

    invoke-static {v9, v5}, Lcom/android/settings_ex/Utils;->fileWriteOneLine(Ljava/lang/String;Ljava/lang/String;)Z

    .line 123
    :cond_7
    if-eqz v6, :cond_8

    if-eqz v2, :cond_8

    invoke-interface {v2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 124
    sget-object v9, Lcom/android/settings_ex/cyanogenmod/Processor;->FREQ_MIN_FILE:Ljava/lang/String;

    invoke-static {v9, v6}, Lcom/android/settings_ex/Utils;->fileWriteOneLine(Ljava/lang/String;Ljava/lang/String;)Z

    .line 126
    :cond_8
    if-eqz v3, :cond_9

    if-eqz v4, :cond_9

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 127
    const-string v9, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor"

    invoke-static {v9, v3}, Lcom/android/settings_ex/Utils;->fileWriteOneLine(Ljava/lang/String;Ljava/lang/String;)Z

    .line 129
    :cond_9
    const-string v9, "BootReceiver"

    const-string v10, "CPU settings restored."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private configureIOSched(Landroid/content/Context;)V
    .locals 8
    .parameter "ctx"

    .prologue
    const/4 v3, 0x0

    .line 134
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 136
    .local v4, prefs:Landroid/content/SharedPreferences;
    const-string v5, "pref_io_sched_set_on_boot"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_0

    .line 137
    const-string v5, "BootReceiver"

    const-string v6, "IOSched restore disabled by user preference."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :goto_0
    return-void

    .line 141
    :cond_0
    const-string v5, "pref_io_sched"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, ioscheduler:Ljava/lang/String;
    const-string v5, "/sys/block/mmcblk0/queue/scheduler"

    invoke-static {v5}, Lcom/android/settings_ex/Utils;->fileReadOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, availableIOSchedulersLine:Ljava/lang/String;
    if-eqz v0, :cond_1

    if-nez v1, :cond_2

    :cond_1
    const/4 v3, 0x1

    .line 144
    .local v3, noSettings:Z
    :cond_2
    const/4 v2, 0x0

    .line 146
    .local v2, ioschedulers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_3

    .line 147
    const-string v5, "BootReceiver"

    const-string v6, "No I/O scheduler settings saved. Nothing to restore."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 149
    :cond_3
    if-eqz v0, :cond_4

    .line 150
    const-string v5, "["

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "]"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 152
    :cond_4
    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 153
    const-string v5, "/sys/block/mmcblk0/queue/scheduler"

    invoke-static {v5, v1}, Lcom/android/settings_ex/Utils;->fileWriteOneLine(Ljava/lang/String;Ljava/lang/String;)Z

    .line 155
    :cond_5
    const-string v5, "BootReceiver"

    const-string v6, "I/O scheduler settings restored."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private configureKSM(Landroid/content/Context;)V
    .locals 5
    .parameter "ctx"

    .prologue
    .line 160
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 162
    .local v2, prefs:Landroid/content/SharedPreferences;
    const-string v3, "ro.ksm.default"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    if-eq v3, v4, :cond_0

    const/4 v1, 0x1

    .line 163
    .local v1, ksmDefault:Z
    :goto_0
    const-string v3, "pref_ksm"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 165
    .local v0, ksm:Z
    const-string v4, "/sys/kernel/mm/ksm/run"

    if-eqz v0, :cond_1

    const-string v3, "1"

    :goto_1
    invoke-static {v4, v3}, Lcom/android/settings_ex/Utils;->fileWriteOneLine(Ljava/lang/String;Ljava/lang/String;)Z

    .line 166
    const-string v3, "BootReceiver"

    const-string v4, "KSM settings restored."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    return-void

    .line 162
    .end local v0           #ksm:Z
    .end local v1           #ksmDefault:Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 165
    .restart local v0       #ksm:Z
    .restart local v1       #ksmDefault:Z
    :cond_1
    const-string v3, "0"

    goto :goto_1
.end method

.method private initFreqCapFiles(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 86
    sget-boolean v0, Lcom/android/settings_ex/cyanogenmod/Processor;->freqCapFilesInitialized:Z

    if-eqz v0, :cond_0

    .line 90
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08040d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/cyanogenmod/Processor;->FREQ_MAX_FILE:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08040e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/cyanogenmod/Processor;->FREQ_MIN_FILE:Ljava/lang/String;

    .line 89
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings_ex/cyanogenmod/Processor;->freqCapFilesInitialized:Z

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "ctx"
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 49
    const-string v0, "sys.cpufreq.restored"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    const-string v0, "sys.cpufreq.restored"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-direct {p0, p1}, Lcom/android/settings_ex/cyanogenmod/BootReceiver;->configureCPU(Landroid/content/Context;)V

    .line 57
    :goto_0
    const-string v0, "sys.iosched.restored"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 59
    const-string v0, "sys.iosched.restored"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-direct {p0, p1}, Lcom/android/settings_ex/cyanogenmod/BootReceiver;->configureIOSched(Landroid/content/Context;)V

    .line 65
    :goto_1
    const-string v0, "/sys/kernel/mm/ksm/run"

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    const-string v0, "sys.ksm.restored"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 68
    const-string v0, "sys.ksm.restored"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-direct {p0, p1}, Lcom/android/settings_ex/cyanogenmod/BootReceiver;->configureKSM(Landroid/content/Context;)V

    .line 76
    :cond_0
    :goto_2
    invoke-static {p1}, Lcom/android/settings_ex/hardware/DisplayColor;->restore(Landroid/content/Context;)V

    .line 77
    invoke-static {p1}, Lcom/android/settings_ex/hardware/DisplayGamma;->restore(Landroid/content/Context;)V

    .line 78
    invoke-static {p1}, Lcom/android/settings_ex/hardware/VibratorIntensity;->restore(Landroid/content/Context;)V

    .line 79
    invoke-static {p1}, Lcom/android/settings_ex/DisplaySettings;->restore(Landroid/content/Context;)V

    .line 80
    invoke-static {p1}, Lcom/android/settings_ex/location/LocationSettings;->restore(Landroid/content/Context;)V

    .line 81
    invoke-static {p1}, Lcom/android/settings_ex/cyanogenmod/ButtonSettings;->restoreKeyDisabler(Landroid/content/Context;)V

    .line 82
    return-void

    .line 54
    :cond_1
    const-string v0, "sys.cpufreq.restored"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :cond_2
    const-string v0, "sys.iosched.restored"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 71
    :cond_3
    const-string v0, "sys.ksm.restored"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
