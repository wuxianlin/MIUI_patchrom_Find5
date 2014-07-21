.class public Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;
.super Landroid/preference/DialogPreference;
.source "ButtonBacklightBrightness.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;,
        Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$SavedState;
    }
.end annotation


# instance fields
.field private mActiveControl:Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

.field private mButtonBrightness:Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

.field private mKeyboardBrightness:Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

.field private mResolver:Landroid/content/ContentResolver;

.field private mTimeoutBar:Landroid/widget/SeekBar;

.field private mTimeoutContainer:Landroid/view/ViewGroup;

.field private mTimeoutValue:Landroid/widget/TextView;

.field private mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->mResolver:Landroid/content/ContentResolver;

    .line 63
    const v2, 0x7f04001d

    invoke-virtual {p0, v2}, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->setDialogLayoutResource(I)V

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->isKeyboardSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    new-instance v2, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    const-string v3, "keyboard_brightness"

    invoke-direct {v2, p0, v3, v1}, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;-><init>(Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;Ljava/lang/String;Z)V

    iput-object v2, p0, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->mKeyboardBrightness:Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    .line 68
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->mKeyboardBrightness:Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    iput-object v2, p0, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->mActiveControl:Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->isButtonSupported()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110037

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .line 74
    .local v1, isSingleValue:Z
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e002e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 77
    .local v0, defaultBrightness:I
    new-instance v2, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    const-string v3, "button_brightness"

    invoke-direct {v2, p0, v3, v1, v0}, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;-><init>(Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;Ljava/lang/String;ZI)V

    iput-object v2, p0, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->mButtonBrightness:Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    .line 79
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->mButtonBrightness:Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    iput-object v2, p0, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->mActiveControl:Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    .line 82
    .end local v0           #defaultBrightness:I
    .end local v1           #isSingleValue:Z
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->updateSummary()V

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->mTimeoutBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;)Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->mButtonBrightness:Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;)Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->mKeyboardBrightness:Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;)Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->mActiveControl:Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->updateBrightnessPreview()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->updateTimeoutEnabledState()V

    return-void
.end method

.method private applyTimeout(I)V
    .locals 3
    .parameter "timeout"

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "button_backlight_timeout"

    mul-int/lit16 v2, p1, 0x3e8

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 261
    return-void
.end method

.method private getTimeout()I
    .locals 3

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "button_backlight_timeout"

    const/16 v2, 0x1388

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method private getTimeoutString(I)Ljava/lang/String;
    .locals 5
    .parameter "timeout"

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0e

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleTimeoutUpdate(I)V
    .locals 2
    .parameter "timeout"

    .prologue
    .line 285
    if-nez p1, :cond_0

    .line 286
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->mTimeoutValue:Landroid/widget/TextView;

    const v1, 0x7f080338

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 290
    :goto_0
    return-void

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->mTimeoutValue:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->getTimeoutString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateBrightnessPreview()V
    .locals 3

    .prologue
    .line 264
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->mWindow:Landroid/view/Window;

    if-eqz v1, :cond_0

    .line 265
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 266
    .local v0, params:Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->mActiveControl:Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    if-eqz v1, :cond_1

    .line 267
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->mActiveControl:Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->getBrightness(Z)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x437f

    div-float/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 271
    :goto_0
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 273
    .end local v0           #params:Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void

    .line 269
    .restart local v0       #params:Landroid/view/WindowManager$LayoutParams;
    :cond_1
    const/high16 v1, -0x4080

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    goto :goto_0
.end method

