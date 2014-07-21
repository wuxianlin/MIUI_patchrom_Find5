.class public Lcom/android/settings_ex/cyanogenmod/NotificationDrawer;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "NotificationDrawer.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mCollapseOnDismiss:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private updateCollapseBehaviourSummary(I)V
    .locals 3
    .parameter "setting"

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/android/settings_ex/cyanogenmod/NotificationDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c008f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, summaries:[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings_ex/cyanogenmod/NotificationDrawer;->mCollapseOnDismiss:Landroid/preference/ListPreference;

    aget-object v2, v0, p1

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 69
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v2, 0x7f05002c

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/cyanogenmod/NotificationDrawer;->addPreferencesFromResource(I)V

    .line 41
    invoke-virtual {p0}, Lcom/android/settings_ex/cyanogenmod/NotificationDrawer;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 44
    .local v1, prefScreen:Landroid/preference/PreferenceScreen;
    invoke-virtual {p0}, Lcom/android/settings_ex/cyanogenmod/NotificationDrawer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "status_bar_collapse_on_dismiss"

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 47
    .local v0, collapseBehaviour:I
    const-string v2, "notification_drawer_collapse_on_dismiss"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/cyanogenmod/NotificationDrawer;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/settings_ex/cyanogenmod/NotificationDrawer;->mCollapseOnDismiss:Landroid/preference/ListPreference;

    .line 48
    iget-object v2, p0, Lcom/android/settings_ex/cyanogenmod/NotificationDrawer;->mCollapseOnDismiss:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 49
    iget-object v2, p0, Lcom/android/settings_ex/cyanogenmod/NotificationDrawer;->mCollapseOnDismiss:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 50
    invoke-direct {p0, v0}, Lcom/android/settings_ex/cyanogenmod/NotificationDrawer;->updateCollapseBehaviourSummary(I)V

    .line 51
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 54
    iget-object v1, p0, Lcom/android/settings_ex/cyanogenmod/NotificationDrawer;->mCollapseOnDismiss:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_0

    .line 55
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 56
    .local v0, value:I
    invoke-virtual {p0}, Lcom/android/settings_ex/cyanogenmod/NotificationDrawer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "status_bar_collapse_on_dismiss"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 58
    invoke-direct {p0, v0}, Lcom/android/settings_ex/cyanogenmod/NotificationDrawer;->updateCollapseBehaviourSummary(I)V

    .line 59
    const/4 v1, 0x1

    .line 62
    .end local v0           #value:I
    :goto_0
    return v1

    .restart local p2
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
