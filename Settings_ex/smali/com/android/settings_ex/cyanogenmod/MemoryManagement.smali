.class public Lcom/android/settings_ex/cyanogenmod/MemoryManagement;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "MemoryManagement.java"


# instance fields
.field private mKSMPref:Landroid/preference/CheckBoxPreference;

.field private mPurgeableAssetsPref:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v2, 0x7f050028

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/cyanogenmod/MemoryManagement;->addPreferencesFromResource(I)V

    .line 49
    invoke-virtual {p0}, Lcom/android/settings_ex/cyanogenmod/MemoryManagement;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 51
    .local v0, prefSet:Landroid/preference/PreferenceScreen;
    const-string v2, "pref_purgeable_assets"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings_ex/cyanogenmod/MemoryManagement;->mPurgeableAssetsPref:Landroid/preference/CheckBoxPreference;

    .line 52
    const-string v2, "pref_ksm"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings_ex/cyanogenmod/MemoryManagement;->mKSMPref:Landroid/preference/CheckBoxPreference;

    .line 54
    const-string v2, "/sys/kernel/mm/ksm/run"

    invoke-static {v2}, Lcom/android/settings_ex/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    iget-object v2, p0, Lcom/android/settings_ex/cyanogenmod/MemoryManagement;->mKSMPref:Landroid/preference/CheckBoxPreference;

    const-string v3, "1"

    const-string v4, "/sys/kernel/mm/ksm/run"

    invoke-static {v4}, Lcom/android/settings_ex/Utils;->fileReadOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 60
    :goto_0
    const-string v2, "persist.sys.purgeable_assets"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, purgeableAssets:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings_ex/cyanogenmod/MemoryManagement;->mPurgeableAssetsPref:Landroid/preference/CheckBoxPreference;

    const-string v3, "1"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 62
    return-void

    .line 57
    .end local v1           #purgeableAssets:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/cyanogenmod/MemoryManagement;->mKSMPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    .line 66
    iget-object v0, p0, Lcom/android/settings_ex/cyanogenmod/MemoryManagement;->mPurgeableAssetsPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1

    .line 67
    const-string v2, "persist.sys.purgeable_assets"

    iget-object v0, p0, Lcom/android/settings_ex/cyanogenmod/MemoryManagement;->mPurgeableAssetsPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 75
    :goto_1
    return v0

    .line 67
    :cond_0
    const-string v0, "0"

    goto :goto_0

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/cyanogenmod/MemoryManagement;->mKSMPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_3

    .line 72
    const-string v2, "/sys/kernel/mm/ksm/run"

    iget-object v0, p0, Lcom/android/settings_ex/cyanogenmod/MemoryManagement;->mKSMPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "1"

    :goto_2
    invoke-static {v2, v0}, Lcom/android/settings_ex/Utils;->fileWriteOneLine(Ljava/lang/String;Ljava/lang/String;)Z

    move v0, v1

    .line 73
    goto :goto_1

    .line 72
    :cond_2
    const-string v0, "0"

    goto :goto_2

    .line 75
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method
