.class public Lcom/android/settings/fuelgauge/PowerUsageSummary;
.super Landroid/preference/PreferenceFragment;
.source "PowerUsageSummary.java"


# instance fields
.field private mAppListGroup:Landroid/preference/PreferenceGroup;

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryService:Landroid/os/BatteryManager;

.field private mBatteryStatusPref:Landroid/preference/Preference;

.field mHandler:Landroid/os/Handler;

.field private mStatsHelper:Lcom/android/settings/fuelgauge/BatteryStatsHelper;

.field private mStatsType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    .line 75
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary$1;-><init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 257
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$2;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary$2;-><init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fuelgauge/PowerUsageSummary;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryStatusPref:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/fuelgauge/PowerUsageSummary;)Lcom/android/settings/fuelgauge/BatteryStatsHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/settings/fuelgauge/BatteryStatsHelper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->refreshStats()V

    return-void
.end method

.method private addNotAvailableMessage()V
    .locals 2

    .prologue
    .line 213
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 214
    .local v0, notAvailable:Landroid/preference/Preference;
    const v1, 0x7f080969

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 215
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 216
    return-void
.end method

.method private refreshStats()V
    .locals 13

    .prologue
    .line 219
    iget-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 220
    iget-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 222
    iget-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryStatusPref:Landroid/preference/Preference;

    const/4 v10, -0x2

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setOrder(I)V

    .line 223
    iget-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    iget-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryStatusPref:Landroid/preference/Preference;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 224
    new-instance v0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/settings/fuelgauge/BatteryStatsHelper;

    invoke-virtual {v10}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->getStats()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/settings/fuelgauge/BatteryStatsHelper;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->getDockStats(Landroid/content/Context;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v11

    invoke-direct {v0, v9, v10, v11}, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;-><init>(Landroid/content/Context;Landroid/os/BatteryStats;Landroid/os/BatteryStats;)V

    .line 226
    .local v0, hist:Lcom/android/settings/fuelgauge/BatteryHistoryPreference;
    const/4 v9, -0x1

    invoke-virtual {v0, v9}, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->setOrder(I)V

    .line 227
    iget-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 229
    iget-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/settings/fuelgauge/BatteryStatsHelper;

    invoke-virtual {v9}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->getPowerProfile()Lcom/android/internal/os/PowerProfile;

    move-result-object v9

    const-string v10, "screen.full"

    invoke-virtual {v9, v10}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v9

    const-wide/high16 v11, 0x4024

    cmpg-double v9, v9, v11

    if-gez v9, :cond_1

    .line 231
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addNotAvailableMessage()V

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    iget-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/settings/fuelgauge/BatteryStatsHelper;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->refreshStats(Landroid/content/Context;Z)V

    .line 235
    iget-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/settings/fuelgauge/BatteryStatsHelper;

    invoke-virtual {v9}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v8

    .line 236
    .local v8, usageList:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/fuelgauge/BatterySipper;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/fuelgauge/BatterySipper;

    .line 237
    .local v7, sipper:Lcom/android/settings/fuelgauge/BatterySipper;
    invoke-virtual {v7}, Lcom/android/settings/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v9

    const-wide/high16 v11, 0x4014

    cmpg-double v9, v9, v11

    if-ltz v9, :cond_2

    .line 238
    invoke-virtual {v7}, Lcom/android/settings/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v9

    iget-object v11, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/settings/fuelgauge/BatteryStatsHelper;

    invoke-virtual {v11}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->getTotalPower()D

    move-result-wide v11

    div-double/2addr v9, v11

    const-wide/high16 v11, 0x4059

    mul-double v4, v9, v11

    .line 240
    .local v4, percentOfTotal:D
    const-wide/high16 v9, 0x3ff0

    cmpg-double v9, v4, v9

    if-ltz v9, :cond_2

    .line 241
    new-instance v6, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v7}, Lcom/android/settings/fuelgauge/BatterySipper;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-direct {v6, v9, v10, v7}, Lcom/android/settings/fuelgauge/PowerGaugePreference;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Lcom/android/settings/fuelgauge/BatterySipper;)V

    .line 243
    .local v6, pref:Lcom/android/settings/fuelgauge/PowerGaugePreference;
    invoke-virtual {v7}, Lcom/android/settings/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v9

    const-wide/high16 v11, 0x4059

    mul-double/2addr v9, v11

    iget-object v11, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/settings/fuelgauge/BatteryStatsHelper;

    invoke-virtual {v11}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->getMaxPower()D

    move-result-wide v11

    div-double v2, v9, v11

    .line 245
    .local v2, percentOfMax:D
    iput-wide v4, v7, Lcom/android/settings/fuelgauge/BatterySipper;->percent:D

    .line 246
    iget-object v9, v7, Lcom/android/settings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 247
    const v9, 0x7fffffff

    invoke-virtual {v7}, Lcom/android/settings/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v10

    double-to-int v10, v10

    sub-int/2addr v9, v10

    invoke-virtual {v6, v9}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setOrder(I)V

    .line 248
    invoke-virtual {v6, v2, v3, v4, v5}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setPercent(DD)V

    .line 249
    iget-object v9, v7, Lcom/android/settings/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v9, :cond_3

    .line 250
    iget-object v9, v7, Lcom/android/settings/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v9}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setKey(Ljava/lang/String;)V

    .line 252
    :cond_3
    iget-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9, v6}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 253
    iget-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v9

    const/16 v10, 0xb

    if-le v9, v10, :cond_2

    goto/16 :goto_0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 95
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 96
    new-instance v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p1, v1}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/settings/fuelgauge/BatteryStatsHelper;

    .line 97
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 101
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 102
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/settings/fuelgauge/BatteryStatsHelper;

    invoke-virtual {v0, p1}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->create(Landroid/os/Bundle;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "battery"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManager;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryService:Landroid/os/BatteryManager;

    .line 105
    const v0, 0x7f050030

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addPreferencesFromResource(I)V

    .line 106
    const-string v0, "app_list"

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    .line 107
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    const-string v1, "battery_status"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryStatusPref:Landroid/preference/Preference;

    .line 108
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->setHasOptionsMenu(Z)V

    .line 109
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 8
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x0

    .line 169
    const/4 v4, 0x2

    const v5, 0x7f0809ac

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f020084

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    const/16 v5, 0x72

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v2

    .line 172
    .local v2, refresh:Landroid/view/MenuItem;
    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 174
    const/4 v4, 0x3

    const v5, 0x7f080366

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f020081

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    const/16 v5, 0x64

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v3

    .line 177
    .local v3, reset:Landroid/view/MenuItem;
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 181
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080b8a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, helpUrl:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 182
    const/4 v4, 0x4

    const v5, 0x7f080b83

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 183
    .local v0, help:Landroid/view/MenuItem;
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v0, v1}, Lcom/android/settings/HelpUtils;->prepareHelpMenuItem(Landroid/content/Context;Landroid/view/MenuItem;Ljava/lang/String;)Z

    .line 185
    .end local v0           #help:Landroid/view/MenuItem;
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 129
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 130
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/settings/fuelgauge/BatteryStatsHelper;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->destroy()V

    .line 131
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 189
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 208
    :goto_0
    return v0

    .line 191
    :pswitch_0
    iget v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    if-nez v2, :cond_0

    .line 192
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    .line 196
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->refreshStats()V

    goto :goto_0

    .line 194
    :cond_0
    iput v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    goto :goto_1

    .line 199
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/settings/fuelgauge/BatteryStatsHelper;

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->clearStats()V

    .line 200
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->refreshStats()V

    goto :goto_0

    .line 203
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/settings/fuelgauge/BatteryStatsHelper;

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->resetStatistics()V

    .line 204
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/settings/fuelgauge/BatteryStatsHelper;

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->clearStats()V

    .line 205
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->refreshStats()V

    goto :goto_0

    .line 189
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/settings/fuelgauge/BatteryStatsHelper;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->pause()V

    .line 122
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 124
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 125
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 135
    instance-of v0, p2, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;

    if-eqz v0, :cond_2

    .line 136
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/settings/fuelgauge/BatteryStatsHelper;

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->getStats()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v1

    invoke-virtual {v1, v0, v6}, Lcom/android/internal/os/BatteryStatsImpl;->writeToParcelWithoutUids(Landroid/os/Parcel;I)V

    .line 138
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    .line 139
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 140
    const-string v1, "stats"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 141
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryService:Landroid/os/BatteryManager;

    invoke-virtual {v0}, Landroid/os/BatteryManager;->isDockBatterySupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 143
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/settings/fuelgauge/BatteryStatsHelper;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->getDockStats(Landroid/content/Context;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v1

    invoke-virtual {v1, v0, v6}, Lcom/android/internal/os/BatteryStatsImpl;->writeToParcelWithoutUids(Landroid/os/Parcel;I)V

    .line 144
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    .line 145
    const-string v1, "dockstats"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 148
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 149
    const-class v1, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f08097a

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 151
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v6

    .line 159
    :cond_1
    :goto_0
    return v6

    .line 153
    :cond_2
    instance-of v0, p2, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    if-eqz v0, :cond_1

    move-object v0, p2

    .line 156
    check-cast v0, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    .line 157
    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->getInfo()Lcom/android/settings/fuelgauge/BatterySipper;

    move-result-object v1

    .line 158
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/settings/fuelgauge/BatteryStatsHelper;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->startBatteryDetailPage(Landroid/preference/PreferenceActivity;Lcom/android/settings/fuelgauge/BatterySipper;Z)V

    .line 159
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v6

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 113
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 116
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->refreshStats()V

    .line 117
    return-void
.end method
