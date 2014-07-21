.class public abstract Lcom/android/settings/hardware/HWValueSliderPreference;
.super Landroid/preference/DialogPreference;
.source "HWValueSliderPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/hardware/HWValueSliderPreference$SavedState;,
        Lcom/android/settings/hardware/HWValueSliderPreference$HardwareInterface;
    }
.end annotation


# instance fields
.field private mHw:Lcom/android/settings/hardware/HWValueSliderPreference$HardwareInterface;

.field private mMin:I

.field private mOriginalValue:I

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mProgressThumb:Landroid/graphics/drawable/Drawable;

.field private mRedFilter:Landroid/graphics/LightingColorFilter;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mValue:Landroid/widget/TextView;

.field private mWarning:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/settings/hardware/HWValueSliderPreference$HardwareInterface;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "hw"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    if-eqz p3, :cond_0

    .line 70
    iput-object p3, p0, Lcom/android/settings/hardware/HWValueSliderPreference;->mHw:Lcom/android/settings/hardware/HWValueSliderPreference$HardwareInterface;

    .line 71
    invoke-interface {p3}, Lcom/android/settings/hardware/HWValueSliderPreference$HardwareInterface;->getMinValue()I

    move-result v0

    iput v0, p0, Lcom/android/settings/hardware/HWValueSliderPreference;->mMin:I

    .line 73
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/hardware/HWValueSliderPreference;)Lcom/android/settings/hardware/HWValueSliderPreference$HardwareInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/hardware/HWValueSliderPreference;->mHw:Lcom/android/settings/hardware/HWValueSliderPreference$HardwareInterface;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/hardware/HWValueSliderPreference;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/android/settings/hardware/HWValueSliderPreference;->mMin:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/hardware/HWValueSliderPreference;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/hardware/HWValueSliderPreference;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method private hwValueToPercent(I)I
    .locals 12
    .parameter "value"

    .prologue
    const-wide/high16 v10, 0x4059

    .line 221
    iget-object v6, p0, Lcom/android/settings/hardware/HWValueSliderPreference;->mHw:Lcom/android/settings/hardware/HWValueSliderPreference$HardwareInterface;

    invoke-interface {v6}, Lcom/android/settings/hardware/HWValueSliderPreference$HardwareInterface;->getMaxValue()I

    move-result v6

    int-to-double v0, v6

    .line 222
    .local v0, maxValue:D
    iget-object v6, p0, Lcom/android/settings/hardware/HWValueSliderPreference;->mHw:Lcom/android/settings/hardware/HWValueSliderPreference$HardwareInterface;

    invoke-interface {v6}, Lcom/android/settings/hardware/HWValueSliderPreference$HardwareInterface;->getMinValue()I

    move-result v6

    int-to-double v2, v6

    .line 223
    .local v2, minValue:D
    int-to-double v6, p1

    sub-double/2addr v6, v2

    sub-double v8, v0, v2

    div-double v8, v10, v8

    mul-double v4, v6, v8

    .line 225
    .local v4, percent:D
    cmpl-double v6, v4, v10

    if-lez v6, :cond_1

    .line 226
    const-wide/high16 v4, 0x4059

    .line 231
    :cond_0
    :goto_0
    double-to-int v6, v4

    return v6

    .line 227
    :cond_1
    const-wide/16 v6, 0x0

    cmpg-double v6, v4, v6

    if-gez v6, :cond_0

    .line 228
    const-wide/16 v4, 0x0

    goto :goto_0
.end method

