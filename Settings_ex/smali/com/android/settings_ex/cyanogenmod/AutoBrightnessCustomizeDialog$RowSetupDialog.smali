.class Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;
.super Landroid/app/AlertDialog;
.source "AutoBrightnessCustomizeDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RowSetupDialog"
.end annotation


# instance fields
.field private mBacklightBar:Landroid/widget/SeekBar;

.field private mBacklightInput:Landroid/widget/EditText;

.field private mBacklightInputFormat:Ljava/text/DecimalFormat;

.field private mLuxInput:Landroid/widget/EditText;

.field private mPosition:I

.field final synthetic this$0:Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog;Landroid/content/Context;I)V
    .locals 3
    .parameter
    .parameter "context"
    .parameter "position"

    .prologue
    .line 497
    iput-object p1, p0, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;->this$0:Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog;

    .line 498
    invoke-direct {p0, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 494
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.0"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v2}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    iput-object v0, p0, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;->mBacklightInputFormat:Ljava/text/DecimalFormat;

    .line 499
    iput p3, p0, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;->mPosition:I

    .line 500
    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 485
    iget v0, p0, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;->mPosition:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;)Ljava/text/DecimalFormat;
    .locals 1
    .parameter "x0"

    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;->mBacklightInputFormat:Ljava/text/DecimalFormat;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;->mBacklightInput:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;->mBacklightBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method private initFromPosition()V
    .locals 5

    .prologue
    .line 553
    iget-object v1, p0, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;->this$0:Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog;

    #getter for: Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog;->mAdapter:Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;
    invoke-static {v1}, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog;->access$700(Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog;)Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;->mPosition:I

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;

    .line 555
    .local v0, row:Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;
    iget-object v1, p0, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;->mLuxInput:Landroid/widget/EditText;

    iget v2, v0, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;->lux:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 556
    iget-object v1, p0, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;->mBacklightBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;->this$0:Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog;

    iget v3, v0, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;->backlight:I

    int-to-float v3, v3

    #calls: Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog;->brightnessToProgress(F)I
    invoke-static {v2, v3}, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog;->access$600(Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog;F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 557
    iget-object v1, p0, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;->mBacklightInput:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;->mBacklightInputFormat:Ljava/text/DecimalFormat;

    iget-object v3, p0, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;->this$0:Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog;

    iget v4, v0, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRow;->backlight:I

    int-to-float v4, v4

    #calls: Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog;->brightnessToPercent(F)F
    invoke-static {v3, v4}, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog;->access$800(Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog;F)F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 558
    return-void
.end method

.method private initListeners()V
    .locals 2

    .prologue
    .line 561
    iget-object v0, p0, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;->mBacklightBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog$1;-><init>(Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 576
    iget-object v0, p0, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;->mBacklightInput:Landroid/widget/EditText;

    new-instance v1, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog$2;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog$2;-><init>(Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 609
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 542
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 544
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;->mLuxInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 545
    .local v0, newLux:I
    iget-object v1, p0, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;->this$0:Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog;

    #getter for: Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog;->mAdapter:Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;
    invoke-static {v1}, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog;->access$700(Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog;)Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;->mPosition:I

    invoke-virtual {v1, v2, v0}, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog$SettingRowAdapter;->setLuxForRow(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 550
    .end local v0           #newLux:I
    :cond_0
    :goto_0
    return-void

    .line 546
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 504
    invoke-virtual {p0}, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040011

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 505
    .local v1, v:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 507
    .local v0, context:Landroid/content/Context;
    const v2, 0x7f0d001d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;->mLuxInput:Landroid/widget/EditText;

    .line 508
    const v2, 0x7f0d001e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;->mBacklightBar:Landroid/widget/SeekBar;

    .line 509
    const v2, 0x7f0d001f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;->mBacklightInput:Landroid/widget/EditText;

    .line 511
    const v2, 0x7f0801c7

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;->setTitle(I)V

    .line 512
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;->setCancelable(Z)V

    .line 513
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;->setView(Landroid/view/View;)V

    .line 515
    iget-object v2, p0, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;->mBacklightBar:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;->this$0:Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog;

    const/high16 v4, 0x437f

    #calls: Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog;->brightnessToProgress(F)I
    invoke-static {v3, v4}, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog;->access$600(Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog;F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 516
    invoke-direct {p0}, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;->initListeners()V

    .line 517
    invoke-direct {p0}, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;->initFromPosition()V

    .line 519
    const/4 v2, -0x1

    const v3, 0x7f0801f0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3, p0}, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 520
    const/4 v2, -0x2

    const v3, 0x7f0804f7

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3, p0}, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 522
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 523
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 535
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 536
    iget-object v0, p0, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;->mLuxInput:Landroid/widget/EditText;

    const-string v1, "AutoBrightnessCustomize:Edit:lux"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 537
    iget-object v0, p0, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;->mBacklightBar:Landroid/widget/SeekBar;

    const-string v1, "AutoBrightnessCustomize:Edit:backlight"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 538
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 527
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 528
    .local v0, state:Landroid/os/Bundle;
    const-string v1, "AutoBrightnessCustomize:Edit:lux"

    iget-object v2, p0, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;->mLuxInput:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 529
    const-string v1, "AutoBrightnessCustomize:Edit:backlight"

    iget-object v2, p0, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog$RowSetupDialog;->mBacklightBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 530
    return-object v0
.end method
