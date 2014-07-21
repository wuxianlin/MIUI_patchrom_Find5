.class public Lcom/android/settings/wifi/WifiConfigController;
.super Ljava/lang/Object;
.source "WifiConfigController.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

.field private mAccessPointSecurity:I

.field private final mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

.field private mDns1View:Landroid/widget/TextView;

.field private mDns2View:Landroid/widget/TextView;

.field private mEapAnonymousView:Landroid/widget/TextView;

.field private mEapCaCertSpinner:Landroid/widget/Spinner;

.field private mEapIdentityView:Landroid/widget/TextView;

.field private mEapMethodSpinner:Landroid/widget/Spinner;

.field private mEapUserCertSpinner:Landroid/widget/Spinner;

.field private mEdit:Z

.field private mGatewayView:Landroid/widget/TextView;

.field private mIbssFreqSpinner:Landroid/widget/Spinner;

.field private mIbssSupported:Z

.field private mIbssView:Landroid/widget/CheckBox;

.field private final mInXlSetupWizard:Z

.field private mIpAddressView:Landroid/widget/TextView;

.field private mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

.field private mIpSettingsSpinner:Landroid/widget/Spinner;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mNetworkPrefixLengthView:Landroid/widget/TextView;

.field private mPasswordView:Landroid/widget/TextView;

.field private mPhase2Adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPhase2Spinner:Landroid/widget/Spinner;

.field private mProxyExclusionListView:Landroid/widget/TextView;

.field private mProxyHostView:Landroid/widget/TextView;

.field private mProxyPortView:Landroid/widget/TextView;

.field private mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

.field private mProxySettingsSpinner:Landroid/widget/Spinner;

.field private mSecuritySpinner:Landroid/widget/Spinner;

.field private mSelectedIbssChannelPos:I

.field private mSsidView:Landroid/widget/TextView;

.field private mSupportedIbssChannels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiChannel;",
            ">;"
        }
    .end annotation
.end field

.field private final mTextViewChangedHandler:Landroid/os/Handler;

.field private final mView:Landroid/view/View;

