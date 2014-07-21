.class public Lcom/android/settings/ScreenColorSettings;
.super Landroid/app/Activity;
.source "ScreenColorSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ScreenColorSettings$1;,
        Lcom/android/settings/ScreenColorSettings$PPServiceConnection;,
        Lcom/android/settings/ScreenColorSettings$ColorModeAdaper;
    }
.end annotation


# instance fields
.field private mMode:I

.field private mPPService:Lcom/android/display/IPPService;

.field private mPPServiceConn:Lcom/android/settings/ScreenColorSettings$PPServiceConnection;

.field private mSharedPreference:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/ScreenColorSettings;->mMode:I

    .line 93
    iput-object v1, p0, Lcom/android/settings/ScreenColorSettings;->mPPService:Lcom/android/display/IPPService;

    .line 94
    iput-object v1, p0, Lcom/android/settings/ScreenColorSettings;->mPPServiceConn:Lcom/android/settings/ScreenColorSettings$PPServiceConnection;

    .line 179
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ScreenColorSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Lcom/android/settings/ScreenColorSettings;->mMode:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/ScreenColorSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/settings/ScreenColorSettings;->setScreenColorMode(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/ScreenColorSettings;)Lcom/android/display/IPPService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/ScreenColorSettings;->mPPService:Lcom/android/display/IPPService;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings/ScreenColorSettings;Lcom/android/display/IPPService;)Lcom/android/display/IPPService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/settings/ScreenColorSettings;->mPPService:Lcom/android/display/IPPService;

    return-object p1
.end method

.method private initPPService()V
    .locals 3

    .prologue
    .line 174
    new-instance v0, Lcom/android/settings/ScreenColorSettings$PPServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/ScreenColorSettings$PPServiceConnection;-><init>(Lcom/android/settings/ScreenColorSettings;Lcom/android/settings/ScreenColorSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/ScreenColorSettings;->mPPServiceConn:Lcom/android/settings/ScreenColorSettings$PPServiceConnection;

    .line 175
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/display/IPPService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 176
    iget-object v1, p0, Lcom/android/settings/ScreenColorSettings;->mPPServiceConn:Lcom/android/settings/ScreenColorSettings$PPServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settings/ScreenColorSettings;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 177
    return-void
.end method

.method private saveModeValue(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 258
    iput p1, p0, Lcom/android/settings/ScreenColorSettings;->mMode:I

    .line 259
    iget-object v1, p0, Lcom/android/settings/ScreenColorSettings;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 260
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "mode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 261
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 262
    return-void
.end method

.method private setScreenColorMode(I)V
    .locals 8
    .parameter "mode"

    .prologue
    const/16 v7, 0xb4

    .line 211
    const/4 v1, 0x0

    .line 212
    .local v1, hue:I
    const/4 v3, 0x0

    .line 213
    .local v3, saturation:I
    const/4 v2, 0x0

    .line 214
    .local v2, intensity:I
    const/4 v0, 0x0

    .line 215
    .local v0, contrast:I
    packed-switch p1, :pswitch_data_0

    .line 237
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/settings/ScreenColorSettings;->saveModeValue(I)V

    .line 238
    invoke-direct {p0, v1, v3, v2, v0}, Lcom/android/settings/ScreenColorSettings;->updateHSCIValue(IIII)V

    .line 239
    return-void

    .line 217
    :pswitch_0
    const/16 v1, 0xb4

    .line 218
    const/16 v3, 0xb4

    .line 219
    const/16 v2, 0xff

    .line 220
    const/16 v0, 0xb4

    .line 221
    goto :goto_0

    .line 223
    :pswitch_1
    const/16 v1, 0xb4

    .line 224
    const/16 v3, 0xd2

    .line 225
    const/16 v2, 0xff

    .line 226
    const/16 v0, 0xb4

    .line 227
    goto :goto_0

    .line 229
    :pswitch_2
    iget-object v4, p0, Lcom/android/settings/ScreenColorSettings;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v5, "hue"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 230
    iget-object v4, p0, Lcom/android/settings/ScreenColorSettings;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v5, "saturation"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 231
    iget-object v4, p0, Lcom/android/settings/ScreenColorSettings;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v5, "intensity"

    const/16 v6, 0xff

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 232
    iget-object v4, p0, Lcom/android/settings/ScreenColorSettings;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v5, "contrast"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 233
    goto :goto_0

    .line 215
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateHSCIValue(IIII)V
    .locals 3
    .parameter "hue"
    .parameter "saturation"
    .parameter "intensity"
    .parameter "contrast"

    .prologue
    .line 243
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/ScreenColorSettings;->mPPService:Lcom/android/display/IPPService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/ScreenColorSettings;->mPPService:Lcom/android/display/IPPService;

    invoke-interface {v1}, Lcom/android/display/IPPService;->getPPStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    iget-object v1, p0, Lcom/android/settings/ScreenColorSettings;->mPPService:Lcom/android/display/IPPService;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/display/IPPService;->updateHSIC(IIII)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 246
    :catch_0
    move-exception v0

    .line 247
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "ScreenColorSettings"

    const-string v2, "updateHSIC exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 99
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 100
    invoke-direct {p0}, Lcom/android/settings/ScreenColorSettings;->initPPService()V

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/ScreenColorSettings;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/Window;->requestFeature(I)Z

    .line 102
    const v3, 0x7f0400c3

    invoke-virtual {p0, v3}, Lcom/android/settings/ScreenColorSettings;->setContentView(I)V

    .line 104
    const v3, 0x7f0d01f1

    invoke-virtual {p0, v3}, Lcom/android/settings/ScreenColorSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 105
    .local v2, listView:Landroid/widget/ListView;
    const v3, 0x7f0a0027

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 106
    const-string v3, "screencolor_preview_name"

    invoke-virtual {p0, v3, v5}, Lcom/android/settings/ScreenColorSettings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/ScreenColorSettings;->mSharedPreference:Landroid/content/SharedPreferences;

    .line 107
    iget-object v3, p0, Lcom/android/settings/ScreenColorSettings;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v4, "mode"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/ScreenColorSettings;->mMode:I

    .line 108
    iget v3, p0, Lcom/android/settings/ScreenColorSettings;->mMode:I

    invoke-direct {p0, v3}, Lcom/android/settings/ScreenColorSettings;->setScreenColorMode(I)V

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/ScreenColorSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0063

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, list:[Ljava/lang/String;
    new-instance v0, Lcom/android/settings/ScreenColorSettings$ColorModeAdaper;

    const v3, 0x7f0400c2

    invoke-direct {v0, p0, p0, v3, v1}, Lcom/android/settings/ScreenColorSettings$ColorModeAdaper;-><init>(Lcom/android/settings/ScreenColorSettings;Landroid/content/Context;I[Ljava/lang/String;)V

    .line 112
    .local v0, adapter:Lcom/android/settings/ScreenColorSettings$ColorModeAdaper;
    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 113
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 253
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 254
    iget-object v0, p0, Lcom/android/settings/ScreenColorSettings;->mPPServiceConn:Lcom/android/settings/ScreenColorSettings$PPServiceConnection;

    invoke-virtual {p0, v0}, Lcom/android/settings/ScreenColorSettings;->unbindService(Landroid/content/ServiceConnection;)V

    .line 255
    return-void
.end method
