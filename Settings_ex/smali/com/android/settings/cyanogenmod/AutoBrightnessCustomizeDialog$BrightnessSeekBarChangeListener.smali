.class abstract Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$BrightnessSeekBarChangeListener;
.super Ljava/lang/Object;
.source "AutoBrightnessCustomizeDialog.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "BrightnessSeekBarChangeListener"
.end annotation


# instance fields
.field private mIsDragging:Z

.field final synthetic this$0:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;


# direct methods
.method private constructor <init>(Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;)V
    .locals 1
    .parameter

    .prologue
    .line 902
    iput-object p1, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$BrightnessSeekBarChangeListener;->this$0:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 903
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$BrightnessSeekBarChangeListener;->mIsDragging:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 902
    invoke-direct {p0, p1}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$BrightnessSeekBarChangeListener;-><init>(Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;)V

    return-void
.end method

.method private updateBrightness(F)V
    .locals 3
    .parameter "brightness"

    .prologue
    .line 906
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$BrightnessSeekBarChangeListener;->this$0:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;

    invoke-virtual {v2}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 907
    .local v1, window:Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 908
    .local v0, params:Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 909
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 910
    return-void
.end method


# virtual methods
.method protected abstract getPosition(Landroid/widget/SeekBar;)I
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 7
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 916
    invoke-virtual {p0, p1}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$BrightnessSeekBarChangeListener;->getPosition(Landroid/widget/SeekBar;)I

    move-result v3

    .line 917
    .local v3, pos:I
    if-eqz p3, :cond_0

    .line 918
    if-nez v3, :cond_2

    const/4 v2, 0x0

    .line 921
    .local v2, minValue:I
    :goto_0
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$BrightnessSeekBarChangeListener;->this$0:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;

    #getter for: Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->mAdapter:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;
    invoke-static {v4}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->access$700(Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;)Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;

    move-result-object v4

    #calls: Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->isLastItem(I)Z
    invoke-static {v4, v3}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->access$400(Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;I)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    .line 925
    .local v1, maxValue:I
    :goto_1
    if-ge p2, v2, :cond_4

    .line 926
    invoke-virtual {p1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 927
    move p2, v2

    .line 934
    .end local v1           #maxValue:I
    .end local v2           #minValue:I
    :cond_0
    :goto_2
    iget-boolean v4, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$BrightnessSeekBarChangeListener;->mIsDragging:Z

    if-eqz v4, :cond_1

    .line 935
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$BrightnessSeekBarChangeListener;->this$0:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;

    #calls: Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->progressToBrightness(I)F
    invoke-static {v4, p2}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->access$1100(Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;I)F

    move-result v0

    .line 936
    .local v0, brightness:F
    const/high16 v4, 0x437f

    div-float v4, v0, v4

    invoke-direct {p0, v4}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$BrightnessSeekBarChangeListener;->updateBrightness(F)V

    .line 938
    .end local v0           #brightness:F
    :cond_1
    return-void

    .line 918
    :cond_2
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$BrightnessSeekBarChangeListener;->this$0:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;

    iget-object v4, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$BrightnessSeekBarChangeListener;->this$0:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;

    #getter for: Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->mAdapter:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;
    invoke-static {v4}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->access$700(Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;)Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;

    move-result-object v4

    add-int/lit8 v6, v3, -0x1

    invoke-virtual {v4, v6}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;

    iget v4, v4, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;->backlight:I

    int-to-float v4, v4

    #calls: Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->brightnessToProgress(F)I
    invoke-static {v5, v4}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->access$600(Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;F)I

    move-result v2

    goto :goto_0

    .line 921
    .restart local v2       #minValue:I
    :cond_3
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$BrightnessSeekBarChangeListener;->this$0:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;

    iget-object v4, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$BrightnessSeekBarChangeListener;->this$0:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;

    #getter for: Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->mAdapter:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;
    invoke-static {v4}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->access$700(Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;)Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;

    move-result-object v4

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v4, v6}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;

    iget v4, v4, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;->backlight:I

    int-to-float v4, v4

    #calls: Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->brightnessToProgress(F)I
    invoke-static {v5, v4}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->access$600(Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;F)I

    move-result v1

    goto :goto_1

    .line 928
    .restart local v1       #maxValue:I
    :cond_4
    if-le p2, v1, :cond_0

    .line 929
    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 930
    move p2, v1

    goto :goto_2
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .parameter "seekBar"

    .prologue
    .line 942
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$BrightnessSeekBarChangeListener;->this$0:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    #calls: Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->progressToBrightness(I)F
    invoke-static {v1, v2}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->access$1100(Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;I)F

    move-result v0

    .line 943
    .local v0, brightness:F
    const/high16 v1, 0x437f

    div-float v1, v0, v1

    invoke-direct {p0, v1}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$BrightnessSeekBarChangeListener;->updateBrightness(F)V

    .line 944
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$BrightnessSeekBarChangeListener;->mIsDragging:Z

    .line 945
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .parameter "seekBar"

    .prologue
    .line 949
    const/high16 v0, -0x4080

    invoke-direct {p0, v0}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$BrightnessSeekBarChangeListener;->updateBrightness(F)V

    .line 950
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$BrightnessSeekBarChangeListener;->mIsDragging:Z

    .line 951
    return-void
.end method
