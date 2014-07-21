.class public Lcom/android/settings_ex/nfc/PaymentSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "PaymentSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/nfc/PaymentSettings$PaymentAppPreference;,
        Lcom/android/settings_ex/nfc/PaymentSettings$SettingsPackageMonitor;
    }
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mPaymentBackend:Lcom/android/settings_ex/nfc/PaymentBackend;

.field private final mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 55
    new-instance v0, Lcom/android/settings_ex/nfc/PaymentSettings$SettingsPackageMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/nfc/PaymentSettings$SettingsPackageMonitor;-><init>(Lcom/android/settings_ex/nfc/PaymentSettings;Lcom/android/settings_ex/nfc/PaymentSettings$1;)V

    iput-object v0, p0, Lcom/android/settings_ex/nfc/PaymentSettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 165
    new-instance v0, Lcom/android/settings_ex/nfc/PaymentSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/nfc/PaymentSettings$2;-><init>(Lcom/android/settings_ex/nfc/PaymentSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/nfc/PaymentSettings;->mHandler:Landroid/os/Handler;

    .line 194
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/nfc/PaymentSettings;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings_ex/nfc/PaymentSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 131
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;

    if-eqz v1, :cond_1

    .line 132
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;

    .line 133
    .local v0, appInfo:Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;
    iget-object v1, v0, Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/android/settings_ex/nfc/PaymentSettings;->mPaymentBackend:Lcom/android/settings_ex/nfc/PaymentBackend;

    iget-object v2, v0, Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/nfc/PaymentBackend;->setDefaultPaymentApp(Landroid/content/ComponentName;)V

    .line 136
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/PaymentSettings;->refresh()V

    .line 138
    .end local v0           #appInfo:Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    new-instance v0, Lcom/android/settings_ex/nfc/PaymentBackend;

    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings_ex/nfc/PaymentBackend;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/nfc/PaymentSettings;->mPaymentBackend:Lcom/android/settings_ex/nfc/PaymentBackend;

    .line 63
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/nfc/PaymentSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings_ex/nfc/PaymentSettings;->mInflater:Landroid/view/LayoutInflater;

    .line 64
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/nfc/PaymentSettings;->setHasOptionsMenu(Z)V

    .line 65
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 155
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 156
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/PaymentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "payment_service_search_uri"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, searchUri:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 159
    const v2, 0x7f080b7b

    invoke-interface {p1, v2}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 160
    .local v0, menuItem:Landroid/view/MenuItem;
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 161
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 163
    .end local v0           #menuItem:Landroid/view/MenuItem;
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 106
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 107
    iget-object v2, p0, Lcom/android/settings_ex/nfc/PaymentSettings;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040070

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 108
    .local v1, v:Landroid/view/View;
    const v2, 0x7f0d0134

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 109
    .local v0, learnMore:Landroid/widget/TextView;
    new-instance v2, Lcom/android/settings_ex/nfc/PaymentSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/nfc/PaymentSettings$1;-><init>(Lcom/android/settings_ex/nfc/PaymentSettings;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    return-object v1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/settings_ex/nfc/PaymentSettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 150
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 151
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 142
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 143
    iget-object v0, p0, Lcom/android/settings_ex/nfc/PaymentSettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 144
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/PaymentSettings;->refresh()V

    .line 145
    return-void
.end method

.method public refresh()V
    .locals 14

    .prologue
    const/16 v13, 0x8

    const/4 v12, 0x0

    .line 68
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/PaymentSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v6

    .line 69
    .local v6, manager:Landroid/preference/PreferenceManager;
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v8

    .line 71
    .local v8, screen:Landroid/preference/PreferenceScreen;
    iget-object v9, p0, Lcom/android/settings_ex/nfc/PaymentSettings;->mPaymentBackend:Lcom/android/settings_ex/nfc/PaymentBackend;

    invoke-virtual {v9}, Lcom/android/settings_ex/nfc/PaymentBackend;->getPaymentAppInfos()Ljava/util/List;

    move-result-object v1

    .line 72
    .local v1, appInfos:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_1

    .line 74
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;

    .line 75
    .local v0, appInfo:Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;
    new-instance v7, Lcom/android/settings_ex/nfc/PaymentSettings$PaymentAppPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v7, v9, v0, p0}, Lcom/android/settings_ex/nfc/PaymentSettings$PaymentAppPreference;-><init>(Landroid/content/Context;Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;Landroid/view/View$OnClickListener;)V

    .line 77
    .local v7, preference:Lcom/android/settings_ex/nfc/PaymentSettings$PaymentAppPreference;
    iget-object v9, v0, Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;->caption:Ljava/lang/CharSequence;

    invoke-virtual {v7, v9}, Lcom/android/settings_ex/nfc/PaymentSettings$PaymentAppPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v9, v0, Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;->banner:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_0

    .line 79
    invoke-virtual {v8, v7}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 82
    :cond_0
    const-string v9, "PaymentSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Couldn\'t load banner drawable of service "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 86
    .end local v0           #appInfo:Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v7           #preference:Lcom/android/settings_ex/nfc/PaymentSettings$PaymentAppPreference;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/PaymentSettings;->getView()Landroid/view/View;

    move-result-object v9

    const v10, 0x7f0d0133

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 87
    .local v3, emptyText:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/PaymentSettings;->getView()Landroid/view/View;

    move-result-object v9

    const v10, 0x7f0d0134

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 88
    .local v5, learnMore:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/PaymentSettings;->getView()Landroid/view/View;

    move-result-object v9

    const v10, 0x7f0d0132

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 89
    .local v2, emptyImage:Landroid/widget/ImageView;
    invoke-virtual {v8}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v9

    if-nez v9, :cond_2

    .line 90
    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    invoke-virtual {v2, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 93
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/PaymentSettings;->getListView()Landroid/widget/ListView;

    move-result-object v9

    invoke-virtual {v9, v13}, Landroid/widget/ListView;->setVisibility(I)V

    .line 100
    :goto_1
    invoke-virtual {p0, v8}, Lcom/android/settings_ex/nfc/PaymentSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 101
    return-void

    .line 95
    :cond_2
    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    invoke-virtual {v2, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 98
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/PaymentSettings;->getListView()Landroid/widget/ListView;

    move-result-object v9

    invoke-virtual {v9, v12}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_1
.end method
