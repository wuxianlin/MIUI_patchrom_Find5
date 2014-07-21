.class public Lcom/android/settings_ex/cyanogenmod/BacklightTimeoutSeekBar;
.super Landroid/widget/SeekBar;
.source "BacklightTimeoutSeekBar.java"


# instance fields
.field private mGap:I

.field private mMax:I

.field private mUpdatingThumb:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method


# virtual methods
.method public getProgress()I
    .locals 2

    .prologue
    .line 74
    invoke-super {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 75
    .local v0, progress:I
    iget-boolean v1, p0, Lcom/android/settings_ex/cyanogenmod/BacklightTimeoutSeekBar;->mUpdatingThumb:Z

    if-eqz v1, :cond_0

    .line 80
    .end local v0           #progress:I
    :goto_0
    return v0

    .line 77
    .restart local v0       #progress:I
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/cyanogenmod/BacklightTimeoutSeekBar;->getMax()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 78
    const/4 v0, 0x0

    goto :goto_0

    .line 80
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/cyanogenmod/BacklightTimeoutSeekBar;->mUpdatingThumb:Z

    .line 44
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/SeekBar;->onSizeChanged(IIII)V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/cyanogenmod/BacklightTimeoutSeekBar;->mUpdatingThumb:Z

    .line 46
    return-void
.end method

.method public setMax(I)V
    .locals 1
    .parameter "max"

    .prologue
    .line 57
    iput p1, p0, Lcom/android/settings_ex/cyanogenmod/BacklightTimeoutSeekBar;->mMax:I

    .line 58
    div-int/lit8 v0, p1, 0xa

    iput v0, p0, Lcom/android/settings_ex/cyanogenmod/BacklightTimeoutSeekBar;->mGap:I

    .line 59
    iget v0, p0, Lcom/android/settings_ex/cyanogenmod/BacklightTimeoutSeekBar;->mGap:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    invoke-super {p0, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 60
    return-void
.end method

.method public setProgress(I)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 64
    if-nez p1, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/android/settings_ex/cyanogenmod/BacklightTimeoutSeekBar;->getMax()I

    move-result p1

    .line 69
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 70
    return-void

    .line 67
    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "thumb"

    .prologue
    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/cyanogenmod/BacklightTimeoutSeekBar;->mUpdatingThumb:Z

    .line 51
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/cyanogenmod/BacklightTimeoutSeekBar;->mUpdatingThumb:Z

    .line 53
    return-void
.end method

.method protected updateTouchProgress(II)I
    .locals 2
    .parameter "lastProgress"
    .parameter "newProgress"

    .prologue
    .line 85
    iget v0, p0, Lcom/android/settings_ex/cyanogenmod/BacklightTimeoutSeekBar;->mMax:I

    if-ge p2, v0, :cond_0

    .line 91
    .end local p2
    :goto_0
    return p2

    .line 88
    .restart local p2
    :cond_0
    iget v0, p0, Lcom/android/settings_ex/cyanogenmod/BacklightTimeoutSeekBar;->mMax:I

    iget v1, p0, Lcom/android/settings_ex/cyanogenmod/BacklightTimeoutSeekBar;->mGap:I

    add-int/2addr v0, v1

    if-ge p2, v0, :cond_1

    .line 89
    iget v0, p0, Lcom/android/settings_ex/cyanogenmod/BacklightTimeoutSeekBar;->mMax:I

    add-int/lit8 p2, v0, -0x1

    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/cyanogenmod/BacklightTimeoutSeekBar;->getMax()I

    move-result p2

    goto :goto_0
.end method
