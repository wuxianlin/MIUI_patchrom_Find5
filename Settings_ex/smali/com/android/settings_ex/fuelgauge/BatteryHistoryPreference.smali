.class public Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;
.super Landroid/preference/Preference;
.source "BatteryHistoryPreference.java"


# instance fields
.field private mDockStats:Landroid/os/BatteryStats;

.field private mStats:Landroid/os/BatteryStats;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/BatteryStats;Landroid/os/BatteryStats;)V
    .locals 1
    .parameter "context"
    .parameter "stats"
    .parameter "dockStats"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 41
    const v0, 0x7f040088

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;->setLayoutResource(I)V

    .line 42
    iput-object p2, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;->mStats:Landroid/os/BatteryStats;

    .line 43
    iput-object p3, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;->mDockStats:Landroid/os/BatteryStats;

    .line 44
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 54
    const v1, 0x7f0d0162

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;

    .line 56
    .local v0, chart:Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->setStats(Landroid/os/BatteryStats;)V

    .line 57
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;->mDockStats:Landroid/os/BatteryStats;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->setDockStats(Landroid/os/BatteryStats;)V

    .line 58
    return-void
.end method
