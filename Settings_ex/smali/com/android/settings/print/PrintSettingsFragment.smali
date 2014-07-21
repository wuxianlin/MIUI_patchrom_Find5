.class public Lcom/android/settings/print/PrintSettingsFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PrintSettingsFragment.java"

# interfaces
.implements Lcom/android/settings/DialogCreatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;,
        Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;,
        Lcom/android/settings/print/PrintSettingsFragment$SettingsContentObserver;,
        Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;,
        Lcom/android/settings/print/PrintSettingsFragment$SettingsPackageMonitor;
    }
.end annotation


# instance fields
.field private mActivePrintJobsCategory:Landroid/preference/PreferenceCategory;

.field private final mHandler:Landroid/os/Handler;

.field private mPrintJobsController:Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;

.field private mPrintServicesCategory:Landroid/preference/PreferenceCategory;

.field private final mSettingsContentObserver:Lcom/android/settings/print/PrintSettingsFragment$SettingsContentObserver;

.field private final mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 93
    new-instance v0, Lcom/android/settings/print/PrintSettingsFragment$SettingsPackageMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/print/PrintSettingsFragment$SettingsPackageMonitor;-><init>(Lcom/android/settings/print/PrintSettingsFragment;Lcom/android/settings/print/PrintSettingsFragment$1;)V

    iput-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 95
    new-instance v0, Lcom/android/settings/print/PrintSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/print/PrintSettingsFragment$1;-><init>(Lcom/android/settings/print/PrintSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment;->mHandler:Landroid/os/Handler;

    .line 102
    new-instance v0, Lcom/android/settings/print/PrintSettingsFragment$2;

    iget-object v1, p0, Lcom/android/settings/print/PrintSettingsFragment;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/print/PrintSettingsFragment$2;-><init>(Lcom/android/settings/print/PrintSettingsFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment;->mSettingsContentObserver:Lcom/android/settings/print/PrintSettingsFragment$SettingsContentObserver;

    .line 440
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/print/PrintSettingsFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings/print/PrintSettingsFragment;->updateServicesPreferences()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/preference/PreferenceCategory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment;->mActivePrintJobsCategory:Landroid/preference/PreferenceCategory;

    return-object v0
.end method

.method private startSubSettingsIfNeeded()V
    .locals 4

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_1

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "EXTRA_PRINT_SERVICE_COMPONENT_NAME"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, componentName:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "EXTRA_PRINT_SERVICE_COMPONENT_NAME"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0, v0}, Lcom/android/settings/print/PrintSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 266
    .local v1, prereference:Landroid/preference/Preference;
    if-eqz v1, :cond_0

    .line 267
    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    goto :goto_0
.end method

.method private updateServicesPreferences()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v2, 0x0

    .line 173
    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "print_services_category"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_2

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/print/PrintSettingsFragment;->mPrintServicesCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 181
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/print/SettingsUtils;->readEnabledPrintServices(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 184
    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.printservice.PrintService"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x84

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 189
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v1, v2

    .line 190
    :goto_1
    if-ge v1, v5, :cond_4

    .line 191
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 193
    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v6

    .line 196
    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 197
    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 199
    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v10, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v6, v1}, Landroid/preference/PreferenceScreen;->setOrder(I)V

    .line 205
    const-class v9, Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->setFragment(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v6, v2}, Landroid/preference/PreferenceScreen;->setPersistent(Z)V

    .line 208
    invoke-interface {v3, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    .line 209
    if-eqz v9, :cond_3

    .line 210
    const v10, 0x7f080955

    invoke-virtual {p0, v10}, Lcom/android/settings/print/PrintSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 215
    :goto_2
    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    .line 216
    const-string v11, "EXTRA_PREFERENCE_KEY"

    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const-string v11, "EXTRA_CHECKED"

    invoke-virtual {v10, v11, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 218
    const-string v9, "EXTRA_TITLE"

    invoke-virtual {v10, v9, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/printservice/PrintServiceInfo;->create(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Landroid/printservice/PrintServiceInfo;

    move-result-object v7

    .line 223
    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 225
    const-string v11, "EXTRA_ENABLE_WARNING_TITLE"

    const v12, 0x7f08094f

    new-array v13, v14, [Ljava/lang/Object;

    aput-object v9, v13, v2

    invoke-virtual {p0, v12, v13}, Lcom/android/settings/print/PrintSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string v11, "EXTRA_ENABLE_WARNING_MESSAGE"

    const v12, 0x7f080950

    new-array v13, v14, [Ljava/lang/Object;

    aput-object v9, v13, v2

    invoke-virtual {p0, v12, v13}, Lcom/android/settings/print/PrintSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v11, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-virtual {v7}, Landroid/printservice/PrintServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v9

    .line 231
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 232
    const-string v11, "EXTRA_SETTINGS_TITLE"

    const v12, 0x7f080953

    invoke-virtual {p0, v12}, Lcom/android/settings/print/PrintSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v11, "EXTRA_SETTINGS_COMPONENT_NAME"

    new-instance v12, Landroid/content/ComponentName;

    iget-object v13, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v13, v13, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-direct {v12, v13, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v11, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :cond_0
    invoke-virtual {v7}, Landroid/printservice/PrintServiceInfo;->getAddPrintersActivityName()Ljava/lang/String;

    move-result-object v7

    .line 240
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 241
    const-string v9, "EXTRA_ADD_PRINTERS_TITLE"

    const v11, 0x7f080954

    invoke-virtual {p0, v11}, Lcom/android/settings/print/PrintSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v9, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v9, "EXTRA_ADD_PRINTERS_COMPONENT_NAME"

    new-instance v11, Landroid/content/ComponentName;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-direct {v11, v0, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v9, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :cond_1
    const-string v0, "EXTRA_SERVICE_COMPONENT_NAME"

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v0, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment;->mPrintServicesCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 190
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    .line 178
    :cond_2
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment;->mPrintServicesCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    goto/16 :goto_0

    .line 212
    :cond_3
    const v10, 0x7f080956

    invoke-virtual {p0, v10}, Lcom/android/settings/print/PrintSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 253
    :cond_4
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment;->mPrintServicesCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_5

    .line 254
    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/print/PrintSettingsFragment;->mPrintServicesCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 256
    :cond_5
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    const/4 v3, 0x0

    .line 117
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 118
    const v0, 0x7f050033

    invoke-virtual {p0, v0}, Lcom/android/settings/print/PrintSettingsFragment;->addPreferencesFromResource(I)V

    .line 120
    const-string v0, "print_jobs_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/print/PrintSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment;->mActivePrintJobsCategory:Landroid/preference/PreferenceCategory;

    .line 122
    const-string v0, "print_services_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/print/PrintSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment;->mPrintServicesCategory:Landroid/preference/PreferenceCategory;

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/print/PrintSettingsFragment;->mActivePrintJobsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 126
    new-instance v0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;

    invoke-direct {v0, p0, v3}, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;-><init>(Lcom/android/settings/print/PrintSettingsFragment;Lcom/android/settings/print/PrintSettingsFragment$1;)V

    iput-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment;->mPrintJobsController:Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/settings/print/PrintSettingsFragment;->mPrintJobsController:Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 129
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 150
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "print_service_search_uri"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, searchUri:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 154
    const v2, 0x7f080957

    invoke-interface {p1, v2}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 155
    .local v0, menuItem:Landroid/view/MenuItem;
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 156
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 158
    .end local v0           #menuItem:Landroid/view/MenuItem;
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 144
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment;->mSettingsContentObserver:Lcom/android/settings/print/PrintSettingsFragment$SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/print/PrintSettingsFragment$SettingsContentObserver;->unregister(Landroid/content/ContentResolver;)V

    .line 145
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 146
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 133
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 134
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 135
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment;->mSettingsContentObserver:Lcom/android/settings/print/PrintSettingsFragment$SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/print/PrintSettingsFragment$SettingsContentObserver;->register(Landroid/content/ContentResolver;)V

    .line 136
    invoke-direct {p0}, Lcom/android/settings/print/PrintSettingsFragment;->updateServicesPreferences()V

    .line 137
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/print/PrintSettingsFragment;->setHasOptionsMenu(Z)V

    .line 138
    invoke-direct {p0}, Lcom/android/settings/print/PrintSettingsFragment;->startSubSettingsIfNeeded()V

    .line 139
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 162
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 164
    .local v0, contentRoot:Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f04004b

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 166
    .local v1, emptyView:Landroid/view/View;
    const v3, 0x7f0d0032

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 167
    .local v2, textView:Landroid/widget/TextView;
    const v3, 0x7f080951

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 168
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 169
    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 170
    return-void
.end method