.field private unspecifiedCert:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/settings/wifi/AccessPoint;ZZLjava/util/List;)V
    .locals 23
    .parameter "parent"
    .parameter "view"
    .parameter "accessPoint"
    .parameter "edit"
    .parameter "ibssSupported"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/wifi/WifiConfigUiBase;",
            "Landroid/view/View;",
            "Lcom/android/settings/wifi/AccessPoint;",
            "ZZ",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiChannel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p6, chans:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiChannel;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const-string v19, "unspecified"

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    .line 141
    sget-object v19, Landroid/net/wifi/WifiConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 142
    sget-object v19, Landroid/net/wifi/WifiConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 143
    new-instance v19, Landroid/net/LinkProperties;

    invoke-direct/range {v19 .. v19}, Landroid/net/LinkProperties;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    .line 153
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    .line 154
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mInXlSetupWizard:Z

    .line 156
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    .line 157
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 158
    if-nez p3, :cond_1

    const/16 v19, 0x0

    :goto_0
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    .line 160
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mEdit:Z

    .line 161
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mIbssSupported:Z

    .line 163
    new-instance v19, Landroid/os/Handler;

    invoke-direct/range {v19 .. v19}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mTextViewChangedHandler:Landroid/os/Handler;

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 165
    .local v7, context:Landroid/content/Context;
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 167
    .local v14, resources:Landroid/content/res/Resources;
    new-instance v19, Landroid/widget/ArrayAdapter;

    const v20, 0x1090008

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0c0021

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v7, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    move-object/from16 v19, v0

    const v20, 0x1090009

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 172
    new-instance v19, Landroid/widget/ArrayAdapter;

    const v20, 0x1090008

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0c0022

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v7, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;

    move-object/from16 v19, v0

    const v20, 0x1090009

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 177
    const v19, 0x7f08062a

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0d0277

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/Spinner;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0d0270

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/Spinner;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0d0289

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/CheckBox;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mIbssView:Landroid/widget/CheckBox;

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mIbssView:Landroid/widget/CheckBox;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0d028c

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/Spinner;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mIbssFreqSpinner:Landroid/widget/Spinner;

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v19, v0

    if-nez v19, :cond_7

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v19, v0

    const v20, 0x7f0805f9

    invoke-interface/range {v19 .. v20}, Lcom/android/settings/wifi/WifiConfigUiBase;->setTitle(I)V

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0d0258

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0d0259

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/Spinner;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 193
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mInXlSetupWizard:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0d025f

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0d0265

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 198
    new-instance v4, Landroid/widget/ArrayAdapter;

    const v19, 0x7f0400ef

    const v20, 0x1020014

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0c0013

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v21

    move/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v4, v7, v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 201
    .local v4, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 206
    .end local v4           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->showIpConfigFields()V

    .line 207
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->showProxyFields()V

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0d0285

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0d0286

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/CheckBox;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 212
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mIbssSupported:Z

    move/from16 v19, v0

    if-eqz v19, :cond_4

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0d0288

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 215
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mSupportedIbssChannels:Ljava/util/List;

    .line 216
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .local v9, freqSpinnerList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_0
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiChannel;

    .line 219
    .local v5, c:Landroid/net/wifi/WifiChannel;
    iget-boolean v0, v5, Landroid/net/wifi/WifiChannel;->ibssAllowed:Z

    move/from16 v19, v0

    if-eqz v19, :cond_0

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mSupportedIbssChannels:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const v20, 0x7f0803f9

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v5, Landroid/net/wifi/WifiChannel;->channel:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " ("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v5, Landroid/net/wifi/WifiChannel;->frequency:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const v20, 0x7f0803fa

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ")"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 158
    .end local v5           #c:Landroid/net/wifi/WifiChannel;
    .end local v7           #context:Landroid/content/Context;
    .end local v9           #freqSpinnerList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v14           #resources:Landroid/content/res/Resources;
    :cond_1
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->security:I

    move/from16 v19, v0

    goto/16 :goto_0

    .line 203
    .restart local v7       #context:Landroid/content/Context;
    .restart local v14       #resources:Landroid/content/res/Resources;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0d0232

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 228
    .restart local v9       #freqSpinnerList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11       #i$:Ljava/util/Iterator;
    :cond_3
    new-instance v8, Landroid/widget/ArrayAdapter;

    const v19, 0x1090008

    move/from16 v0, v19

    invoke-direct {v8, v7, v0, v9}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 230
    .local v8, freqAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v19, 0x1090009

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mIbssFreqSpinner:Landroid/widget/Spinner;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mIbssFreqSpinner:Landroid/widget/Spinner;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 235
    .end local v8           #freqAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v9           #freqSpinnerList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v11           #i$:Ljava/util/Iterator;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v19, v0

    const v20, 0x7f080648

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Lcom/android/settings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    .line 325
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v19, v0

    const v20, 0x7f08064a

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Lcom/android/settings/wifi/WifiConfigUiBase;->setCancelButton(Ljava/lang/CharSequence;)V

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/settings/wifi/WifiConfigUiBase;->getSubmitButton()Landroid/widget/Button;

    move-result-object v19

    if-eqz v19, :cond_6

    .line 327
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 329
    :cond_6
    return-void

    .line 237
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Lcom/android/settings/wifi/WifiConfigUiBase;->setTitle(Ljava/lang/CharSequence;)V

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0d0257

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    .line 241
    .local v10, group:Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/settings/wifi/AccessPoint;->isIBSS:Z

    move/from16 v19, v0

    if-eqz v19, :cond_8

    .line 242
    const v19, 0x7f0803f5

    const v20, 0x7f0803f6

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v10, v1, v2}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 243
    const v19, 0x7f0803f8

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->frequency:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const v21, 0x7f0803fa

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v10, v1, v2}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 248
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v17

    .line 249
    .local v17, state:Landroid/net/NetworkInfo$DetailedState;
    if-eqz v17, :cond_9

    .line 250
    const v19, 0x7f08061c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/settings/wifi/Summary;->get(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v10, v1, v2}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 253
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v13

    .line 254
    .local v13, level:I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v13, v0, :cond_a

    .line 255
    const v19, 0x7f0c0019

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v16

    .line 256
    .local v16, signal:[Ljava/lang/String;
    const v19, 0x7f08061b

    aget-object v20, v16, v13

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v10, v1, v2}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 259
    .end local v16           #signal:[Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/wifi/AccessPoint;->getInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v12

    .line 260
    .local v12, info:Landroid/net/wifi/WifiInfo;
    if-eqz v12, :cond_b

    invoke-virtual {v12}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_b

    .line 261
    const v19, 0x7f08061d

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "Mbps"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v10, v1, v2}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 264
    :cond_b
    const v19, 0x7f08061a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/settings/wifi/AccessPoint;->getSecurityString(Z)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v10, v1, v2}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v15, v0, Lcom/android/settings/wifi/AccessPoint;->isIBSS:Z

    .line 268
    .local v15, showAdvancedFields:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_e

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    .line 270
    .local v6, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v19, v0

    sget-object v20, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_c

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Spinner;->setSelection(I)V

    .line 272
    const/4 v15, 0x1

    .line 277
    :goto_4
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/Collection;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11       #i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 278
    .local v3, a:Ljava/net/InetAddress;
    const v19, 0x7f08061e

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v10, v1, v2}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    goto :goto_5

    .line 274
    .end local v3           #a:Ljava/net/InetAddress;
    .end local v11           #i$:Ljava/util/Iterator;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_4

    .line 282
    .restart local v11       #i$:Ljava/util/Iterator;
    :cond_d
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v19, v0

    sget-object v20, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_11

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Spinner;->setSelection(I)V

    .line 284
    const/4 v15, 0x1

    .line 297
    .end local v6           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v11           #i$:Ljava/util/Iterator;
    :cond_e
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mEdit:Z

    move/from16 v19, v0

    if-eqz v19, :cond_10

    .line 298
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->showSecurityFields()V

    .line 299
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->showIpConfigFields()V

    .line 300
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->showProxyFields()V

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0d0285

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0d0286

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/CheckBox;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 304
    if-eqz v15, :cond_10

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0d0286

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/CheckBox;

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0d0287

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 310
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mEdit:Z

    move/from16 v19, v0

    if-eqz v19, :cond_13

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v19, v0

    const v20, 0x7f080648

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Lcom/android/settings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 285
    .restart local v6       #config:Landroid/net/wifi/WifiConfiguration;
    .restart local v11       #i$:Ljava/util/Iterator;
    :cond_11
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v19, v0

    sget-object v20, Landroid/net/wifi/WifiConfiguration$ProxySettings;->PAC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_12

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0d028d

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 288
    .local v18, textView:Landroid/widget/TextView;
    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    .line 289
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const v20, 0x7f0804bb

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/net/ProxyProperties;->getPacFileUrl()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    const/4 v15, 0x1

    .line 292
    goto/16 :goto_6

    .line 293
    .end local v18           #textView:Landroid/widget/TextView;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_6

    .line 313
    .end local v6           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v11           #i$:Ljava/util/Iterator;
    :cond_13
    if-nez v17, :cond_15

    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v13, v0, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/settings/wifi/AccessPoint;->isIBSS:Z

    move/from16 v19, v0

    if-eqz v19, :cond_15

    .line 314
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v19, v0

    const v20, 0x7f080644

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Lcom/android/settings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    .line 318
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_5

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v19, v0

    const v20, 0x7f080646

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Lcom/android/settings/wifi/WifiConfigUiBase;->setForgetButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 316
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0d0276

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7
.end method

