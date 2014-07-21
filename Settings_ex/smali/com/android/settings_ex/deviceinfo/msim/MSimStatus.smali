.class public Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;
.super Landroid/preference/PreferenceActivity;
.source "MSimStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/deviceinfo/msim/MSimStatus$MyHandler;
    }
.end annotation


# static fields
.field private static final PHONE_RELATED_ENTRIES:[Ljava/lang/String;

.field private static sUnknown:Ljava/lang/String;


# instance fields
.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryLevel:Landroid/preference/Preference;

.field private mBatteryStatus:Landroid/preference/Preference;

.field private mDataState:I

.field private mHandler:Landroid/os/Handler;

.field private mNumPhones:I

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

.field private mRes:Landroid/content/res/Resources;

.field private mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

.field private mUptime:Landroid/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 80
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data_state"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "network_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->PHONE_RELATED_ENTRIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 96
    iput v1, p0, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->mNumPhones:I

    .line 100
    iput v1, p0, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->mDataState:I

    .line 127
    new-instance v0, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus$1;-><init>(Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->mBatteryLevel:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->mBatteryStatus:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput p1, p0, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->mDataState:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->updateDataState()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->updateNetworkType(I)V

    return-void
.end method

.method private convert(J)Ljava/lang/String;
    .locals 7
    .parameter "t"

    .prologue
    const-wide/16 v5, 0x3c

    .line 375
    rem-long v3, p1, v5

    long-to-int v2, v3

    .line 376
    .local v2, s:I
    div-long v3, p1, v5

    rem-long/2addr v3, v5

    long-to-int v1, v3

    .line 377
    .local v1, m:I
    const-wide/16 v3, 0xe10

    div-long v3, p1, v3

    long-to-int v0, v3

    .line 379
    .local v0, h:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 225
    new-instance v0, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus$2;

    invoke-direct {v0, p0, p1}, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus$2;-><init>(Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;I)V

    .line 236
    .local v0, phoneStateListener:Landroid/telephony/PhoneStateListener;
    return-object v0
.end method

.method private getSerialNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 384
    :try_start_0
    invoke-static {}, Lorg/cyanogenmod/hardware/SerialNumber;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    invoke-static {}, Lorg/cyanogenmod/hardware/SerialNumber;->getSerialNumber()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 391
    :goto_0
    return-object v0

    .line 387
    :catch_0
    move-exception v0

    .line 391
    :cond_0
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    goto :goto_0
.end method

.method private pad(I)Ljava/lang/String;
    .locals 2
    .parameter "n"

    .prologue
    .line 367
    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    .line 368
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 370
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private removePreferenceFromScreen(Ljava/lang/String;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 244
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 245
    .local v0, pref:Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 248
    :cond_0
    return-void
.end method

.method private setBtStatus()V
    .locals 4

    .prologue
    .line 342
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 343
    .local v1, bluetooth:Landroid/bluetooth/BluetoothAdapter;
    const-string v3, "bt_address"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 345
    .local v2, btAddressPref:Landroid/preference/Preference;
    if-nez v1, :cond_0

    .line 347
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 353
    :goto_0
    return-void

    .line 349
    :cond_0
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 350
    .local v0, address:Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .end local v0           #address:Ljava/lang/String;
    :goto_2
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 349
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 350
    .restart local v0       #address:Ljava/lang/String;
    :cond_2
    const v3, 0x7f08071a

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private setIpAddressStatus()V
    .locals 3

    .prologue
    .line 332
    const-string v2, "wifi_ip_address"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 333
    .local v1, ipAddressPref:Landroid/preference/Preference;
    invoke-static {p0}, Lcom/android/settings_ex/Utils;->getDefaultIpAddresses(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 334
    .local v0, ipAddress:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 335
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 339
    :goto_0
    return-void

    .line 337
    :cond_0
    const v2, 0x7f08071a

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "preference"
    .parameter "text"

    .prologue
    .line 265
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    sget-object p2, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->sUnknown:Ljava/lang/String;

    .line 269
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 270
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 272
    :cond_1
    return-void
.end method

.method private setWifiStatus()V
    .locals 5

    .prologue
    .line 321
    const-string v4, "wifi"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 322
    .local v3, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 324
    .local v1, wifiInfo:Landroid/net/wifi/WifiInfo;
    const-string v4, "wifi_mac_address"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 326
    .local v2, wifiMacAddressPref:Landroid/preference/Preference;
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 327
    .local v0, macAddress:Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .end local v0           #macAddress:Ljava/lang/String;
    :goto_1
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 329
    return-void

    .line 326
    :cond_0
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 327
    .restart local v0       #macAddress:Ljava/lang/String;
    :cond_1
    const v4, 0x7f08071a

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private setWimaxStatus()V
    .locals 8

    .prologue
    .line 306
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 307
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/4 v6, 0x6

    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 309
    .local v2, ni:Landroid/net/NetworkInfo;
    if-nez v2, :cond_1

    .line 310
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 311
    .local v4, root:Landroid/preference/PreferenceScreen;
    const-string v6, "wimax_mac_address"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 312
    .local v3, ps:Landroid/preference/Preference;
    if-eqz v3, :cond_0

    invoke-virtual {v4, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 319
    .end local v3           #ps:Landroid/preference/Preference;
    .end local v4           #root:Landroid/preference/PreferenceScreen;
    :cond_0
    :goto_0
    return-void

    .line 314
    :cond_1
    const-string v6, "wimax_mac_address"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 315
    .local v5, wimaxMacAddressPref:Landroid/preference/Preference;
    const-string v6, "net.wimax.mac.address"

    const v7, 0x7f08071a

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 317
    .local v1, macAddress:Ljava/lang/String;
    invoke-virtual {v5, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateDataState()V
    .locals 3

    .prologue
    .line 285
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f080436

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, display:Ljava/lang/String;
    iget v1, p0, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->mDataState:I

    packed-switch v1, :pswitch_data_0

    .line 302
    :goto_0
    const-string v1, "data_state"

    invoke-direct {p0, v1, v0}, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    return-void

    .line 289
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f080434

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 290
    goto :goto_0

    .line 292
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f080435

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 293
    goto :goto_0

    .line 295
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f080433

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 296
    goto :goto_0

    .line 298
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f080432

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 287
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateNetworkType(I)V
    .locals 2
    .parameter "subscription"

    .prologue
    .line 276
    const/4 v0, 0x0

    .line 277
    .local v0, networktype:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v1, p1}, Landroid/telephony/MSimTelephonyManager;->getNetworkType(I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 279
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v1, p1}, Landroid/telephony/MSimTelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    .line 281
    :cond_0
    const-string v1, "network_type"

    invoke-direct {p0, v1, v0}, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 141
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 144
    new-instance v0, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus$MyHandler;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus$MyHandler;-><init>(Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->mHandler:Landroid/os/Handler;

    .line 146
    const-string v0, "phone_msim"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/MSimTelephonyManager;

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    .line 148
    const v0, 0x7f050016

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->addPreferencesFromResource(I)V

    .line 150
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->mNumPhones:I

    .line 151
    iget v0, p0, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->mNumPhones:I

    new-array v0, v0, [Landroid/telephony/PhoneStateListener;

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    move v0, v1

    .line 153
    :goto_0
    iget v2, p0, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->mNumPhones:I

    if-ge v0, v2, :cond_0

    .line 154
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;

    move-result-object v3

    aput-object v3, v2, v0

    .line 155
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v3, v3, v0

    const/16 v4, 0x40

    invoke-virtual {v2, v3, v4}, Landroid/telephony/MSimTelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    :cond_0
    const-string v0, "battery_level"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->mBatteryLevel:Landroid/preference/Preference;

    .line 160
    const-string v0, "battery_status"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->mBatteryStatus:Landroid/preference/Preference;

    .line 162
    const-string v0, "button_aboutphone_msim_status"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 163
    if-eqz v0, :cond_1

    .line 164
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 165
    const-string v2, "PACKAGE"

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    const-string v2, "TARGET_CLASS"

    const-class v3, Lcom/android/settings_ex/deviceinfo/msim/MSimSubscriptionStatus;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->mRes:Landroid/content/res/Resources;

    .line 171
    sget-object v0, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->sUnknown:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 172
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f080416

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->sUnknown:Ljava/lang/String;

    .line 175
    :cond_2
    const-string v0, "up_time"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->mUptime:Landroid/preference/Preference;

    .line 177
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 178
    sget-object v0, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->PHONE_RELATED_ENTRIES:[Ljava/lang/String;

    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 179
    invoke-direct {p0, v3}, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 178
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 183
    :cond_3
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->setWimaxStatus()V

    .line 184
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->setWifiStatus()V

    .line 185
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->setBtStatus()V

    .line 186
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->setIpAddressStatus()V

    .line 188
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->getSerialNumber()Ljava/lang/String;

    move-result-object v0

    .line 189
    if-eqz v0, :cond_4

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 190
    const-string v1, "serial_number"

    invoke-direct {p0, v1, v0}, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :goto_2
    return-void

    .line 192
    :cond_4
    const-string v0, "serial_number"

    invoke-direct {p0, v0}, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 213
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 215
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 216
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->mNumPhones:I

    if-ge v0, v1, :cond_0

    .line 217
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/MSimTelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 216
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 220
    .end local v0           #i:I
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 221
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1f4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 222
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 198
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 200
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 201
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->updateDataState()V

    .line 202
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->mNumPhones:I

    if-ge v0, v1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v2, v2, v0

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/telephony/MSimTelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 202
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 207
    .end local v0           #i:I
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 208
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1f4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 209
    return-void
.end method

.method updateTimes()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 356
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    div-long v0, v4, v6

    .line 357
    .local v0, at:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    div-long v2, v4, v6

    .line 359
    .local v2, ut:J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 360
    const-wide/16 v2, 0x1

    .line 363
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->mUptime:Landroid/preference/Preference;

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/deviceinfo/msim/MSimStatus;->convert(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 364
    return-void
.end method
