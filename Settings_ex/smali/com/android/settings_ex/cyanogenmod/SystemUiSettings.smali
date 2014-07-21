.class public Lcom/android/settings_ex/cyanogenmod/SystemUiSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "SystemUiSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mExpandedDesktopNoNavbarPref:Landroid/preference/CheckBoxPreference;

.field private mExpandedDesktopPref:Landroid/preference/ListPreference;

.field private mNavigationBarLeftPref:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private updateExpandedDesktop(I)V
    .locals 6
    .parameter "value"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 121
    invoke-virtual {p0}, Lcom/android/settings_ex/cyanogenmod/SystemUiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 122
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/android/settings_ex/cyanogenmod/SystemUiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 123
    .local v1, res:Landroid/content/res/Resources;
    const/4 v2, -0x1

    .line 125
    .local v2, summary:I
    const-string v3, "expanded_desktop_style"

    invoke-static {v0, v3, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 127
    if-nez p1, :cond_2

    .line 129
    const-string v3, "power_menu_expanded_desktop_enabled"

    invoke-static {v0, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 130
    const-string v3, "expanded_desktop_state"

    invoke-static {v0, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 131
    const v2, 0x7f080308

    .line 140
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/cyanogenmod/SystemUiSettings;->mExpandedDesktopPref:Landroid/preference/ListPreference;

    if-eqz v3, :cond_1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 141
    iget-object v3, p0, Lcom/android/settings_ex/cyanogenmod/SystemUiSettings;->mExpandedDesktopPref:Landroid/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 143
    :cond_1
    return-void

    .line 132
    :cond_2
    if-ne p1, v4, :cond_3

    .line 133
    const-string v3, "power_menu_expanded_desktop_enabled"

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 134
    const v2, 0x7f080309

    goto :goto_0

    .line 135
    :cond_3
    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    .line 136
    const-string v3, "power_menu_expanded_desktop_enabled"

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 137
    const v2, 0x7f08030a

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 53
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const v7, 0x7f050056

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/cyanogenmod/SystemUiSettings;->addPreferencesFromResource(I)V

    .line 56
    invoke-virtual {p0}, Lcom/android/settings_ex/cyanogenmod/SystemUiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    .line 57
    .local v6, prefScreen:Landroid/preference/PreferenceScreen;
    const-string v7, "expanded_desktop_category"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/cyanogenmod/SystemUiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 61
    .local v1, expandedCategory:Landroid/preference/PreferenceCategory;
    const-string v7, "expanded_desktop"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/cyanogenmod/SystemUiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/ListPreference;

    iput-object v7, p0, Lcom/android/settings_ex/cyanogenmod/SystemUiSettings;->mExpandedDesktopPref:Landroid/preference/ListPreference;

    .line 62
    const-string v7, "expanded_desktop_no_navbar"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/cyanogenmod/SystemUiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/settings_ex/cyanogenmod/SystemUiSettings;->mExpandedDesktopNoNavbarPref:Landroid/preference/CheckBoxPreference;

    .line 66
    const-string v7, "navigation_bar_left"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/cyanogenmod/SystemUiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/settings_ex/cyanogenmod/SystemUiSettings;->mNavigationBarLeftPref:Landroid/preference/CheckBoxPreference;

    .line 68
    invoke-virtual {p0}, Lcom/android/settings_ex/cyanogenmod/SystemUiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/settings_ex/cyanogenmod/SystemUiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    const-string v11, "touch_screen_gesture_settings"

    invoke-static {v7, v10, v11}, Lcom/android/settings_ex/Utils;->updatePreferenceToSpecificActivityFromMetaDataOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 71
    invoke-virtual {p0}, Lcom/android/settings_ex/cyanogenmod/SystemUiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "expanded_desktop_style"

    invoke-static {v7, v10, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 77
    .local v2, expandedDesktopValue:I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/cyanogenmod/SystemUiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "dev_force_show_navbar"

    const/4 v11, 0x0

    invoke-static {v7, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v8, :cond_2

    move v3, v8

    .line 79
    .local v3, forceNavbar:Z
    :goto_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v7

    if-nez v7, :cond_0

    if-eqz v3, :cond_3

    :cond_0
    move v4, v8

    .line 82
    .local v4, hasNavBar:Z
    :goto_1
    if-eqz v4, :cond_4

    .line 83
    iget-object v7, p0, Lcom/android/settings_ex/cyanogenmod/SystemUiSettings;->mExpandedDesktopPref:Landroid/preference/ListPreference;

    invoke-virtual {v7, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 84
    iget-object v7, p0, Lcom/android/settings_ex/cyanogenmod/SystemUiSettings;->mExpandedDesktopPref:Landroid/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 85
    invoke-direct {p0, v2}, Lcom/android/settings_ex/cyanogenmod/SystemUiSettings;->updateExpandedDesktop(I)V

    .line 86
    iget-object v7, p0, Lcom/android/settings_ex/cyanogenmod/SystemUiSettings;->mExpandedDesktopNoNavbarPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 88
    invoke-virtual {p0}, Lcom/android/settings_ex/cyanogenmod/SystemUiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings_ex/Utils;->isPhone(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 89
    const-string v7, "navigation_bar"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/cyanogenmod/SystemUiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    .line 91
    .local v5, navCategory:Landroid/preference/PreferenceCategory;
    iget-object v7, p0, Lcom/android/settings_ex/cyanogenmod/SystemUiSettings;->mNavigationBarLeftPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 104
    .end local v3           #forceNavbar:Z
    .end local v4           #hasNavBar:Z
    .end local v5           #navCategory:Landroid/preference/PreferenceCategory;
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v3, v9

    .line 77
    goto :goto_0

    .restart local v3       #forceNavbar:Z
    :cond_3
    move v4, v9

    .line 79
    goto :goto_1

    .line 95
    .restart local v4       #hasNavBar:Z
    :cond_4
    iget-object v7, p0, Lcom/android/settings_ex/cyanogenmod/SystemUiSettings;->mExpandedDesktopNoNavbarPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 96
    iget-object v10, p0, Lcom/android/settings_ex/cyanogenmod/SystemUiSettings;->mExpandedDesktopNoNavbarPref:Landroid/preference/CheckBoxPreference;

    if-lez v2, :cond_5

    move v7, v8

    :goto_3
    invoke-virtual {v10, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 97
    iget-object v7, p0, Lcom/android/settings_ex/cyanogenmod/SystemUiSettings;->mExpandedDesktopPref:Landroid/preference/ListPreference;

    invoke-virtual {v1, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 99
    const-string v7, "navigation_bar"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/cyanogenmod/SystemUiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 101
    .end local v3           #forceNavbar:Z
    .end local v4           #hasNavBar:Z
    :catch_0
    move-exception v0

    .line 102
    .local v0, e:Landroid/os/RemoteException;
    const-string v7, "SystemSettings"

    const-string v8, "Error getting navigation bar status"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v3       #forceNavbar:Z
    .restart local v4       #hasNavBar:Z
    :cond_5
    move v7, v9

    .line 96
    goto :goto_3
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 107
    iget-object v4, p0, Lcom/android/settings_ex/cyanogenmod/SystemUiSettings;->mExpandedDesktopPref:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_1

    .line 108
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 109
    .local v0, expandedDesktopValue:I
    invoke-direct {p0, v0}, Lcom/android/settings_ex/cyanogenmod/SystemUiSettings;->updateExpandedDesktop(I)V

    move v2, v3

    .line 117
    .end local v0           #expandedDesktopValue:I
    :cond_0
    :goto_0
    return v2

    .line 111
    .restart local p2
    :cond_1
    iget-object v4, p0, Lcom/android/settings_ex/cyanogenmod/SystemUiSettings;->mExpandedDesktopNoNavbarPref:Landroid/preference/CheckBoxPreference;

    if-ne p1, v4, :cond_0

    .line 112
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 113
    .local v1, value:Z
    if-eqz v1, :cond_2

    const/4 v2, 0x2

    :cond_2
    invoke-direct {p0, v2}, Lcom/android/settings_ex/cyanogenmod/SystemUiSettings;->updateExpandedDesktop(I)V

    move v2, v3

    .line 114
    goto :goto_0
.end method
