.class public Lcom/android/settings_ex/cyanogenmod/MagneticCenterSeekBar;
.super Landroid/widget/SeekBar;
.source "MagneticCenterSeekBar.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method


# virtual methods
.method protected updateTouchProgress(II)I
    .locals 8
    .parameter "lastProgress"
    .parameter "newProgress"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const v7, 0x3cf5c28f

    .line 41
    invoke-virtual {p0}, Lcom/android/settings_ex/cyanogenmod/MagneticCenterSeekBar;->getMax()I

    move-result v6

    div-int/lit8 v0, v6, 0x2

    .line 42
    .local v0, centerProgress:I
    invoke-virtual {p0}, Lcom/android/settings_ex/cyanogenmod/MagneticCenterSeekBar;->getMax()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v7

    float-to-int v1, v6

    .line 43
    .local v1, inThreshold:I
    invoke-virtual {p0}, Lcom/android/settings_ex/cyanogenmod/MagneticCenterSeekBar;->getMax()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v7

    float-to-int v2, v6

    .line 44
    .local v2, outThreshold:I
    const/4 v3, 0x0

    .line 46
    .local v3, resetToCenter:Z
    if-le p2, p1, :cond_4

    .line 47
    if-ge p2, v0, :cond_0

    sub-int v6, v0, v1

    if-gt p2, v6, :cond_1

    :cond_0
    if-le p2, v0, :cond_3

    add-int v6, v0, v2

    if-ge p2, v6, :cond_3

    :cond_1
    move v3, v4

    .line 56
    :cond_2
    :goto_0
    if-eqz v3, :cond_8

    .line 60
    .end local v0           #centerProgress:I
    :goto_1
    return v0

    .restart local v0       #centerProgress:I
    :cond_3
    move v3, v5

    .line 47
    goto :goto_0

    .line 50
    :cond_4
    if-ge p2, p1, :cond_2

    .line 51
    if-le p2, v0, :cond_5

    add-int v6, v0, v1

    if-lt p2, v6, :cond_6

    :cond_5
    if-ge p2, v0, :cond_7

    add-int v6, v0, v2

    if-le p2, v6, :cond_7

    :cond_6
    move v3, v4

    :goto_2
    goto :goto_0

    :cond_7
    move v3, v5

    goto :goto_2

    :cond_8
    move v0, p2

    .line 60
    goto :goto_1
.end method