.method private updateSummary()V
    .locals 7

    .prologue
    const v5, 0x7f08033b

    const v3, 0x7f080339

    const/4 v4, 0x1

    .line 229
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->mButtonBrightness:Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    if-eqz v2, :cond_2

    .line 230
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->mButtonBrightness:Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    invoke-virtual {v2, v4}, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->getBrightness(Z)I

    move-result v0

    .line 231
    .local v0, buttonBrightness:I
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->getTimeout()I

    move-result v1

    .line 233
    .local v1, timeout:I
    if-nez v0, :cond_0

    .line 234
    invoke-virtual {p0, v3}, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->setSummary(I)V

    .line 246
    .end local v0           #buttonBrightness:I
    .end local v1           #timeout:I
    :goto_0
    return-void

    .line 235
    .restart local v0       #buttonBrightness:I
    .restart local v1       #timeout:I
    :cond_0
    if-nez v1, :cond_1

    .line 236
    invoke-virtual {p0, v5}, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->setSummary(I)V

    goto :goto_0

    .line 238
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f08033a

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->getTimeoutString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 241
    .end local v0           #buttonBrightness:I
    .end local v1           #timeout:I
    :cond_2
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->mKeyboardBrightness:Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->mKeyboardBrightness:Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    invoke-virtual {v2, v4}, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->getBrightness(Z)I

    move-result v2

    if-eqz v2, :cond_3

    .line 242
    invoke-virtual {p0, v5}, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->setSummary(I)V

    goto :goto_0

    .line 244
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->setSummary(I)V

    goto :goto_0
.end method

