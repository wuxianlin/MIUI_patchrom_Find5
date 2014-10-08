.class public final Landroid/app/ConnectionSettings;
.super Ljava/lang/Object;
.source "ConnectionSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final ACTION_MODIFY_NETWORK_MODE:Ljava/lang/String; = "com.android.internal.telephony.MODIFY_NETWORK_MODE"

.field private static final CM_MODE_2G:I = 0x0

.field private static final CM_MODE_3G:I = 0x1

.field private static final CM_MODE_BOTH:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/ConnectionSettings;",
            ">;"
        }
    .end annotation
.end field

.field private static final EXTRA_NETWORK_MODE:Ljava/lang/String; = "networkMode"

.field public static final PROFILE_CONNECTION_2G3G:I = 0x9

.field public static final PROFILE_CONNECTION_BLUETOOTH:I = 0x7

.field public static final PROFILE_CONNECTION_GPS:I = 0x4

.field public static final PROFILE_CONNECTION_MOBILEDATA:I = 0x0

.field public static final PROFILE_CONNECTION_NFC:I = 0x8

.field public static final PROFILE_CONNECTION_SYNC:I = 0x5

.field public static final PROFILE_CONNECTION_WIFI:I = 0x1

.field public static final PROFILE_CONNECTION_WIFIAP:I = 0x2

.field public static final PROFILE_CONNECTION_WIMAX:I = 0x3


# instance fields
.field private mConnectionId:I

.field private mDirty:Z

.field private mOverride:Z

.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Landroid/app/ConnectionSettings$1;

    invoke-direct {v0}, Landroid/app/ConnectionSettings$1;-><init>()V

    sput-object v0, Landroid/app/ConnectionSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "connectionId"

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, v0, v0}, Landroid/app/ConnectionSettings;-><init>(IIZ)V

    .line 67
    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 1
    .parameter "connectionId"
    .parameter "value"
    .parameter "override"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput p1, p0, Landroid/app/ConnectionSettings;->mConnectionId:I

    .line 71
    iput p2, p0, Landroid/app/ConnectionSettings;->mValue:I

    .line 72
    iput-boolean p3, p0, Landroid/app/ConnectionSettings;->mOverride:Z

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ConnectionSettings;->mDirty:Z

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "parcel"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p0, p1}, Landroid/app/ConnectionSettings;->readFromParcel(Landroid/os/Parcel;)V

    .line 63
    return-void
.end method

.method public static fromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Landroid/app/ConnectionSettings;
    .locals 5
    .parameter "xpp"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 218
    .local v1, event:I
    new-instance v0, Landroid/app/ConnectionSettings;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Landroid/app/ConnectionSettings;-><init>(I)V

    .line 219
    .local v0, connectionDescriptor:Landroid/app/ConnectionSettings;
    :goto_0
    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "connectionDescriptor"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 220
    :cond_0
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 221
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 222
    .local v2, name:Ljava/lang/String;
    const-string v3, "connectionId"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 223
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Landroid/app/ConnectionSettings;->mConnectionId:I

    .line 230
    .end local v2           #name:Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 224
    .restart local v2       #name:Ljava/lang/String;
    :cond_2
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 225
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Landroid/app/ConnectionSettings;->mValue:I

    goto :goto_1

    .line 226
    :cond_3
    const-string/jumbo v3, "override"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 227
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v0, Landroid/app/ConnectionSettings;->mOverride:Z

    goto :goto_1

    .line 232
    .end local v2           #name:Ljava/lang/String;
    :cond_4
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 248
    const/4 v0, 0x0

    return v0
.end method

.method public getConnectionId()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Landroid/app/ConnectionSettings;->mConnectionId:I

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Landroid/app/ConnectionSettings;->mValue:I

    return v0
.end method

.method public getXmlString(Ljava/lang/StringBuilder;Landroid/content/Context;)V
    .locals 1
    .parameter "builder"
    .parameter "context"

    .prologue
    .line 237
    const-string v0, "<connectionDescriptor>\n<connectionId>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    iget v0, p0, Landroid/app/ConnectionSettings;->mConnectionId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 239
    const-string v0, "</connectionId>\n<value>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    iget v0, p0, Landroid/app/ConnectionSettings;->mValue:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 241
    const-string v0, "</value>\n<override>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    iget-boolean v0, p0, Landroid/app/ConnectionSettings;->mOverride:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 243
    const-string v0, "</override>\n</connectionDescriptor>\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    return-void
