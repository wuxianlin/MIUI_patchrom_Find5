.class public Lcom/android/settings/AnimationScalePreference;
.super Landroid/preference/DialogPreference;
.source "AnimationScalePreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private mScale:F

.field private mScaleText:Landroid/widget/TextView;

.field private mSeekBar:Lcom/android/settings/IntervalSeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/settings/AnimationScalePreference;->mScale:F

    .line 38
    const v0, 0x104000a

    invoke-virtual {p0, v0}, Lcom/android/settings/AnimationScalePreference;->setPositiveButtonText(I)V

    .line 39
    const/high16 v0, 0x104

    invoke-virtual {p0, v0}, Lcom/android/settings/AnimationScalePreference;->setNegativeButtonText(I)V

    .line 41
    const v0, 0x7f04008d

    invoke-virtual {p0, v0}, Lcom/android/settings/AnimationScalePreference;->setDialogLayoutResource(I)V

    .line 42
    return-void
.end method


# virtual methods
.method public click()V
    .locals 0

    .prologue
    .line 78
    invoke-super {p0}, Landroid/preference/DialogPreference;->onClick()V

    .line 79
    return-void
.end method

.method protected onClick()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .locals 5

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/android/settings/AnimationScalePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 48
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f04008c

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 50
    .local v1, view:Landroid/view/View;
    const v2, 0x7f0d0028

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/AnimationScalePreference;->mScaleText:Landroid/widget/TextView;

    .line 51
    iget-object v2, p0, Lcom/android/settings/AnimationScalePreference;->mScaleText:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/android/settings/AnimationScalePreference;->mScale:F

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    const v2, 0x7f0d0167

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/IntervalSeekBar;

    iput-object v2, p0, Lcom/android/settings/AnimationScalePreference;->mSeekBar:Lcom/android/settings/IntervalSeekBar;

    .line 54
    iget-object v2, p0, Lcom/android/settings/AnimationScalePreference;->mSeekBar:Lcom/android/settings/IntervalSeekBar;

    iget v3, p0, Lcom/android/settings/AnimationScalePreference;->mScale:F

    invoke-virtual {v2, v3}, Lcom/android/settings/IntervalSeekBar;->setProgressFloat(F)V

    .line 55
    iget-object v2, p0, Lcom/android/settings/AnimationScalePreference;->mSeekBar:Lcom/android/settings/IntervalSeekBar;

    invoke-virtual {v2, p0}, Lcom/android/settings/IntervalSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 57
    return-object v1
.end method

.method protected onDialogClosed(Z)V
    .locals 1
    .parameter "positiveResult"

    .prologue
    .line 67
    if-eqz p1, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/settings/AnimationScalePreference;->mSeekBar:Lcom/android/settings/IntervalSeekBar;

    invoke-virtual {v0}, Lcom/android/settings/IntervalSeekBar;->getProgressFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/AnimationScalePreference;->callChangeListener(Ljava/lang/Object;)Z

    .line 70
    :cond_0
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings/AnimationScalePreference;->mScaleText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/AnimationScalePreference;->mSeekBar:Lcom/android/settings/IntervalSeekBar;

    invoke-virtual {v2}, Lcom/android/settings/IntervalSeekBar;->getProgressFloat()F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 89
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 93
    return-void
.end method

.method public setScale(F)V
    .locals 2
    .parameter "scale"

    .prologue
    .line 61
    iput p1, p0, Lcom/android/settings/AnimationScalePreference;->mScale:F

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/AnimationScalePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 63
    return-void
.end method
