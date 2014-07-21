.class public Lcom/android/settings/cmstats/PreviewData;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PreviewData.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v2, 0x7f050031

    invoke-virtual {p0, v2}, Lcom/android/settings/cmstats/PreviewData;->addPreferencesFromResource(I)V

    .line 40
    invoke-virtual {p0}, Lcom/android/settings/cmstats/PreviewData;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 41
    .local v1, prefSet:Landroid/preference/PreferenceScreen;
    invoke-virtual {p0}, Lcom/android/settings/cmstats/PreviewData;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 43
    .local v0, context:Landroid/content/Context;
    const-string v2, "preview_id"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-static {v0}, Lcom/android/settings/cmstats/Utilities;->getUniqueID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 44
    const-string v2, "preview_device"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-static {}, Lcom/android/settings/cmstats/Utilities;->getDevice()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 45
    const-string v2, "preview_version"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-static {}, Lcom/android/settings/cmstats/Utilities;->getModVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 46
    const-string v2, "preview_country"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-static {v0}, Lcom/android/settings/cmstats/Utilities;->getCountryCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 47
    const-string v2, "preview_carrier"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-static {v0}, Lcom/android/settings/cmstats/Utilities;->getCarrier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 48
    return-void
.end method
