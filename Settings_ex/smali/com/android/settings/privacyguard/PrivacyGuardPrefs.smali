.class public Lcom/android/settings/privacyguard/PrivacyGuardPrefs;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PrivacyGuardPrefs.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mPrivacyGuardDefault:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 48
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v1, 0x7f050034

    invoke-virtual {p0, v1}, Lcom/android/settings/privacyguard/PrivacyGuardPrefs;->addPreferencesFromResource(I)V

    .line 51
    invoke-virtual {p0}, Lcom/android/settings/privacyguard/PrivacyGuardPrefs;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 53
    .local v0, prefSet:Landroid/preference/PreferenceScreen;
    const-string v1, "privacy_guard_default"

    invoke-virtual {p0, v1}, Lcom/android/settings/privacyguard/PrivacyGuardPrefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/privacyguard/PrivacyGuardPrefs;->mPrivacyGuardDefault:Landroid/preference/CheckBoxPreference;

    .line 54
    iget-object v1, p0, Lcom/android/settings/privacyguard/PrivacyGuardPrefs;->mPrivacyGuardDefault:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 56
    iget-object v4, p0, Lcom/android/settings/privacyguard/PrivacyGuardPrefs;->mPrivacyGuardDefault:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/privacyguard/PrivacyGuardPrefs;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "privacy_guard_default"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 58
    return-void

    :cond_0
    move v1, v3

    .line 56
    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 63
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v3

    .line 64
    .local v3, view:Landroid/view/View;
    const v4, 0x102000a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 66
    .local v0, list:Landroid/widget/ListView;
    invoke-virtual {v0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v2

    .line 67
    .local v2, paddingTop:I
    invoke-virtual {v0}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v1

    .line 68
    .local v1, paddingBottom:I
    invoke-virtual {v0, v5, v2, v5, v1}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 69
    return-object v3
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 74
    iget-object v3, p0, Lcom/android/settings/privacyguard/PrivacyGuardPrefs;->mPrivacyGuardDefault:Landroid/preference/CheckBoxPreference;

    if-ne p1, v3, :cond_1

    .line 75
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 76
    .local v0, value:Z
    invoke-virtual {p0}, Lcom/android/settings/privacyguard/PrivacyGuardPrefs;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "privacy_guard_default"

    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 80
    .end local v0           #value:Z
    :goto_0
    return v2

    .restart local p2
    :cond_1
    move v2, v1

    goto :goto_0
.end method
