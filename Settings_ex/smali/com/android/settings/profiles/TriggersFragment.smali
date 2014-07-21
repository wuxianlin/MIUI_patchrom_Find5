.class public Lcom/android/settings/profiles/TriggersFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "TriggersFragment.java"

# interfaces
.implements Landroid/app/ActionBar$OnNavigationListener;


# instance fields
.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mProfile:Landroid/app/Profile;

.field private mProfileManager:Landroid/app/ProfileManager;

.field private mSelectedTrigger:Landroid/preference/Preference;

.field private mTriggerFilter:I

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/profiles/TriggersFragment;->mTriggerFilter:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/profiles/TriggersFragment;)Landroid/app/Profile;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/profiles/TriggersFragment;->mProfile:Landroid/app/Profile;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/profiles/TriggersFragment;)Landroid/app/ProfileManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/profiles/TriggersFragment;->mProfileManager:Landroid/app/ProfileManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/profiles/TriggersFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/settings/profiles/TriggersFragment;->loadPreferences()V

    return-void
.end method

.method private initPreference(Lcom/android/settings/profiles/AbstractTriggerPreference;ILandroid/content/res/Resources;I)V
    .locals 2
    .parameter "pref"
    .parameter "state"
    .parameter "res"
    .parameter "icon"

    .prologue
    .line 104
    const v1, 0x7f0c0077

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    aget-object v0, v1, p2

    .line 105
    .local v0, summary:Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/android/settings/profiles/AbstractTriggerPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 106
    invoke-virtual {p1, p2}, Lcom/android/settings/profiles/AbstractTriggerPreference;->setTriggerState(I)V

    .line 107
    invoke-virtual {p1, p4}, Lcom/android/settings/profiles/AbstractTriggerPreference;->setIcon(I)V

    .line 108
    return-void
.end method

