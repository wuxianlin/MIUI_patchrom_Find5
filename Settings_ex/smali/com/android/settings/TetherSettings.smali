.class public Lcom/android/settings/TetherSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "TetherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/TetherSettings$TetherChangeReceiver;
    }
.end annotation


# instance fields
.field private mBluetoothEnableForTether:Z

.field private mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Landroid/bluetooth/BluetoothPan;",
            ">;"
        }
    .end annotation
.end field

.field private mBluetoothRegexs:[Ljava/lang/String;

.field private mBluetoothTether:Landroid/preference/CheckBoxPreference;

.field private mCreateNetwork:Landroid/preference/Preference;

.field private mDialog:Lcom/android/settings/wifi/WifiApDialog;

.field private mEnableWifiAp:Landroid/preference/CheckBoxPreference;

.field private mMassStorageActive:Z

.field private mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mProvisionApp:[Ljava/lang/String;

.field private mSecurityType:[Ljava/lang/String;

.field private mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mTetherChoice:I

.field private mUsbConnected:Z

.field private mUsbRegexs:[Ljava/lang/String;

.field private mUsbTether:Landroid/preference/CheckBoxPreference;

.field private mView:Landroid/webkit/WebView;

.field private mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiRegexs:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 84
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 107
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    .line 192
    new-instance v0, Lcom/android/settings/TetherSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/TetherSettings$1;-><init>(Lcom/android/settings/TetherSettings;)V

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 213
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/TetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/TetherSettings;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/TetherSettings;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/settings/TetherSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->mMassStorageActive:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/TetherSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->updateState()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/settings/TetherSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->mUsbConnected:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/settings/TetherSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothEnableForTether:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/settings/TetherSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->mBluetoothEnableForTether:Z

    return p1
.end method

.method private static findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "ifaces"
    .parameter "regexes"

    .prologue
    .line 583
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    move v3, v2

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v5           #len$:I
    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v4, v0, v3

    .line 584
    .local v4, iface:Ljava/lang/String;
    move-object v1, p1

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v2, 0x0

    .end local v3           #i$:I
    .restart local v2       #i$:I
    :goto_1
    if-ge v2, v6, :cond_1

    aget-object v7, v1, v2

    .line 585
    .local v7, regex:Ljava/lang/String;
    invoke-virtual {v4, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 590
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v4           #iface:Ljava/lang/String;
    .end local v6           #len$:I
    .end local v7           #regex:Ljava/lang/String;
    :goto_2
    return-object v4

    .line 584
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v4       #iface:Ljava/lang/String;
    .restart local v6       #len$:I
    .restart local v7       #regex:Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 583
    .end local v7           #regex:Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2           #i$:I
    .restart local v3       #i$:I
    goto :goto_0

    .line 590
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v4           #iface:Ljava/lang/String;
    .end local v6           #len$:I
    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private initWifiTethering()V
    .locals 9

    .prologue
    const v6, 0x7f08067b

    const/4 v5, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 172
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 173
    .local v0, activity:Landroid/app/Activity;
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 174
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0014

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/TetherSettings;->mSecurityType:[Ljava/lang/String;

    .line 177
    const-string v3, "wifi_ap_ssid_and_security"

    invoke-virtual {p0, v3}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    .line 179
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v3, :cond_0

    .line 180
    const v3, 0x10404ea

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 182
    .local v2, s:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v7

    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v6, v6, v7

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 190
    .end local v2           #s:Ljava/lang/String;
    :goto_0
    return-void

    .line 185
    :cond_0
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v3}, Lcom/android/settings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    .line 186
    .local v1, index:I
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v6, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v6, v6, v1

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setUsbTethering(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 529
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 531
    .local v0, cm:Landroid/net/ConnectivityManager;
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 532
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    move-result v1

    if-eqz v1, :cond_0

    .line 533
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f080795

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 537
    :goto_0
    return-void

    .line 536
    :cond_0
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static showInShortcuts(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 628
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 630
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-eqz v4, :cond_0

    move v1, v2

    .line 631
    .local v1, isSecondaryUser:Z
    :goto_0
    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    return v2

    .end local v1           #isSecondaryUser:Z
    :cond_0
    move v1, v3

    .line 630
    goto :goto_0

    .restart local v1       #isSecondaryUser:Z
    :cond_1
    move v2, v3

    .line 631
    goto :goto_1
.end method

.method private startProvisioningIfNecessary(I)V
    .locals 5
    .parameter "choice"

    .prologue
    const/4 v4, 0x0

    .line 464
    iput p1, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    .line 465
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->isProvisioningNeeded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 466
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 467
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    aget-object v1, v1, v4

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 468
    invoke-virtual {p0, v0, v4}, Lcom/android/settings/TetherSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 472
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 470
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->startTethering()V

    goto :goto_0
.end method

.method private startTethering()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 496
    iget v2, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    packed-switch v2, :pswitch_data_0

    .line 526
    :cond_0
    :goto_0
    return-void

    .line 498
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {v2, v5}, Lcom/android/settings/wifi/WifiApEnabler;->setSoftapEnabled(Z)V

    goto :goto_0

    .line 502
    :pswitch_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 503
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    .line 504
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    .line 506
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v4, 0x5

    invoke-virtual {v0, v2, v3, v4}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 508
    iput-boolean v5, p0, Lcom/android/settings/TetherSettings;->mBluetoothEnableForTether:Z

    .line 509
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 510
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v3, 0x7f080493

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 511
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 513
    :cond_1
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothPan;

    .line 514
    .local v1, bluetoothPan:Landroid/bluetooth/BluetoothPan;
    if-eqz v1, :cond_2

    invoke-virtual {v1, v5}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 515
    :cond_2
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v3, 0x7f080797

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0

    .line 520
    .end local v0           #adapter:Landroid/bluetooth/BluetoothAdapter;
    .end local v1           #bluetoothPan:Landroid/bluetooth/BluetoothPan;
    :pswitch_2
    invoke-direct {p0, v5}, Lcom/android/settings/TetherSettings;->setUsbTethering(Z)V

    goto :goto_0

    .line 496
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private updateBluetoothState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 21
    .parameter "available"
    .parameter "tethered"
    .parameter "errored"

    .prologue
    .line 400
    const/4 v6, 0x0

    .line 401
    .local v6, bluetoothErrored:Z
    move-object/from16 v4, p3

    .local v4, arr$:[Ljava/lang/String;
    array-length v12, v4

    .local v12, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    move v11, v10

    .end local v4           #arr$:[Ljava/lang/String;
    .end local v10           #i$:I
    .end local v12           #len$:I
    .local v11, i$:I
    :goto_0
    if-ge v11, v12, :cond_2

    aget-object v15, v4, v11

    .line 402
    .local v15, s:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    .local v5, arr$:[Ljava/lang/String;
    array-length v13, v5

    .local v13, len$:I
    const/4 v10, 0x0

    .end local v11           #i$:I
    .restart local v10       #i$:I
    :goto_1
    if-ge v10, v13, :cond_1

    aget-object v14, v5, v10

    .line 403
    .local v14, regex:Ljava/lang/String;
    invoke-virtual {v15, v14}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    const/4 v6, 0x1

    .line 402
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 401
    .end local v14           #regex:Ljava/lang/String;
    :cond_1
    add-int/lit8 v10, v11, 0x1

    move v11, v10

    .end local v10           #i$:I
    .restart local v11       #i$:I
    goto :goto_0

    .line 407
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v13           #len$:I
    .end local v15           #s:Ljava/lang/String;
    :cond_2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    .line 408
    .local v3, adapter:Landroid/bluetooth/BluetoothAdapter;
    if-nez v3, :cond_3

    .line 443
    :goto_2
    return-void

    .line 410
    :cond_3
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v9

    .line 411
    .local v9, btState:I
    const/16 v17, 0xd

    move/from16 v0, v17

    if-ne v9, v0, :cond_4

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const v18, 0x7f080494

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_2

    .line 414
    :cond_4
    const/16 v17, 0xb

    move/from16 v0, v17

    if-ne v9, v0, :cond_5

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const v18, 0x7f080493

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_2

    .line 418
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothPan;

    .line 419
    .local v7, bluetoothPan:Landroid/bluetooth/BluetoothPan;
    const/16 v17, 0xc

    move/from16 v0, v17

    if-ne v9, v0, :cond_9

    if-eqz v7, :cond_9

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v17

    if-eqz v17, :cond_9

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 423
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothPan;->getConnectedDevices()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v8

    .line 424
    .local v8, bluetoothTethered:I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-le v8, v0, :cond_6

    .line 425
    const v17, 0x7f080799

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/TetherSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 428
    .local v16, summary:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 429
    .end local v16           #summary:Ljava/lang/String;
    :cond_6
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v8, v0, :cond_7

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const v18, 0x7f080798

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto/16 :goto_2

    .line 432
    :cond_7
    if-eqz v6, :cond_8

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const v18, 0x7f08079b

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto/16 :goto_2

    .line 435
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const v18, 0x7f080797

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto/16 :goto_2

    .line 438
    .end local v8           #bluetoothTethered:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const v18, 0x7f08079a

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto/16 :goto_2
.end method

.method private updateState()V
    .locals 5

    .prologue
    .line 327
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 330
    .local v1, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, available:[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v3

    .line 332
    .local v3, tethered:[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v2

    .line 333
    .local v2, errored:[Ljava/lang/String;
    invoke-direct {p0, v0, v3, v2}, Lcom/android/settings/TetherSettings;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 334
    return-void
.end method

.method private updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter "available"
    .parameter "tethered"
    .parameter "errored"

    .prologue
    .line 338
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/TetherSettings;->updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 339
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/TetherSettings;->updateBluetoothState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 340
    return-void
.end method

.method private updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 15
    .parameter "available"
    .parameter "tethered"
    .parameter "errored"

    .prologue
    .line 345
    const-string v13, "connectivity"

    invoke-virtual {p0, v13}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 347
    .local v2, cm:Landroid/net/ConnectivityManager;
    iget-boolean v13, p0, Lcom/android/settings/TetherSettings;->mUsbConnected:Z

    if-eqz v13, :cond_1

    iget-boolean v13, p0, Lcom/android/settings/TetherSettings;->mMassStorageActive:Z

    if-nez v13, :cond_1

    const/4 v9, 0x1

    .line 348
    .local v9, usbAvailable:Z
    :goto_0
    const/4 v10, 0x0

    .line 349
    .local v10, usbError:I
    move-object/from16 v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    move v4, v3

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_3

    aget-object v8, v0, v4

    .line 350
    .local v8, s:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v3, 0x0

    .end local v4           #i$:I
    .restart local v3       #i$:I
    :goto_2
    if-ge v3, v6, :cond_2

    aget-object v7, v1, v3

    .line 351
    .local v7, regex:Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 352
    if-nez v10, :cond_0

    .line 353
    invoke-virtual {v2, v8}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v10

    .line 350
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 347
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v6           #len$:I
    .end local v7           #regex:Ljava/lang/String;
    .end local v8           #s:Ljava/lang/String;
    .end local v9           #usbAvailable:Z
    .end local v10           #usbError:I
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 349
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v3       #i$:I
    .restart local v6       #len$:I
    .restart local v8       #s:Ljava/lang/String;
    .restart local v9       #usbAvailable:Z
    .restart local v10       #usbError:I
    :cond_2
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3           #i$:I
    .restart local v4       #i$:I
    goto :goto_1

    .line 358
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v6           #len$:I
    .end local v8           #s:Ljava/lang/String;
    :cond_3
    const/4 v12, 0x0

    .line 359
    .local v12, usbTethered:Z
    move-object/from16 v0, p2

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v5, v0

    .restart local v5       #len$:I
    const/4 v3, 0x0

    .end local v4           #i$:I
    .restart local v3       #i$:I
    move v4, v3

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .restart local v4       #i$:I
    :goto_3
    if-ge v4, v5, :cond_6

    aget-object v8, v0, v4

    .line 360
    .restart local v8       #s:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .restart local v1       #arr$:[Ljava/lang/String;
    array-length v6, v1

    .restart local v6       #len$:I
    const/4 v3, 0x0

    .end local v4           #i$:I
    .restart local v3       #i$:I
    :goto_4
    if-ge v3, v6, :cond_5

    aget-object v7, v1, v3

    .line 361
    .restart local v7       #regex:Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    const/4 v12, 0x1

    .line 360
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 359
    .end local v7           #regex:Ljava/lang/String;
    :cond_5
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3           #i$:I
    .restart local v4       #i$:I
    goto :goto_3

    .line 364
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v6           #len$:I
    .end local v8           #s:Ljava/lang/String;
    :cond_6
    const/4 v11, 0x0

    .line 365
    .local v11, usbErrored:Z
    move-object/from16 v0, p3

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v5, v0

    .restart local v5       #len$:I
    const/4 v3, 0x0

    .end local v4           #i$:I
    .restart local v3       #i$:I
    move v4, v3

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .restart local v4       #i$:I
    :goto_5
    if-ge v4, v5, :cond_9

    aget-object v8, v0, v4

    .line 366
    .restart local v8       #s:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .restart local v1       #arr$:[Ljava/lang/String;
    array-length v6, v1

    .restart local v6       #len$:I
    const/4 v3, 0x0

    .end local v4           #i$:I
    .restart local v3       #i$:I
    :goto_6
    if-ge v3, v6, :cond_8

    aget-object v7, v1, v3

    .line 367
    .restart local v7       #regex:Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    const/4 v11, 0x1

    .line 366
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 365
    .end local v7           #regex:Ljava/lang/String;
    :cond_8
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3           #i$:I
    .restart local v4       #i$:I
    goto :goto_5

    .line 371
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v6           #len$:I
    .end local v8           #s:Ljava/lang/String;
    :cond_9
    if-eqz v12, :cond_a

    .line 372
    iget-object v13, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v14, 0x7f080792

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 373
    iget-object v13, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 374
    iget-object v13, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 396
    :goto_7
    return-void

    .line 375
    :cond_a
    if-eqz v9, :cond_c

    .line 376
    if-nez v10, :cond_b

    .line 377
    iget-object v13, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v14, 0x7f080791

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 381
    :goto_8
    iget-object v13, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 382
    iget-object v13, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_7

    .line 379
    :cond_b
    iget-object v13, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v14, 0x7f080795

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_8

    .line 383
    :cond_c
    if-eqz v11, :cond_d

    .line 384
    iget-object v13, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v14, 0x7f080795

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 385
    iget-object v13, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 386
    iget-object v13, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_7

    .line 387
    :cond_d
    iget-boolean v13, p0, Lcom/android/settings/TetherSettings;->mMassStorageActive:Z

    if-eqz v13, :cond_e

    .line 388
    iget-object v13, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v14, 0x7f080793

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 389
    iget-object v13, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 390
    iget-object v13, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_7

    .line 392
    :cond_e
    iget-object v13, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v14, 0x7f080794

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 393
    iget-object v13, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 394
    iget-object v13, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_7
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .prologue
    .line 618
    const v0, 0x7f080b8e

    return v0
.end method

.method isProvisioningNeeded()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 457
    const-string v1, "net.tethering.noprovisioning"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 460
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 475
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 476
    if-nez p1, :cond_0

    .line 477
    if-ne p2, v1, :cond_1

    .line 478
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->startTethering()V

    .line 493
    :cond_0
    :goto_0
    return-void

    .line 482
    :cond_1
    iget v0, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    packed-switch v0, :pswitch_data_0

    .line 490
    :goto_1
    iput v1, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    goto :goto_0

    .line 484
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    .line 487
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    .line 482
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialogInterface"
    .parameter "button"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 594
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 595
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiApDialog;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 596
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_0

    .line 602
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    .line 603
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v5}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 604
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1, v2, v6}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 608
    :goto_0
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 609
    .local v0, index:I
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f08067b

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v4, v4, v0

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 614
    .end local v0           #index:I
    :cond_0
    return-void

    .line 606
    :cond_1
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "icicle"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 115
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 116
    const v8, 0x7f050059

    invoke-virtual {p0, v8}, Lcom/android/settings/TetherSettings;->addPreferencesFromResource(I)V

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 119
    .local v0, activity:Landroid/app/Activity;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 120
    .local v1, adapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v8

    const/16 v11, 0xc

    if-ne v8, v11, :cond_0

    .line 121
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    iget-object v11, p0, Lcom/android/settings/TetherSettings;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v12, 0x5

    invoke-virtual {v1, v8, v11, v12}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 125
    :cond_0
    const-string v8, "enable_wifi_ap"

    invoke-virtual {p0, v8}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/settings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    .line 127
    const-string v8, "wifi_ap_ssid_and_security"

    invoke-virtual {p0, v8}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 128
    .local v6, wifiApSettings:Landroid/preference/Preference;
    const-string v8, "usb_tether_settings"

    invoke-virtual {p0, v8}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    .line 129
    const-string v8, "enable_bluetooth_tethering"

    invoke-virtual {p0, v8}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    .line 131
    const-string v8, "connectivity"

    invoke-virtual {p0, v8}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 134
    .local v3, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .line 135
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    .line 136
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    .line 138
    iget-object v8, p0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    array-length v8, v8

    if-eqz v8, :cond_3

    move v5, v9

    .line 139
    .local v5, usbAvailable:Z
    :goto_0
    iget-object v8, p0, Lcom/android/settings/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    array-length v8, v8

    if-eqz v8, :cond_4

    move v7, v9

    .line 140
    .local v7, wifiAvailable:Z
    :goto_1
    iget-object v8, p0, Lcom/android/settings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    array-length v8, v8

    if-eqz v8, :cond_5

    move v2, v9

    .line 142
    .local v2, bluetoothAvailable:Z
    :goto_2
    if-eqz v5, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 143
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 146
    :cond_2
    if-eqz v7, :cond_6

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v8

    if-nez v8, :cond_6

    .line 147
    new-instance v8, Lcom/android/settings/wifi/WifiApEnabler;

    iget-object v11, p0, Lcom/android/settings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-direct {v8, v0, v11}, Lcom/android/settings/wifi/WifiApEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    iput-object v8, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    .line 148
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->initWifiTethering()V

    .line 154
    :goto_3
    if-nez v2, :cond_7

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 165
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x107001a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    .line 168
    new-instance v8, Landroid/webkit/WebView;

    invoke-direct {v8, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/settings/TetherSettings;->mView:Landroid/webkit/WebView;

    .line 169
    return-void

    .end local v2           #bluetoothAvailable:Z
    .end local v5           #usbAvailable:Z
    .end local v7           #wifiAvailable:Z
    :cond_3
    move v5, v10

    .line 138
    goto :goto_0

    .restart local v5       #usbAvailable:Z
    :cond_4
    move v7, v10

    .line 139
    goto :goto_1

    .restart local v7       #wifiAvailable:Z
    :cond_5
    move v2, v10

    .line 140
    goto :goto_2

    .line 150
    .restart local v2       #bluetoothAvailable:Z
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/android/settings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_3

    .line 157
    :cond_7
    iget-object v8, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothPan;

    .line 158
    .local v4, pan:Landroid/bluetooth/BluetoothPan;
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 159
    iget-object v8, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_4

    .line 161
    :cond_8
    iget-object v8, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v10}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_4
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 204
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 206
    .local v0, activity:Landroid/app/Activity;
    new-instance v1, Lcom/android/settings/wifi/WifiApDialog;

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1, v0, p0, v2}, Lcom/android/settings/wifi/WifiApDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V

    iput-object v1, p0, Lcom/android/settings/TetherSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    .line 207
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    .line 210
    .end local v0           #activity:Landroid/app/Activity;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 310
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 312
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 314
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_0

    .line 315
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothPan;

    .line 316
    .local v1, pan:Landroid/bluetooth/BluetoothPan;
    if-eqz v1, :cond_0

    .line 319
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 320
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 323
    .end local v1           #pan:Landroid/bluetooth/BluetoothPan;
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    .line 446
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 448
    .local v0, enable:Z
    if-eqz v0, :cond_0

    .line 449
    invoke-direct {p0, v2}, Lcom/android/settings/TetherSettings;->startProvisioningIfNecessary(I)V

    .line 453
    :goto_0
    return v2

    .line 451
    :cond_0
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/WifiApEnabler;->setSoftapEnabled(Z)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .parameter "screen"
    .parameter "preference"

    .prologue
    const/4 v8, 0x1

    .line 541
    const-string v7, "connectivity"

    invoke-virtual {p0, v7}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 544
    .local v3, cm:Landroid/net/ConnectivityManager;
    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    if-ne p2, v7, :cond_2

    .line 545
    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    .line 547
    .local v5, newState:Z
    if-eqz v5, :cond_1

    .line 548
    invoke-direct {p0, v8}, Lcom/android/settings/TetherSettings;->startProvisioningIfNecessary(I)V

    .line 579
    .end local v5           #newState:Z
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v7

    return v7

    .line 550
    .restart local v5       #newState:Z
    :cond_1
    invoke-direct {p0, v5}, Lcom/android/settings/TetherSettings;->setUsbTethering(Z)V

    goto :goto_0

    .line 552
    .end local v5           #newState:Z
    :cond_2
    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    if-ne p2, v7, :cond_7

    .line 553
    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 555
    .local v2, bluetoothTetherState:Z
    if-eqz v2, :cond_3

    .line 556
    const/4 v7, 0x2

    invoke-direct {p0, v7}, Lcom/android/settings/TetherSettings;->startProvisioningIfNecessary(I)V

    goto :goto_0

    .line 558
    :cond_3
    const/4 v4, 0x0

    .line 560
    .local v4, errored:Z
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v6

    .line 561
    .local v6, tethered:[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/android/settings/TetherSettings;->findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 562
    .local v0, bluetoothIface:Ljava/lang/String;
    if-eqz v0, :cond_4

    invoke-virtual {v3, v0}, Landroid/net/ConnectivityManager;->untether(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_4

    .line 564
    const/4 v4, 0x1

    .line 567
    :cond_4
    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothPan;

    .line 568
    .local v1, bluetoothPan:Landroid/bluetooth/BluetoothPan;
    if-eqz v1, :cond_5

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 569
    :cond_5
    if-eqz v4, :cond_6

    .line 570
    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v8, 0x7f08079b

    invoke-virtual {v7, v8}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0

    .line 572
    :cond_6
    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v8, 0x7f08079a

    invoke-virtual {v7, v8}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0

    .line 575
    .end local v0           #bluetoothIface:Ljava/lang/String;
    .end local v1           #bluetoothPan:Landroid/bluetooth/BluetoothPan;
    .end local v2           #bluetoothTetherState:Z
    .end local v4           #errored:Z
    .end local v6           #tethered:[Ljava/lang/String;
    :cond_7
    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    if-ne p2, v7, :cond_0

    .line 576
    invoke-virtual {p0, v8}, Lcom/android/settings/TetherSettings;->showDialog(I)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 5

    .prologue
    .line 265
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 267
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 269
    .local v0, activity:Landroid/app/Activity;
    const-string v3, "shared"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/TetherSettings;->mMassStorageActive:Z

    .line 270
    new-instance v3, Lcom/android/settings/TetherSettings$TetherChangeReceiver;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/settings/TetherSettings$TetherChangeReceiver;-><init>(Lcom/android/settings/TetherSettings;Lcom/android/settings/TetherSettings$1;)V

    iput-object v3, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 271
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 272
    .local v1, filter:Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    .line 274
    .local v2, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1           #filter:Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 275
    .restart local v1       #filter:Landroid/content/IntentFilter;
    const-string v3, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 276
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 278
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1           #filter:Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 279
    .restart local v1       #filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 280
    const-string v3, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 281
    const-string v3, "file"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 282
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 284
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1           #filter:Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 285
    .restart local v1       #filter:Landroid/content/IntentFilter;
    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 286
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 288
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v0, v2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 289
    :cond_0
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    if-eqz v3, :cond_1

    .line 290
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 291
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {v3}, Lcom/android/settings/wifi/WifiApEnabler;->resume()V

    .line 294
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->updateState()V

    .line 295
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 299
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 300
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 301
    iput-object v2, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 302
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 304
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApEnabler;->pause()V

    .line 306
    :cond_0
    return-void
.end method