.method protected static restore(Landroid/content/Context;Lcom/android/settings/hardware/HWValueSliderPreference$HardwareInterface;)V
    .locals 4
    .parameter "context"
    .parameter "hw"

    .prologue
    .line 188
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 189
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {p1}, Lcom/android/settings/hardware/HWValueSliderPreference$HardwareInterface;->getPreferenceName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/android/settings/hardware/HWValueSliderPreference$HardwareInterface;->getDefaultValue()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 191
    .local v1, value:I
    invoke-interface {p1, v1}, Lcom/android/settings/hardware/HWValueSliderPreference$HardwareInterface;->setValue(I)Z

    .line 192
    return-void
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 11
    .parameter "view"

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 89
    const v6, 0x10202ff

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/SeekBar;

    iput-object v6, p0, Lcom/android/settings/hardware/HWValueSliderPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 90
    const v6, 0x7f0d003e

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/settings/hardware/HWValueSliderPreference;->mValue:Landroid/widget/TextView;

    .line 91
    const v6, 0x7f0d0230

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/settings/hardware/HWValueSliderPreference;->mWarning:Landroid/widget/TextView;

    .line 93
    iget-object v6, p0, Lcom/android/settings/hardware/HWValueSliderPreference;->mHw:Lcom/android/settings/hardware/HWValueSliderPreference$HardwareInterface;

    invoke-interface {v6}, Lcom/android/settings/hardware/HWValueSliderPreference$HardwareInterface;->getWarningThreshold()I

    move-result v5

    .line 94
    .local v5, warningThreshold:I
    if-lez v5, :cond_2

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/hardware/HWValueSliderPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f08027d

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-direct {p0, v5}, Lcom/android/settings/hardware/HWValueSliderPreference;->hwValueToPercent(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, message:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/hardware/HWValueSliderPreference;->mWarning:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    .end local v1           #message:Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/settings/hardware/HWValueSliderPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 103
    .local v2, progressDrawable:Landroid/graphics/drawable/Drawable;
    instance-of v6, v2, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v6, :cond_1

    move-object v0, v2

    .line 104
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 105
    .local v0, ld:Landroid/graphics/drawable/LayerDrawable;
    const v6, 0x102000d

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/hardware/HWValueSliderPreference;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 107
    .end local v0           #ld:Landroid/graphics/drawable/LayerDrawable;
    :cond_1
    iget-object v6, p0, Lcom/android/settings/hardware/HWValueSliderPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/hardware/HWValueSliderPreference;->mProgressThumb:Landroid/graphics/drawable/Drawable;

    .line 108
    new-instance v6, Landroid/graphics/LightingColorFilter;

    const/high16 v7, -0x100

    invoke-virtual {p0}, Lcom/android/settings/hardware/HWValueSliderPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1060016

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-direct {v6, v7, v8}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    iput-object v6, p0, Lcom/android/settings/hardware/HWValueSliderPreference;->mRedFilter:Landroid/graphics/LightingColorFilter;

    .line 112
    iget-object v6, p0, Lcom/android/settings/hardware/HWValueSliderPreference;->mHw:Lcom/android/settings/hardware/HWValueSliderPreference$HardwareInterface;

    invoke-interface {v6}, Lcom/android/settings/hardware/HWValueSliderPreference$HardwareInterface;->getCurrentValue()I

    move-result v6

    iput v6, p0, Lcom/android/settings/hardware/HWValueSliderPreference;->mOriginalValue:I

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/hardware/HWValueSliderPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 116
    .local v3, settings:Landroid/content/SharedPreferences;
    iget-object v6, p0, Lcom/android/settings/hardware/HWValueSliderPreference;->mHw:Lcom/android/settings/hardware/HWValueSliderPreference$HardwareInterface;

    invoke-interface {v6}, Lcom/android/settings/hardware/HWValueSliderPreference$HardwareInterface;->getPreferenceName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/hardware/HWValueSliderPreference;->mHw:Lcom/android/settings/hardware/HWValueSliderPreference$HardwareInterface;

    invoke-interface {v7}, Lcom/android/settings/hardware/HWValueSliderPreference$HardwareInterface;->getDefaultValue()I

    move-result v7

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 118
    .local v4, value:I
    iget-object v6, p0, Lcom/android/settings/hardware/HWValueSliderPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v6, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 119
    iget-object v6, p0, Lcom/android/settings/hardware/HWValueSliderPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v7, p0, Lcom/android/settings/hardware/HWValueSliderPreference;->mHw:Lcom/android/settings/hardware/HWValueSliderPreference$HardwareInterface;

    invoke-interface {v7}, Lcom/android/settings/hardware/HWValueSliderPreference$HardwareInterface;->getMaxValue()I

    move-result v7

    iget v8, p0, Lcom/android/settings/hardware/HWValueSliderPreference;->mMin:I

    sub-int/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setMax(I)V

    .line 120
    iget-object v6, p0, Lcom/android/settings/hardware/HWValueSliderPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v7, p0, Lcom/android/settings/hardware/HWValueSliderPreference;->mMin:I

    sub-int v7, v4, v7

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 121
    return-void

    .line 98
    .end local v2           #progressDrawable:Landroid/graphics/drawable/Drawable;
    .end local v3           #settings:Landroid/content/SharedPreferences;
    .end local v4           #value:I
    :cond_2
    iget-object v6, p0, Lcom/android/settings/hardware/HWValueSliderPreference;->mWarning:Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 99
    iget-object v6, p0, Lcom/android/settings/hardware/HWValueSliderPreference;->mWarning:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onDialogClosed(Z)V
    .locals 4
    .parameter "positiveResult"

    .prologue
    .line 141
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 143
    if-eqz p1, :cond_1

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/hardware/HWValueSliderPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 147
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Lcom/android/settings/hardware/HWValueSliderPreference;->mHw:Lcom/android/settings/hardware/HWValueSliderPreference$HardwareInterface;

    invoke-interface {v1}, Lcom/android/settings/hardware/HWValueSliderPreference$HardwareInterface;->getPreferenceName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/hardware/HWValueSliderPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    iget v3, p0, Lcom/android/settings/hardware/HWValueSliderPreference;->mMin:I

    add-int/2addr v2, v3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 148
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 152
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    iget v1, p0, Lcom/android/settings/hardware/HWValueSliderPreference;->mOriginalValue:I

    iget v2, p0, Lcom/android/settings/hardware/HWValueSliderPreference;->mMin:I

    if-lt v1, v2, :cond_0

    .line 150
    iget-object v1, p0, Lcom/android/settings/hardware/HWValueSliderPreference;->mHw:Lcom/android/settings/hardware/HWValueSliderPreference$HardwareInterface;

    iget v2, p0, Lcom/android/settings/hardware/HWValueSliderPreference;->mOriginalValue:I

    invoke-interface {v1, v2}, Lcom/android/settings/hardware/HWValueSliderPreference$HardwareInterface;->setValue(I)Z

    goto :goto_0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 2
    .parameter "builder"

    .prologue
    .line 77
    const v0, 0x7f0801c5

    new-instance v1, Lcom/android/settings/hardware/HWValueSliderPreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/hardware/HWValueSliderPreference$1;-><init>(Lcom/android/settings/hardware/HWValueSliderPreference;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 83
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 7
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 196
    iget-object v4, p0, Lcom/android/settings/hardware/HWValueSliderPreference;->mHw:Lcom/android/settings/hardware/HWValueSliderPreference$HardwareInterface;

    invoke-interface {v4}, Lcom/android/settings/hardware/HWValueSliderPreference$HardwareInterface;->getWarningThreshold()I

    move-result v1

    .line 197
    .local v1, warningThreshold:I
    if-lez v1, :cond_3

    iget v4, p0, Lcom/android/settings/hardware/HWValueSliderPreference;->mMin:I

    sub-int v4, v1, v4

    if-lt p2, v4, :cond_3

    move v0, v2

    .line 199
    .local v0, shouldWarn:Z
    :goto_0
    iget-object v4, p0, Lcom/android/settings/hardware/HWValueSliderPreference;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 200
    iget-object v6, p0, Lcom/android/settings/hardware/HWValueSliderPreference;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    iget-object v4, p0, Lcom/android/settings/hardware/HWValueSliderPreference;->mRedFilter:Landroid/graphics/LightingColorFilter;

    :goto_1
    invoke-virtual {v6, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 202
    :cond_0
    iget-object v4, p0, Lcom/android/settings/hardware/HWValueSliderPreference;->mProgressThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_2

    .line 203
    iget-object v4, p0, Lcom/android/settings/hardware/HWValueSliderPreference;->mProgressThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v5, p0, Lcom/android/settings/hardware/HWValueSliderPreference;->mRedFilter:Landroid/graphics/LightingColorFilter;

    :cond_1
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 206
    :cond_2
    iget-object v4, p0, Lcom/android/settings/hardware/HWValueSliderPreference;->mHw:Lcom/android/settings/hardware/HWValueSliderPreference$HardwareInterface;

    iget v5, p0, Lcom/android/settings/hardware/HWValueSliderPreference;->mMin:I

    add-int/2addr v5, p2

    invoke-interface {v4, v5}, Lcom/android/settings/hardware/HWValueSliderPreference$HardwareInterface;->setValue(I)Z

    .line 207
    iget-object v4, p0, Lcom/android/settings/hardware/HWValueSliderPreference;->mValue:Landroid/widget/TextView;

    const-string v5, "%d%%"

    new-array v2, v2, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/settings/hardware/HWValueSliderPreference;->mMin:I

    add-int/2addr v6, p2

    invoke-direct {p0, v6}, Lcom/android/settings/hardware/HWValueSliderPreference;->hwValueToPercent(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    return-void

    .end local v0           #shouldWarn:Z
    :cond_3
    move v0, v3

    .line 197
    goto :goto_0

    .restart local v0       #shouldWarn:Z
    :cond_4
    move-object v4, v5

    .line 200
    goto :goto_1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter

    .prologue
    .line 175
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/settings/hardware/HWValueSliderPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 177
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 185
    :goto_0
    return-void

    .line 181
    :cond_1
    check-cast p1, Lcom/android/settings/hardware/HWValueSliderPreference$SavedState;

    .line 182
    invoke-virtual {p1}, Lcom/android/settings/hardware/HWValueSliderPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 183
    iget v0, p1, Lcom/android/settings/hardware/HWValueSliderPreference$SavedState;->originalValue:I

    iput v0, p0, Lcom/android/settings/hardware/HWValueSliderPreference;->mOriginalValue:I

    .line 184
    iget-object v0, p0, Lcom/android/settings/hardware/HWValueSliderPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p1, Lcom/android/settings/hardware/HWValueSliderPreference$SavedState;->value:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 156
    invoke-super {p0}, Landroid/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 157
    .local v1, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/android/settings/hardware/HWValueSliderPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/hardware/HWValueSliderPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 170
    :goto_0
    return-object v0

    .line 162
    :cond_1
    new-instance v0, Lcom/android/settings/hardware/HWValueSliderPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/android/settings/hardware/HWValueSliderPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 163
    .local v0, myState:Lcom/android/settings/hardware/HWValueSliderPreference$SavedState;
    iget-object v2, p0, Lcom/android/settings/hardware/HWValueSliderPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    iput v2, v0, Lcom/android/settings/hardware/HWValueSliderPreference$SavedState;->value:I

    .line 164
    iget v2, p0, Lcom/android/settings/hardware/HWValueSliderPreference;->mOriginalValue:I

    iput v2, v0, Lcom/android/settings/hardware/HWValueSliderPreference$SavedState;->originalValue:I

    .line 167
    iget-object v2, p0, Lcom/android/settings/hardware/HWValueSliderPreference;->mHw:Lcom/android/settings/hardware/HWValueSliderPreference$HardwareInterface;

    iget v3, p0, Lcom/android/settings/hardware/HWValueSliderPreference;->mOriginalValue:I

    invoke-interface {v2, v3}, Lcom/android/settings/hardware/HWValueSliderPreference$HardwareInterface;->setValue(I)Z

    .line 168
    const/high16 v2, -0x8000

    iput v2, p0, Lcom/android/settings/hardware/HWValueSliderPreference;->mOriginalValue:I

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 213
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 218
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 125
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/hardware/HWValueSliderPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 130
    .local v0, d:Landroid/app/AlertDialog;
    const/4 v2, -0x3

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 131
    .local v1, defaultsButton:Landroid/widget/Button;
    new-instance v2, Lcom/android/settings/hardware/HWValueSliderPreference$2;

    invoke-direct {v2, p0}, Lcom/android/settings/hardware/HWValueSliderPreference$2;-><init>(Lcom/android/settings/hardware/HWValueSliderPreference;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    return-void
.end method
