.class public Lcom/android/settings_ex/cyanogenmod/AutoBrightnessSetup;
.super Lcom/android/internal/app/AlertActivity;
.source "AutoBrightnessSetup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mAdjustment:Landroid/widget/SeekBar;

.field private mCustomizeDialog:Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog;

.field private mSensitivity:Landroid/widget/Spinner;

.field private mTwilightAdjustment:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/cyanogenmod/AutoBrightnessSetup;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessSetup;->showCustomizeDialog(Landroid/os/Bundle;)V

    return-void
.end method

.method private showCustomizeDialog(Landroid/os/Bundle;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessSetup;->mCustomizeDialog:Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessSetup;->mCustomizeDialog:Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog;

    invoke-virtual {v0}, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    :goto_0
    return-void

    .line 179
    :cond_0
    new-instance v0, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessSetup;->mCustomizeDialog:Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog;

    .line 180
    if-eqz p1, :cond_1

    .line 181
    iget-object v0, p0, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessSetup;->mCustomizeDialog:Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessSetup;->mCustomizeDialog:Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog;

    invoke-virtual {v0}, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog;->show()V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 149
    const/4 v5, -0x1

    if-eq p2, v5, :cond_0

    .line 172
    :goto_0
    return-void

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessSetup;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 154
    .local v1, resolver:Landroid/content/ContentResolver;
    iget-object v5, p0, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessSetup;->mSensitivity:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    .line 155
    .local v2, selection:I
    if-ltz v2, :cond_1

    .line 156
    invoke-virtual {p0}, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessSetup;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c008d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v4

    .line 158
    .local v4, sensitivityValues:[I
    const v5, 0x3c23d70a

    aget v6, v4, v2

    int-to-float v6, v6

    mul-float v3, v5, v6

    .line 160
    .local v3, sensitivity:F
    const-string v5, "auto_brightness_responsiveness"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 164
    .end local v3           #sensitivity:F
    .end local v4           #sensitivityValues:[I
    :cond_1
    iget-object v5, p0, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessSetup;->mAdjustment:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getProgress()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessSetup;->mAdjustment:Landroid/widget/SeekBar;

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getMax()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    const/high16 v6, 0x3f00

    sub-float v0, v5, v6

    .line 166
    .local v0, adjustmentValue:F
    const-string v5, "screen_auto_brightness_adj"

    invoke-static {v1, v5, v0}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 169
    const-string v6, "auto_brightness_twilight_adjustment"

    iget-object v5, p0, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessSetup;->mTwilightAdjustment:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    :goto_1
    invoke-static {v1, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessSetup;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f04003d

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 52
    .local v3, view:Landroid/view/View;
    iget-object v2, p0, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessSetup;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 53
    .local v2, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v4, 0x7f02004d

    iput v4, v2, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 54
    const v4, 0x7f0801bb

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessSetup;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 55
    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 56
    const v4, 0x104000a

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessSetup;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 57
    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 58
    const v4, 0x7f0801c3

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessSetup;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 59
    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 60
    const/high16 v4, 0x104

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessSetup;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 61
    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 63
    invoke-virtual {p0}, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessSetup;->setupAlert()V

    .line 65
    const v4, 0x7f0d00ba

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessSetup;->mTwilightAdjustment:Landroid/widget/CheckBox;

    .line 66
    const v4, 0x7f0d00bb

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessSetup;->mSensitivity:Landroid/widget/Spinner;

    .line 67
    const v4, 0x7f0d00b9

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SeekBar;

    iput-object v4, p0, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessSetup;->mAdjustment:Landroid/widget/SeekBar;

    .line 69
    const v4, 0x7f0c008c

    const v5, 0x1090008

    invoke-static {p0, v4, v5}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 72
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v4, 0x1090009

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 73
    iget-object v4, p0, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessSetup;->mSensitivity:Landroid/widget/Spinner;

    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 75
    iget-object v4, p0, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessSetup;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v5, -0x3

    invoke-virtual {v4, v5}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 76
    .local v1, adjustButton:Landroid/widget/Button;
    new-instance v4, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessSetup$1;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessSetup$1;-><init>(Lcom/android/settings_ex/cyanogenmod/AutoBrightnessSetup;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 86
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 87
    iget-object v0, p0, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessSetup;->mCustomizeDialog:Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessSetup;->mCustomizeDialog:Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog;

    invoke-virtual {v0}, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog;->dismiss()V

    .line 90
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 136
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 138
    const-string v1, "AutoBrightnessSetup:CustomizeDialogShown"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    const-string v1, "AutoBrightnessSetup:CustomizeDialogState"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 140
    .local v0, dialogState:Landroid/os/Bundle;
    invoke-direct {p0, v0}, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessSetup;->showCustomizeDialog(Landroid/os/Bundle;)V

    .line 142
    .end local v0           #dialogState:Landroid/os/Bundle;
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessSetup;->mSensitivity:Landroid/widget/Spinner;

    const-string v2, "AutoBrightnessSetup:SensitivitySelection"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 143
    iget-object v1, p0, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessSetup;->mAdjustment:Landroid/widget/SeekBar;

    const-string v2, "AutoBrightnessSetup:AdjustmentValue"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 144
    iget-object v1, p0, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessSetup;->mTwilightAdjustment:Landroid/widget/CheckBox;

    const-string v2, "AutoBrightnessSetup:TwilightAdjustment"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 145
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 122
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 124
    iget-object v1, p0, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessSetup;->mCustomizeDialog:Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessSetup;->mCustomizeDialog:Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog;

    invoke-virtual {v1}, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 125
    .local v0, customizeDialogShown:Z
    :goto_0
    const-string v1, "AutoBrightnessSetup:CustomizeDialogShown"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 126
    if-eqz v0, :cond_0

    .line 127
    const-string v1, "AutoBrightnessSetup:CustomizeDialogState"

    iget-object v2, p0, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessSetup;->mCustomizeDialog:Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog;

    invoke-virtual {v2}, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessCustomizeDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 129
    :cond_0
    const-string v1, "AutoBrightnessSetup:SensitivitySelection"

    iget-object v2, p0, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessSetup;->mSensitivity:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 130
    const-string v1, "AutoBrightnessSetup:AdjustmentValue"

    iget-object v2, p0, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessSetup;->mAdjustment:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 131
    const-string v1, "AutoBrightnessSetup:TwilightAdjustment"

    iget-object v2, p0, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessSetup;->mTwilightAdjustment:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 132
    return-void

    .line 124
    .end local v0           #customizeDialogShown:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 10

    .prologue
    const/4 v6, 0x0

    const/high16 v9, 0x3f00

    .line 94
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStart()V

    .line 96
    invoke-virtual {p0}, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessSetup;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 97
    .local v4, resolver:Landroid/content/ContentResolver;
    const-string v7, "auto_brightness_responsiveness"

    const/high16 v8, 0x3f80

    invoke-static {v4, v7, v8}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v1

    .line 99
    .local v1, currentSensitivity:F
    const/high16 v7, 0x42c8

    mul-float/2addr v7, v1

    float-to-int v2, v7

    .line 100
    .local v2, currentSensitivityInt:I
    invoke-virtual {p0}, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessSetup;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c008d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    .line 103
    .local v5, sensitivityValues:[I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v7, v5

    if-ge v3, v7, :cond_0

    .line 104
    aget v7, v5, v3

    if-ne v7, v2, :cond_2

    .line 105
    iget-object v7, p0, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessSetup;->mSensitivity:Landroid/widget/Spinner;

    invoke-virtual {v7, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 110
    :cond_0
    const-string v7, "screen_auto_brightness_adj"

    const/4 v8, 0x0

    invoke-static {v4, v7, v8}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    .line 113
    .local v0, adjustmentValue:F
    const/high16 v7, -0x4100

    invoke-static {v0, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    invoke-static {v7, v9}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 114
    iget-object v7, p0, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessSetup;->mAdjustment:Landroid/widget/SeekBar;

    add-float v8, v0, v9

    iget-object v9, p0, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessSetup;->mAdjustment:Landroid/widget/SeekBar;

    invoke-virtual {v9}, Landroid/widget/SeekBar;->getMax()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 116
    iget-object v7, p0, Lcom/android/settings_ex/cyanogenmod/AutoBrightnessSetup;->mTwilightAdjustment:Landroid/widget/CheckBox;

    const-string v8, "auto_brightness_twilight_adjustment"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_1

    const/4 v6, 0x1

    :cond_1
    invoke-virtual {v7, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 118
    return-void

    .line 103
    .end local v0           #adjustmentValue:F
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
