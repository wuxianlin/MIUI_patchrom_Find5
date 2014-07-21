.class Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;
.super Ljava/lang/Object;
.source "BatteryHistoryChart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/BatteryHistoryChart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChartData"
.end annotation


# instance fields
.field mColors:[I

.field mLastBin:I

.field mNumTicks:I

.field mPaints:[Landroid/graphics/Paint;

.field mTicks:[I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method addTick(II)V
    .locals 3
    .parameter "x"
    .parameter "bin"

    .prologue
    .line 73
    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->mLastBin:I

    if-eq p2, v0, :cond_0

    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->mNumTicks:I

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->mTicks:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->mTicks:[I

    iget v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->mNumTicks:I

    shl-int/lit8 v2, p2, 0x10

    or-int/2addr v2, p1

    aput v2, v0, v1

    .line 75
    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->mNumTicks:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->mNumTicks:I

    .line 76
    iput p2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->mLastBin:I

    .line 78
    :cond_0
    return-void
.end method

.method draw(Landroid/graphics/Canvas;II)V
    .locals 13
    .parameter "canvas"
    .parameter "top"
    .parameter "height"

    .prologue
    .line 87
    const/4 v9, 0x0

    .local v9, lastBin:I
    const/4 v10, 0x0

    .line 88
    .local v10, lastX:I
    add-int v7, p2, p3

    .line 89
    .local v7, bottom:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->mNumTicks:I

    if-ge v8, v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->mTicks:[I

    aget v11, v0, v8

    .line 91
    .local v11, tick:I
    const v0, 0xffff

    and-int v12, v11, v0

    .line 92
    .local v12, x:I
    const/high16 v0, -0x1

    and-int/2addr v0, v11

    shr-int/lit8 v6, v0, 0x10

    .line 93
    .local v6, bin:I
    if-eqz v9, :cond_0

    .line 94
    int-to-float v1, v10

    int-to-float v2, p2

    int-to-float v3, v12

    int-to-float v4, v7

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->mPaints:[Landroid/graphics/Paint;

    aget-object v5, v0, v9

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 96
    :cond_0
    move v9, v6

    .line 97
    move v10, v12

    .line 89
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 100
    .end local v6           #bin:I
    .end local v11           #tick:I
    .end local v12           #x:I
    :cond_1
    return-void
.end method

.method finish(I)V
    .locals 1
    .parameter "width"

    .prologue
    .line 81
    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->mLastBin:I

    if-eqz v0, :cond_0

    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->addTick(II)V

    .line 84
    :cond_0
    return-void
.end method

.method init(I)V
    .locals 2
    .parameter "width"

    .prologue
    const/4 v1, 0x0

    .line 63
    if-lez p1, :cond_0

    .line 64
    mul-int/lit8 v0, p1, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->mTicks:[I

    .line 68
    :goto_0
    iput v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->mNumTicks:I

    .line 69
    iput v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->mLastBin:I

    .line 70
    return-void

    .line 66
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->mTicks:[I

    goto :goto_0
.end method

.method setColors([I)V
    .locals 3
    .parameter "colors"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->mColors:[I

    .line 54
    array-length v1, p1

    new-array v1, v1, [Landroid/graphics/Paint;

    iput-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->mPaints:[Landroid/graphics/Paint;

    .line 55
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 56
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->mPaints:[Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    aput-object v2, v1, v0

    .line 57
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->mPaints:[Landroid/graphics/Paint;

    aget-object v1, v1, v0

    aget v2, p1, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 58
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->mPaints:[Landroid/graphics/Paint;

    aget-object v1, v1, v0

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    :cond_0
    return-void
.end method
