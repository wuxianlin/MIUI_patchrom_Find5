.class Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;
.super Ljava/lang/Object;
.source "ButtonBacklightBrightness.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BrightnessControl"
.end annotation


# instance fields
.field private mCheckBox:Landroid/widget/CheckBox;

.field private mDefaultBrightness:I

.field private mIsSingleValue:Z

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSetting:Ljava/lang/String;

.field private mValue:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness;Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter "setting"
    .parameter "singleValue"

    .prologue
    .line 360
    const/16 v0, 0xff

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;-><init>(Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness;Ljava/lang/String;ZI)V

    .line 361
    return-void
.end method

.method public constructor <init>(Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness;Ljava/lang/String;ZI)V
    .locals 0
    .parameter
    .parameter "setting"
    .parameter "singleValue"
    .parameter "defaultBrightness"

    .prologue
    .line 353
    iput-object p1, p0, Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->this$0:Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    iput-object p2, p0, Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->mSetting:Ljava/lang/String;

    .line 355
    iput-boolean p3, p0, Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->mIsSingleValue:Z

    .line 356
    iput p4, p0, Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->mDefaultBrightness:I

    .line 357
    return-void
.end method

.method private handleBrightnessUpdate(I)V
    .locals 5
    .parameter "brightness"

    .prologue
    .line 434
    iget-object v0, p0, Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->this$0:Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness;

    #calls: Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness;->updateBrightnessPreview()V
    invoke-static {v0}, Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness;->access$500(Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness;)V

    .line 435
    iget-object v0, p0, Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->mValue:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->mValue:Landroid/widget/TextView;

    const-string v1, "%d%%"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    mul-int/lit8 v4, p1, 0x64

    div-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->this$0:Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness;

    #calls: Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness;->updateTimeoutEnabledState()V
    invoke-static {v0}, Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness;->access$600(Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness;)V

    .line 439
    return-void
.end method


# virtual methods
.method public applyBrightness()V
    .locals 3

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->this$0:Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness;

    #getter for: Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness;->access$300(Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->mSetting:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->getBrightness(Z)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 395
    return-void
.end method

.method public getBrightness(Z)I
    .locals 3
    .parameter "persisted"

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 386
    iget-object v0, p0, Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->mDefaultBrightness:I

    .line 390
    :goto_0
    return v0

    .line 386
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 387
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    .line 388
    iget-object v0, p0, Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    goto :goto_0

    .line 390
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->this$0:Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness;

    #getter for: Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness;->access$300(Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->mSetting:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->mDefaultBrightness:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public init(Landroid/view/ViewGroup;)V
    .locals 4
    .parameter "container"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    .line 364
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->getBrightness(Z)I

    move-result v0

    .line 366
    .local v0, brightness:I
    iget-boolean v1, p0, Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->mIsSingleValue:Z

    if-eqz v1, :cond_1

    .line 367
    const v1, 0x7f0d003d

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 368
    const v1, 0x7f0d003c

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->mCheckBox:Landroid/widget/CheckBox;

    .line 369
    iget-object v3, p0, Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 370
    iget-object v1, p0, Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 381
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->handleBrightnessUpdate(I)V

    .line 382
    return-void

    .line 369
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 372
    :cond_1
    const v1, 0x7f0d003b

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 373
    const v1, 0x7f0d003f

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->mSeekBar:Landroid/widget/SeekBar;

    .line 374
    const v1, 0x7f0d003e

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->mValue:Landroid/widget/TextView;

    .line 376
    iget-object v1, p0, Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 377
    iget-object v1, p0, Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 378
    iget-object v1, p0, Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    goto :goto_1
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->this$0:Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness;

    #setter for: Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness;->mActiveControl:Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;
    invoke-static {v0, p0}, Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness;->access$402(Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness;Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;)Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    .line 417
    iget-object v0, p0, Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->this$0:Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness;

    #calls: Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness;->updateBrightnessPreview()V
    invoke-static {v0}, Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness;->access$500(Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness;)V

    .line 418
    iget-object v0, p0, Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->this$0:Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness;

    #calls: Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness;->updateTimeoutEnabledState()V
    invoke-static {v0}, Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness;->access$600(Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness;)V

    .line 419
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 400
    invoke-direct {p0, p2}, Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->handleBrightnessUpdate(I)V

    .line 401
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .parameter "seekBar"

    .prologue
    .line 405
    iget-object v0, p0, Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->this$0:Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness;

    #setter for: Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness;->mActiveControl:Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;
    invoke-static {v0, p0}, Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness;->access$402(Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness;Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;)Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    .line 406
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 411
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 430
    iget v0, p0, Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->mDefaultBrightness:I

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->setBrightness(I)V

    .line 431
    return-void
.end method

.method public setBrightness(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 422
    iget-boolean v0, p0, Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->mIsSingleValue:Z

    if-eqz v0, :cond_1

    .line 423
    iget-object v1, p0, Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 427
    :goto_1
    return-void

    .line 423
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 425
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_1
.end method
