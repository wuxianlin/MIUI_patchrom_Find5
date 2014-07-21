.class public Lcom/android/settings_ex/hardware/DisplayColor;
.super Landroid/preference/DialogPreference;
.source "DisplayColor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/hardware/DisplayColor$ColorSeekBar;,
        Lcom/android/settings_ex/hardware/DisplayColor$SavedState;
    }
.end annotation


# static fields
.field private static final SEEKBAR_ID:[I

.field private static final SEEKBAR_VALUE_ID:[I


# instance fields
.field private mCurrentColors:[Ljava/lang/String;

.field private mOriginalColors:Ljava/lang/String;

.field private mSeekBars:[Lcom/android/settings_ex/hardware/DisplayColor$ColorSeekBar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 47
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings_ex/hardware/DisplayColor;->SEEKBAR_ID:[I

    .line 53
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings_ex/hardware/DisplayColor;->SEEKBAR_VALUE_ID:[I

    return-void

    .line 47
    :array_0
    .array-data 0x4
        0xd0t 0x0t 0xdt 0x7ft
        0xd3t 0x0t 0xdt 0x7ft
        0xd6t 0x0t 0xdt 0x7ft
    .end array-data

    .line 53
    :array_1
    .array-data 0x4
        0xcft 0x0t 0xdt 0x7ft
        0xd2t 0x0t 0xdt 0x7ft
        0xd5t 0x0t 0xdt 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    sget-object v0, Lcom/android/settings_ex/hardware/DisplayColor;->SEEKBAR_ID:[I

    array-length v0, v0

    new-array v0, v0, [Lcom/android/settings_ex/hardware/DisplayColor$ColorSeekBar;

    iput-object v0, p0, Lcom/android/settings_ex/hardware/DisplayColor;->mSeekBars:[Lcom/android/settings_ex/hardware/DisplayColor$ColorSeekBar;

    .line 66
    invoke-static {}, Lcom/android/settings_ex/hardware/DisplayColor;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    :goto_0
    return-void

    .line 70
    :cond_0
    const v0, 0x7f040043

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/hardware/DisplayColor;->setDialogLayoutResource(I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings_ex/hardware/DisplayColor;)[Lcom/android/settings_ex/hardware/DisplayColor$ColorSeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings_ex/hardware/DisplayColor;->mSeekBars:[Lcom/android/settings_ex/hardware/DisplayColor$ColorSeekBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/hardware/DisplayColor;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings_ex/hardware/DisplayColor;->mCurrentColors:[Ljava/lang/String;

    return-object v0
.end method

.method public static isSupported()Z
    .locals 2

    .prologue
    .line 171
    :try_start_0
    invoke-static {}, Lorg/cyanogenmod/hardware/DisplayColorCalibration;->isSupported()Z
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 174
    :goto_0
    return v1

    .line 172
    :catch_0
    move-exception v0

    .line 174
    .local v0, e:Ljava/lang/NoClassDefFoundError;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static restore(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 179
    invoke-static {}, Lcom/android/settings_ex/hardware/DisplayColor;->isSupported()Z

    move-result v2

    if-nez v2, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 184
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v2, "display_color_calibration"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, value:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 187
    invoke-static {v1}, Lorg/cyanogenmod/hardware/DisplayColorCalibration;->setColors(Ljava/lang/String;)Z

    goto :goto_0
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 87
    invoke-static {}, Lorg/cyanogenmod/hardware/DisplayColorCalibration;->getCurColors()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/hardware/DisplayColor;->mOriginalColors:Ljava/lang/String;

    .line 88
    iget-object v3, p0, Lcom/android/settings_ex/hardware/DisplayColor;->mOriginalColors:Ljava/lang/String;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/hardware/DisplayColor;->mCurrentColors:[Ljava/lang/String;

    .line 90
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v3, Lcom/android/settings_ex/hardware/DisplayColor;->SEEKBAR_ID:[I

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 91
    sget-object v3, Lcom/android/settings_ex/hardware/DisplayColor;->SEEKBAR_ID:[I

    aget v3, v3, v0

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    .line 92
    .local v1, seekBar:Landroid/widget/SeekBar;
    sget-object v3, Lcom/android/settings_ex/hardware/DisplayColor;->SEEKBAR_VALUE_ID:[I

    aget v3, v3, v0

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 93
    .local v2, value:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/settings_ex/hardware/DisplayColor;->mSeekBars:[Lcom/android/settings_ex/hardware/DisplayColor$ColorSeekBar;

    new-instance v4, Lcom/android/settings_ex/hardware/DisplayColor$ColorSeekBar;

    invoke-direct {v4, p0, v1, v2, v0}, Lcom/android/settings_ex/hardware/DisplayColor$ColorSeekBar;-><init>(Lcom/android/settings_ex/hardware/DisplayColor;Landroid/widget/SeekBar;Landroid/widget/TextView;I)V

    aput-object v4, v3, v0

    .line 94
    iget-object v3, p0, Lcom/android/settings_ex/hardware/DisplayColor;->mSeekBars:[Lcom/android/settings_ex/hardware/DisplayColor$ColorSeekBar;

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/android/settings_ex/hardware/DisplayColor;->mCurrentColors:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/hardware/DisplayColor$ColorSeekBar;->setValueFromString(Ljava/lang/String;)V

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    .end local v1           #seekBar:Landroid/widget/SeekBar;
    .end local v2           #value:Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 3
    .parameter "positiveResult"

    .prologue
    .line 121
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 123
    if-eqz p1, :cond_1

    .line 124
    invoke-virtual {p0}, Lcom/android/settings_ex/hardware/DisplayColor;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 125
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "display_color_calibration"

    invoke-static {}, Lorg/cyanogenmod/hardware/DisplayColorCalibration;->getCurColors()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 126
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 130
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/hardware/DisplayColor;->mOriginalColors:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/android/settings_ex/hardware/DisplayColor;->mOriginalColors:Ljava/lang/String;

    invoke-static {v1}, Lorg/cyanogenmod/hardware/DisplayColorCalibration;->setColors(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 2
    .parameter "builder"

    .prologue
    .line 75
    const v0, 0x7f0801c5

    new-instance v1, Lcom/android/settings_ex/hardware/DisplayColor$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/hardware/DisplayColor$1;-><init>(Lcom/android/settings_ex/hardware/DisplayColor;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 81
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter

    .prologue
    .line 153
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/settings_ex/hardware/DisplayColor$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 155
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 167
    :goto_0
    return-void

    .line 159
    :cond_1
    check-cast p1, Lcom/android/settings_ex/hardware/DisplayColor$SavedState;

    .line 160
    invoke-virtual {p1}, Lcom/android/settings_ex/hardware/DisplayColor$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 161
    iget-object v0, p1, Lcom/android/settings_ex/hardware/DisplayColor$SavedState;->originalColors:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/hardware/DisplayColor;->mOriginalColors:Ljava/lang/String;

    .line 162
    iget-object v0, p1, Lcom/android/settings_ex/hardware/DisplayColor$SavedState;->currentColors:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/hardware/DisplayColor;->mCurrentColors:[Ljava/lang/String;

    .line 163
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/settings_ex/hardware/DisplayColor;->mSeekBars:[Lcom/android/settings_ex/hardware/DisplayColor$ColorSeekBar;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 164
    iget-object v1, p0, Lcom/android/settings_ex/hardware/DisplayColor;->mSeekBars:[Lcom/android/settings_ex/hardware/DisplayColor$ColorSeekBar;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/settings_ex/hardware/DisplayColor;->mCurrentColors:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/hardware/DisplayColor$ColorSeekBar;->setValueFromString(Ljava/lang/String;)V

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 166
    :cond_2
    const-string v0, " "

    iget-object v1, p0, Lcom/android/settings_ex/hardware/DisplayColor;->mCurrentColors:[Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/cyanogenmod/hardware/DisplayColorCalibration;->setColors(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 134
    invoke-super {p0}, Landroid/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 135
    .local v1, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/android/settings_ex/hardware/DisplayColor;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/hardware/DisplayColor;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 148
    :goto_0
    return-object v0

    .line 140
    :cond_1
    new-instance v0, Lcom/android/settings_ex/hardware/DisplayColor$SavedState;

    invoke-direct {v0, v1}, Lcom/android/settings_ex/hardware/DisplayColor$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 141
    .local v0, myState:Lcom/android/settings_ex/hardware/DisplayColor$SavedState;
    iget-object v2, p0, Lcom/android/settings_ex/hardware/DisplayColor;->mCurrentColors:[Ljava/lang/String;

    iput-object v2, v0, Lcom/android/settings_ex/hardware/DisplayColor$SavedState;->currentColors:[Ljava/lang/String;

    .line 142
    iget-object v2, p0, Lcom/android/settings_ex/hardware/DisplayColor;->mOriginalColors:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/settings_ex/hardware/DisplayColor$SavedState;->originalColors:Ljava/lang/String;

    .line 145
    iget-object v2, p0, Lcom/android/settings_ex/hardware/DisplayColor;->mOriginalColors:Ljava/lang/String;

    invoke-static {v2}, Lorg/cyanogenmod/hardware/DisplayColorCalibration;->setColors(Ljava/lang/String;)Z

    .line 146
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings_ex/hardware/DisplayColor;->mOriginalColors:Ljava/lang/String;

    goto :goto_0
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 100
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    .line 104
    invoke-virtual {p0}, Lcom/android/settings_ex/hardware/DisplayColor;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 105
    .local v0, d:Landroid/app/AlertDialog;
    const/4 v2, -0x3

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 106
    .local v1, defaultsButton:Landroid/widget/Button;
    new-instance v2, Lcom/android/settings_ex/hardware/DisplayColor$2;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/hardware/DisplayColor$2;-><init>(Lcom/android/settings_ex/hardware/DisplayColor;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    return-void
.end method
