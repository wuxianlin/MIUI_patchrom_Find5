.class public Lcom/android/settings_ex/blacklist/PreferenceFragment;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "PreferenceFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mBlacklistPrivate:Landroid/preference/MultiSelectListPreference;

.field private mBlacklistUnknown:Landroid/preference/MultiSelectListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private getPolicyFromSelectList(Ljava/util/Set;)I
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, values:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 112
    .local v1, mode:I
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 113
    .local v2, value:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    or-int/2addr v1, v3

    goto :goto_0

    .line 116
    .end local v2           #value:Ljava/lang/String;
    :cond_0
    return v1
.end method

.method private updatePolicyFromSelectList(Ljava/util/Set;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "setting"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 120
    .local p1, values:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/settings_ex/blacklist/PreferenceFragment;->getPolicyFromSelectList(Ljava/util/Set;)I

    move-result v0

    .line 121
    .local v0, mode:I
    invoke-virtual {p0}, Lcom/android/settings_ex/blacklist/PreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 122
    return-void
.end method

.method private updateSelectListFromPolicy(Landroid/preference/MultiSelectListPreference;Ljava/lang/String;)V
    .locals 4
    .parameter "pref"
    .parameter "setting"

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/android/settings_ex/blacklist/PreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, p2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 98
    .local v0, mode:I
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 100
    .local v1, values:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_0

    .line 101
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_0
    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_1

    .line 104
    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_1
    invoke-virtual {p1, v1}, Landroid/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    .line 107
    return-void
.end method

.method private updateSelectListSummary(Landroid/preference/MultiSelectListPreference;Ljava/util/Set;II)V
    .locals 5
    .parameter "pref"
    .parameter
    .parameter "summaryResId"
    .parameter "disabledSummaryResId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/MultiSelectListPreference;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .local p2, values:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v3, 0x1

    .line 126
    invoke-direct {p0, p2}, Lcom/android/settings_ex/blacklist/PreferenceFragment;->getPolicyFromSelectList(Ljava/util/Set;)I

    move-result v0

    .line 129
    .local v0, mode:I
    if-nez v0, :cond_0

    .line 130
    invoke-virtual {p0, p4}, Lcom/android/settings_ex/blacklist/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/preference/MultiSelectListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 143
    :goto_0
    return-void

    .line 134
    :cond_0
    if-ne v0, v3, :cond_1

    .line 135
    const v1, 0x7f080271

    .line 142
    .local v1, typeResId:I
    :goto_1
    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/blacklist/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, p3, v2}, Lcom/android/settings_ex/blacklist/PreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/preference/MultiSelectListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 136
    .end local v1           #typeResId:I
    :cond_1
    const/16 v2, 0x10

    if-ne v0, v2, :cond_2

    .line 137
    const v1, 0x7f080272

    .restart local v1       #typeResId:I
    goto :goto_1

    .line 139
    .end local v1           #typeResId:I
    :cond_2
    const v1, 0x7f080273

    .restart local v1       #typeResId:I
    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v1, 0x7f05000c

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/blacklist/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 49
    invoke-virtual {p0}, Lcom/android/settings_ex/blacklist/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 50
    .local v0, prefSet:Landroid/preference/PreferenceScreen;
    const-string v1, "button_blacklist_private_numbers"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/MultiSelectListPreference;

    iput-object v1, p0, Lcom/android/settings_ex/blacklist/PreferenceFragment;->mBlacklistPrivate:Landroid/preference/MultiSelectListPreference;

    .line 52
    iget-object v1, p0, Lcom/android/settings_ex/blacklist/PreferenceFragment;->mBlacklistPrivate:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/MultiSelectListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 53
    const-string v1, "button_blacklist_unknown_numbers"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/MultiSelectListPreference;

    iput-object v1, p0, Lcom/android/settings_ex/blacklist/PreferenceFragment;->mBlacklistUnknown:Landroid/preference/MultiSelectListPreference;

    .line 55
    iget-object v1, p0, Lcom/android/settings_ex/blacklist/PreferenceFragment;->mBlacklistUnknown:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/MultiSelectListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 56
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 77
    iget-object v1, p0, Lcom/android/settings_ex/blacklist/PreferenceFragment;->mBlacklistUnknown:Landroid/preference/MultiSelectListPreference;

    if-ne p1, v1, :cond_1

    move-object v0, p2

    .line 78
    check-cast v0, Ljava/util/Set;

    .line 79
    .local v0, newValues:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v1, "phone_blacklist_unknown_number_enabled"

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/blacklist/PreferenceFragment;->updatePolicyFromSelectList(Ljava/util/Set;Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lcom/android/settings_ex/blacklist/PreferenceFragment;->mBlacklistUnknown:Landroid/preference/MultiSelectListPreference;

    const v2, 0x7f080270

    const v3, 0x7f08026f

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/settings_ex/blacklist/PreferenceFragment;->updateSelectListSummary(Landroid/preference/MultiSelectListPreference;Ljava/util/Set;II)V

    .line 93
    .end local v0           #newValues:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 84
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/blacklist/PreferenceFragment;->mBlacklistPrivate:Landroid/preference/MultiSelectListPreference;

    if-ne p1, v1, :cond_0

    move-object v0, p2

    .line 85
    check-cast v0, Ljava/util/Set;

    .line 86
    .restart local v0       #newValues:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v1, "phone_blacklist_private_number_enabled"

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/blacklist/PreferenceFragment;->updatePolicyFromSelectList(Ljava/util/Set;Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lcom/android/settings_ex/blacklist/PreferenceFragment;->mBlacklistPrivate:Landroid/preference/MultiSelectListPreference;

    const v2, 0x7f08026d

    const v3, 0x7f08026c

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/settings_ex/blacklist/PreferenceFragment;->updateSelectListSummary(Landroid/preference/MultiSelectListPreference;Ljava/util/Set;II)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 60
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 62
    invoke-virtual {p0}, Lcom/android/settings_ex/blacklist/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 63
    .local v0, context:Landroid/content/Context;
    iget-object v1, p0, Lcom/android/settings_ex/blacklist/PreferenceFragment;->mBlacklistPrivate:Landroid/preference/MultiSelectListPreference;

    const-string v2, "phone_blacklist_private_number_enabled"

    invoke-direct {p0, v1, v2}, Lcom/android/settings_ex/blacklist/PreferenceFragment;->updateSelectListFromPolicy(Landroid/preference/MultiSelectListPreference;Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Lcom/android/settings_ex/blacklist/PreferenceFragment;->mBlacklistPrivate:Landroid/preference/MultiSelectListPreference;

    iget-object v2, p0, Lcom/android/settings_ex/blacklist/PreferenceFragment;->mBlacklistPrivate:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v2}, Landroid/preference/MultiSelectListPreference;->getValues()Ljava/util/Set;

    move-result-object v2

    const v3, 0x7f08026d

    const v4, 0x7f08026c

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/settings_ex/blacklist/PreferenceFragment;->updateSelectListSummary(Landroid/preference/MultiSelectListPreference;Ljava/util/Set;II)V

    .line 68
    iget-object v1, p0, Lcom/android/settings_ex/blacklist/PreferenceFragment;->mBlacklistUnknown:Landroid/preference/MultiSelectListPreference;

    const-string v2, "phone_blacklist_unknown_number_enabled"

    invoke-direct {p0, v1, v2}, Lcom/android/settings_ex/blacklist/PreferenceFragment;->updateSelectListFromPolicy(Landroid/preference/MultiSelectListPreference;Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lcom/android/settings_ex/blacklist/PreferenceFragment;->mBlacklistUnknown:Landroid/preference/MultiSelectListPreference;

    iget-object v2, p0, Lcom/android/settings_ex/blacklist/PreferenceFragment;->mBlacklistUnknown:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v2}, Landroid/preference/MultiSelectListPreference;->getValues()Ljava/util/Set;

    move-result-object v2

    const v3, 0x7f080270

    const v4, 0x7f08026f

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/settings_ex/blacklist/PreferenceFragment;->updateSelectListSummary(Landroid/preference/MultiSelectListPreference;Ljava/util/Set;II)V

    .line 73
    return-void
.end method
