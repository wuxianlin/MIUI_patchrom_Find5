.class public Lcom/android/settings/cyanogenmod/PrivacySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PrivacySettings.java"


# instance fields
.field private mBlacklist:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private updateBlacklistSummary()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/PrivacySettings;->mBlacklist:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/util/BlacklistUtils;->isBlacklistEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/PrivacySettings;->mBlacklist:Landroid/preference/PreferenceScreen;

    const v1, 0x7f080269

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/PrivacySettings;->mBlacklist:Landroid/preference/PreferenceScreen;

    const v1, 0x7f080268

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v0, 0x7f050036

    invoke-virtual {p0, v0}, Lcom/android/settings/cyanogenmod/PrivacySettings;->addPreferencesFromResource(I)V

    .line 42
    const-string v0, "blacklist"

    invoke-virtual {p0, v0}, Lcom/android/settings/cyanogenmod/PrivacySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/cyanogenmod/PrivacySettings;->mBlacklist:Landroid/preference/PreferenceScreen;

    .line 45
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.telephony"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 48
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "org.whispersystems.whisperpush"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    const v0, 0x7f05004f

    invoke-virtual {p0, v0}, Lcom/android/settings/cyanogenmod/PrivacySettings;->addPreferencesFromResource(I)V

    .line 57
    :cond_0
    :goto_0
    const v0, 0x7f050043

    invoke-virtual {p0, v0}, Lcom/android/settings/cyanogenmod/PrivacySettings;->addPreferencesFromResource(I)V

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.cyngn.logger"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    const v0, 0x7f050046

    invoke-virtual {p0, v0}, Lcom/android/settings/cyanogenmod/PrivacySettings;->addPreferencesFromResource(I)V

    .line 63
    :cond_1
    return-void

    .line 53
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/PrivacySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/cyanogenmod/PrivacySettings;->mBlacklist:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/cyanogenmod/PrivacySettings;->mBlacklist:Landroid/preference/PreferenceScreen;

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 67
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 68
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/PrivacySettings;->updateBlacklistSummary()V

    .line 69
    return-void
.end method
