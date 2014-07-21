.class public Lcom/android/settings_ex/profiles/AppGroupList;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "AppGroupList.java"


# instance fields
.field private mProfileManager:Landroid/app/ProfileManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private editGroup(Landroid/app/NotificationGroup;)V
    .locals 7
    .parameter

    .prologue
    .line 87
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 88
    const-string v0, "NotificationGroup"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 90
    invoke-virtual {p0}, Lcom/android/settings_ex/profiles/AppGroupList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 91
    const-class v1, Lcom/android/settings_ex/profiles/AppGroupConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0800e9

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 93
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v0, 0x7f050007

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/profiles/AppGroupList;->addPreferencesFromResource(I)V

    .line 48
    invoke-virtual {p0}, Lcom/android/settings_ex/profiles/AppGroupList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "profile"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProfileManager;

    iput-object v0, p0, Lcom/android/settings_ex/profiles/AppGroupList;->mProfileManager:Landroid/app/ProfileManager;

    .line 49
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 78
    instance-of v1, p2, Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/android/settings_ex/profiles/AppGroupList;->mProfileManager:Landroid/app/ProfileManager;

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProfileManager;->getNotificationGroup(Ljava/util/UUID;)Landroid/app/NotificationGroup;

    move-result-object v0

    .line 81
    .local v0, group:Landroid/app/NotificationGroup;
    invoke-direct {p0, v0}, Lcom/android/settings_ex/profiles/AppGroupList;->editGroup(Landroid/app/NotificationGroup;)V

    .line 83
    .end local v0           #group:Landroid/app/NotificationGroup;
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 54
    invoke-virtual {p0}, Lcom/android/settings_ex/profiles/AppGroupList;->refreshList()V

    .line 57
    invoke-virtual {p0}, Lcom/android/settings_ex/profiles/AppGroupList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/android/settings_ex/profiles/AppGroupList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 60
    :cond_0
    return-void
.end method

.method public refreshList()V
    .locals 8

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/settings_ex/profiles/AppGroupList;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 64
    .local v0, appgroupList:Landroid/preference/PreferenceScreen;
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 67
    iget-object v6, p0, Lcom/android/settings_ex/profiles/AppGroupList;->mProfileManager:Landroid/app/ProfileManager;

    invoke-virtual {v6}, Landroid/app/ProfileManager;->getNotificationGroups()[Landroid/app/NotificationGroup;

    move-result-object v1

    .local v1, arr$:[Landroid/app/NotificationGroup;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v1, v3

    .line 68
    .local v2, group:Landroid/app/NotificationGroup;
    new-instance v5, Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings_ex/profiles/AppGroupList;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    .local v5, pref:Landroid/preference/PreferenceScreen;
    invoke-virtual {v2}, Landroid/app/NotificationGroup;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v2}, Landroid/app/NotificationGroup;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 71
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->setPersistent(Z)V

    .line 72
    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 67
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 74
    .end local v2           #group:Landroid/app/NotificationGroup;
    .end local v5           #pref:Landroid/preference/PreferenceScreen;
    :cond_0
    return-void
.end method
