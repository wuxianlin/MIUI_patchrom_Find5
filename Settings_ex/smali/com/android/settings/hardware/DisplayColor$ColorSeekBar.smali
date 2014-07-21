.class Lcom/android/settings/hardware/DisplayColor$ColorSeekBar;
.super Ljava/lang/Object;
.source "DisplayColor.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/hardware/DisplayColor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ColorSeekBar"
.end annotation


# instance fields
.field private mIndex:I

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mValue:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/settings/hardware/DisplayColor;


# direct methods
.method public constructor <init>(Lcom/android/settings/hardware/DisplayColor;Landroid/widget/SeekBar;Landroid/widget/TextView;I)V
    .locals 2
    .parameter
    .parameter "seekBar"
    .parameter "value"
    .parameter "index"

    .prologue
    .line 230
    iput-object p1, p0, Lcom/android/settings/hardware/DisplayColor$ColorSeekBar;->this$0:Lcom/android/settings/hardware/DisplayColor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    iput-object p2, p0, Lcom/android/settings/hardware/DisplayColor$ColorSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    .line 232
    iput-object p3, p0, Lcom/android/settings/hardware/DisplayColor$ColorSeekBar;->mValue:Landroid/widget/TextView;

    .line 233
    iput p4, p0, Lcom/android/settings/hardware/DisplayColor$ColorSeekBar;->mIndex:I

    .line 235
    iget-object v0, p0, Lcom/android/settings/hardware/DisplayColor$ColorSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-static {}, Lorg/cyanogenmod/hardware/DisplayColorCalibration;->getMaxValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 236
    iget-object v0, p0, Lcom/android/settings/hardware/DisplayColor$ColorSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 237
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/hardware/DisplayColor$ColorSeekBar;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/settings/hardware/DisplayColor$ColorSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 8
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 245
    if-eqz p3, :cond_0

    .line 246
    iget-object v3, p0, Lcom/android/settings/hardware/DisplayColor$ColorSeekBar;->this$0:Lcom/android/settings/hardware/DisplayColor;

    #getter for: Lcom/android/settings/hardware/DisplayColor;->mCurrentColors:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/hardware/DisplayColor;->access$200(Lcom/android/settings/hardware/DisplayColor;)[Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/hardware/DisplayColor$ColorSeekBar;->mIndex:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 247
    const-string v3, " "

    iget-object v4, p0, Lcom/android/settings/hardware/DisplayColor$ColorSeekBar;->this$0:Lcom/android/settings/hardware/DisplayColor;

    #getter for: Lcom/android/settings/hardware/DisplayColor;->mCurrentColors:[Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/hardware/DisplayColor;->access$200(Lcom/android/settings/hardware/DisplayColor;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/cyanogenmod/hardware/DisplayColorCalibration;->setColors(Ljava/lang/String;)Z

    .line 250
    :cond_0
    invoke-static {}, Lorg/cyanogenmod/hardware/DisplayColorCalibration;->getMinValue()I

    move-result v1

    .line 251
    .local v1, min:I
    invoke-static {}, Lorg/cyanogenmod/hardware/DisplayColorCalibration;->getMaxValue()I

    move-result v0

    .line 252
    .local v0, max:I
    const/high16 v3, 0x42c8

    int-to-float v4, p2

    mul-float/2addr v3, v4

    sub-int v4, v0, v1

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 253
    .local v2, percent:I
    iget-object v3, p0, Lcom/android/settings/hardware/DisplayColor$ColorSeekBar;->mValue:Landroid/widget/TextView;

    const-string v4, "%d%%"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 259
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 264
    return-void
.end method

.method public setValueFromString(Ljava/lang/String;)V
    .locals 2
    .parameter "valueString"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/settings/hardware/DisplayColor$ColorSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 241
    return-void
.end method