.method private addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V
    .locals 4
    .parameter "group"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 332
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v1}, Lcom/android/settings/wifi/WifiConfigUiBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400e8

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 333
    .local v0, row:Landroid/view/View;
    const v1, 0x7f0d002f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 334
    const v1, 0x7f0d003e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 336
    return-void
.end method

.method private ipAndProxyFieldsAreValid()Z
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 494
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v7}, Landroid/net/LinkProperties;->clear()V

    .line 495
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v7

    if-ne v7, v9, :cond_0

    sget-object v7, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    :goto_0
    iput-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 499
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    sget-object v10, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    if-ne v7, v10, :cond_1

    .line 500
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {p0, v7}, Lcom/android/settings/wifi/WifiConfigController;->validateIpConfigFields(Landroid/net/LinkProperties;)I

    move-result v6

    .line 501
    .local v6, result:I
    if-eqz v6, :cond_1

    move v7, v8

    .line 529
    .end local v6           #result:I
    :goto_1
    return v7

    .line 495
    :cond_0
    sget-object v7, Landroid/net/wifi/WifiConfiguration$IpAssignment;->DHCP:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    goto :goto_0

    .line 506
    :cond_1
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v7

    if-ne v7, v9, :cond_3

    sget-object v7, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    :goto_2
    iput-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 510
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    sget-object v10, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    if-ne v7, v10, :cond_2

    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    if-eqz v7, :cond_2

    .line 511
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 512
    .local v2, host:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 513
    .local v4, portStr:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 514
    .local v1, exclusionList:Ljava/lang/String;
    const/4 v3, 0x0

    .line 515
    .local v3, port:I
    const/4 v6, 0x0

    .line 517
    .restart local v6       #result:I
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 518
    invoke-static {v2, v4, v1}, Lcom/android/settings/ProxySelector;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 522
    :goto_3
    if-nez v6, :cond_4

    .line 523
    new-instance v5, Landroid/net/ProxyProperties;

    invoke-direct {v5, v2, v3, v1}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 524
    .local v5, proxyProperties:Landroid/net/ProxyProperties;
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v7, v5}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    .end local v1           #exclusionList:Ljava/lang/String;
    .end local v2           #host:Ljava/lang/String;
    .end local v3           #port:I
    .end local v4           #portStr:Ljava/lang/String;
    .end local v5           #proxyProperties:Landroid/net/ProxyProperties;
    .end local v6           #result:I
    :cond_2
    move v7, v9

    .line 529
    goto :goto_1

    .line 506
    :cond_3
    sget-object v7, Landroid/net/wifi/WifiConfiguration$ProxySettings;->NONE:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    goto :goto_2

    .line 519
    .restart local v1       #exclusionList:Ljava/lang/String;
    .restart local v2       #host:Ljava/lang/String;
    .restart local v3       #port:I
    .restart local v4       #portStr:Ljava/lang/String;
    .restart local v6       #result:I
    :catch_0
    move-exception v0

    .line 520
    .local v0, e:Ljava/lang/NumberFormatException;
    const v6, 0x7f0804b9

    goto :goto_3

    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_4
    move v7, v8

    .line 526
    goto :goto_1