.end method

.method public isDirty()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Landroid/app/ConnectionSettings;->mDirty:Z

    return v0
.end method

.method public isOverride()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Landroid/app/ConnectionSettings;->mOverride:Z

    return v0
.end method

.method public processOverride(Landroid/content/Context;)V
    .locals 14
    .parameter "context"

    .prologue
    .line 104
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 105
    .local v1, bta:Landroid/bluetooth/BluetoothAdapter;
    const-string v12, "location"

    invoke-virtual {p1, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/location/LocationManager;

    .line 106
    .local v7, lm:Landroid/location/LocationManager;
    const-string/jumbo v12, "wifi"

    invoke-virtual {p1, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/wifi/WifiManager;

    .line 107
    .local v11, wm:Landroid/net/wifi/WifiManager;
    const-string v12, "connectivity"

    invoke-virtual {p1, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 108
    .local v3, cm:Landroid/net/ConnectivityManager;
    const/4 v8, 0x0

    .line 110
    .local v8, nfcAdapter:Landroid/nfc/NfcAdapter;
    :try_start_0
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getNfcAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 115
    :goto_0
    invoke-virtual {p0}, Landroid/app/ConnectionSettings;->getValue()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1

    const/4 v5, 0x1

    .line 118
    .local v5, forcedState:Z
    :goto_1
    invoke-virtual {p0}, Landroid/app/ConnectionSettings;->getConnectionId()I

    move-result v12

    packed-switch v12, :pswitch_data_0

    .line 212
    :cond_0
    :goto_2
    :pswitch_0
    return-void

    .line 115
    .end local v5           #forcedState:Z
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 120
    .restart local v5       #forcedState:Z
    :pswitch_1
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v4

    .line 121
    .local v4, currentState:Z
    if-eq v5, v4, :cond_0

    .line 122
    invoke-virtual {v3, v5}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto :goto_2

    .line 126
    .end local v4           #currentState:Z
    :pswitch_2
    new-instance v6, Landroid/content/Intent;

    const-string v12, "com.android.internal.telephony.MODIFY_NETWORK_MODE"

    invoke-direct {v6, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 127
    .local v6, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/app/ConnectionSettings;->getValue()I

    move-result v12

    packed-switch v12, :pswitch_data_1

    goto :goto_2

    .line 129
    :pswitch_3
    const-string/jumbo v12, "networkMode"

    const/4 v13, 0x1

    invoke-virtual {v6, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 140
    :goto_3
    invoke-virtual {p1, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2

    .line 132
    :pswitch_4
    const-string/jumbo v12, "networkMode"

    const/4 v13, 0x2

    invoke-virtual {v6, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_3

    .line 135
    :pswitch_5
    const-string/jumbo v12, "networkMode"

    const/4 v13, 0x0

    invoke-virtual {v6, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_3

    .line 143
    .end local v6           #intent:Landroid/content/Intent;
    :pswitch_6
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    .line 144
    .local v2, btstate:I
    if-eqz v5, :cond_3

    const/16 v12, 0xa

    if-eq v2, v12, :cond_2

    const/16 v12, 0xd

    if-ne v2, v12, :cond_3

    .line 146
    :cond_2
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    goto :goto_2

    .line 147
    :cond_3
    if-nez v5, :cond_0

    const/16 v12, 0xc

    if-eq v2, v12, :cond_4

    const/16 v12, 0xb

    if-ne v2, v12, :cond_0

    .line 149
    :cond_4
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto :goto_2

    .line 153
    .end local v2           #btstate:I
    :pswitch_7
    const-string v12, "gps"

    invoke-virtual {v7, v12}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v4

    .line 154
    .restart local v4       #currentState:Z
    if-eq v4, v5, :cond_0

    .line 155
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "gps"

    invoke-static {v12, v13, v5}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto :goto_2

    .line 160
    .end local v4           #currentState:Z
    :pswitch_8
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v4

    .line 161
    .restart local v4       #currentState:Z
    if-eq v5, v4, :cond_0

    .line 162
    invoke-static {v5}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    goto :goto_2

    .line 166
    .end local v4           #currentState:Z
    :pswitch_9
    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v9

    .line 167
    .local v9, wifiApState:I
    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    .line 168
    .restart local v4       #currentState:Z
    if-eq v4, v5, :cond_0

    .line 170
    if-eqz v5, :cond_5

    const/16 v12, 0xc

    if-eq v9, v12, :cond_6

    :cond_5
    const/16 v12, 0xd

    if-ne v9, v12, :cond_7

    .line 172
    :cond_6
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 174
    :cond_7
    invoke-virtual {v11, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto/16 :goto_2

    .line 178
    .end local v4           #currentState:Z
    .end local v9           #wifiApState:I
    :pswitch_a
    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v10

    .line 179
    .local v10, wifiState:I
    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v4

    .line 180
    .restart local v4       #currentState:Z
    if-eq v4, v5, :cond_0

    .line 182
    if-eqz v5, :cond_8

    const/4 v12, 0x2

    if-eq v10, v12, :cond_9

    :cond_8
    const/4 v12, 0x3

    if-ne v10, v12, :cond_a

    .line 184
    :cond_9
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 186
    :cond_a
    const/4 v12, 0x0

    invoke-virtual {v11, v12, v5}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto/16 :goto_2

    .line 190
    .end local v4           #currentState:Z
    .end local v10           #wifiState:I
    :pswitch_b
    invoke-static {p1}, Landroid/net/wimax/WimaxHelper;->isWimaxSupported(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 191
    invoke-static {p1}, Landroid/net/wimax/WimaxHelper;->isWimaxEnabled(Landroid/content/Context;)Z

    move-result v4

    .line 192
    .restart local v4       #currentState:Z
    if-eq v4, v5, :cond_0

    .line 193
    invoke-static {p1, v5}, Landroid/net/wimax/WimaxHelper;->setWimaxEnabled(Landroid/content/Context;Z)Z

    goto/16 :goto_2

    .line 198
    .end local v4           #currentState:Z
    :pswitch_c
    if-eqz v8, :cond_0

    .line 199
    invoke-virtual {v8}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    .line 200
    .local v0, adapterState:I
    const/4 v12, 0x3

    if-eq v0, v12, :cond_b

    const/4 v12, 0x2

    if-ne v0, v12, :cond_c

    :cond_b
    const/4 v4, 0x1

    .line 202
    .restart local v4       #currentState:Z
    :goto_4
    if-eq v4, v5, :cond_0

    .line 203
    if-eqz v5, :cond_d

    .line 204
    invoke-virtual {v8}, Landroid/nfc/NfcAdapter;->enable()Z

    goto/16 :goto_2

    .line 200
    .end local v4           #currentState:Z
    :cond_c
    const/4 v4, 0x0

    goto :goto_4

    .line 205
    .restart local v4       #currentState:Z
    :cond_d
    if-nez v5, :cond_0

    const/4 v12, 0x4

    if-eq v0, v12, :cond_0

    .line 206
    invoke-virtual {v8}, Landroid/nfc/NfcAdapter;->disable()Z

    goto/16 :goto_2

    .line 111
    .end local v0           #adapterState:I
    .end local v4           #currentState:Z
    .end local v5           #forcedState:Z
    :catch_0
    move-exception v12

    goto/16 :goto_0

    .line 118
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_6
        :pswitch_c
        :pswitch_2
    .end packed-switch

    .line 127
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 262
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ConnectionSettings;->mConnectionId:I

    .line 263
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/app/ConnectionSettings;->mOverride:Z

    .line 264
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ConnectionSettings;->mValue:I

    .line 265
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Landroid/app/ConnectionSettings;->mDirty:Z

    .line 266
    return-void

    :cond_0
    move v0, v2

    .line 263
    goto :goto_0

    :cond_1
    move v1, v2

    .line 265
    goto :goto_1
.end method

.method public setOverride(Z)V
    .locals 1
    .parameter "override"

    .prologue
    .line 90
    iput-boolean p1, p0, Landroid/app/ConnectionSettings;->mOverride:Z

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ConnectionSettings;->mDirty:Z

    .line 92
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 85
    iput p1, p0, Landroid/app/ConnectionSettings;->mValue:I

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ConnectionSettings;->mDirty:Z

    .line 87
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 254
    iget v0, p0, Landroid/app/ConnectionSettings;->mConnectionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 255
    iget-boolean v0, p0, Landroid/app/ConnectionSettings;->mOverride:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 256
    iget v0, p0, Landroid/app/ConnectionSettings;->mValue:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 257
    iget-boolean v0, p0, Landroid/app/ConnectionSettings;->mDirty:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    return-void

    :cond_0
    move v0, v2

    .line 255
    goto :goto_0

    :cond_1
    move v1, v2

    .line 257
    goto :goto_1
.end method
