.class Lcom/android/settings_ex/wifi/AccessPoint;
.super Landroid/preference/Preference;
.source "AccessPoint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/wifi/AccessPoint$1;,
        Lcom/android/settings_ex/wifi/AccessPoint$PskType;
    }
.end annotation


# static fields
.field private static final STATE_NONE:[I

.field private static final STATE_SECURED:[I


# instance fields
.field bssid:Ljava/lang/String;

.field frequency:I

.field isIBSS:Z

.field private mConfig:Landroid/net/wifi/WifiConfiguration;

.field private mInfo:Landroid/net/wifi/WifiInfo;

.field private mRssi:I

.field mScanResult:Landroid/net/wifi/ScanResult;

.field private mState:Landroid/net/NetworkInfo$DetailedState;

.field networkId:I

.field pskType:Lcom/android/settings_ex/wifi/AccessPoint$PskType;

.field security:I

.field ssid:Ljava/lang/String;

.field wpsAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 42
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x7f010016

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings_ex/wifi/AccessPoint;->STATE_SECURED:[I

    .line 45
    new-array v0, v2, [I

    sput-object v0, Lcom/android/settings_ex/wifi/AccessPoint;->STATE_NONE:[I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V
    .locals 1
    .parameter "context"
    .parameter "result"

    .prologue
    const/4 v0, 0x0

    .line 153
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 64
    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->wpsAvailable:Z

    .line 65
    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->isIBSS:Z

    .line 68
    sget-object v0, Lcom/android/settings_ex/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/android/settings_ex/wifi/AccessPoint$PskType;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->pskType:Lcom/android/settings_ex/wifi/AccessPoint$PskType;

    .line 154
    const v0, 0x7f0400a8

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/AccessPoint;->setWidgetLayoutResource(I)V

    .line 155
    invoke-direct {p0, p2}, Lcom/android/settings_ex/wifi/AccessPoint;->loadResult(Landroid/net/wifi/ScanResult;)V

    .line 156
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/AccessPoint;->refresh()V

    .line 157
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .parameter "context"
    .parameter "config"

    .prologue
    const/4 v0, 0x0

    .line 146
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 64
    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->wpsAvailable:Z

    .line 65
    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->isIBSS:Z

    .line 68
    sget-object v0, Lcom/android/settings_ex/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/android/settings_ex/wifi/AccessPoint$PskType;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->pskType:Lcom/android/settings_ex/wifi/AccessPoint$PskType;

    .line 147
    const v0, 0x7f0400a8

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/AccessPoint;->setWidgetLayoutResource(I)V

    .line 148
    invoke-direct {p0, p2}, Lcom/android/settings_ex/wifi/AccessPoint;->loadConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 149
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/AccessPoint;->refresh()V

    .line 150
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2
    .parameter "context"
    .parameter "savedState"

    .prologue
    const/4 v0, 0x0

    .line 160
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 64
    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->wpsAvailable:Z

    .line 65
    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->isIBSS:Z

    .line 68
    sget-object v0, Lcom/android/settings_ex/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/android/settings_ex/wifi/AccessPoint$PskType;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->pskType:Lcom/android/settings_ex/wifi/AccessPoint$PskType;

    .line 161
    const v0, 0x7f0400a8

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/AccessPoint;->setWidgetLayoutResource(I)V

    .line 163
    const-string v0, "key_config"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 164
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/AccessPoint;->loadConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 167
    :cond_0
    const-string v0, "key_scanresult"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    .line 168
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/AccessPoint;->loadResult(Landroid/net/wifi/ScanResult;)V

    .line 171
    :cond_1
    const-string v0, "key_wifiinfo"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiInfo;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 172
    const-string v0, "key_detailedstate"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 173
    const-string v0, "key_detailedstate"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkInfo$DetailedState;->valueOf(Ljava/lang/String;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    .line 175
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 176
    return-void
.end method

.method static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "string"

    .prologue
    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPskType(Landroid/net/wifi/ScanResult;)Lcom/android/settings_ex/wifi/AccessPoint$PskType;
    .locals 5
    .parameter "result"

    .prologue
    .line 131
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "WPA-PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 132
    .local v0, wpa:Z
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "WPA2-PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 133
    .local v1, wpa2:Z
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 134
    sget-object v2, Lcom/android/settings_ex/wifi/AccessPoint$PskType;->WPA_WPA2:Lcom/android/settings_ex/wifi/AccessPoint$PskType;

    .line 141
    :goto_0
    return-object v2

    .line 135
    :cond_0
    if-eqz v1, :cond_1

    .line 136
    sget-object v2, Lcom/android/settings_ex/wifi/AccessPoint$PskType;->WPA2:Lcom/android/settings_ex/wifi/AccessPoint$PskType;

    goto :goto_0

    .line 137
    :cond_1
    if-eqz v0, :cond_2

    .line 138
    sget-object v2, Lcom/android/settings_ex/wifi/AccessPoint$PskType;->WPA:Lcom/android/settings_ex/wifi/AccessPoint$PskType;

    goto :goto_0

    .line 140
    :cond_2
    const-string v2, "Settings.AccessPoint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received abnormal flag string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    sget-object v2, Lcom/android/settings_ex/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/android/settings_ex/wifi/AccessPoint$PskType;

    goto :goto_0
.end method

.method private static getSecurity(Landroid/net/wifi/ScanResult;)I
    .locals 2
    .parameter "result"

    .prologue
    .line 89
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    const/4 v0, 0x1

    .line 96
    :goto_0
    return v0

    .line 91
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    const/4 v0, 0x2

    goto :goto_0

    .line 93
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "EAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    const/4 v0, 0x3

    goto :goto_0

    .line 96
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getSecurity(Landroid/net/wifi/WifiConfiguration;)I
    .locals 5
    .parameter "config"

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 78
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    .line 85
    :cond_0
    :goto_0
    return v0

    .line 81
    :cond_1
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v0, v3

    .line 83
    goto :goto_0

    .line 85
    :cond_3
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private loadConfig(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .parameter "config"

    .prologue
    .line 188
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    .line 189
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->bssid:Ljava/lang/String;

    .line 190
    invoke-static {p1}, Lcom/android/settings_ex/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    .line 191
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    .line 192
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mRssi:I

    .line 193
    iget-boolean v0, p1, Landroid/net/wifi/WifiConfiguration;->isIBSS:Z

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->isIBSS:Z

    .line 194
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->frequency:I

    iput v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->frequency:I

    .line 195
    iput-object p1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 196
    return-void

    .line 188
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings_ex/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private loadResult(Landroid/net/wifi/ScanResult;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 199
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    .line 200
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->bssid:Ljava/lang/String;

    .line 201
    invoke-static {p1}, Lcom/android/settings_ex/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    .line 202
    iget v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WPS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->wpsAvailable:Z

    .line 203
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "[IBSS]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->isIBSS:Z

    .line 204
    iget v0, p1, Landroid/net/wifi/ScanResult;->frequency:I

    iput v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->frequency:I

    .line 205
    iget v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 206
    invoke-static {p1}, Lcom/android/settings_ex/wifi/AccessPoint;->getPskType(Landroid/net/wifi/ScanResult;)Lcom/android/settings_ex/wifi/AccessPoint$PskType;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->pskType:Lcom/android/settings_ex/wifi/AccessPoint$PskType;

    .line 207
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    .line 208
    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mRssi:I

    .line 209
    iput-object p1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    .line 210
    return-void

    .line 202
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private refresh()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 345
    iget-object v3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/wifi/AccessPoint;->setTitle(Ljava/lang/CharSequence;)V

    .line 347
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AccessPoint;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 348
    .local v0, context:Landroid/content/Context;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 350
    .local v2, summary:Ljava/lang/StringBuilder;
    iget-boolean v3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->isIBSS:Z

    if-eqz v3, :cond_0

    .line 351
    const v3, 0x7f0803f7

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->status:I

    if-ne v3, v5, :cond_2

    .line 354
    iget-object v3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    packed-switch v3, :pswitch_data_0

    .line 395
    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    .line 396
    return-void

    .line 356
    :pswitch_0
    const v3, 0x7f08062e

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 360
    :pswitch_1
    const v3, 0x7f08062d

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 363
    :pswitch_2
    const v3, 0x7f08005d

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 366
    :pswitch_3
    const v3, 0x7f08062c

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 368
    :cond_2
    iget v3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mRssi:I

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_3

    .line 369
    const v3, 0x7f08062f

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 370
    :cond_3
    iget-object v3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    if-eqz v3, :cond_4

    .line 371
    iget-object v3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    invoke-static {v0, v3}, Lcom/android/settings_ex/wifi/Summary;->get(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 373
    :cond_4
    iget-object v3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v3, :cond_5

    .line 374
    const v3, 0x7f08062b

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    :cond_5
    iget v3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    if-eqz v3, :cond_6

    .line 379
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_7

    .line 380
    const v3, 0x7f080632

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 384
    .local v1, securityStrFormat:Ljava/lang/String;
    :goto_1
    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/wifi/AccessPoint;->getSecurityString(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    .end local v1           #securityStrFormat:Ljava/lang/String;
    :cond_6
    iget-object v3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->wpsAvailable:Z

    if-eqz v3, :cond_1

    .line 388
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_8

    .line 389
    const v3, 0x7f080630

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 382
    :cond_7
    const v3, 0x7f080633

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #securityStrFormat:Ljava/lang/String;
    goto :goto_1

    .line 391
    .end local v1           #securityStrFormat:Ljava/lang/String;
    :cond_8
    const v3, 0x7f080631

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 354
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "string"

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 331
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 332
    .local v0, length:I
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 334
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 336
    .end local p0
    :cond_0
    return-object p0
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 5
    .parameter "preference"

    .prologue
    const v4, 0x7fffffff

    const/4 v0, 0x1

    const/4 v2, -0x1

    .line 229
    instance-of v3, p1, Lcom/android/settings_ex/wifi/AccessPoint;

    if-nez v3, :cond_1

    .line 253
    :cond_0
    :goto_0
    return v0

    :cond_1
    move-object v1, p1

    .line 232
    check-cast v1, Lcom/android/settings_ex/wifi/AccessPoint;

    .line 234
    .local v1, other:Lcom/android/settings_ex/wifi/AccessPoint;
    iget-object v3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v3, :cond_2

    iget-object v3, v1, Lcom/android/settings_ex/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-nez v3, :cond_2

    move v0, v2

    goto :goto_0

    .line 235
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-nez v3, :cond_3

    iget-object v3, v1, Lcom/android/settings_ex/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-nez v3, :cond_0

    .line 238
    :cond_3
    iget v3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mRssi:I

    if-eq v3, v4, :cond_4

    iget v3, v1, Lcom/android/settings_ex/wifi/AccessPoint;->mRssi:I

    if-ne v3, v4, :cond_4

    move v0, v2

    goto :goto_0

    .line 239
    :cond_4
    iget v3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mRssi:I

    if-ne v3, v4, :cond_5

    iget v3, v1, Lcom/android/settings_ex/wifi/AccessPoint;->mRssi:I

    if-ne v3, v4, :cond_0

    .line 242
    :cond_5
    iget v3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    if-eq v3, v2, :cond_6

    iget v3, v1, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    if-ne v3, v2, :cond_6

    move v0, v2

    .line 243
    goto :goto_0

    .line 244
    :cond_6
    iget v3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    if-ne v3, v2, :cond_7

    iget v3, v1, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    if-ne v3, v2, :cond_0

    .line 248
    :cond_7
    iget v2, v1, Lcom/android/settings_ex/wifi/AccessPoint;->mRssi:I

    iget v3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mRssi:I

    invoke-static {v2, v3}, Landroid/net/wifi/WifiManager;->compareSignalLevel(II)I

    move-result v0

    .line 249
    .local v0, difference:I
    if-nez v0, :cond_0

    .line 253
    iget-object v2, p0, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    check-cast p1, Landroid/preference/Preference;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/wifi/AccessPoint;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "other"

    .prologue
    const/4 v0, 0x0

    .line 258
    instance-of v1, p1, Lcom/android/settings_ex/wifi/AccessPoint;

    if-nez v1, :cond_1

    .line 259
    .end local p1
    :cond_0
    :goto_0
    return v0

    .restart local p1
    :cond_1
    check-cast p1, Lcom/android/settings_ex/wifi/AccessPoint;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/wifi/AccessPoint;->compareTo(Landroid/preference/Preference;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected generateOpenNetworkConfig()V
    .locals 2

    .prologue
    .line 404
    iget v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    if-eqz v0, :cond_0

    .line 405
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1

    .line 411
    :goto_0
    return-void

    .line 408
    :cond_1
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 409
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings_ex/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 410
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_0
.end method

.method getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method getInfo()Landroid/net/wifi/WifiInfo;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method getLevel()I
    .locals 2

    .prologue
    .line 312
    iget v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mRssi:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 313
    const/4 v0, -0x1

    .line 315
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mRssi:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    goto :goto_0
.end method

.method public getSecurityString(Z)Ljava/lang/String;
    .locals 3
    .parameter "concise"

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AccessPoint;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 101
    .local v0, context:Landroid/content/Context;
    iget v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    packed-switch v1, :pswitch_data_0

    .line 126
    if-eqz p1, :cond_6

    const-string v1, ""

    :goto_0
    return-object v1

    .line 103
    :pswitch_0
    if-eqz p1, :cond_0

    const v1, 0x7f080639

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const v1, 0x7f080640

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 106
    :pswitch_1
    sget-object v1, Lcom/android/settings_ex/wifi/AccessPoint$1;->$SwitchMap$com$android$settings$wifi$AccessPoint$PskType:[I

    iget-object v2, p0, Lcom/android/settings_ex/wifi/AccessPoint;->pskType:Lcom/android/settings_ex/wifi/AccessPoint$PskType;

    invoke-virtual {v2}, Lcom/android/settings_ex/wifi/AccessPoint$PskType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 118
    if-eqz p1, :cond_4

    const v1, 0x7f080638

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 108
    :pswitch_2
    if-eqz p1, :cond_1

    const v1, 0x7f080635

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const v1, 0x7f08063c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 111
    :pswitch_3
    if-eqz p1, :cond_2

    const v1, 0x7f080636

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const v1, 0x7f08063d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 114
    :pswitch_4
    if-eqz p1, :cond_3

    const v1, 0x7f080637

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    const v1, 0x7f08063e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 118
    :cond_4
    const v1, 0x7f08063f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 122
    :pswitch_5
    if-eqz p1, :cond_5

    const v1, 0x7f080634

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_5
    const v1, 0x7f08063b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 126
    :cond_6
    const v1, 0x7f08063a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 101
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 106
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method getState()Landroid/net/NetworkInfo$DetailedState;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 264
    const/4 v0, 0x0

    .line 265
    .local v0, result:I
    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0xd

    add-int/2addr v0, v1

    .line 266
    :cond_0
    iget v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mRssi:I

    mul-int/lit8 v1, v1, 0x13

    add-int/2addr v0, v1

    .line 267
    iget v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    mul-int/lit8 v1, v1, 0x17

    add-int/2addr v0, v1

    .line 268
    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1d

    add-int/2addr v0, v1

    .line 269
    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 214
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 215
    const v1, 0x7f0d01a9

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 216
    .local v0, signal:Landroid/widget/ImageView;
    iget v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mRssi:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    .line 217
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 225
    :goto_0
    return-void

    .line 219
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AccessPoint;->getLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 220
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AccessPoint;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    new-array v2, v5, [I

    const v3, 0x7f010039

    aput v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 222
    iget v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/settings_ex/wifi/AccessPoint;->STATE_SECURED:[I

    :goto_1
    invoke-virtual {v0, v1, v5}, Landroid/widget/ImageView;->setImageState([IZ)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/settings_ex/wifi/AccessPoint;->STATE_NONE:[I

    goto :goto_1
.end method

.method public saveWifiState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedState"

    .prologue
    .line 179
    const-string v0, "key_config"

    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 180
    const-string v0, "key_scanresult"

    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 181
    const-string v0, "key_wifiinfo"

    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 182
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    if-eqz v0, :cond_0

    .line 183
    const-string v0, "key_detailedstate"

    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :cond_0
    return-void
.end method

.method update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 4
    .parameter "info"
    .parameter "state"

    .prologue
    const/4 v3, 0x0

    .line 292
    const/4 v0, 0x0

    .line 293
    .local v0, reorder:Z
    if-eqz p1, :cond_3

    iget v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    iget v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 295
    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 296
    :goto_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mRssi:I

    .line 297
    iput-object p1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 298
    iput-object p2, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    .line 299
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/AccessPoint;->refresh()V

    .line 306
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 307
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AccessPoint;->notifyHierarchyChanged()V

    .line 309
    :cond_1
    return-void

    .line 295
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 300
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v1, :cond_0

    .line 301
    const/4 v0, 0x1

    .line 302
    iput-object v3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 303
    iput-object v3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    .line 304
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/AccessPoint;->refresh()V

    goto :goto_1
.end method

.method update(Landroid/net/wifi/ScanResult;)Z
    .locals 3
    .parameter "result"

    .prologue
    .line 273
    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v2, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    invoke-static {p1}, Lcom/android/settings_ex/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 274
    iget v1, p1, Landroid/net/wifi/ScanResult;->level:I

    iget v2, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mRssi:I

    invoke-static {v1, v2}, Landroid/net/wifi/WifiManager;->compareSignalLevel(II)I

    move-result v1

    if-lez v1, :cond_0

    .line 275
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AccessPoint;->getLevel()I

    move-result v0

    .line 276
    .local v0, oldLevel:I
    iget v1, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mRssi:I

    .line 277
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AccessPoint;->getLevel()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 278
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AccessPoint;->notifyChanged()V

    .line 282
    .end local v0           #oldLevel:I
    :cond_0
    iget v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 283
    invoke-static {p1}, Lcom/android/settings_ex/wifi/AccessPoint;->getPskType(Landroid/net/wifi/ScanResult;)Lcom/android/settings_ex/wifi/AccessPoint$PskType;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->pskType:Lcom/android/settings_ex/wifi/AccessPoint$PskType;

    .line 285
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/AccessPoint;->refresh()V

    .line 286
    const/4 v1, 0x1

    .line 288
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
