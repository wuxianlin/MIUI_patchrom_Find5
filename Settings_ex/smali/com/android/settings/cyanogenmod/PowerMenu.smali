.class public Lcom/android/settings/cyanogenmod/PowerMenu;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PowerMenu.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 31
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v1, 0x7f05002f

    invoke-virtual {p0, v1}, Lcom/android/settings/cyanogenmod/PowerMenu;->addPreferencesFromResource(I)V

    .line 35
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/PowerMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 38
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "power_menu_expanded_desktop_enabled"

    invoke-virtual {p0, v1}, Lcom/android/settings/cyanogenmod/PowerMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    const-string v1, "expanded_desktop_style"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 42
    const-string v1, "power_menu_profiles_enabled"

    invoke-virtual {p0, v1}, Lcom/android/settings/cyanogenmod/PowerMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const-string v4, "system_profiles_enabled"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    :goto_1
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 45
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v1

    if-nez v1, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/PowerMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "power_menu_user_enabled"

    invoke-virtual {p0, v2}, Lcom/android/settings/cyanogenmod/PowerMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 49
    :cond_0
    return-void

    :cond_1
    move v1, v3

    .line 38
    goto :goto_0

    :cond_2
    move v2, v3

    .line 42
    goto :goto_1
.end method
