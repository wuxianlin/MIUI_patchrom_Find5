.class public Lcom/android/settings_ex/cyanogenmod/PerformanceSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "PerformanceSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/cyanogenmod/PerformanceSettings$PerformanceProfileObserver;
    }
.end annotation


# instance fields
.field private alertDialog:Landroid/app/AlertDialog;

.field private mForceHighEndGfx:Landroid/preference/CheckBoxPreference;

.field private mPerfProfileDefaultEntry:Ljava/lang/String;

.field private mPerfProfileEntries:[Ljava/lang/String;

.field private mPerfProfilePref:Landroid/preference/ListPreference;

.field private mPerfProfileValues:[Ljava/lang/String;

.field private mPerformanceProfileObserver:Landroid/database/ContentObserver;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mUse16bppAlphaPref:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/cyanogenmod/PerformanceSettings;->mPerformanceProfileObserver:Landroid/database/ContentObserver;

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/cyanogenmod/PerformanceSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings_ex/cyanogenmod/PerformanceSettings;->setCurrentValue()V

    return-void
.end method

.method private setCurrentPerfProfileSummary()V
    .locals 8

    .prologue
    .line 193
    iget-object v4, p0, Lcom/android/settings_ex/cyanogenmod/PerformanceSettings;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v4}, Landroid/os/PowerManager;->getPowerProfile()Ljava/lang/String;

    move-result-object v3

    .line 194
    .local v3, value:Ljava/lang/String;
    const-string v2, ""

    .line 195
    .local v2, summary:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings_ex/cyanogenmod/PerformanceSettings;->mPerfProfileValues:[Ljava/lang/String;

    array-length v0, v4

    .line 196
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 198
    :try_start_0
    iget-object v4, p0, Lcom/android/settings_ex/cyanogenmod/PerformanceSettings;->mPerfProfileValues:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 199
    iget-object v4, p0, Lcom/android/settings_ex/cyanogenmod/PerformanceSettings;->mPerfProfileEntries:[Ljava/lang/String;

    aget-object v2, v4, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 205
    :cond_1
    iget-object v4, p0, Lcom/android/settings_ex/cyanogenmod/PerformanceSettings;->mPerfProfilePref:Landroid/preference/ListPreference;

    const-string v5, "%s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 206
    return-void

    .line 201
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private setCurrentValue()V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/settings_ex/cyanogenmod/PerformanceSettings;->mPerfProfilePref:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings_ex/cyanogenmod/PerformanceSettings;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->getPowerProfile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 210
    invoke-direct {p0}, Lcom/android/settings_ex/cyanogenmod/PerformanceSettings;->setCurrentPerfProfileSummary()V

    .line 211
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 89
    const-string v4, "power"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/cyanogenmod/PerformanceSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    iput-object v4, p0, Lcom/android/settings_ex/cyanogenmod/PerformanceSettings;->mPowerManager:Landroid/os/PowerManager;

    .line 91
    const v4, 0x10400ee

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/cyanogenmod/PerformanceSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/cyanogenmod/PerformanceSettings;->mPerfProfileDefaultEntry:Ljava/lang/String;

    .line 93
    invoke-virtual {p0}, Lcom/android/settings_ex/cyanogenmod/PerformanceSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x107000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/cyanogenmod/PerformanceSettings;->mPerfProfileEntries:[Ljava/lang/String;

    .line 95
    invoke-virtual {p0}, Lcom/android/settings_ex/cyanogenmod/PerformanceSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x107000e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/cyanogenmod/PerformanceSettings;->mPerfProfileValues:[Ljava/lang/String;

    .line 98
    const v4, 0x7f05002e

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/cyanogenmod/PerformanceSettings;->addPreferencesFromResource(I)V

    .line 100
    invoke-virtual {p0}, Lcom/android/settings_ex/cyanogenmod/PerformanceSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 102
    .local v2, prefSet:Landroid/preference/PreferenceScreen;
    const-string v4, "perf_profile_prefs"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 104
    .local v0, category:Landroid/preference/PreferenceCategory;
    const-string v4, "pref_perf_profile"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/settings_ex/cyanogenmod/PerformanceSettings;->mPerfProfilePref:Landroid/preference/ListPreference;

    .line 105
    iget-object v4, p0, Lcom/android/settings_ex/cyanogenmod/PerformanceSettings;->mPerfProfilePref:Landroid/preference/ListPreference;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings_ex/cyanogenmod/PerformanceSettings;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v4}, Landroid/os/PowerManager;->hasPowerProfiles()Z

    move-result v4

    if-nez v4, :cond_0

    .line 106
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 107
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/settings_ex/cyanogenmod/PerformanceSettings;->mPerfProfilePref:Landroid/preference/ListPreference;

    .line 117
    :goto_0
    const-string v4, "perf_graphics_prefs"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .end local v0           #category:Landroid/preference/PreferenceCategory;
    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 118
    .restart local v0       #category:Landroid/preference/PreferenceCategory;
    const-string v4, "pref_use_16bpp_alpha"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings_ex/cyanogenmod/PerformanceSettings;->mUse16bppAlphaPref:Landroid/preference/CheckBoxPreference;

    .line 119
    const-string v4, "persist.sys.use_16bpp_alpha"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 120
    .local v3, use16bppAlpha:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings_ex/cyanogenmod/PerformanceSettings;->mUse16bppAlphaPref:Landroid/preference/CheckBoxPreference;

    const-string v5, "1"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 122
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 123
    const-string v4, "pref_force_highend_gfx"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings_ex/cyanogenmod/PerformanceSettings;->mForceHighEndGfx:Landroid/preference/CheckBoxPreference;

    .line 124
    const-string v4, "persist.sys.force_highendgfx"

    const-string v5, "false"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, forceHighendGfx:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings_ex/cyanogenmod/PerformanceSettings;->mForceHighEndGfx:Landroid/preference/CheckBoxPreference;

    const-string v5, "true"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 131
    .end local v1           #forceHighendGfx:Ljava/lang/String;
    :goto_1
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/cyanogenmod/PerformanceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/cyanogenmod/PerformanceSettings;->alertDialog:Landroid/app/AlertDialog;

    .line 132
    iget-object v4, p0, Lcom/android/settings_ex/cyanogenmod/PerformanceSettings;->alertDialog:Landroid/app/AlertDialog;

    const v5, 0x7f080228

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 133
    iget-object v4, p0, Lcom/android/settings_ex/cyanogenmod/PerformanceSettings;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/cyanogenmod/PerformanceSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080229

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v4, p0, Lcom/android/settings_ex/cyanogenmod/PerformanceSettings;->alertDialog:Landroid/app/AlertDialog;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 135
    iget-object v4, p0, Lcom/android/settings_ex/cyanogenmod/PerformanceSettings;->alertDialog:Landroid/app/AlertDialog;

    const/4 v5, -0x1

    invoke-virtual {p0}, Lcom/android/settings_ex/cyanogenmod/PerformanceSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x104000a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/settings_ex/cyanogenmod/PerformanceSettings$1;

    invoke-direct {v7, p0}, Lcom/android/settings_ex/cyanogenmod/PerformanceSettings$1;-><init>(Lcom/android/settings_ex/cyanogenmod/PerformanceSettings;)V

    invoke-virtual {v4, v5, v6, v7}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 142
    iget-object v4, p0, Lcom/android/settings_ex/cyanogenmod/PerformanceSettings;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 143
    return-void

    .line 109
    .end local v3           #use16bppAlpha:Ljava/lang/String;
    :cond_0
    new-instance v4, Lcom/android/settings_ex/cyanogenmod/PerformanceSettings$PerformanceProfileObserver;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v5}, Lcom/android/settings_ex/cyanogenmod/PerformanceSettings$PerformanceProfileObserver;-><init>(Lcom/android/settings_ex/cyanogenmod/PerformanceSettings;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/settings_ex/cyanogenmod/PerformanceSettings;->mPerformanceProfileObserver:Landroid/database/ContentObserver;

    .line 111
    iget-object v4, p0, Lcom/android/settings_ex/cyanogenmod/PerformanceSettings;->mPerfProfilePref:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/settings_ex/cyanogenmod/PerformanceSettings;->mPerfProfileEntries:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 112
    iget-object v4, p0, Lcom/android/settings_ex/cyanogenmod/PerformanceSettings;->mPerfProfilePref:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/settings_ex/cyanogenmod/PerformanceSettings;->mPerfProfileValues:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 113
    invoke-direct {p0}, Lcom/android/settings_ex/cyanogenmod/PerformanceSettings;->setCurrentValue()V

    .line 114
    iget-object v4, p0, Lcom/android/settings_ex/cyanogenmod/PerformanceSettings;->mPerfProfilePref:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_0

    .line 127
    .restart local v3       #use16bppAlpha:Ljava/lang/String;
    :cond_1
    const-string v4, "pref_force_highend_gfx"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/cyanogenmod/PerformanceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 158
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 159
    iget-object v1, p0, Lcom/android/settings_ex/cyanogenmod/PerformanceSettings;->mPerfProfilePref:Landroid/preference/ListPreference;

    if-eqz v1, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/android/settings_ex/cyanogenmod/PerformanceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 161
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/settings_ex/cyanogenmod/PerformanceSettings;->mPerformanceProfileObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 163
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 182
    if-eqz p2, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/settings_ex/cyanogenmod/PerformanceSettings;->mPerfProfilePref:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/settings_ex/cyanogenmod/PerformanceSettings;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->setPowerProfile(Ljava/lang/String;)V

    .line 185
    invoke-direct {p0}, Lcom/android/settings_ex/cyanogenmod/PerformanceSettings;->setCurrentPerfProfileSummary()V

    .line 186
    const/4 v0, 0x1

    .line 189
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/settings_ex/cyanogenmod/PerformanceSettings;->mUse16bppAlphaPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1

    .line 168
    const-string v1, "persist.sys.use_16bpp_alpha"

    iget-object v0, p0, Lcom/android/settings_ex/cyanogenmod/PerformanceSettings;->mUse16bppAlphaPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :goto_1
    const/4 v0, 0x1

    :goto_2
    return v0

    .line 168
    :cond_0
    const-string v0, "0"

    goto :goto_0

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/cyanogenmod/PerformanceSettings;->mForceHighEndGfx:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_3

    .line 171
    const-string v1, "persist.sys.force_highendgfx"

    iget-object v0, p0, Lcom/android/settings_ex/cyanogenmod/PerformanceSettings;->mForceHighEndGfx:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "true"

    :goto_3
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v0, "false"

    goto :goto_3

    .line 175
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_2
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 147
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 148
    iget-object v1, p0, Lcom/android/settings_ex/cyanogenmod/PerformanceSettings;->mPerfProfilePref:Landroid/preference/ListPreference;

    if-eqz v1, :cond_0

    .line 149
    invoke-direct {p0}, Lcom/android/settings_ex/cyanogenmod/PerformanceSettings;->setCurrentValue()V

    .line 150
    invoke-virtual {p0}, Lcom/android/settings_ex/cyanogenmod/PerformanceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 151
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "performance_profile"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings_ex/cyanogenmod/PerformanceSettings;->mPerformanceProfileObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 154
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :cond_0
    return-void
.end method