.method private updateTimeoutEnabledState()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 276
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->mButtonBrightness:Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->mButtonBrightness:Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    invoke-virtual {v4, v3}, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->getBrightness(Z)I

    move-result v0

    .line 278
    .local v0, buttonBrightness:I
    :goto_0
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->mTimeoutContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 279
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 280
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->mTimeoutContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v0, :cond_1

    const/4 v4, 0x1

    :goto_2
    invoke-virtual {v5, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 279
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0           #buttonBrightness:I
    .end local v1           #count:I
    .end local v2           #i:I
    :cond_0
    move v0, v3

    .line 276
    goto :goto_0

    .restart local v0       #buttonBrightness:I
    .restart local v1       #count:I
    .restart local v2       #i:I
    :cond_1
    move v4, v3

    .line 280
    goto :goto_2

    .line 282
    :cond_2
    return-void
.end method


# virtual methods
.method public isButtonSupported()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 214
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 215
    .local v2, res:Landroid/content/res/Resources;
    const v5, 0x10e004d

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    if-eqz v5, :cond_0

    move v0, v3

    .line 217
    .local v0, hasAnyKey:Z
    :goto_0
    const v5, 0x10e002e

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    if-lez v5, :cond_1

    move v1, v3

    .line 220
    .local v1, hasBacklight:Z
    :goto_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    :goto_2
    return v3

    .end local v0           #hasAnyKey:Z
    .end local v1           #hasBacklight:Z
    :cond_0
    move v0, v4

    .line 215
    goto :goto_0

    .restart local v0       #hasAnyKey:Z
    :cond_1
    move v1, v4

    .line 217
    goto :goto_1

    .restart local v1       #hasBacklight:Z
    :cond_2
    move v3, v4

    .line 220
    goto :goto_2
.end method

.method public isKeyboardSupported()Z
    .locals 2

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/16 v4, 0x8

    .line 97
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 99
    const v2, 0x7f0d0040

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->mTimeoutContainer:Landroid/view/ViewGroup;

    .line 100
    const v2, 0x7f0d0043

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->mTimeoutBar:Landroid/widget/SeekBar;

    .line 101
    const v2, 0x7f0d0042

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->mTimeoutValue:Landroid/widget/TextView;

    .line 102
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->mTimeoutBar:Landroid/widget/SeekBar;

    const/16 v3, 0x1e

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 103
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->mTimeoutBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 104
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->mTimeoutBar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->getTimeout()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 105
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->mTimeoutBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->handleTimeoutUpdate(I)V

    .line 107
    const v2, 0x7f0d003a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 108
    .local v0, buttonContainer:Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->mButtonBrightness:Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    if-eqz v2, :cond_2

    .line 109
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->mButtonBrightness:Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    invoke-virtual {v2, v0}, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->init(Landroid/view/ViewGroup;)V

    .line 115
    :goto_0
    const v2, 0x7f0d0045

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 116
    .local v1, keyboardContainer:Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->mKeyboardBrightness:Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    if-eqz v2, :cond_3

    .line 117
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->mKeyboardBrightness:Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    invoke-virtual {v2, v1}, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->init(Landroid/view/ViewGroup;)V

    .line 122
    :goto_1
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->mButtonBrightness:Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->mKeyboardBrightness:Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    if-nez v2, :cond_1

    .line 123
    :cond_0
    const v2, 0x7f0d0044

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 125
    :cond_1
    return-void

    .line 111
    .end local v1           #keyboardContainer:Landroid/view/ViewGroup;
    :cond_2
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 112
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->mTimeoutContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 119
    .restart local v1       #keyboardContainer:Landroid/view/ViewGroup;
    :cond_3
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1
.end method

.method protected onDialogClosed(Z)V
    .locals 1
    .parameter "positiveResult"

    .prologue
    .line 156
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 158
    if-nez p1, :cond_0

    .line 171
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->mTimeoutBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->applyTimeout(I)V

    .line 163
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->mButtonBrightness:Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->mButtonBrightness:Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    invoke-virtual {v0}, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->applyBrightness()V

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->mKeyboardBrightness:Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    if-eqz v0, :cond_2

    .line 167
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->mKeyboardBrightness:Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    invoke-virtual {v0}, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->applyBrightness()V

    .line 170
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->updateSummary()V

    goto :goto_0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 2
    .parameter "builder"

    .prologue
    .line 87
    const v0, 0x7f0801c5

    new-instance v1, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$1;

    invoke-direct {v1, p0}, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$1;-><init>(Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 93
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 294
    invoke-direct {p0, p2}, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->handleTimeoutUpdate(I)V

    .line 295
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter

    .prologue
    .line 195
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 197
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 211
    :cond_1
    :goto_0
    return-void

    .line 201
    :cond_2
    check-cast p1, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$SavedState;

    .line 202
    invoke-virtual {p1}, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 204
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->mTimeoutBar:Landroid/widget/SeekBar;

    iget v1, p1, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$SavedState;->timeout:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 205
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->mButtonBrightness:Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    if-eqz v0, :cond_3

    .line 206
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->mButtonBrightness:Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    iget v1, p1, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$SavedState;->button:I

    invoke-virtual {v0, v1}, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->setBrightness(I)V

    .line 208
    :cond_3
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->mKeyboardBrightness:Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->mKeyboardBrightness:Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    iget v1, p1, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$SavedState;->keyboard:I

    invoke-virtual {v0, v1}, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->setBrightness(I)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 175
    invoke-super {p0}, Landroid/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 176
    .local v1, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    move-object v0, v1

    .line 190
    :cond_1
    :goto_0
    return-object v0

    .line 181
    :cond_2
    new-instance v0, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$SavedState;

    invoke-direct {v0, v1}, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 182
    .local v0, myState:Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$SavedState;
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->mTimeoutBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    iput v2, v0, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$SavedState;->timeout:I

    .line 183
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->mButtonBrightness:Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    if-eqz v2, :cond_3

    .line 184
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->mButtonBrightness:Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    invoke-virtual {v2, v3}, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->getBrightness(Z)I

    move-result v2

    iput v2, v0, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$SavedState;->button:I

    .line 186
    :cond_3
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->mKeyboardBrightness:Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    if-eqz v2, :cond_1

    .line 187
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->mKeyboardBrightness:Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    invoke-virtual {v2, v3}, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->getBrightness(Z)I

    move-result v2

    iput v2, v0, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$SavedState;->keyboard:I

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 300
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 305
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 129
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 134
    .local v0, d:Landroid/app/AlertDialog;
    const/4 v2, -0x3

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 135
    .local v1, defaultsButton:Landroid/widget/Button;
    new-instance v2, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$2;

    invoke-direct {v2, p0}, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness$2;-><init>(Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->mWindow:Landroid/view/Window;

    .line 151
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->updateBrightnessPreview()V

    .line 152
    return-void
.end method