.end method

.method private loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 8
    .parameter "spinner"
    .parameter "prefix"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 878
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v4}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 880
    .local v3, context:Landroid/content/Context;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v4

    const/16 v5, 0x3f2

    invoke-virtual {v4, p2, v5}, Landroid/security/KeyStore;->saw(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 881
    .local v2, certs:[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v4, v2

    if-nez v4, :cond_1

    .line 882
    :cond_0
    new-array v2, v7, [Ljava/lang/String;

    .end local v2           #certs:[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    aput-object v4, v2, v6

    .line 890
    .restart local v2       #certs:[Ljava/lang/String;
    :goto_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v4, 0x1090008

    invoke-direct {v0, v3, v4, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 892
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v4, 0x1090009

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 893
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 894
    return-void

    .line 884
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_1
    array-length v4, v2

    add-int/lit8 v4, v4, 0x1

    new-array v1, v4, [Ljava/lang/String;

    .line 885
    .local v1, array:[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    aput-object v4, v1, v6

    .line 886
    array-length v4, v2

    invoke-static {v2, v6, v1, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 887
    move-object v2, v1

    goto :goto_0
.end method

.method private setAnonymousIdentInvisible()V
    .locals 2

    .prologue
    .line 777
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0d0283

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 778
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 779
    return-void
.end method

.method private setCaCertInvisible()V
    .locals 2

    .prologue
    .line 767
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0d0280

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 768
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 769
    return-void
.end method

.method private setPasswordInvisible()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 782
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 783
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0d0264

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 784
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0d0284

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 785
    return-void
.end method

.method private setPhase2Invisible()V
    .locals 2

    .prologue
    .line 762
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0d027f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 763
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 764
    return-void
.end method

.method private setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 3
    .parameter "spinner"
    .parameter "value"

    .prologue
    .line 897
    if-eqz p2, :cond_0

    .line 899
    invoke-virtual {p1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 900
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 901
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 902
    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 907
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v1           #i:I
    :cond_0
    return-void

    .line 900
    .restart local v0       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .restart local v1       #i:I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private setUserCertInvisible()V
    .locals 2

    .prologue
    .line 772
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0d0281

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 773
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 774
    return-void
.end method

.method private showEapFieldsByMethod(I)V
    .locals 5
    .parameter

    .prologue
    const v4, 0x7f0d0283

    const v3, 0x7f0d027f

    const/4 v2, 0x0

    .line 715
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0d027e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 716
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0d0282

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 720
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0d0280

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 721
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0d0264

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 722
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0d0284

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 724
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v0}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    .line 725
    packed-switch p1, :pswitch_data_0

    .line 759
    :goto_0
    return-void

    .line 727
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setPhase2Invisible()V

    .line 728
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setCaCertInvisible()V

    .line 729
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setAnonymousIdentInvisible()V

    .line 730
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setUserCertInvisible()V

    goto :goto_0

    .line 733
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0d0281

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 734
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setPhase2Invisible()V

    .line 735
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setAnonymousIdentInvisible()V

    .line 736
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setPasswordInvisible()V

    goto :goto_0

    .line 740
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    if-eq v0, v1, :cond_0

    .line 741
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    .line 742
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 744
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 745
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 746
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setUserCertInvisible()V

    goto :goto_0

    .line 750
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;

    if-eq v0, v1, :cond_1

    .line 751
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    .line 752
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 754
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 755
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 756
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setUserCertInvisible()V

    goto :goto_0

    .line 725
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private showIpConfigFields()V
    .locals 5

    .prologue
    const v4, 0x7f0d0278

    const/4 v3, 0x0

    .line 788
    const/4 v0, 0x0

    .line 790
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0d0276

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 792
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_7

    .line 793
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    move-object v1, v0

    .line 796
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_6

    .line 797
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 798
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 799
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0d0279

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    .line 800
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 801
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0d027a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    .line 802
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 803
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0d027b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    .line 805
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 806
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0d027c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    .line 807
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 808
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0d027d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    .line 809
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 811
    :cond_0
    if-eqz v1, :cond_5

    .line 812
    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .line 813
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 814
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 815
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkAddress;

    .line 816
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 817
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 821
    :cond_1
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/RouteInfo;

    .line 822
    invoke-virtual {v0}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 823
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 828
    :cond_3
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 829
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 830
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 832
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 833
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 839
    :cond_5
    :goto_1
    return-void

    .line 837
    :cond_6
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_7
    move-object v1, v0

    goto/16 :goto_0
.end method

.method private showProxyFields()V
    .locals 7

    .prologue
    const v6, 0x7f0d0272

    const v5, 0x7f0d0271

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 842
    const/4 v0, 0x0

    .line 844
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0d026e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 846
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 847
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    move-object v1, v0

    .line 850
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 851
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 852
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 853
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 854
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0d0273

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    .line 855
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 856
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0d0274

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    .line 857
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 858
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0d0275

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    .line 859
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 861
    :cond_0
    if-eqz v1, :cond_1

    .line 862
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v0

    .line 863
    if-eqz v0, :cond_1

    .line 864
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 865
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyProperties;->getPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 866
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyProperties;->getExclusionList()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 873
    :cond_1
    :goto_1
    return-void

    .line 870
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 871
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    move-object v1, v0

    goto/16 :goto_0
.end method

.method private showSecurityFields()V
    .locals 8

    .prologue
    const v7, 0x7f0d0267

    const v6, 0x7f0d0262

    const/16 v5, 0x8

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 607
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mInXlSetupWizard:Z

    if-eqz v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v0}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    iget v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->initSecurityFields(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 690
    :goto_0
    return-void

    .line 614
    :cond_0
    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-nez v0, :cond_1

    .line 615
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 618
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 620
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    if-nez v0, :cond_2

    .line 621
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0d0146

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    .line 622
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 623
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0d025b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 626
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v0, v3, :cond_2

    .line 627
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    const v1, 0x7f080629

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(I)V

    .line 631
    :cond_2
    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    .line 632
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 635
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 637
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-nez v0, :cond_5

    .line 638
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0d0268

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    .line 639
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 640
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0d0269

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    .line 641
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0d026a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    .line 642
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0d026b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    .line 643
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0d026c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    .line 644
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0d026d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    .line 646
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    const-string v1, "CACERT_"

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiConfigController;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 647
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    const-string v1, "USRPKEY_"

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiConfigController;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 650
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v0, v3, :cond_4

    .line 651
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 652
    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v1

    .line 653
    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v2

    .line 654
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 655
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    .line 656
    packed-switch v1, :pswitch_data_0

    .line 674
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 677
    :goto_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 678
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 679
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 680
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getAnonymousIdentity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 658
    :pswitch_0
    packed-switch v2, :pswitch_data_1

    .line 669
    :pswitch_1
    const-string v1, "WifiConfigController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid phase 2 method "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 660
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v4}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    .line 663
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    .line 666
    :pswitch_4
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    .line 684
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 685
    invoke-direct {p0, v4}, Lcom/android/settings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    goto/16 :goto_0

    .line 688
    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    goto/16 :goto_0

    .line 656
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 658
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private validateIpConfigFields(Landroid/net/LinkProperties;)I
    .locals 13
    .parameter "linkProperties"

    .prologue
    .line 533
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    if-nez v10, :cond_0

    const/4 v10, 0x0

    .line 603
    :goto_0
    return v10

    .line 535
    :cond_0
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 536
    .local v7, ipAddr:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    const v10, 0x7f080659

    goto :goto_0

    .line 538
    :cond_1
    const/4 v6, 0x0

    .line 540
    .local v6, inetAddr:Ljava/net/InetAddress;
    :try_start_0
    invoke-static {v7}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 545
    const/4 v9, -0x1

    .line 547
    .local v9, networkPrefixLength:I
    :try_start_1
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 548
    if-ltz v9, :cond_2

    const/16 v10, 0x20

    if-le v9, v10, :cond_3

    .line 549
    :cond_2
    const v10, 0x7f08065c

    goto :goto_0

    .line 541
    .end local v9           #networkPrefixLength:I
    :catch_0
    move-exception v3

    .line 542
    .local v3, e:Ljava/lang/IllegalArgumentException;
    const v10, 0x7f080659

    goto :goto_0

    .line 551
    .end local v3           #e:Ljava/lang/IllegalArgumentException;
    .restart local v9       #networkPrefixLength:I
    :cond_3
    new-instance v10, Landroid/net/LinkAddress;

    invoke-direct {v10, v6, v9}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {p1, v10}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 558
    :goto_1
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 559
    .local v4, gateway:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 562
    :try_start_2
    invoke-static {v6, v9}, Landroid/net/NetworkUtils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v8

    .line 563
    .local v8, netPart:Ljava/net/InetAddress;
    invoke-virtual {v8}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 564
    .local v0, addr:[B
    array-length v10, v0

    add-int/lit8 v10, v10, -0x1

    const/4 v11, 0x1

    aput-byte v11, v0, v10

    .line 565
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v11

    invoke-virtual {v11}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_5

    .line 579
    .end local v0           #addr:[B
    .end local v8           #netPart:Ljava/net/InetAddress;
    :goto_2
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 580
    .local v1, dns:Ljava/lang/String;
    const/4 v2, 0x0

    .line 582
    .local v2, dnsAddr:Ljava/net/InetAddress;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 584
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v11}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f08065e

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 594
    :goto_3
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->length()I

    move-result v10

    if-lez v10, :cond_4

    .line 595
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 597
    :try_start_3
    invoke-static {v1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v2

    .line 601
    invoke-virtual {p1, v2}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    .line 603
    :cond_4
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 552
    .end local v1           #dns:Ljava/lang/String;
    .end local v2           #dnsAddr:Ljava/net/InetAddress;
    .end local v4           #gateway:Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 554
    .local v3, e:Ljava/lang/NumberFormatException;
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v11}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f080664

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 570
    .end local v3           #e:Ljava/lang/NumberFormatException;
    .restart local v4       #gateway:Ljava/lang/String;
    :cond_5
    const/4 v5, 0x0

    .line 572
    .local v5, gatewayAddr:Ljava/net/InetAddress;
    :try_start_4
    invoke-static {v4}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v5

    .line 576
    new-instance v10, Landroid/net/RouteInfo;

    invoke-direct {v10, v5}, Landroid/net/RouteInfo;-><init>(Ljava/net/InetAddress;)V

    invoke-virtual {p1, v10}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)V

    goto :goto_2

    .line 573
    :catch_2
    move-exception v3

    .line 574
    .local v3, e:Ljava/lang/IllegalArgumentException;
    const v10, 0x7f08065a

    goto/16 :goto_0

    .line 587
    .end local v3           #e:Ljava/lang/IllegalArgumentException;
    .end local v5           #gatewayAddr:Ljava/net/InetAddress;
    .restart local v1       #dns:Ljava/lang/String;
    .restart local v2       #dnsAddr:Ljava/net/InetAddress;
    :cond_6
    :try_start_5
    invoke-static {v1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v2

    .line 591
    invoke-virtual {p1, v2}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    goto :goto_3

    .line 588
    :catch_3
    move-exception v3

    .line 589
    .restart local v3       #e:Ljava/lang/IllegalArgumentException;
    const v10, 0x7f08065b

    goto/16 :goto_0

    .line 598
    .end local v3           #e:Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v3

    .line 599
    .restart local v3       #e:Ljava/lang/IllegalArgumentException;
    const v10, 0x7f08065b

    goto/16 :goto_0

    .line 567
    .end local v1           #dns:Ljava/lang/String;
    .end local v2           #dnsAddr:Ljava/net/InetAddress;
    .end local v3           #e:Ljava/lang/IllegalArgumentException;
    :catch_5
    move-exception v10

    goto :goto_2

    .line 566
    :catch_6
    move-exception v10

    goto :goto_2
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 915
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mTextViewChangedHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/wifi/WifiConfigController$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiConfigController$1;-><init>(Lcom/android/settings/wifi/WifiConfigController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 920
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 925
    return-void
.end method

.method enableSubmitIfAppropriate()V
    .locals 5

    .prologue
    .line 340
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v3}, Lcom/android/settings/wifi/WifiConfigUiBase;->getSubmitButton()Landroid/widget/Button;

    move-result-object v2

    .line 341
    .local v2, submit:Landroid/widget/Button;
    if-nez v2, :cond_0

    .line 364
    :goto_0
    return-void

    .line 343
    :cond_0
    const/4 v0, 0x0

    .line 344
    .local v0, enabled:Z
    const/4 v1, 0x0

    .line 346
    .local v1, passwordInvalid:Z
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    iget v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    const/16 v4, 0x8

    if-ge v3, v4, :cond_3

    .line 349
    :cond_2
    const/4 v1, 0x1

    .line 352
    :cond_3
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    if-eqz v3, :cond_6

    :cond_4
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_7

    :cond_5
    if-eqz v1, :cond_7

    .line 355
    :cond_6
    const/4 v0, 0x0

    .line 363
    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 357
    :cond_7
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->ipAndProxyFieldsAreValid()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 358
    const/4 v0, 0x1

    goto :goto_1

    .line 360
    :cond_8
    const/4 v0, 0x0

    goto :goto_1
.end method

.method getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v8, -0x1

    const/16 v11, 0x22

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 367
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v7, v7, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v7, v8, :cond_0

    iget-boolean v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mEdit:Z

    if-nez v7, :cond_0

    .line 368
    const/4 v2, 0x0

    .line 490
    :goto_0
    return-object v2

    .line 371
    :cond_0
    new-instance v2, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v2}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 373
    .local v2, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez v7, :cond_2

    .line 374
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 377
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mIbssView:Landroid/widget/CheckBox;

    invoke-virtual {v7}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 378
    iput-boolean v10, v2, Landroid/net/wifi/WifiConfiguration;->isIBSS:Z

    .line 379
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mSupportedIbssChannels:Ljava/util/List;

    iget v8, p0, Lcom/android/settings/wifi/WifiConfigController;->mSelectedIbssChannelPos:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiChannel;

    iget v7, v7, Landroid/net/wifi/WifiChannel;->frequency:I

    iput v7, v2, Landroid/net/wifi/WifiConfiguration;->frequency:I

    .line 395
    :goto_1
    iget v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    packed-switch v7, :pswitch_data_0

    .line 483
    const/4 v2, 0x0

    goto :goto_0

    .line 382
    :cond_1
    iput-boolean v10, v2, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    goto :goto_1

    .line 384
    :cond_2
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v7, v7, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-ne v7, v8, :cond_3

    .line 385
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v7, v7, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 387
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-boolean v7, v7, Lcom/android/settings/wifi/AccessPoint;->isIBSS:Z

    iput-boolean v7, v2, Landroid/net/wifi/WifiConfiguration;->isIBSS:Z

    .line 388
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v7, v7, Lcom/android/settings/wifi/AccessPoint;->frequency:I

    iput v7, v2, Landroid/net/wifi/WifiConfiguration;->frequency:I

    goto :goto_1

    .line 390
    :cond_3
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v7, v7, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iput v7, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 391
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-boolean v7, v7, Lcom/android/settings/wifi/AccessPoint;->isIBSS:Z

    iput-boolean v7, v2, Landroid/net/wifi/WifiConfiguration;->isIBSS:Z

    .line 392
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v7, v7, Lcom/android/settings/wifi/AccessPoint;->frequency:I

    iput v7, v2, Landroid/net/wifi/WifiConfiguration;->frequency:I

    goto :goto_1

    .line 397
    :pswitch_0
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v7, v9}, Ljava/util/BitSet;->set(I)V

    .line 486
    :cond_4
    :goto_2
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iput-object v7, v2, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 487
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v7, v2, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 488
    new-instance v7, Landroid/net/LinkProperties;

    iget-object v8, p0, Lcom/android/settings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v7, v8}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    iput-object v7, v2, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    goto/16 :goto_0

    .line 401
    :pswitch_1
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v7, v9}, Ljava/util/BitSet;->set(I)V

    .line 402
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v7, v9}, Ljava/util/BitSet;->set(I)V

    .line 403
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v7, v10}, Ljava/util/BitSet;->set(I)V

    .line 404
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->length()I

    move-result v7

    if-eqz v7, :cond_4

    .line 405
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->length()I

    move-result v4

    .line 406
    .local v4, length:I
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 408
    .local v5, password:Ljava/lang/String;
    const/16 v7, 0xa

    if-eq v4, v7, :cond_5

    const/16 v7, 0x1a

    if-eq v4, v7, :cond_5

    const/16 v7, 0x3a

    if-ne v4, v7, :cond_6

    :cond_5
    const-string v7, "[0-9A-Fa-f]*"

    invoke-virtual {v5, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 410
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v5, v7, v9

    goto :goto_2

    .line 412
    :cond_6
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    goto :goto_2

    .line 418
    .end local v4           #length:I
    .end local v5           #password:Ljava/lang/String;
    :pswitch_2
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v7, v10}, Ljava/util/BitSet;->set(I)V

    .line 419
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->length()I

    move-result v7

    if-eqz v7, :cond_4

    .line 420
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 421
    .restart local v5       #password:Ljava/lang/String;
    const-string v7, "[0-9A-Fa-f]{64}"

    invoke-virtual {v5, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 422
    iput-object v5, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    .line 424
    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    .line 430
    .end local v5           #password:Ljava/lang/String;
    :pswitch_3
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Ljava/util/BitSet;->set(I)V

    .line 431
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v7, v12}, Ljava/util/BitSet;->set(I)V

    .line 432
    new-instance v7, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v7}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    iput-object v7, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 433
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    .line 434
    .local v3, eapMethod:I
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    .line 435
    .local v6, phase2Method:I
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v7, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 436
    packed-switch v3, :pswitch_data_1

    .line 458
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v7, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    .line 461
    :goto_3
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 462
    .local v0, caCert:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const-string v0, ""

    .line 463
    :cond_8
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v7, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAlias(Ljava/lang/String;)V

    .line 464
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 465
    .local v1, clientCert:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    const-string v1, ""

    .line 466
    :cond_9
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v7, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    .line 467
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v8, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 468
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v8, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    .line 471
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->isShown()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 474
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->length()I

    move-result v7

    if-lez v7, :cond_4

    .line 475
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v8, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 441
    .end local v0           #caCert:Ljava/lang/String;
    .end local v1           #clientCert:Ljava/lang/String;
    :pswitch_4
    packed-switch v6, :pswitch_data_2

    .line 452
    const-string v7, "WifiConfigController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown phase2 method"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 443
    :pswitch_5
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v7, v9}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_3

    .line 446
    :pswitch_6
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v7, v12}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_3

    .line 449
    :pswitch_7
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_3

    .line 479
    .restart local v0       #caCert:Ljava/lang/String;
    .restart local v1       #clientCert:Ljava/lang/String;
    :cond_a
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v8, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 395
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 436
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch

    .line 441
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public isEdit()Z
    .locals 1

    .prologue
    .line 910
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEdit:Z

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const v5, 0x7f0d028a

    const v4, 0x7f0d0287

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 934
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    const v1, 0x7f0d025b

    if-ne v0, v1, :cond_2

    .line 935
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 936
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    if-eqz p2, :cond_1

    const/16 v0, 0x90

    :goto_0
    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setInputType(I)V

    .line 940
    if-ltz v1, :cond_0

    .line 941
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 956
    :cond_0
    :goto_1
    return-void

    .line 936
    :cond_1
    const/16 v0, 0x80

    goto :goto_0

    .line 943
    :cond_2
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    const v1, 0x7f0d0286

    if-ne v0, v1, :cond_4

    .line 944
    if-eqz p2, :cond_3

    .line 945
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 947
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 949
    :cond_4
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    const v1, 0x7f0d0289

    if-ne v0, v1, :cond_0

    .line 950
    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 951
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 953
    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 960
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_0

    .line 961
    iput p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    .line 962
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->showSecurityFields()V

    .line 972
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 973
    return-void

    .line 963
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_1

    .line 964
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->showSecurityFields()V

    goto :goto_0

    .line 965
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_2

    .line 966
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->showProxyFields()V

    goto :goto_0

    .line 967
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIbssFreqSpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_3

    .line 968
    iput p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mSelectedIbssChannelPos:I

    goto :goto_0

    .line 970
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->showIpConfigFields()V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 978
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 930
    return-void
.end method
