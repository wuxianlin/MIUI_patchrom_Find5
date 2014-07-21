.class public Lcom/android/settings/fuelgauge/BatteryHistoryDetail;
.super Landroid/app/Fragment;
.source "BatteryHistoryDetail.java"


# instance fields
.field private mDockStats:Lcom/android/internal/os/BatteryStatsImpl;

.field private mStats:Lcom/android/internal/os/BatteryStatsImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/4 v5, 0x0

    .line 38
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "stats"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 40
    .local v0, data:[B
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "dockstats"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 41
    .local v1, dockData:[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 42
    .local v2, parcel:Landroid/os/Parcel;
    array-length v3, v0

    invoke-virtual {v2, v0, v5, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 43
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 44
    sget-object v3, Lcom/android/internal/os/BatteryStatsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatteryStatsImpl;

    iput-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 46
    if-eqz v1, :cond_0

    .line 47
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 48
    array-length v3, v1

    invoke-virtual {v2, v1, v5, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 49
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 50
    sget-object v3, Lcom/android/internal/os/DockBatteryStatsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatteryStatsImpl;

    iput-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mDockStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 53
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 57
    const v2, 0x7f040088

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 58
    .local v1, view:Landroid/view/View;
    const v2, 0x7f0d0162

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;

    .line 60
    .local v0, chart:Lcom/android/settings/fuelgauge/BatteryHistoryChart;
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v2}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->setStats(Landroid/os/BatteryStats;)V

    .line 61
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mDockStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v2}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->setDockStats(Landroid/os/BatteryStats;)V

    .line 62
    return-object v1
.end method
