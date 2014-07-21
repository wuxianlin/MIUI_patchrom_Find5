.class Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog$2;
.super Ljava/lang/Object;
.source "AutoBrightnessCustomizeDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .locals 0
    .parameter

    .prologue
    .line 576
    iput-object p1, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog$2;->this$1:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 7
    .parameter "s"

    .prologue
    .line 585
    const/4 v3, 0x0

    .line 587
    .local v3, ok:Z
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog$2;->this$1:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;

    #getter for: Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;->mPosition:I
    invoke-static {v5}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;->access$1000(Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;)I

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog$2;->this$1:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;

    iget-object v5, v5, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;->this$0:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;

    #getter for: Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->mMinLevel:I
    invoke-static {v5}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->access$1400(Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;)I

    move-result v5

    int-to-float v1, v5

    .line 590
    .local v1, minValue:F
    :goto_0
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog$2;->this$1:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;

    iget-object v5, v5, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;->this$0:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;

    #getter for: Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->mAdapter:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;
    invoke-static {v5}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->access$700(Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;)Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog$2;->this$1:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;

    #getter for: Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;->mPosition:I
    invoke-static {v6}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;->access$1000(Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;)I

    move-result v6

    #calls: Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->isLastItem(I)Z
    invoke-static {v5, v6}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->access$400(Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;I)Z

    move-result v5

    if-eqz v5, :cond_3

    const/high16 v0, 0x437f

    .line 593
    .local v0, maxValue:F
    :goto_1
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog$2;->this$1:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;

    iget-object v5, v5, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;->this$0:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    #calls: Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->percentToBrightness(F)F
    invoke-static {v5, v6}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->access$1500(Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;F)F

    move-result v2

    .line 595
    .local v2, newBrightness:F
    cmpl-float v5, v2, v1

    if-ltz v5, :cond_0

    cmpg-float v5, v2, v0

    if-gtz v5, :cond_0

    .line 596
    const/4 v3, 0x1

    .line 597
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog$2;->this$1:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;

    #getter for: Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;->mBacklightBar:Landroid/widget/SeekBar;
    invoke-static {v5}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;->access$1600(Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;)Landroid/widget/SeekBar;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog$2;->this$1:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;

    iget-object v6, v6, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;->this$0:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;

    #calls: Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->brightnessToProgress(F)I
    invoke-static {v6, v2}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->access$600(Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;F)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 603
    .end local v0           #maxValue:F
    .end local v1           #minValue:F
    .end local v2           #newBrightness:F
    :cond_0
    :goto_2
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog$2;->this$1:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;

    iget-object v5, v5, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;->this$0:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;

    #getter for: Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->mSetupDialog:Landroid/app/AlertDialog;
    invoke-static {v5}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->access$1700(Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;)Landroid/app/AlertDialog;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    .line 604
    .local v4, okButton:Landroid/widget/Button;
    if-eqz v4, :cond_1

    .line 605
    invoke-virtual {v4, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 607
    :cond_1
    return-void

    .line 587
    .end local v4           #okButton:Landroid/widget/Button;
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog$2;->this$1:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;

    iget-object v5, v5, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;->this$0:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;

    #getter for: Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->mAdapter:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;
    invoke-static {v5}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->access$700(Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;)Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog$2;->this$1:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;

    #getter for: Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;->mPosition:I
    invoke-static {v6}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;->access$1000(Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;

    iget v5, v5, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;->backlight:I

    int-to-float v1, v5

    goto :goto_0

    .line 590
    .restart local v1       #minValue:F
    :cond_3
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog$2;->this$1:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;

    iget-object v5, v5, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;->this$0:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;

    #getter for: Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->mAdapter:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;
    invoke-static {v5}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->access$700(Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;)Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog$2;->this$1:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;

    #getter for: Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;->mPosition:I
    invoke-static {v6}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;->access$1000(Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;

    iget v5, v5, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;->backlight:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    int-to-float v0, v5

    goto :goto_1

    .line 599
    .end local v1           #minValue:F
    :catch_0
    move-exception v5

    goto :goto_2
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 579
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 582
    return-void
.end method
