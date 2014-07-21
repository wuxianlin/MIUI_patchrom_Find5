.class public final Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;
.super Landroid/preference/Preference;
.source "BluetoothDevicePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice$Callback;


# static fields
.field private static sDimAlpha:I


# instance fields
.field private final mBluetoothReceiver:Landroid/content/BroadcastReceiver;

.field private final mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

.field private mContext:Landroid/content/Context;

.field private mDisconnectDialog:Landroid/app/AlertDialog;

.field private mOnSettingsClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/high16 v0, -0x8000

    sput v0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->sDimAlpha:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;)V
    .locals 5
    .parameter "context"
    .parameter "cachedDevice"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 330
    new-instance v2, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference$2;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference$2;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;)V

    iput-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    .line 68
    sget v2, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->sDimAlpha:I

    const/high16 v3, -0x8000

    if-ne v2, v3, :cond_0

    .line 69
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 70
    .local v0, outValue:Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010033

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 71
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    const/high16 v3, 0x437f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->sDimAlpha:I

    .line 74
    .end local v0           #outValue:Landroid/util/TypedValue;
    :cond_0
    iput-object p2, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    .line 76
    invoke-virtual {p2}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_1

    .line 77
    const-string v2, "user"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 78
    .local v1, um:Landroid/os/UserManager;
    const-string v2, "no_config_bluetooth"

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 79
    const v2, 0x7f040089

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->setWidgetLayoutResource(I)V

    .line 83
    .end local v1           #um:Landroid/os/UserManager;
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2, p0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->registerCallback(Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 85
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->onDeviceAttributesChanged()V

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;)Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private askDisconnect()V
    .locals 9

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mContext:Landroid/content/Context;

    .line 199
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v5}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    .line 200
    .local v3, name:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 201
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mContext:Landroid/content/Context;

    const v6, 0x7f080485

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 203
    :cond_0
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mContext:Landroid/content/Context;

    const v6, 0x7f080478

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 204
    .local v2, message:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mContext:Landroid/content/Context;

    const v6, 0x7f080477

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 206
    .local v4, title:Ljava/lang/String;
    new-instance v1, Landroid/content/IntentFilter;

    const-string v5, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v1, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 207
    .local v1, filter:Landroid/content/IntentFilter;
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 209
    new-instance v0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference$1;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;)V

    .line 223
    .local v0, disconnectListener:Landroid/content/DialogInterface$OnClickListener;
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-static {v5, v6, v0, v4, v7}, Lcom/android/settings_ex/bluetooth/Utils;->showDisconnectDialog(Landroid/content/Context;Landroid/app/AlertDialog;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;

    .line 225
    return-void
.end method

.method private getBtClassDrawable()I
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 289
    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v6}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->getBtClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    .line 290
    .local v0, btClass:Landroid/bluetooth/BluetoothClass;
    if-eqz v0, :cond_1

    .line 291
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 311
    :goto_0
    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v6}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object v3

    .line 312
    .local v3, profiles:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;

    .line 313
    .local v2, profile:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;
    invoke-interface {v2, v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;->getDrawableResource(Landroid/bluetooth/BluetoothClass;)I

    move-result v4

    .line 314
    .local v4, resId:I
    if-eqz v4, :cond_0

    .line 327
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #profile:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;
    .end local v3           #profiles:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;>;"
    .end local v4           #resId:I
    :goto_1
    return v4

    .line 293
    :sswitch_0
    const v4, 0x7f020064

    goto :goto_1

    .line 296
    :sswitch_1
    const v4, 0x7f02005e

    goto :goto_1

    .line 299
    :sswitch_2
    invoke-static {v0}, Lcom/android/settings_ex/bluetooth/HidProfile;->getHidClassDrawable(Landroid/bluetooth/BluetoothClass;)I

    move-result v4

    goto :goto_1

    .line 302
    :sswitch_3
    const v4, 0x7f020062

    goto :goto_1

    .line 308
    :cond_1
    const-string v6, "BluetoothDevicePreference"

    const-string v7, "mBtClass is null"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 318
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #profiles:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;>;"
    :cond_2
    if-eqz v0, :cond_4

    .line 319
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 320
    const v4, 0x7f020060

    goto :goto_1

    .line 323
    :cond_3
    invoke-virtual {v0, v5}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 324
    const v4, 0x7f020061

    goto :goto_1

    :cond_4
    move v4, v5

    .line 327
    goto :goto_1

    .line 291
    nop

    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_0
        0x200 -> :sswitch_1
        0x500 -> :sswitch_2
        0x600 -> :sswitch_3
    .end sparse-switch
.end method

.method private getConnectionSummary()I
    .locals 8

    .prologue
    .line 235
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    .line 237
    .local v1, cachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;
    const/4 v6, 0x0

    .line 238
    .local v6, profileConnected:Z
    const/4 v0, 0x0

    .line 239
    .local v0, a2dpNotConnected:Z
    const/4 v3, 0x0

    .line 241
    .local v3, headsetNotConnected:Z
    invoke-virtual {v1}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;

    .line 242
    .local v5, profile:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;
    invoke-virtual {v1, v5}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->getProfileConnectionState(Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;)I

    move-result v2

    .line 244
    .local v2, connectionStatus:I
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 254
    :pswitch_0
    invoke-interface {v5}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;->isProfileReady()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 255
    instance-of v7, v5, Lcom/android/settings_ex/bluetooth/A2dpProfile;

    if-eqz v7, :cond_1

    .line 256
    const/4 v0, 0x1

    goto :goto_0

    .line 247
    :pswitch_1
    invoke-static {v2}, Lcom/android/settings_ex/bluetooth/Utils;->getConnectionStateSummary(I)I

    move-result v7

    .line 284
    .end local v2           #connectionStatus:I
    .end local v5           #profile:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;
    :goto_1
    return v7

    .line 250
    .restart local v2       #connectionStatus:I
    .restart local v5       #profile:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;
    :pswitch_2
    const/4 v6, 0x1

    .line 251
    goto :goto_0

    .line 257
    :cond_1
    instance-of v7, v5, Lcom/android/settings_ex/bluetooth/HeadsetProfile;

    if-eqz v7, :cond_0

    .line 258
    const/4 v3, 0x1

    goto :goto_0

    .line 265
    .end local v2           #connectionStatus:I
    .end local v5           #profile:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;
    :cond_2
    if-eqz v6, :cond_6

    .line 266
    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    .line 267
    const v7, 0x7f08047f

    goto :goto_1

    .line 268
    :cond_3
    if-eqz v0, :cond_4

    .line 269
    const v7, 0x7f08047d

    goto :goto_1

    .line 270
    :cond_4
    if-eqz v3, :cond_5

    .line 271
    const v7, 0x7f08047c

    goto :goto_1

    .line 273
    :cond_5
    const v7, 0x7f08047b

    goto :goto_1

    .line 277
    :cond_6
    invoke-virtual {v1}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v7

    packed-switch v7, :pswitch_data_1

    .line 284
    const/4 v7, 0x0

    goto :goto_1

    .line 279
    :pswitch_3
    const v7, 0x7f080484

    goto :goto_1

    .line 244
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 277
    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_3
    .end packed-switch
.end method

.method private pair()V
    .locals 3

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->startPairing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f08058f

    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/bluetooth/Utils;->showError(Landroid/content/Context;Ljava/lang/String;I)V

    .line 232
    :cond_0
    return-void
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 2
    .parameter "another"

    .prologue
    .line 175
    instance-of v0, p1, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;

    if-nez v0, :cond_0

    .line 177
    invoke-super {p0, p1}, Landroid/preference/Preference;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    .line 180
    .end local p1
    :goto_0
    return v0

    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    check-cast p1, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;

    .end local p1
    iget-object v1, p1, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->compareTo(Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    check-cast p1, Landroid/preference/Preference;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 161
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;

    if-nez v0, :cond_1

    .line 162
    :cond_0
    const/4 v0, 0x0

    .line 164
    .end local p1
    :goto_0
    return v0

    .restart local p1
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    check-cast p1, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;

    .end local p1
    iget-object v1, p1, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method getCachedDevice()Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->hashCode()I

    move-result v0

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 136
    const-string v1, "bt_checkbox"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 137
    const-string v1, "bt_checkbox"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->setDependency(Ljava/lang/String;)V

    .line 140
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    .line 141
    const v1, 0x7f0d0163

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 142
    .local v0, deviceDetails:Landroid/widget/ImageView;
    if-eqz v0, :cond_1

    .line 143
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 145
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0xff

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 149
    .end local v0           #deviceDetails:Landroid/widget/ImageView;
    :cond_1
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 150
    return-void

    .line 145
    .restart local v0       #deviceDetails:Landroid/widget/ImageView;
    :cond_2
    sget v1, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->sDimAlpha:I

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mOnSettingsClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mOnSettingsClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 157
    :cond_0
    return-void
.end method

.method onClicked()V
    .locals 3

    .prologue
    .line 185
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    .line 187
    .local v0, bondState:I
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 188
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->askDisconnect()V

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    .line 190
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->connect(Z)V

    goto :goto_0

    .line 191
    :cond_2
    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 192
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->pair()V

    goto :goto_0
.end method

.method public onDeviceAttributesChanged()V
    .locals 3

    .prologue
    .line 112
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 114
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->getConnectionSummary()I

    move-result v1

    .line 115
    .local v1, summaryResId:I
    if-eqz v1, :cond_1

    .line 116
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->setSummary(I)V

    .line 121
    :goto_0
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->getBtClassDrawable()I

    move-result v0

    .line 122
    .local v0, iconResId:I
    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->setIcon(I)V

    .line 127
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->setEnabled(Z)V

    .line 130
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->notifyHierarchyChanged()V

    .line 131
    return-void

    .line 118
    .end local v0           #iconResId:I
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 127
    .restart local v0       #iconResId:I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected onPrepareForRemoval()V
    .locals 1

    .prologue
    .line 98
    invoke-super {p0}, Landroid/preference/Preference;->onPrepareForRemoval()V

    .line 99
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 100
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;

    .line 104
    :cond_0
    return-void
.end method

.method public setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mOnSettingsClickListener:Landroid/view/View$OnClickListener;

    .line 94
    return-void
.end method
