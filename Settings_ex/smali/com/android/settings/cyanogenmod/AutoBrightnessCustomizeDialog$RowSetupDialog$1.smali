.class Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog$1;
.super Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$BrightnessSeekBarChangeListener;
.source "AutoBrightnessCustomizeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;->initListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;)V
    .locals 2
    .parameter

    .prologue
    .line 561
    iput-object p1, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog$1;->this$1:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;

    iget-object v0, p1, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;->this$0:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$BrightnessSeekBarChangeListener;-><init>(Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$1;)V

    return-void
.end method


# virtual methods
.method protected getPosition(Landroid/widget/SeekBar;)I
    .locals 1
    .parameter "seekBar"

    .prologue
    .line 564
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog$1;->this$1:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;

    #getter for: Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;->mPosition:I
    invoke-static {v0}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;->access$1000(Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;)I

    move-result v0

    return v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 569
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$BrightnessSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 571
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog$1;->this$1:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;

    iget-object v1, v1, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;->this$0:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    #calls: Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->progressToBrightness(I)F
    invoke-static {v1, v2}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->access$1100(Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;I)F

    move-result v0

    .line 572
    .local v0, brightness:F
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog$1;->this$1:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;

    #getter for: Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;->mBacklightInput:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;->access$1300(Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog$1;->this$1:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;

    #getter for: Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;->mBacklightInputFormat:Ljava/text/DecimalFormat;
    invoke-static {v2}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;->access$1200(Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;)Ljava/text/DecimalFormat;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog$1;->this$1:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;

    iget-object v3, v3, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;->this$0:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;

    #calls: Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->brightnessToPercent(F)F
    invoke-static {v3, v0}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->access$800(Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;F)F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 573
    return-void
.end method