.method private loadActionBar()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/profiles/TriggersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 80
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 81
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/profiles/TriggersFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 84
    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x7f0c0078

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, navItems:[Ljava/lang/String;
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x1090003

    invoke-direct {v1, v4, v5, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 89
    .local v1, navAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0, v1, p0}, Landroid/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    .line 90
    const/16 v4, 0xe

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 92
    return-void
.end method

.method private loadPreferences()V
    .locals 17

    .prologue
    .line 111
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/profiles/TriggersFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v14}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v4

    .line 112
    .local v4, configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/profiles/TriggersFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 113
    .local v10, res:Landroid/content/res/Resources;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v9, prefs:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/profiles/AbstractTriggerPreference;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/profiles/TriggersFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    invoke-virtual {v14}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 117
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings/profiles/TriggersFragment;->mTriggerFilter:I

    const/4 v15, 0x1

    if-eq v14, v15, :cond_0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings/profiles/TriggersFragment;->mTriggerFilter:I

    if-nez v14, :cond_2

    .line 118
    :cond_0
    if-eqz v4, :cond_1

    .line 119
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 120
    .local v3, config:Landroid/net/wifi/WifiConfiguration;
    new-instance v1, Lcom/android/settings/profiles/WifiTriggerAPPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/profiles/TriggersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-direct {v1, v14, v3}, Lcom/android/settings/profiles/WifiTriggerAPPreference;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    .line 122
    .local v1, accessPoint:Lcom/android/settings/profiles/WifiTriggerAPPreference;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/profiles/TriggersFragment;->mProfile:Landroid/app/Profile;

    const/4 v15, 0x0

    invoke-virtual {v1}, Lcom/android/settings/profiles/WifiTriggerAPPreference;->getSSID()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/app/Profile;->getTrigger(ILjava/lang/String;)I

    move-result v11

    .line 123
    .local v11, state:I
    const v14, 0x7f0200f2

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v11, v10, v14}, Lcom/android/settings/profiles/TriggersFragment;->initPreference(Lcom/android/settings/profiles/AbstractTriggerPreference;ILandroid/content/res/Resources;I)V

    .line 124
    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 127
    .end local v1           #accessPoint:Lcom/android/settings/profiles/WifiTriggerAPPreference;
    .end local v3           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v11           #state:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/profiles/TriggersFragment;->mProfile:Landroid/app/Profile;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/app/Profile;->getTriggersFromType(I)Ljava/util/ArrayList;

    move-result-object v13

    .line 128
    .local v13, triggers:Ljava/util/List;,"Ljava/util/List<Landroid/app/Profile$ProfileTrigger;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/Profile$ProfileTrigger;

    .line 129
    .local v12, trigger:Landroid/app/Profile$ProfileTrigger;
    new-instance v1, Lcom/android/settings/profiles/WifiTriggerAPPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/profiles/TriggersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v12}, Landroid/app/Profile$ProfileTrigger;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v1, v14, v15}, Lcom/android/settings/profiles/WifiTriggerAPPreference;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 131
    .restart local v1       #accessPoint:Lcom/android/settings/profiles/WifiTriggerAPPreference;
    invoke-virtual {v12}, Landroid/app/Profile$ProfileTrigger;->getState()I

    move-result v14

    const v15, 0x7f0200f2

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v14, v10, v15}, Lcom/android/settings/profiles/TriggersFragment;->initPreference(Lcom/android/settings/profiles/AbstractTriggerPreference;ILandroid/content/res/Resources;I)V

    .line 132
    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 137
    .end local v1           #accessPoint:Lcom/android/settings/profiles/WifiTriggerAPPreference;
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v12           #trigger:Landroid/app/Profile$ProfileTrigger;
    .end local v13           #triggers:Ljava/util/List;,"Ljava/util/List<Landroid/app/Profile$ProfileTrigger;>;"
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/profiles/TriggersFragment;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v14}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v7

    .line 138
    .local v7, pairedDevices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings/profiles/TriggersFragment;->mTriggerFilter:I

    const/4 v15, 0x2

    if-eq v14, v15, :cond_3

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings/profiles/TriggersFragment;->mTriggerFilter:I

    if-nez v14, :cond_5

    .line 139
    :cond_3
    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_4

    .line 140
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    .line 141
    .local v5, device:Landroid/bluetooth/BluetoothDevice;
    new-instance v2, Lcom/android/settings/profiles/BluetoothTriggerPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/profiles/TriggersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-direct {v2, v14, v5}, Lcom/android/settings/profiles/BluetoothTriggerPreference;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V

    .line 143
    .local v2, bt:Lcom/android/settings/profiles/BluetoothTriggerPreference;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/profiles/TriggersFragment;->mProfile:Landroid/app/Profile;

    const/4 v15, 0x1

    invoke-virtual {v2}, Lcom/android/settings/profiles/BluetoothTriggerPreference;->getAddress()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/app/Profile;->getTrigger(ILjava/lang/String;)I

    move-result v11

    .line 144
    .restart local v11       #state:I
    const v14, 0x7f0200a5

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v11, v10, v14}, Lcom/android/settings/profiles/TriggersFragment;->initPreference(Lcom/android/settings/profiles/AbstractTriggerPreference;ILandroid/content/res/Resources;I)V

    .line 145
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 148
    .end local v2           #bt:Lcom/android/settings/profiles/BluetoothTriggerPreference;
    .end local v5           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v11           #state:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/profiles/TriggersFragment;->mProfile:Landroid/app/Profile;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/app/Profile;->getTriggersFromType(I)Ljava/util/ArrayList;

    move-result-object v13

    .line 149
    .restart local v13       #triggers:Ljava/util/List;,"Ljava/util/List<Landroid/app/Profile$ProfileTrigger;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/Profile$ProfileTrigger;

    .line 150
    .restart local v12       #trigger:Landroid/app/Profile$ProfileTrigger;
    new-instance v2, Lcom/android/settings/profiles/BluetoothTriggerPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/profiles/TriggersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v12}, Landroid/app/Profile$ProfileTrigger;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12}, Landroid/app/Profile$ProfileTrigger;->getId()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v2, v14, v15, v0}, Lcom/android/settings/profiles/BluetoothTriggerPreference;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .restart local v2       #bt:Lcom/android/settings/profiles/BluetoothTriggerPreference;
    invoke-virtual {v12}, Landroid/app/Profile$ProfileTrigger;->getState()I

    move-result v14

    const v15, 0x7f0200a5

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14, v10, v15}, Lcom/android/settings/profiles/TriggersFragment;->initPreference(Lcom/android/settings/profiles/AbstractTriggerPreference;ILandroid/content/res/Resources;I)V

    .line 153
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 158
    .end local v2           #bt:Lcom/android/settings/profiles/BluetoothTriggerPreference;
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v12           #trigger:Landroid/app/Profile$ProfileTrigger;
    .end local v13           #triggers:Ljava/util/List;,"Ljava/util/List<Landroid/app/Profile$ProfileTrigger;>;"
    :cond_5
    new-instance v14, Lcom/android/settings/profiles/TriggersFragment$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/settings/profiles/TriggersFragment$1;-><init>(Lcom/android/settings/profiles/TriggersFragment;)V

    invoke-static {v9, v14}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 167
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/profiles/AbstractTriggerPreference;

    .line 168
    .local v8, pref:Landroid/preference/Preference;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/profiles/TriggersFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    invoke-virtual {v14, v8}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_4

    .line 171
    .end local v8           #pref:Landroid/preference/Preference;
    :cond_6
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 65
    const-string v0, "profile"

    invoke-virtual {p0, v0}, Lcom/android/settings/profiles/TriggersFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProfileManager;

    iput-object v0, p0, Lcom/android/settings/profiles/TriggersFragment;->mProfileManager:Landroid/app/ProfileManager;

    .line 66
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/profiles/TriggersFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/profiles/TriggersFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 67
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/profiles/TriggersFragment;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 68
    const v0, 0x7f050068

    invoke-virtual {p0, v0}, Lcom/android/settings/profiles/TriggersFragment;->addPreferencesFromResource(I)V

    .line 69
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/profiles/TriggersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 98
    .local v0, args:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 99
    const-string v1, "profile"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/Profile;

    iput-object v1, p0, Lcom/android/settings/profiles/TriggersFragment;->mProfile:Landroid/app/Profile;

    .line 101
    :cond_0
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 9
    .parameter "dialogId"

    .prologue
    .line 189
    iget-object v5, p0, Lcom/android/settings/profiles/TriggersFragment;->mSelectedTrigger:Landroid/preference/Preference;

    invoke-virtual {v5}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 192
    .local v3, triggerName:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 204
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v5

    .line 207
    :goto_0
    return-object v5

    .line 194
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/profiles/TriggersFragment;->mSelectedTrigger:Landroid/preference/Preference;

    check-cast v2, Lcom/android/settings/profiles/WifiTriggerAPPreference;

    .line 195
    .local v2, pref:Lcom/android/settings/profiles/WifiTriggerAPPreference;
    invoke-virtual {v2}, Lcom/android/settings/profiles/WifiTriggerAPPreference;->getSSID()Ljava/lang/String;

    move-result-object v1

    .line 196
    .local v1, id:Ljava/lang/String;
    const/4 v4, 0x0

    .line 207
    .end local v2           #pref:Lcom/android/settings/profiles/WifiTriggerAPPreference;
    .local v4, triggerType:I
    :goto_1
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/profiles/TriggersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0800c2

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0c0077

    iget-object v7, p0, Lcom/android/settings/profiles/TriggersFragment;->mProfile:Landroid/app/Profile;

    invoke-virtual {v7, v4, v1}, Landroid/app/Profile;->getTrigger(ILjava/lang/String;)I

    move-result v7

    new-instance v8, Lcom/android/settings/profiles/TriggersFragment$2;

    invoke-direct {v8, p0, v4, v1, v3}, Lcom/android/settings/profiles/TriggersFragment$2;-><init>(Lcom/android/settings/profiles/TriggersFragment;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    goto :goto_0

    .line 199
    .end local v1           #id:Ljava/lang/String;
    .end local v4           #triggerType:I
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/profiles/TriggersFragment;->mSelectedTrigger:Landroid/preference/Preference;

    check-cast v0, Lcom/android/settings/profiles/BluetoothTriggerPreference;

    .line 200
    .local v0, btpref:Lcom/android/settings/profiles/BluetoothTriggerPreference;
    invoke-virtual {v0}, Lcom/android/settings/profiles/BluetoothTriggerPreference;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 201
    .restart local v1       #id:Ljava/lang/String;
    const/4 v4, 0x1

    .line 202
    .restart local v4       #triggerType:I
    goto :goto_1

    .line 192
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onNavigationItemSelected(IJ)Z
    .locals 1
    .parameter "itemPosition"
    .parameter "itemId"

    .prologue
    .line 225
    iput p1, p0, Lcom/android/settings/profiles/TriggersFragment;->mTriggerFilter:I

    .line 226
    invoke-direct {p0}, Lcom/android/settings/profiles/TriggersFragment;->loadPreferences()V

    .line 227
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .parameter "screen"
    .parameter "preference"

    .prologue
    const/4 v0, 0x1

    .line 175
    iput-object p2, p0, Lcom/android/settings/profiles/TriggersFragment;->mSelectedTrigger:Landroid/preference/Preference;

    .line 176
    instance-of v1, p2, Lcom/android/settings/profiles/WifiTriggerAPPreference;

    if-eqz v1, :cond_0

    .line 177
    invoke-virtual {p0, v0}, Lcom/android/settings/profiles/TriggersFragment;->showDialog(I)V

    .line 183
    :goto_0
    return v0

    .line 179
    :cond_0
    instance-of v1, p2, Lcom/android/settings/profiles/BluetoothTriggerPreference;

    if-eqz v1, :cond_1

    .line 180
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/settings/profiles/TriggersFragment;->showDialog(I)V

    goto :goto_0

    .line 183
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 73
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 74
    invoke-direct {p0}, Lcom/android/settings/profiles/TriggersFragment;->loadPreferences()V

    .line 75
    invoke-direct {p0}, Lcom/android/settings/profiles/TriggersFragment;->loadActionBar()V

    .line 76
    return-void
.end method
