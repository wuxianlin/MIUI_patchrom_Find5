.class public Lcom/android/settings_ex/cyanogenmod/IOScheduler;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "IOScheduler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mIOSchedulerFormat:Ljava/lang/String;

.field private mIOSchedulerPref:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x0

    .line 49
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v6, 0x7f080236

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/cyanogenmod/IOScheduler;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/cyanogenmod/IOScheduler;->mIOSchedulerFormat:Ljava/lang/String;

    .line 53
    new-array v0, v9, [Ljava/lang/String;

    .line 56
    .local v0, availableIOSchedulers:[Ljava/lang/String;
    const/4 v4, 0x0

    .line 58
    .local v4, currentIOScheduler:Ljava/lang/String;
    const v6, 0x7f050021

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/cyanogenmod/IOScheduler;->addPreferencesFromResource(I)V

    .line 60
    invoke-virtual {p0}, Lcom/android/settings_ex/cyanogenmod/IOScheduler;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 62
    .local v5, prefScreen:Landroid/preference/PreferenceScreen;
    const-string v6, "pref_io_sched"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    iput-object v6, p0, Lcom/android/settings_ex/cyanogenmod/IOScheduler;->mIOSchedulerPref:Landroid/preference/ListPreference;

    .line 66
    const-string v6, "/sys/block/mmcblk0/queue/scheduler"

    invoke-static {v6}, Lcom/android/settings_ex/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "/sys/block/mmcblk0/queue/scheduler"

    invoke-static {v6}, Lcom/android/settings_ex/Utils;->fileReadOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, availableIOSchedulersLine:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 68
    .end local v1           #availableIOSchedulersLine:Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcom/android/settings_ex/cyanogenmod/IOScheduler;->mIOSchedulerPref:Landroid/preference/ListPreference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 84
    :goto_0
    return-void

    .line 71
    .restart local v1       #availableIOSchedulersLine:Ljava/lang/String;
    :cond_1
    const-string v6, "["

    const-string v7, ""

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "]"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 72
    const-string v6, "["

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 73
    .local v3, bropen:I
    const-string v6, "]"

    invoke-virtual {v1, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 74
    .local v2, brclose:I
    if-ltz v3, :cond_2

    if-ltz v2, :cond_2

    .line 75
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 77
    :cond_2
    iget-object v6, p0, Lcom/android/settings_ex/cyanogenmod/IOScheduler;->mIOSchedulerPref:Landroid/preference/ListPreference;

    invoke-virtual {v6, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 78
    iget-object v6, p0, Lcom/android/settings_ex/cyanogenmod/IOScheduler;->mIOSchedulerPref:Landroid/preference/ListPreference;

    invoke-virtual {v6, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 79
    if-eqz v4, :cond_3

    .line 80
    iget-object v6, p0, Lcom/android/settings_ex/cyanogenmod/IOScheduler;->mIOSchedulerPref:Landroid/preference/ListPreference;

    invoke-virtual {v6, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 81
    :cond_3
    iget-object v6, p0, Lcom/android/settings_ex/cyanogenmod/IOScheduler;->mIOSchedulerPref:Landroid/preference/ListPreference;

    iget-object v7, p0, Lcom/android/settings_ex/cyanogenmod/IOScheduler;->mIOSchedulerFormat:Ljava/lang/String;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v4, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v6, p0, Lcom/android/settings_ex/cyanogenmod/IOScheduler;->mIOSchedulerPref:Landroid/preference/ListPreference;

    invoke-virtual {v6, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 106
    const-string v0, ""

    .line 108
    .local v0, fname:Ljava/lang/String;
    if-eqz p2, :cond_3

    .line 109
    iget-object v1, p0, Lcom/android/settings_ex/cyanogenmod/IOScheduler;->mIOSchedulerPref:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_0

    .line 110
    const-string v0, "/sys/block/mmcblk0/queue/scheduler"

    :cond_0
    move-object v1, p2

    .line 113
    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/settings_ex/Utils;->fileWriteOneLine(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 114
    iget-object v1, p0, Lcom/android/settings_ex/cyanogenmod/IOScheduler;->mIOSchedulerPref:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_1

    .line 115
    iget-object v1, p0, Lcom/android/settings_ex/cyanogenmod/IOScheduler;->mIOSchedulerPref:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings_ex/cyanogenmod/IOScheduler;->mIOSchedulerFormat:Ljava/lang/String;

    new-array v5, v2, [Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    .end local p2
    aput-object p2, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    move v1, v2

    .line 122
    :goto_0
    return v1

    .restart local p2
    :cond_2
    move v1, v3

    .line 119
    goto :goto_0

    :cond_3
    move v1, v3

    .line 122
    goto :goto_0
.end method

.method public onResume()V
    .locals 8

    .prologue
    .line 92
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 94
    const-string v4, "/sys/block/mmcblk0/queue/scheduler"

    invoke-static {v4}, Lcom/android/settings_ex/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "/sys/block/mmcblk0/queue/scheduler"

    invoke-static {v4}, Lcom/android/settings_ex/Utils;->fileReadOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, availableIOSchedulersLine:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 96
    const-string v4, "["

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 97
    .local v2, bropen:I
    const-string v4, "]"

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 98
    .local v1, brclose:I
    if-ltz v2, :cond_0

    if-ltz v1, :cond_0

    .line 99
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 100
    .local v3, currentIOScheduler:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings_ex/cyanogenmod/IOScheduler;->mIOSchedulerPref:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/settings_ex/cyanogenmod/IOScheduler;->mIOSchedulerFormat:Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 103
    .end local v0           #availableIOSchedulersLine:Ljava/lang/String;
    .end local v1           #brclose:I
    .end local v2           #bropen:I
    .end local v3           #currentIOScheduler:Ljava/lang/String;
    :cond_0
    return-void
.end method
