.class public Lcom/android/settings/IntervalSeekBar;
.super Landroid/widget/SeekBar;
.source "IntervalSeekBar.java"


# instance fields
.field private mDefault:F

.field private mMax:F

.field private mMin:F

.field private mMultiplier:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, 0x0

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    sget-object v3, Lcom/android/settings/R$styleable;->IntervalSeekBar:[I

    invoke-virtual {p1, p2, v3, v5, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 26
    .local v1, seekBarType:Landroid/content/res/TypedArray;
    const/4 v3, 0x1

    const/high16 v4, 0x3fc0

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lcom/android/settings/IntervalSeekBar;->mMax:F

    .line 27
    const/high16 v3, 0x3f00

    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lcom/android/settings/IntervalSeekBar;->mMin:F

    .line 28
    const/4 v3, 0x2

    const/high16 v4, 0x3f80

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lcom/android/settings/IntervalSeekBar;->mDefault:F

    .line 30
    const/4 v3, 0x3

    invoke-virtual {v1, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 31
    .local v0, digits:I
    const-wide/high16 v3, 0x4024

    int-to-double v5, v0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    iput v3, p0, Lcom/android/settings/IntervalSeekBar;->mMultiplier:F

    .line 33
    iget v3, p0, Lcom/android/settings/IntervalSeekBar;->mMin:F

    iget v4, p0, Lcom/android/settings/IntervalSeekBar;->mMax:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 34
    iget v2, p0, Lcom/android/settings/IntervalSeekBar;->mMax:F

    .line 35
    .local v2, temp:F
    iget v3, p0, Lcom/android/settings/IntervalSeekBar;->mMin:F

    iput v3, p0, Lcom/android/settings/IntervalSeekBar;->mMax:F

    .line 36
    iput v2, p0, Lcom/android/settings/IntervalSeekBar;->mMin:F

    .line 39
    .end local v2           #temp:F
    :cond_0
    iget v3, p0, Lcom/android/settings/IntervalSeekBar;->mMax:F

    invoke-direct {p0, v3}, Lcom/android/settings/IntervalSeekBar;->convertFloatToProgress(F)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/settings/IntervalSeekBar;->setMax(I)V

    .line 40
    iget v3, p0, Lcom/android/settings/IntervalSeekBar;->mDefault:F

    invoke-virtual {p0, v3}, Lcom/android/settings/IntervalSeekBar;->setProgressFloat(F)V

    .line 42
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 43
    return-void
.end method

.method private convertFloatToProgress(F)I
    .locals 2
    .parameter "value"

    .prologue
    .line 64
    iget v0, p0, Lcom/android/settings/IntervalSeekBar;->mMin:F

    sub-float v0, p1, v0

    iget v1, p0, Lcom/android/settings/IntervalSeekBar;->mMultiplier:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method


# virtual methods
.method public getDefault()F
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/android/settings/IntervalSeekBar;->mDefault:F

    return v0
.end method

.method public getProgressFloat()F
    .locals 2

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/android/settings/IntervalSeekBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/settings/IntervalSeekBar;->mMultiplier:F

    div-float/2addr v0, v1

    iget v1, p0, Lcom/android/settings/IntervalSeekBar;->mMin:F

    add-float/2addr v0, v1

    return v0
.end method

.method public setProgressFloat(F)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/settings/IntervalSeekBar;->convertFloatToProgress(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/IntervalSeekBar;->setProgress(I)V

    .line 61
    return-void
.end method
