.class public Lcom/android/settings_ex/location/LocationSettings;
.super Lcom/android/settings_ex/location/LocationSettingsBase;
.source "LocationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

.field private mGpsDownloadDataWifiOnly:Landroid/preference/CheckBoxPreference;

.field private mLocationMode:Landroid/preference/Preference;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitch:Landroid/widget/Switch;

.field private mValidListener:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/settings_ex/location/LocationSettingsBase;-><init>()V

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mValidListener:Z

    .line 82
    return-void
.end method

.method private addLocationServices(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V
    .locals 5
    .parameter "context"
    .parameter "root"

    .prologue
    .line 199
    const-string v4, "location_services"

    invoke-virtual {p2, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 201
    .local v0, categoryLocationServices:Landroid/preference/PreferenceCategory;
    new-instance v2, Lcom/android/settings_ex/location/SettingsInjector;

    invoke-direct {v2, p1}, Lcom/android/settings_ex/location/SettingsInjector;-><init>(Landroid/content/Context;)V

    .line 202
    .local v2, injector:Lcom/android/settings_ex/location/SettingsInjector;
    invoke-virtual {v2}, Lcom/android/settings_ex/location/SettingsInjector;->getInjectedSettings()Ljava/util/List;

    move-result-object v3

    .line 204
    .local v3, locationServices:Ljava/util/List;,"Ljava/util/List<Landroid/preference/Preference;>;"
    new-instance v4, Lcom/android/settings_ex/location/LocationSettings$3;

    invoke-direct {v4, p0, v2}, Lcom/android/settings_ex/location/LocationSettings$3;-><init>(Lcom/android/settings_ex/location/LocationSettings;Lcom/android/settings_ex/location/SettingsInjector;)V

    iput-object v4, p0, Lcom/android/settings_ex/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 215
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 216
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v4, "android.location.InjectedSettingChanged"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 217
    const-string v4, "android.location.MODE_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 218
    iget-object v4, p0, Lcom/android/settings_ex/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 220
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 221
    invoke-direct {p0, v3, v0}, Lcom/android/settings_ex/location/LocationSettings;->addPreferencesSorted(Ljava/util/List;Landroid/preference/PreferenceGroup;)V

    .line 226
    :goto_0
    return-void

    .line 224
    :cond_0
    invoke-virtual {p2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private addPreferencesSorted(Ljava/util/List;Landroid/preference/PreferenceGroup;)V
    .locals 3
    .parameter
    .parameter "container"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/Preference;",
            ">;",
            "Landroid/preference/PreferenceGroup;",
            ")V"
        }
    .end annotation

    .prologue
    .line 107
    .local p1, prefs:Ljava/util/List;,"Ljava/util/List<Landroid/preference/Preference;>;"
    new-instance v2, Lcom/android/settings_ex/location/LocationSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/location/LocationSettings$1;-><init>(Lcom/android/settings_ex/location/LocationSettings;)V

    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 113
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 114
    .local v0, entry:Landroid/preference/Preference;
    invoke-virtual {p2, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 116
    .end local v0           #entry:Landroid/preference/Preference;
    :cond_0
    return-void
.end method

.method private static checkGpsDownloadWiFiOnly(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    .line 305
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 306
    .local v1, pm:Landroid/content/pm/PackageManager;
    const-string v4, "android.hardware.telephony"

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    .line 307
    .local v2, supportsTelephony:Z
    const-string v4, "android.hardware.wifi"

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    .line 308
    .local v3, supportsWifi:Z
    if-eqz v3, :cond_0

    if-nez v2, :cond_1

    .line 309
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 311
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "gps_download_data_wifi_only"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 312
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 313
    const/4 v4, 0x0

    .line 315
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 11

    .prologue
    const/16 v9, 0x10

    const/4 v10, -0x2

    const/4 v8, 0x0

    .line 119
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 120
    .local v0, activity:Landroid/preference/PreferenceActivity;
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 121
    .local v5, root:Landroid/preference/PreferenceScreen;
    if-eqz v5, :cond_0

    .line 122
    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 124
    :cond_0
    const v6, 0x7f050024

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/location/LocationSettings;->addPreferencesFromResource(I)V

    .line 125
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 127
    const-string v6, "location_mode"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    .line 128
    iget-object v6, p0, Lcom/android/settings_ex/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    new-instance v7, Lcom/android/settings_ex/location/LocationSettings$2;

    invoke-direct {v7, p0, v0}, Lcom/android/settings_ex/location/LocationSettings$2;-><init>(Lcom/android/settings_ex/location/LocationSettings;Landroid/preference/PreferenceActivity;)V

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 140
    const-string v6, "gps_download_data_wifi_only"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings_ex/location/LocationSettings;->mGpsDownloadDataWifiOnly:Landroid/preference/CheckBoxPreference;

    .line 142
    iget-object v6, p0, Lcom/android/settings_ex/location/LocationSettings;->mGpsDownloadDataWifiOnly:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_2

    .line 143
    invoke-static {}, Lcom/android/settings_ex/location/LocationSettings;->isLtoSupported()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings_ex/location/LocationSettings;->checkGpsDownloadWiFiOnly(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 144
    :cond_1
    iget-object v6, p0, Lcom/android/settings_ex/location/LocationSettings;->mGpsDownloadDataWifiOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 145
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/settings_ex/location/LocationSettings;->mGpsDownloadDataWifiOnly:Landroid/preference/CheckBoxPreference;

    .line 151
    :cond_2
    :goto_0
    const-string v6, "recent_location_requests"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    iput-object v6, p0, Lcom/android/settings_ex/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

    .line 153
    new-instance v3, Lcom/android/settings_ex/location/RecentLocationApps;

    invoke-direct {v3, v0}, Lcom/android/settings_ex/location/RecentLocationApps;-><init>(Landroid/preference/PreferenceActivity;)V

    .line 154
    .local v3, recentApps:Lcom/android/settings_ex/location/RecentLocationApps;
    invoke-virtual {v3}, Lcom/android/settings_ex/location/RecentLocationApps;->getAppList()Ljava/util/List;

    move-result-object v4

    .line 155
    .local v4, recentLocationRequests:Ljava/util/List;,"Ljava/util/List<Landroid/preference/Preference;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_6

    .line 156
    iget-object v6, p0, Lcom/android/settings_ex/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

    invoke-direct {p0, v4, v6}, Lcom/android/settings_ex/location/LocationSettings;->addPreferencesSorted(Ljava/util/List;Landroid/preference/PreferenceGroup;)V

    .line 166
    :goto_1
    invoke-direct {p0, v0, v5}, Lcom/android/settings_ex/location/LocationSettings;->addLocationServices(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V

    .line 170
    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v6

    if-nez v6, :cond_4

    .line 171
    :cond_3
    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070014

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 173
    .local v2, padding:I
    iget-object v6, p0, Lcom/android/settings_ex/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v8, v8, v2, v8}, Landroid/widget/Switch;->setPaddingRelative(IIII)V

    .line 174
    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v9, v9}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 176
    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings_ex/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    new-instance v8, Landroid/app/ActionBar$LayoutParams;

    const v9, 0x800015

    invoke-direct {v8, v10, v10, v9}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v6, v7, v8}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 182
    .end local v2           #padding:I
    :cond_4
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/location/LocationSettings;->setHasOptionsMenu(Z)V

    .line 184
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings;->refreshLocationMode()V

    .line 185
    return-object v5

    .line 147
    .end local v3           #recentApps:Lcom/android/settings_ex/location/RecentLocationApps;
    .end local v4           #recentLocationRequests:Ljava/util/List;,"Ljava/util/List<Landroid/preference/Preference;>;"
    :cond_5
    iget-object v6, p0, Lcom/android/settings_ex/location/LocationSettings;->mGpsDownloadDataWifiOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0

    .line 159
    .restart local v3       #recentApps:Lcom/android/settings_ex/location/RecentLocationApps;
    .restart local v4       #recentLocationRequests:Ljava/util/List;,"Ljava/util/List<Landroid/preference/Preference;>;"
    :cond_6
    new-instance v1, Landroid/preference/Preference;

    invoke-direct {v1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 160
    .local v1, banner:Landroid/preference/Preference;
    const v6, 0x7f04005e

    invoke-virtual {v1, v6}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 161
    const v6, 0x7f0807b0

    invoke-virtual {v1, v6}, Landroid/preference/Preference;->setTitle(I)V

    .line 162
    invoke-virtual {v1, v8}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 163
    iget-object v6, p0, Lcom/android/settings_ex/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

    invoke-virtual {v6, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method public static isLocationModeEnabled(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 319
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "location_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 321
    .local v0, mode:I
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private static isLtoSupported()Z
    .locals 2

    .prologue
    .line 346
    :try_start_0
    invoke-static {}, Lorg/cyanogenmod/hardware/LongTermOrbits;->isSupported()Z
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 349
    :goto_0
    return v1

    .line 347
    :catch_0
    move-exception v0

    .line 349
    .local v0, e:Ljava/lang/NoClassDefFoundError;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static restore(Landroid/content/Context;)V
    .locals 6
    .parameter

    .prologue
    .line 329
    invoke-static {}, Lcom/android/settings_ex/location/LocationSettings;->isLtoSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/settings_ex/location/LocationSettings;->isLocationModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    invoke-static {p0}, Lcom/android/settings_ex/location/LocationSettings;->checkGpsDownloadWiFiOnly(Landroid/content/Context;)Z

    .line 335
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 336
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/settings_ex/cyanogenmod/LtoService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 337
    const/4 v2, 0x0

    const/high16 v3, 0x4800

    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 339
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x1d4c0

    add-long/2addr v2, v4

    .line 340
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 342
    :cond_0
    return-void
.end method

.method private static updateLtoServiceStatus(Landroid/content/Context;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 296
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings_ex/cyanogenmod/LtoService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 297
    if-eqz p1, :cond_0

    .line 298
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 302
    :goto_0
    return-void

    .line 300
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_0
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .prologue
    .line 230
    const v0, 0x7f080b91

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 280
    if-eqz p2, :cond_0

    .line 281
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/location/LocationSettings;->setLocationMode(I)V

    .line 285
    :goto_0
    return-void

    .line 283
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/location/LocationSettings;->setLocationMode(I)V

    goto :goto_0
.end method

.method public onModeChanged(IZ)V
    .locals 5
    .parameter "mode"
    .parameter "restricted"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 235
    packed-switch p1, :pswitch_data_0

    .line 255
    :goto_0
    if-eqz p1, :cond_3

    move v0, v1

    .line 256
    .local v0, enabled:Z
    :goto_1
    iget-object v4, p0, Lcom/android/settings_ex/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    if-nez p2, :cond_4

    move v3, v1

    :goto_2
    invoke-virtual {v4, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 257
    iget-object v3, p0, Lcom/android/settings_ex/location/LocationSettings;->mGpsDownloadDataWifiOnly:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_0

    .line 258
    iget-object v4, p0, Lcom/android/settings_ex/location/LocationSettings;->mGpsDownloadDataWifiOnly:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_5

    if-nez p2, :cond_5

    move v3, v1

    :goto_3
    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 260
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    if-eqz v0, :cond_6

    if-nez p2, :cond_6

    :goto_4
    invoke-virtual {v3, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 261
    iget-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 263
    iget-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eq v0, v1, :cond_2

    .line 265
    iget-boolean v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mValidListener:Z

    if-eqz v1, :cond_1

    .line 266
    iget-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 268
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 269
    iget-boolean v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mValidListener:Z

    if-eqz v1, :cond_2

    .line 270
    iget-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 273
    :cond_2
    return-void

    .line 237
    .end local v0           #enabled:Z
    :pswitch_0
    iget-object v3, p0, Lcom/android/settings_ex/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    const v4, 0x7f0807ae

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 240
    :pswitch_1
    iget-object v3, p0, Lcom/android/settings_ex/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    const v4, 0x7f0807ad

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 243
    :pswitch_2
    iget-object v3, p0, Lcom/android/settings_ex/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    const v4, 0x7f0807ac

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 246
    :pswitch_3
    iget-object v3, p0, Lcom/android/settings_ex/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    const v4, 0x7f0807ab

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 255
    goto :goto_1

    .restart local v0       #enabled:Z
    :cond_4
    move v3, v2

    .line 256
    goto :goto_2

    :cond_5
    move v3, v2

    .line 258
    goto :goto_3

    :cond_6
    move v1, v2

    .line 260
    goto :goto_4

    .line 235
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 96
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    invoke-super {p0}, Lcom/android/settings_ex/location/LocationSettingsBase;->onPause()V

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mValidListener:Z

    .line 102
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 103
    return-void

    .line 97
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mGpsDownloadDataWifiOnly:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mGpsDownloadDataWifiOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/location/LocationSettings;->isLocationModeEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings_ex/location/LocationSettings;->updateLtoServiceStatus(Landroid/content/Context;Z)V

    .line 292
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 86
    invoke-super {p0}, Lcom/android/settings_ex/location/LocationSettingsBase;->onResume()V

    .line 87
    new-instance v0, Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/settings_ex/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    .line 88
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/location/LocationSettings;->mValidListener:Z

    .line 90
    invoke-direct {p0}, Lcom/android/settings_ex/location/LocationSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 91
    return-void
.end method
