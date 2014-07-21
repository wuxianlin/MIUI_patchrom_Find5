.class public Lcom/android/settings_ex/FontDialogPreference;
.super Landroid/preference/DialogPreference;
.source "FontDialogPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private mDescriptionText:Landroid/widget/TextView;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mLargeTextSp:I

.field private mPercentageText:Landroid/widget/TextView;

.field private mSeekBar:Lcom/android/settings_ex/IntervalSeekBar;

.field private mSmallTextSp:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const v0, 0x104000a

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/FontDialogPreference;->setPositiveButtonText(I)V

    .line 36
    const/high16 v0, 0x104

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/FontDialogPreference;->setNegativeButtonText(I)V

    .line 38
    invoke-direct {p0}, Lcom/android/settings_ex/FontDialogPreference;->initDisplayMetrics()V

    .line 40
    const v0, 0x7f04008d

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/FontDialogPreference;->setDialogLayoutResource(I)V

    .line 41
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/FontDialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 42
    return-void
.end method

.method static getFontSizeDescription(Landroid/content/res/Resources;F)Ljava/lang/String;
    .locals 7
    .parameter "r"
    .parameter "val"

    .prologue
    .line 111
    const v5, 0x7f0c0008

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 112
    .local v3, names:[Ljava/lang/String;
    const v5, 0x7f0c0009

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, indices:[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 115
    .local v2, lastVal:F
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    array-length v5, v1

    if-ge v0, v5, :cond_1

    .line 116
    aget-object v5, v1, v0

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 117
    .local v4, thisVal:F
    sub-float v5, v4, v2

    const/high16 v6, 0x3f00

    mul-float/2addr v5, v6

    add-float/2addr v5, v2

    cmpg-float v5, p1, v5

    if-gez v5, :cond_0

    .line 118
    add-int/lit8 v5, v0, -0x1

    aget-object v5, v3, v5

    .line 122
    .end local v4           #thisVal:F
    :goto_1
    return-object v5

    .line 120
    .restart local v4       #thisVal:F
    :cond_0
    move v2, v4

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    .end local v4           #thisVal:F
    :cond_1
    array-length v5, v1

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v3, v5

    goto :goto_1
.end method

.method private initDisplayMetrics()V
    .locals 3

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/settings_ex/FontDialogPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 72
    .local v0, metrics:Landroid/util/DisplayMetrics;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lcom/android/settings_ex/FontDialogPreference;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 73
    iget-object v1, p0, Lcom/android/settings_ex/FontDialogPreference;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    iput v2, v1, Landroid/util/DisplayMetrics;->density:F

    .line 74
    iget-object v1, p0, Lcom/android/settings_ex/FontDialogPreference;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 75
    iget-object v1, p0, Lcom/android/settings_ex/FontDialogPreference;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput v2, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 76
    iget-object v1, p0, Lcom/android/settings_ex/FontDialogPreference;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 77
    iget-object v1, p0, Lcom/android/settings_ex/FontDialogPreference;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v0, Landroid/util/DisplayMetrics;->xdpi:F

    iput v2, v1, Landroid/util/DisplayMetrics;->xdpi:F

    .line 78
    iget-object v1, p0, Lcom/android/settings_ex/FontDialogPreference;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v0, Landroid/util/DisplayMetrics;->ydpi:F

    iput v2, v1, Landroid/util/DisplayMetrics;->ydpi:F

    .line 79
    return-void
.end method

.method private setPrompt(F)V
    .locals 7
    .parameter "fontScaling"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 130
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/high16 v4, 0x42c8

    mul-float/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, percentage:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings_ex/FontDialogPreference;->mPercentageText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v3, p0, Lcom/android/settings_ex/FontDialogPreference;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget-object v4, p0, Lcom/android/settings_ex/FontDialogPreference;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, p1

    iput v4, v3, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 135
    iget v3, p0, Lcom/android/settings_ex/FontDialogPreference;->mLargeTextSp:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/settings_ex/FontDialogPreference;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v6, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 137
    .local v0, largeSize:F
    iget v3, p0, Lcom/android/settings_ex/FontDialogPreference;->mSmallTextSp:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/settings_ex/FontDialogPreference;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v6, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    .line 139
    .local v2, smallSize:F
    iget-object v3, p0, Lcom/android/settings_ex/FontDialogPreference;->mDescriptionText:Landroid/widget/TextView;

    invoke-virtual {v3, v5, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 140
    iget-object v3, p0, Lcom/android/settings_ex/FontDialogPreference;->mPercentageText:Landroid/widget/TextView;

    invoke-virtual {v3, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 141
    return-void
.end method


# virtual methods
.method public click()V
    .locals 0

    .prologue
    .line 101
    invoke-super {p0}, Landroid/preference/DialogPreference;->onClick()V

    .line 102
    return-void
.end method

.method protected onClick()V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .locals 6

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/android/settings_ex/FontDialogPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 48
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f04008d

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 50
    .local v3, view:Landroid/view/View;
    const v4, 0x7f0d00b7

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings_ex/FontDialogPreference;->mDescriptionText:Landroid/widget/TextView;

    .line 51
    const v4, 0x7f0d0168

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings_ex/FontDialogPreference;->mPercentageText:Landroid/widget/TextView;

    .line 54
    iget-object v4, p0, Lcom/android/settings_ex/FontDialogPreference;->mDescriptionText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    iget-object v5, p0, Lcom/android/settings_ex/FontDialogPreference;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p0, Lcom/android/settings_ex/FontDialogPreference;->mLargeTextSp:I

    .line 55
    iget-object v4, p0, Lcom/android/settings_ex/FontDialogPreference;->mPercentageText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    iget-object v5, p0, Lcom/android/settings_ex/FontDialogPreference;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p0, Lcom/android/settings_ex/FontDialogPreference;->mSmallTextSp:I

    .line 57
    const v4, 0x7f0d0169

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/settings_ex/IntervalSeekBar;

    iput-object v4, p0, Lcom/android/settings_ex/FontDialogPreference;->mSeekBar:Lcom/android/settings_ex/IntervalSeekBar;

    .line 59
    iget-object v4, p0, Lcom/android/settings_ex/FontDialogPreference;->mSeekBar:Lcom/android/settings_ex/IntervalSeekBar;

    invoke-virtual {v4}, Lcom/android/settings_ex/IntervalSeekBar;->getDefault()F

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/FontDialogPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, strFontSize:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 62
    .local v0, fontSize:F
    iget-object v4, p0, Lcom/android/settings_ex/FontDialogPreference;->mSeekBar:Lcom/android/settings_ex/IntervalSeekBar;

    invoke-virtual {v4, v0}, Lcom/android/settings_ex/IntervalSeekBar;->setProgressFloat(F)V

    .line 63
    iget-object v4, p0, Lcom/android/settings_ex/FontDialogPreference;->mSeekBar:Lcom/android/settings_ex/IntervalSeekBar;

    invoke-virtual {v4, p0}, Lcom/android/settings_ex/IntervalSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 65
    invoke-direct {p0, v0}, Lcom/android/settings_ex/FontDialogPreference;->setPrompt(F)V

    .line 67
    return-object v3
.end method

.method protected onDialogClosed(Z)V
    .locals 1
    .parameter "positiveResult"

    .prologue
    .line 83
    if-eqz p1, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/settings_ex/FontDialogPreference;->mSeekBar:Lcom/android/settings_ex/IntervalSeekBar;

    invoke-virtual {v0}, Lcom/android/settings_ex/IntervalSeekBar;->getProgressFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/FontDialogPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/settings_ex/FontDialogPreference;->mSeekBar:Lcom/android/settings_ex/IntervalSeekBar;

    invoke-virtual {v0}, Lcom/android/settings_ex/IntervalSeekBar;->getProgressFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/FontDialogPreference;->persistString(Ljava/lang/String;)Z

    .line 93
    :cond_0
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/settings_ex/FontDialogPreference;->mSeekBar:Lcom/android/settings_ex/IntervalSeekBar;

    invoke-virtual {v0}, Lcom/android/settings_ex/IntervalSeekBar;->getProgressFloat()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/FontDialogPreference;->setPrompt(F)V

    .line 146
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 151
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 155
    return-void
.end method
