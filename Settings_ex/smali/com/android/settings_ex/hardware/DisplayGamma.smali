.class public Lcom/android/settings_ex/hardware/DisplayGamma;
.super Landroid/preference/DialogPreference;
.source "DisplayGamma.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/hardware/DisplayGamma$GammaSeekBar;,
        Lcom/android/settings_ex/hardware/DisplayGamma$SavedState;
    }
.end annotation


# static fields
.field private static final BAR_COLORS:[I


# instance fields
.field private mCurrentColors:[[Ljava/lang/String;

.field private mNumberOfControls:I

.field private mOriginalColors:[Ljava/lang/String;

.field private mSeekBars:[[Lcom/android/settings_ex/hardware/DisplayGamma$GammaSeekBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings_ex/hardware/DisplayGamma;->BAR_COLORS:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x80t 0x2t 0x8t 0x7ft
        0x81t 0x2t 0x8t 0x7ft
        0x82t 0x2t 0x8t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    invoke-static {}, Lcom/android/settings_ex/hardware/DisplayGamma;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    :goto_0
    return-void

    .line 67
    :cond_0
    invoke-static {}, Lorg/cyanogenmod/hardware/DisplayGammaCalibration;->getNumberOfControls()I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/hardware/DisplayGamma;->mNumberOfControls:I

    .line 68
    iget v0, p0, Lcom/android/settings_ex/hardware/DisplayGamma;->mNumberOfControls:I

    sget-object v1, Lcom/android/settings_ex/hardware/DisplayGamma;->BAR_COLORS:[I

    array-length v1, v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, Lcom/android/settings_ex/hardware/DisplayGamma$GammaSeekBar;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/android/settings_ex/hardware/DisplayGamma$GammaSeekBar;

    iput-object v0, p0, Lcom/android/settings_ex/hardware/DisplayGamma;->mSeekBars:[[Lcom/android/settings_ex/hardware/DisplayGamma$GammaSeekBar;

    .line 70
    iget v0, p0, Lcom/android/settings_ex/hardware/DisplayGamma;->mNumberOfControls:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/hardware/DisplayGamma;->mOriginalColors:[Ljava/lang/String;

    .line 71
    iget v0, p0, Lcom/android/settings_ex/hardware/DisplayGamma;->mNumberOfControls:I

    new-array v0, v0, [[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/hardware/DisplayGamma;->mCurrentColors:[[Ljava/lang/String;

    .line 73
    const v0, 0x7f040044

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/hardware/DisplayGamma;->setDialogLayoutResource(I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings_ex/hardware/DisplayGamma;)[[Lcom/android/settings_ex/hardware/DisplayGamma$GammaSeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings_ex/hardware/DisplayGamma;->mSeekBars:[[Lcom/android/settings_ex/hardware/DisplayGamma$GammaSeekBar;

    return-object v0
.end method

.method static synthetic access$100()[I
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/android/settings_ex/hardware/DisplayGamma;->BAR_COLORS:[I

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/hardware/DisplayGamma;)[[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings_ex/hardware/DisplayGamma;->mCurrentColors:[[Ljava/lang/String;

    return-object v0
.end method

.method public static isSupported()Z
    .locals 2

    .prologue
    .line 226
    :try_start_0
    invoke-static {}, Lorg/cyanogenmod/hardware/DisplayGammaCalibration;->isSupported()Z
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 229
    :goto_0
    return v1

    .line 227
    :catch_0
    move-exception v0

    .line 229
    .local v0, e:Ljava/lang/NoClassDefFoundError;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static restore(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 234
    invoke-static {}, Lcom/android/settings_ex/hardware/DisplayGamma;->isSupported()Z

    move-result v3

    if-nez v3, :cond_1

    .line 245
    :cond_0
    return-void

    .line 238
    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 239
    .local v1, prefs:Landroid/content/SharedPreferences;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-static {}, Lorg/cyanogenmod/hardware/DisplayGammaCalibration;->getNumberOfControls()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 240
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "display_gamma_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 241
    .local v2, values:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 242
    invoke-static {v0, v2}, Lorg/cyanogenmod/hardware/DisplayGammaCalibration;->setGamma(ILjava/lang/String;)Z

    .line 239
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 14
    .parameter "view"

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 90
    const v10, 0x7f0d00d8

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 91
    .local v1, container:Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/android/settings_ex/hardware/DisplayGamma;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 92
    .local v6, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/android/settings_ex/hardware/DisplayGamma;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v8

    .line 93
    .local v8, prefs:Landroid/content/SharedPreferences;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 94
    .local v9, res:Landroid/content/res/Resources;
    const v10, 0x7f0c0095

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 98
    .local v3, gammaDescriptors:[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, index:I
    :goto_0
    iget v10, p0, Lcom/android/settings_ex/hardware/DisplayGamma;->mNumberOfControls:I

    if-ge v5, v10, :cond_4

    .line 99
    iget-object v10, p0, Lcom/android/settings_ex/hardware/DisplayGamma;->mOriginalColors:[Ljava/lang/String;

    invoke-static {v5}, Lorg/cyanogenmod/hardware/DisplayGammaCalibration;->getCurGamma(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v5

    .line 100
    iget-object v10, p0, Lcom/android/settings_ex/hardware/DisplayGamma;->mCurrentColors:[[Ljava/lang/String;

    iget-object v11, p0, Lcom/android/settings_ex/hardware/DisplayGamma;->mOriginalColors:[Ljava/lang/String;

    aget-object v11, v11, v5

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v5

    .line 102
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "display_gamma_default_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, defaultKey:Ljava/lang/String;
    invoke-interface {v8, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 104
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings_ex/hardware/DisplayGamma;->mOriginalColors:[Ljava/lang/String;

    aget-object v11, v11, v5

    invoke-interface {v10, v2, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 107
    :cond_0
    iget v10, p0, Lcom/android/settings_ex/hardware/DisplayGamma;->mNumberOfControls:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_1

    .line 108
    const v10, 0x7f040045

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v1, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 111
    .local v4, header:Landroid/widget/TextView;
    array-length v10, v3

    if-ge v5, v10, :cond_2

    .line 112
    aget-object v10, v3, v5

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    :goto_1
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 120
    .end local v4           #header:Landroid/widget/TextView;
    :cond_1
    const/4 v0, 0x0

    .local v0, color:I
    :goto_2
    sget-object v10, Lcom/android/settings_ex/hardware/DisplayGamma;->BAR_COLORS:[I

    array-length v10, v10

    if-ge v0, v10, :cond_3

    .line 121
    const v10, 0x7f040046

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v1, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 124
    .local v7, item:Landroid/view/ViewGroup;
    iget-object v10, p0, Lcom/android/settings_ex/hardware/DisplayGamma;->mSeekBars:[[Lcom/android/settings_ex/hardware/DisplayGamma$GammaSeekBar;

    aget-object v10, v10, v5

    new-instance v11, Lcom/android/settings_ex/hardware/DisplayGamma$GammaSeekBar;

    invoke-direct {v11, p0, v5, v0, v7}, Lcom/android/settings_ex/hardware/DisplayGamma$GammaSeekBar;-><init>(Lcom/android/settings_ex/hardware/DisplayGamma;IILandroid/view/ViewGroup;)V

    aput-object v11, v10, v0

    .line 125
    iget-object v10, p0, Lcom/android/settings_ex/hardware/DisplayGamma;->mSeekBars:[[Lcom/android/settings_ex/hardware/DisplayGamma$GammaSeekBar;

    aget-object v10, v10, v5

    aget-object v10, v10, v0

    iget-object v11, p0, Lcom/android/settings_ex/hardware/DisplayGamma;->mCurrentColors:[[Ljava/lang/String;

    aget-object v11, v11, v5

    aget-object v11, v11, v0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/android/settings_ex/hardware/DisplayGamma$GammaSeekBar;->setGamma(I)V

    .line 129
    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 114
    .end local v0           #color:I
    .end local v7           #item:Landroid/view/ViewGroup;
    .restart local v4       #header:Landroid/widget/TextView;
    :cond_2
    const v10, 0x7f080285

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    add-int/lit8 v13, v5, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 98
    .end local v4           #header:Landroid/widget/TextView;
    .restart local v0       #color:I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 132
    .end local v0           #color:I
    .end local v2           #defaultKey:Ljava/lang/String;
    :cond_4
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 4
    .parameter "positiveResult"

    .prologue
    .line 165
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 167
    if-eqz p1, :cond_2

    .line 168
    invoke-virtual {p0}, Lcom/android/settings_ex/hardware/DisplayGamma;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 169
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Lcom/android/settings_ex/hardware/DisplayGamma;->mNumberOfControls:I

    if-ge v1, v2, :cond_0

    .line 170
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "display_gamma_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lorg/cyanogenmod/hardware/DisplayGammaCalibration;->getCurGamma(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 169
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 172
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 178
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #i:I
    :cond_1
    return-void

    .line 173
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/hardware/DisplayGamma;->mOriginalColors:[Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 174
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1
    iget v2, p0, Lcom/android/settings_ex/hardware/DisplayGamma;->mNumberOfControls:I

    if-ge v1, v2, :cond_1

    .line 175
    iget-object v2, p0, Lcom/android/settings_ex/hardware/DisplayGamma;->mOriginalColors:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {v1, v2}, Lorg/cyanogenmod/hardware/DisplayGammaCalibration;->setGamma(ILjava/lang/String;)Z

    .line 174
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 2
    .parameter "builder"

    .prologue
    .line 78
    const v0, 0x7f0801c5

    new-instance v1, Lcom/android/settings_ex/hardware/DisplayGamma$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/hardware/DisplayGamma$1;-><init>(Lcom/android/settings_ex/hardware/DisplayGamma;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 84
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 204
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lcom/android/settings_ex/hardware/DisplayGamma$SavedState;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 206
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 222
    :cond_1
    return-void

    .line 210
    :cond_2
    check-cast p1, Lcom/android/settings_ex/hardware/DisplayGamma$SavedState;

    .line 211
    invoke-virtual {p1}, Lcom/android/settings_ex/hardware/DisplayGamma$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 212
    iget v0, p1, Lcom/android/settings_ex/hardware/DisplayGamma$SavedState;->controlCount:I

    iput v0, p0, Lcom/android/settings_ex/hardware/DisplayGamma;->mNumberOfControls:I

    .line 213
    iget-object v0, p1, Lcom/android/settings_ex/hardware/DisplayGamma$SavedState;->originalColors:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/hardware/DisplayGamma;->mOriginalColors:[Ljava/lang/String;

    .line 214
    iget-object v0, p1, Lcom/android/settings_ex/hardware/DisplayGamma$SavedState;->currentColors:[[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/hardware/DisplayGamma;->mCurrentColors:[[Ljava/lang/String;

    move v0, v1

    .line 216
    :goto_0
    iget v2, p0, Lcom/android/settings_ex/hardware/DisplayGamma;->mNumberOfControls:I

    if-ge v0, v2, :cond_1

    move v2, v1

    .line 217
    :goto_1
    sget-object v3, Lcom/android/settings_ex/hardware/DisplayGamma;->BAR_COLORS:[I

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 218
    iget-object v3, p0, Lcom/android/settings_ex/hardware/DisplayGamma;->mSeekBars:[[Lcom/android/settings_ex/hardware/DisplayGamma$GammaSeekBar;

    aget-object v3, v3, v0

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/android/settings_ex/hardware/DisplayGamma;->mCurrentColors:[[Ljava/lang/String;

    aget-object v4, v4, v0

    aget-object v4, v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/hardware/DisplayGamma$GammaSeekBar;->setGamma(I)V

    .line 217
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 220
    :cond_3
    const-string v2, " "

    iget-object v3, p0, Lcom/android/settings_ex/hardware/DisplayGamma;->mCurrentColors:[[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/cyanogenmod/hardware/DisplayGammaCalibration;->setGamma(ILjava/lang/String;)Z

    .line 216
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 182
    invoke-super {p0}, Landroid/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    .line 183
    .local v2, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/android/settings_ex/hardware/DisplayGamma;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/hardware/DisplayGamma;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move-object v1, v2

    .line 199
    :goto_0
    return-object v1

    .line 188
    :cond_1
    new-instance v1, Lcom/android/settings_ex/hardware/DisplayGamma$SavedState;

    invoke-direct {v1, v2}, Lcom/android/settings_ex/hardware/DisplayGamma$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 189
    .local v1, myState:Lcom/android/settings_ex/hardware/DisplayGamma$SavedState;
    iget v3, p0, Lcom/android/settings_ex/hardware/DisplayGamma;->mNumberOfControls:I

    iput v3, v1, Lcom/android/settings_ex/hardware/DisplayGamma$SavedState;->controlCount:I

    .line 190
    iget-object v3, p0, Lcom/android/settings_ex/hardware/DisplayGamma;->mCurrentColors:[[Ljava/lang/String;

    iput-object v3, v1, Lcom/android/settings_ex/hardware/DisplayGamma$SavedState;->currentColors:[[Ljava/lang/String;

    .line 191
    iget-object v3, p0, Lcom/android/settings_ex/hardware/DisplayGamma;->mOriginalColors:[Ljava/lang/String;

    iput-object v3, v1, Lcom/android/settings_ex/hardware/DisplayGamma$SavedState;->originalColors:[Ljava/lang/String;

    .line 194
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v3, p0, Lcom/android/settings_ex/hardware/DisplayGamma;->mNumberOfControls:I

    if-ge v0, v3, :cond_2

    .line 195
    iget-object v3, p0, Lcom/android/settings_ex/hardware/DisplayGamma;->mOriginalColors:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v0, v3}, Lorg/cyanogenmod/hardware/DisplayGammaCalibration;->setGamma(ILjava/lang/String;)Z

    .line 194
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 197
    :cond_2
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/settings_ex/hardware/DisplayGamma;->mOriginalColors:[Ljava/lang/String;

    goto :goto_0
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 136
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    .line 140
    invoke-virtual {p0}, Lcom/android/settings_ex/hardware/DisplayGamma;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 141
    .local v0, d:Landroid/app/AlertDialog;
    const/4 v2, -0x3

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 142
    .local v1, defaultsButton:Landroid/widget/Button;
    new-instance v2, Lcom/android/settings_ex/hardware/DisplayGamma$2;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/hardware/DisplayGamma$2;-><init>(Lcom/android/settings_ex/hardware/DisplayGamma;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    return-void
.end method
