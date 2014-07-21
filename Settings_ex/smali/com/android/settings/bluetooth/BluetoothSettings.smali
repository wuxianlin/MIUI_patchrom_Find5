.class public final Lcom/android/settings/bluetooth/BluetoothSettings;
.super Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;
.source "BluetoothSettings.java"


# instance fields
.field private mActivityStarted:Z

.field private mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

.field private mAvailableDevicesCategoryIsPresent:Z

.field private mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

.field private final mDeviceProfilesListener:Landroid/view/View$OnClickListener;

.field private mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

.field private mEmptyView:Landroid/widget/TextView;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field mMyDevicePreference:Landroid/preference/Preference;

.field private mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 99
    const-string v0, "no_config_bluetooth"

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;-><init>(Ljava/lang/String;)V

    .line 82
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothSettings$1;-><init>(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 384
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothSettings$2;-><init>(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDeviceProfilesListener:Landroid/view/View$OnClickListener;

    .line 100
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 101
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/BluetoothSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->isRestrictedAndNotPinProtected()Z

    move-result v0

    return v0
.end method

.method private addDeviceCategory(Landroid/preference/PreferenceGroup;ILcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;)V
    .locals 1
    .parameter "preferenceGroup"
    .parameter "titleId"
    .parameter "filter"

    .prologue
    .line 252
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 253
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 254
    invoke-virtual {p0, p3}, Lcom/android/settings/bluetooth/BluetoothSettings;->setFilter(Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;)V

    .line 255
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    .line 256
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->addCachedDevices()V

    .line 257
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 258
    return-void
.end method

.method private startScanning()V
    .locals 2

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->isRestrictedAndNotPinProtected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    :goto_0
    return-void

    .line 238
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    if-nez v0, :cond_1

    .line 239
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    goto :goto_0
.end method

.method private updateContent(IZ)V
    .locals 10
    .parameter "bluetoothState"
    .parameter "scanState"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 261
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 262
    .local v3, preferenceScreen:Landroid/preference/PreferenceScreen;
    const/4 v0, 0x0

    .line 264
    .local v0, messageId:I
    packed-switch p1, :pswitch_data_0

    .line 359
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    .line 360
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->removeAllDevices()V

    .line 361
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(I)V

    .line 362
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 363
    :goto_1
    return-void

    .line 266
    :pswitch_0
    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 267
    invoke-virtual {v3, v9}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 268
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v4}, Ljava/util/WeakHashMap;->clear()V

    .line 271
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    if-nez v4, :cond_0

    .line 272
    new-instance v4, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    .line 274
    :cond_0
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 275
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1110043

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 276
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    const v5, 0x7f02005e

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setIcon(I)V

    .line 280
    :goto_2
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    invoke-virtual {v4, v8}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 281
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    invoke-virtual {v4, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 282
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 284
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->isRestrictedAndNotPinProtected()Z

    move-result v4

    if-nez v4, :cond_1

    .line 285
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    if-nez v4, :cond_1

    .line 286
    new-instance v4, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    invoke-direct {v4, v5, v6, v7}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/bluetooth/LocalBluetoothAdapter;Landroid/preference/Preference;)V

    iput-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    .line 288
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v4}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->resume()V

    .line 289
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v4, v5}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->setDiscoverableEnabler(Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;)V

    .line 295
    :cond_1
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    if-nez v4, :cond_7

    .line 296
    new-instance v4, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    .line 300
    :goto_3
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    const v5, 0x7f080598

    sget-object v6, Lcom/android/settings/bluetooth/BluetoothDeviceFilter;->BONDED_DEVICE_FILTER:Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-direct {p0, v4, v5, v6}, Lcom/android/settings/bluetooth/BluetoothSettings;->addDeviceCategory(Landroid/preference/PreferenceGroup;ILcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;)V

    .line 303
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    .line 305
    .local v2, numberOfPairedDevices:I
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    if-eqz v4, :cond_2

    .line 306
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v4, v2}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->setNumberOfPairedDevices(I)V

    .line 310
    :cond_2
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    if-nez v4, :cond_8

    .line 311
    new-instance v4, Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/android/settings/bluetooth/BluetoothProgressCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    .line 315
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->isRestrictedAndNotPinProtected()Z

    move-result v4

    if-nez v4, :cond_3

    .line 316
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    const v5, 0x7f080599

    sget-object v6, Lcom/android/settings/bluetooth/BluetoothDeviceFilter;->UNBONDED_DEVICE_FILTER:Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-direct {p0, v4, v5, v6}, Lcom/android/settings/bluetooth/BluetoothSettings;->addDeviceCategory(Landroid/preference/PreferenceGroup;ILcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;)V

    .line 320
    :cond_3
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 321
    .local v1, numberOfAvailableDevices:I
    iput-boolean v9, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    .line 323
    if-nez v1, :cond_4

    .line 324
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 325
    iput-boolean v8, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    .line 328
    :cond_4
    if-nez v2, :cond_5

    .line 329
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 330
    if-ne p2, v9, :cond_9

    .line 331
    iput-boolean v8, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mActivityStarted:Z

    .line 332
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->startScanning()V

    .line 339
    :cond_5
    :goto_5
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto/16 :goto_1

    .line 278
    .end local v1           #numberOfAvailableDevices:I
    .end local v2           #numberOfPairedDevices:I
    :cond_6
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    const v5, 0x7f020064

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setIcon(I)V

    goto/16 :goto_2

    .line 298
    :cond_7
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto :goto_3

    .line 313
    .restart local v2       #numberOfPairedDevices:I
    :cond_8
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto :goto_4

    .line 334
    .restart local v1       #numberOfAvailableDevices:I
    :cond_9
    iget-boolean v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    if-nez v4, :cond_5

    .line 335
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_5

    .line 343
    .end local v1           #numberOfAvailableDevices:I
    .end local v2           #numberOfPairedDevices:I
    :pswitch_1
    const v0, 0x7f080494

    .line 344
    goto/16 :goto_0

    .line 348
    :pswitch_2
    iget-boolean v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    if-eqz v4, :cond_a

    .line 349
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    check-cast v4, Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    invoke-virtual {v4, v8}, Lcom/android/settings/bluetooth/BluetoothProgressCategory;->setProgress(Z)V

    .line 351
    :cond_a
    const v0, 0x7f0805a2

    .line 352
    goto/16 :goto_0

    .line 355
    :pswitch_3
    const v0, 0x7f080493

    goto/16 :goto_0

    .line 264
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method addPreferencesForActivity()V
    .locals 9

    .prologue
    const/16 v8, 0x10

    const/4 v7, -0x2

    const/4 v6, 0x0

    .line 114
    const v4, 0x7f05000e

    invoke-virtual {p0, v4}, Lcom/android/settings/bluetooth/BluetoothSettings;->addPreferencesFromResource(I)V

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 118
    .local v1, activity:Landroid/app/Activity;
    new-instance v0, Landroid/widget/Switch;

    invoke-direct {v0, v1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    .line 120
    .local v0, actionBarSwitch:Landroid/widget/Switch;
    instance-of v4, v1, Landroid/preference/PreferenceActivity;

    if-eqz v4, :cond_1

    move-object v3, v1

    .line 121
    check-cast v3, Landroid/preference/PreferenceActivity;

    .line 122
    .local v3, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v3}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v4

    if-nez v4, :cond_1

    .line 123
    :cond_0
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070014

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 125
    .local v2, padding:I
    invoke-virtual {v0, v6, v6, v2, v6}, Landroid/widget/Switch;->setPaddingRelative(IIII)V

    .line 126
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v8, v8}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 128
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const v6, 0x800015

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v4, v0, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 135
    .end local v2           #padding:I
    .end local v3           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_1
    new-instance v4, Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-direct {v4, v1, v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    .line 137
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/settings/bluetooth/BluetoothSettings;->setHasOptionsMenu(Z)V

    .line 138
    return-void
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 419
    const v0, 0x7f080b85

    return v0
.end method

.method initDevicePreference(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 3
    .parameter "preference"

    .prologue
    .line 410
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 411
    .local v0, cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 413
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDeviceProfilesListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V

    .line 415
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 106
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mActivityStarted:Z

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 110
    return-void

    .line 106
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBluetoothStateChanged(I)V
    .locals 1
    .parameter "bluetoothState"

    .prologue
    .line 367
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onBluetoothStateChanged(I)V

    .line 368
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->updateContent(IZ)V

    .line 369
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 8
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 172
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-nez v6, :cond_1

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->isRestrictedAndNotPinProtected()Z

    move-result v6

    if-nez v6, :cond_0

    .line 176
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v6}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v6

    const/16 v7, 0xc

    if-ne v6, v7, :cond_2

    move v1, v4

    .line 177
    .local v1, bluetoothIsEnabled:Z
    :goto_1
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v6}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v2

    .line 178
    .local v2, isDiscovering:Z
    if-eqz v2, :cond_3

    const v3, 0x7f080596

    .line 181
    .local v3, textId:I
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "bluetooth_accept_all_files"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_4

    move v0, v4

    .line 184
    .local v0, acceptAllFilesIsEnabled:Z
    :goto_3
    invoke-interface {p1, v5, v4, v5, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    if-eqz v1, :cond_5

    if-nez v2, :cond_5

    move v6, v4

    :goto_4
    invoke-interface {v7, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 187
    const/4 v6, 0x2

    const v7, 0x7f080475

    invoke-interface {p1, v5, v6, v5, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 190
    const/4 v6, 0x3

    const v7, 0x7f08046c

    invoke-interface {p1, v5, v6, v5, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 193
    const/4 v6, 0x4

    const v7, 0x7f08048b

    invoke-interface {p1, v5, v6, v5, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 195
    const/4 v6, 0x5

    const v7, 0x7f080407

    invoke-interface {p1, v5, v6, v5, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v4}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 199
    invoke-super {p0, p1, p2}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    goto :goto_0

    .end local v0           #acceptAllFilesIsEnabled:Z
    .end local v1           #bluetoothIsEnabled:Z
    .end local v2           #isDiscovering:Z
    .end local v3           #textId:I
    :cond_2
    move v1, v5

    .line 176
    goto :goto_1

    .line 178
    .restart local v1       #bluetoothIsEnabled:Z
    .restart local v2       #isDiscovering:Z
    :cond_3
    const v3, 0x7f080595

    goto :goto_2

    .restart local v3       #textId:I
    :cond_4
    move v0, v5

    .line 181
    goto :goto_3

    .restart local v0       #acceptAllFilesIsEnabled:Z
    :cond_5
    move v6, v5

    .line 184
    goto :goto_4
.end method

.method public onDeviceBondStateChanged(Lcom/android/settings/bluetooth/CachedBluetoothDevice;I)V
    .locals 2
    .parameter "cachedDevice"
    .parameter "bondState"

    .prologue
    .line 379
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    .line 380
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->removeAllDevices()V

    .line 381
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->updateContent(IZ)V

    .line 382
    return-void
.end method

.method onDevicePreferenceClick(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 1
    .parameter "btPreference"

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    .line 247
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onDevicePreferenceClick(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    .line 248
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 204
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 233
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :cond_0
    :goto_0
    return v2

    .line 206
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v1

    const/16 v3, 0xc

    if-ne v1, v3, :cond_0

    .line 207
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->startScanning()V

    goto :goto_0

    .line 212
    :pswitch_1
    new-instance v1, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;

    invoke-direct {v1}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "rename device"

    invoke-virtual {v1, v3, v4}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 217
    :pswitch_2
    new-instance v1, Lcom/android/settings/bluetooth/BluetoothVisibilityTimeoutFragment;

    invoke-direct {v1}, Lcom/android/settings/bluetooth/BluetoothVisibilityTimeoutFragment;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "visibility timeout"

    invoke-virtual {v1, v3, v4}, Lcom/android/settings/bluetooth/BluetoothVisibilityTimeoutFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 222
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.btopp.intent.action.OPEN_RECEIVED_FILES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 223
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 227
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_4
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    :goto_1
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 228
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "bluetooth_accept_all_files"

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_1

    move v3, v2

    :cond_1
    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    move v1, v3

    .line 227
    goto :goto_1

    .line 204
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 160
    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onPause()V

    .line 161
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->pause()V

    .line 164
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 165
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->pause()V

    .line 168
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->resume()V

    .line 147
    :cond_0
    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onResume()V

    .line 149
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->resume()V

    .line 152
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 153
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_2

    .line 154
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mActivityStarted:Z

    invoke-direct {p0, v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->updateContent(IZ)V

    .line 156
    :cond_2
    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 1
    .parameter "started"

    .prologue
    .line 373
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onScanningStateChanged(Z)V

    .line 375
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 376
    return-void
.end method
