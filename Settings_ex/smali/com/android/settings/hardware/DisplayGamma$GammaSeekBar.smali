.class Lcom/android/settings/hardware/DisplayGamma$GammaSeekBar;
.super Ljava/lang/Object;
.source "DisplayGamma.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/hardware/DisplayGamma;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GammaSeekBar"
.end annotation


# instance fields
.field private mColorIndex:I

.field private mControlIndex:I

.field private mMin:I

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mValue:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/settings/hardware/DisplayGamma;


# direct methods
.method public constructor <init>(Lcom/android/settings/hardware/DisplayGamma;IILandroid/view/ViewGroup;)V
    .locals 4
    .parameter
    .parameter "controlIndex"
    .parameter "colorIndex"
    .parameter "container"

    .prologue
    .line 297
    iput-object p1, p0, Lcom/android/settings/hardware/DisplayGamma$GammaSeekBar;->this$0:Lcom/android/settings/hardware/DisplayGamma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    iput p2, p0, Lcom/android/settings/hardware/DisplayGamma$GammaSeekBar;->mControlIndex:I

    .line 299
    iput p3, p0, Lcom/android/settings/hardware/DisplayGamma$GammaSeekBar;->mColorIndex:I

    .line 301
    invoke-static {p2}, Lorg/cyanogenmod/hardware/DisplayGammaCalibration;->getMinValue(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/hardware/DisplayGamma$GammaSeekBar;->mMin:I

    .line 303
    const v1, 0x7f0d00da

    invoke-virtual {p4, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/hardware/DisplayGamma$GammaSeekBar;->mValue:Landroid/widget/TextView;

    .line 304
    const v1, 0x7f0d00db

    invoke-virtual {p4, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/android/settings/hardware/DisplayGamma$GammaSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    .line 306
    const v1, 0x7f0d00d9

    invoke-virtual {p4, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 307
    .local v0, label:Landroid/widget/TextView;
    invoke-virtual {p4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/android/settings/hardware/DisplayGamma;->access$100()[I

    move-result-object v2

    aget v2, v2, p3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    iget-object v1, p0, Lcom/android/settings/hardware/DisplayGamma$GammaSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-static {p2}, Lorg/cyanogenmod/hardware/DisplayGammaCalibration;->getMaxValue(I)I

    move-result v2

    iget v3, p0, Lcom/android/settings/hardware/DisplayGamma$GammaSeekBar;->mMin:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 310
    iget-object v1, p0, Lcom/android/settings/hardware/DisplayGamma$GammaSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 311
    iget-object v1, p0, Lcom/android/settings/hardware/DisplayGamma$GammaSeekBar;->mValue:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/hardware/DisplayGamma$GammaSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    iget v3, p0, Lcom/android/settings/hardware/DisplayGamma$GammaSeekBar;->mMin:I

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    iget-object v1, p0, Lcom/android/settings/hardware/DisplayGamma$GammaSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 315
    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 323
    if-eqz p3, :cond_0

    .line 324
    iget-object v0, p0, Lcom/android/settings/hardware/DisplayGamma$GammaSeekBar;->this$0:Lcom/android/settings/hardware/DisplayGamma;

    #getter for: Lcom/android/settings/hardware/DisplayGamma;->mCurrentColors:[[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/hardware/DisplayGamma;->access$200(Lcom/android/settings/hardware/DisplayGamma;)[[Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/hardware/DisplayGamma$GammaSeekBar;->mControlIndex:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/settings/hardware/DisplayGamma$GammaSeekBar;->mColorIndex:I

    iget v2, p0, Lcom/android/settings/hardware/DisplayGamma$GammaSeekBar;->mMin:I

    add-int/2addr v2, p2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 325
    iget v0, p0, Lcom/android/settings/hardware/DisplayGamma$GammaSeekBar;->mControlIndex:I

    const-string v1, " "

    iget-object v2, p0, Lcom/android/settings/hardware/DisplayGamma$GammaSeekBar;->this$0:Lcom/android/settings/hardware/DisplayGamma;

    #getter for: Lcom/android/settings/hardware/DisplayGamma;->mCurrentColors:[[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/hardware/DisplayGamma;->access$200(Lcom/android/settings/hardware/DisplayGamma;)[[Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/hardware/DisplayGamma$GammaSeekBar;->mControlIndex:I

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/cyanogenmod/hardware/DisplayGammaCalibration;->setGamma(ILjava/lang/String;)Z

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/android/settings/hardware/DisplayGamma$GammaSeekBar;->mValue:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/settings/hardware/DisplayGamma$GammaSeekBar;->mMin:I

    add-int/2addr v1, p2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 334
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 339
    return-void
.end method

.method public setGamma(I)V
    .locals 2
    .parameter "gamma"

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/settings/hardware/DisplayGamma$GammaSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/settings/hardware/DisplayGamma$GammaSeekBar;->mMin:I

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 319
    return-void
.end method
