.class public Lcom/android/settings/cmstats/AnonymousStats;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AnonymousStats.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mEnableReporting:Landroid/preference/CheckBoxPreference;

.field private mOkClicked:Z

.field private mOkDialog:Landroid/app/Dialog;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mViewStats:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method public static getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .parameter "context"

    .prologue
    .line 52
    const-string v0, "CMStats"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x1

    .line 115
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 116
    iput-boolean v3, p0, Lcom/android/settings/cmstats/AnonymousStats;->mOkClicked:Z

    .line 117
    iget-object v1, p0, Lcom/android/settings/cmstats/AnonymousStats;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pref_anonymous_opt_in"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/cmstats/AnonymousStats;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/cmstats/ReportingServiceManager;->launchService(Landroid/content/Context;)V

    .line 125
    :goto_0
    return-void

    .line 119
    :cond_0
    const/4 v1, -0x2

    if-ne p2, v1, :cond_1

    .line 120
    iget-object v1, p0, Lcom/android/settings/cmstats/AnonymousStats;->mEnableReporting:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 122
    :cond_1
    const-string v1, "http://www.cyanogenmod.org/blog/cmstats-what-it-is-and-why-you-should-opt-in"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 123
    .local v0, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/android/settings/cmstats/AnonymousStats;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v1, 0x7f050003

    invoke-virtual {p0, v1}, Lcom/android/settings/cmstats/AnonymousStats;->addPreferencesFromResource(I)V

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/cmstats/AnonymousStats;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/cmstats/AnonymousStats;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/cmstats/AnonymousStats;->mPrefs:Landroid/content/SharedPreferences;

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/cmstats/AnonymousStats;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 64
    .local v0, prefSet:Landroid/preference/PreferenceScreen;
    const-string v1, "pref_anonymous_opt_in"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/cmstats/AnonymousStats;->mEnableReporting:Landroid/preference/CheckBoxPreference;

    .line 65
    const-string v1, "pref_view_stats"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/cmstats/AnonymousStats;->mViewStats:Landroid/preference/Preference;

    .line 66
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/android/settings/cmstats/AnonymousStats;->mOkClicked:Z

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/settings/cmstats/AnonymousStats;->mEnableReporting:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 111
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x0

    .line 70
    iget-object v1, p0, Lcom/android/settings/cmstats/AnonymousStats;->mEnableReporting:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_2

    .line 71
    iget-object v1, p0, Lcom/android/settings/cmstats/AnonymousStats;->mEnableReporting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    iput-boolean v3, p0, Lcom/android/settings/cmstats/AnonymousStats;->mOkClicked:Z

    .line 74
    iget-object v1, p0, Lcom/android/settings/cmstats/AnonymousStats;->mOkDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/android/settings/cmstats/AnonymousStats;->mOkDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 77
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/cmstats/AnonymousStats;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080211

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080210

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040013

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080216

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040009

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/cmstats/AnonymousStats;->mOkDialog:Landroid/app/Dialog;

    .line 85
    iget-object v1, p0, Lcom/android/settings/cmstats/AnonymousStats;->mOkDialog:Landroid/app/Dialog;

    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 98
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 88
    :cond_1
    iget-object v1, p0, Lcom/android/settings/cmstats/AnonymousStats;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pref_anonymous_opt_in"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 90
    :cond_2
    iget-object v1, p0, Lcom/android/settings/cmstats/AnonymousStats;->mViewStats:Landroid/preference/Preference;

    if-ne p2, v1, :cond_3

    .line 92
    const-string v1, "http://stats.cyanogenmod.org"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 93
    .local v0, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/android/settings/cmstats/AnonymousStats;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 96
    .end local v0           #uri:Landroid/net/Uri;
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_1
.end method
