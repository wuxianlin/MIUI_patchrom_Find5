.class public Lcom/android/settings/notificationlight/LightSettingsDialog;
.super Landroid/app/AlertDialog;
.source "LightSettingsDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Lcom/android/settings/notificationlight/ColorPickerView$OnColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notificationlight/LightSettingsDialog$PulseSpeedAdapter;
    }
.end annotation


# instance fields
.field private mColorPicker:Lcom/android/settings/notificationlight/ColorPickerView;

.field private mHexColorInput:Landroid/widget/EditText;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLedHandler:Landroid/os/Handler;

.field private mLedLastColor:I

.field private mLedLastSpeedOff:I

.field private mLedLastSpeedOn:I

.field private mListener:Lcom/android/settings/notificationlight/ColorPickerView$OnColorChangedListener;

.field private mNewColor:Lcom/android/settings/notificationlight/ColorPanelView;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mPulseSelectionListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mPulseSpeedOff:Landroid/widget/Spinner;

.field private mPulseSpeedOn:Landroid/widget/Spinner;

.field private mReadyForLed:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;IIIZ)V
    .locals 1
    .parameter "context"
    .parameter "initialColor"
    .parameter "initialSpeedOn"
    .parameter "initialSpeedOff"
    .parameter "onOffChangeable"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 167
    new-instance v0, Lcom/android/settings/notificationlight/LightSettingsDialog$1;

    invoke-direct {v0, p0}, Lcom/android/settings/notificationlight/LightSettingsDialog$1;-><init>(Lcom/android/settings/notificationlight/LightSettingsDialog;)V

    iput-object v0, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mPulseSelectionListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 243
    new-instance v0, Lcom/android/settings/notificationlight/LightSettingsDialog$2;

    invoke-direct {v0, p0}, Lcom/android/settings/notificationlight/LightSettingsDialog$2;-><init>(Lcom/android/settings/notificationlight/LightSettingsDialog;)V

    iput-object v0, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mLedHandler:Landroid/os/Handler;

    .line 103
    invoke-direct/range {p0 .. p5}, Lcom/android/settings/notificationlight/LightSettingsDialog;->init(Landroid/content/Context;IIIZ)V

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notificationlight/LightSettingsDialog;)Landroid/widget/Spinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mPulseSpeedOn:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/notificationlight/LightSettingsDialog;)Landroid/widget/Spinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mPulseSpeedOff:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/notificationlight/LightSettingsDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/settings/notificationlight/LightSettingsDialog;->updateLed()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/notificationlight/LightSettingsDialog;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private init(Landroid/content/Context;IIIZ)V
    .locals 2
    .parameter "context"
    .parameter "color"
    .parameter "speedOn"
    .parameter "speedOff"
    .parameter "onOffChangeable"

    .prologue
    const/4 v1, 0x0

    .line 108
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mNotificationManager:Landroid/app/NotificationManager;

    .line 111
    iput-boolean v1, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mReadyForLed:Z

    .line 112
    iput v1, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mLedLastColor:I

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/notificationlight/LightSettingsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 116
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/settings/notificationlight/LightSettingsDialog;->setUp(IIIZ)V

    .line 117
    return-void
.end method

.method private setUp(IIIZ)V
    .locals 6
    .parameter "color"
    .parameter "speedOn"
    .parameter "speedOff"
    .parameter "onOffChangeable"

    .prologue
    const/4 v3, 0x1

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/notificationlight/LightSettingsDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "layout_inflater"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mInflater:Landroid/view/LayoutInflater;

    .line 130
    iget-object v2, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040041

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 132
    .local v0, layout:Landroid/view/View;
    const v2, 0x7f0d00c5

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/notificationlight/ColorPickerView;

    iput-object v2, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mColorPicker:Lcom/android/settings/notificationlight/ColorPickerView;

    .line 133
    const v2, 0x7f0d00c7

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mHexColorInput:Landroid/widget/EditText;

    .line 134
    const v2, 0x7f0d00c8

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/notificationlight/ColorPanelView;

    iput-object v2, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mNewColor:Lcom/android/settings/notificationlight/ColorPanelView;

    .line 136
    iget-object v2, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mColorPicker:Lcom/android/settings/notificationlight/ColorPickerView;

    invoke-virtual {v2, p0}, Lcom/android/settings/notificationlight/ColorPickerView;->setOnColorChangedListener(Lcom/android/settings/notificationlight/ColorPickerView$OnColorChangedListener;)V

    .line 137
    iget-object v2, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mColorPicker:Lcom/android/settings/notificationlight/ColorPickerView;

    invoke-virtual {v2, p1, v3}, Lcom/android/settings/notificationlight/ColorPickerView;->setColor(IZ)V

    .line 139
    iget-object v2, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mHexColorInput:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 140
    const v2, 0x7f0d00ca

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mPulseSpeedOn:Landroid/widget/Spinner;

    .line 141
    new-instance v1, Lcom/android/settings/notificationlight/LightSettingsDialog$PulseSpeedAdapter;

    const v2, 0x7f0c0080

    const v4, 0x7f0c0081

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, p0, v2, v4, v5}, Lcom/android/settings/notificationlight/LightSettingsDialog$PulseSpeedAdapter;-><init>(Lcom/android/settings/notificationlight/LightSettingsDialog;IILjava/lang/Integer;)V

    .line 145
    .local v1, pulseSpeedAdapter:Lcom/android/settings/notificationlight/LightSettingsDialog$PulseSpeedAdapter;
    iget-object v2, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mPulseSpeedOn:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 146
    iget-object v2, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mPulseSpeedOn:Landroid/widget/Spinner;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/settings/notificationlight/LightSettingsDialog$PulseSpeedAdapter;->getTimePosition(Ljava/lang/Integer;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 147
    iget-object v2, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mPulseSpeedOn:Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mPulseSelectionListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 149
    const v2, 0x7f0d00cb

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mPulseSpeedOff:Landroid/widget/Spinner;

    .line 150
    new-instance v1, Lcom/android/settings/notificationlight/LightSettingsDialog$PulseSpeedAdapter;

    .end local v1           #pulseSpeedAdapter:Lcom/android/settings/notificationlight/LightSettingsDialog$PulseSpeedAdapter;
    const v2, 0x7f0c0082

    const v4, 0x7f0c0083

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, p0, v2, v4, v5}, Lcom/android/settings/notificationlight/LightSettingsDialog$PulseSpeedAdapter;-><init>(Lcom/android/settings/notificationlight/LightSettingsDialog;IILjava/lang/Integer;)V

    .line 153
    .restart local v1       #pulseSpeedAdapter:Lcom/android/settings/notificationlight/LightSettingsDialog$PulseSpeedAdapter;
    iget-object v2, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mPulseSpeedOff:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 154
    iget-object v2, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mPulseSpeedOff:Landroid/widget/Spinner;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/settings/notificationlight/LightSettingsDialog$PulseSpeedAdapter;->getTimePosition(Ljava/lang/Integer;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 155
    iget-object v2, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mPulseSpeedOff:Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mPulseSelectionListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 157
    iget-object v2, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mPulseSpeedOn:Landroid/widget/Spinner;

    invoke-virtual {v2, p4}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 158
    iget-object v4, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mPulseSpeedOff:Landroid/widget/Spinner;

    if-eq p2, v3, :cond_0

    if-eqz p4, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v4, v2}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 160
    invoke-virtual {p0, v0}, Lcom/android/settings/notificationlight/LightSettingsDialog;->setView(Landroid/view/View;)V

    .line 161
    const v2, 0x7f08013c

    invoke-virtual {p0, v2}, Lcom/android/settings/notificationlight/LightSettingsDialog;->setTitle(I)V

    .line 163
    iput-boolean v3, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mReadyForLed:Z

    .line 164
    invoke-direct {p0}, Lcom/android/settings/notificationlight/LightSettingsDialog;->updateLed()V

    .line 165
    return-void

    .line 158
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateLed()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 250
    iget-boolean v5, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mReadyForLed:Z

    if-nez v5, :cond_1

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/notificationlight/LightSettingsDialog;->getColor()I

    move-result v5

    const v6, 0xffffff

    and-int v2, v5, v6

    .line 256
    .local v2, color:I
    iget-object v5, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mPulseSpeedOn:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 257
    invoke-virtual {p0}, Lcom/android/settings/notificationlight/LightSettingsDialog;->getPulseSpeedOn()I

    move-result v4

    .line 258
    .local v4, speedOn:I
    invoke-virtual {p0}, Lcom/android/settings/notificationlight/LightSettingsDialog;->getPulseSpeedOff()I

    move-result v3

    .line 264
    .local v3, speedOff:I
    :goto_1
    iget v5, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mLedLastColor:I

    if-ne v5, v2, :cond_2

    iget v5, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mLedLastSpeedOn:I

    if-ne v5, v4, :cond_2

    iget v5, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mLedLastSpeedOff:I

    if-eq v5, v3, :cond_0

    .line 270
    :cond_2
    iget-object v5, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mLedHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 273
    iget-object v5, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mLedHandler:Landroid/os/Handler;

    const-wide/16 v6, 0xfa

    invoke-virtual {v5, v8, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 275
    iput v2, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mLedLastColor:I

    .line 276
    iput v4, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mLedLastSpeedOn:I

    .line 277
    iput v3, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mLedLastSpeedOff:I

    .line 279
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 280
    .local v0, b:Landroid/os/Bundle;
    const-string v5, "android.forceShowLights"

    invoke-virtual {v0, v5, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 282
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Lcom/android/settings/notificationlight/LightSettingsDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 283
    .local v1, builder:Landroid/app/Notification$Builder;
    invoke-virtual {v1, v2, v4, v3}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    .line 284
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 286
    iget-object v5, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v5, v9, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 260
    .end local v0           #b:Landroid/os/Bundle;
    .end local v1           #builder:Landroid/app/Notification$Builder;
    .end local v3           #speedOff:I
    .end local v4           #speedOn:I
    :cond_3
    const/4 v4, 0x1

    .line 261
    .restart local v4       #speedOn:I
    const/4 v3, 0x0

    .restart local v3       #speedOff:I
    goto :goto_1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .parameter "s"

    .prologue
    .line 387
    iget-object v2, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mHexColorInput:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 388
    .local v1, hexColor:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 390
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x23

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 391
    .local v0, color:I
    iget-object v2, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mColorPicker:Lcom/android/settings/notificationlight/ColorPickerView;

    invoke-virtual {v2}, Lcom/android/settings/notificationlight/ColorPickerView;->isAlphaSliderVisible()Z

    move-result v2

    if-nez v2, :cond_0

    .line 392
    const/high16 v2, -0x100

    or-int/2addr v0, v2

    .line 394
    :cond_0
    iget-object v2, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mColorPicker:Lcom/android/settings/notificationlight/ColorPickerView;

    invoke-virtual {v2, v0}, Lcom/android/settings/notificationlight/ColorPickerView;->setColor(I)V

    .line 395
    iget-object v2, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mNewColor:Lcom/android/settings/notificationlight/ColorPanelView;

    invoke-virtual {v2, v0}, Lcom/android/settings/notificationlight/ColorPanelView;->setColor(I)V

    .line 396
    invoke-direct {p0}, Lcom/android/settings/notificationlight/LightSettingsDialog;->updateLed()V

    .line 397
    iget-object v2, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mListener:Lcom/android/settings/notificationlight/ColorPickerView$OnColorChangedListener;

    if-eqz v2, :cond_1

    .line 398
    iget-object v2, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mListener:Lcom/android/settings/notificationlight/ColorPickerView$OnColorChangedListener;

    invoke-interface {v2, v0}, Lcom/android/settings/notificationlight/ColorPickerView$OnColorChangedListener;->onColorChanged(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    .end local v0           #color:I
    :cond_1
    :goto_0
    return-void

    .line 400
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 379
    return-void
.end method

.method public dismissLed()V
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 293
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mLedLastColor:I

    .line 294
    return-void
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mColorPicker:Lcom/android/settings/notificationlight/ColorPickerView;

    invoke-virtual {v0}, Lcom/android/settings/notificationlight/ColorPickerView;->getColor()I

    move-result v0

    return v0
.end method

.method public getPulseSpeedOff()I
    .locals 2

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/android/settings/notificationlight/LightSettingsDialog;->getPulseSpeedOn()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mPulseSpeedOff:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getPulseSpeedOn()I
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mPulseSpeedOn:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public onColorChanged(I)V
    .locals 8
    .parameter "color"

    .prologue
    .line 209
    iget-object v3, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mColorPicker:Lcom/android/settings/notificationlight/ColorPickerView;

    invoke-virtual {v3}, Lcom/android/settings/notificationlight/ColorPickerView;->isAlphaSliderVisible()Z

    move-result v1

    .line 210
    .local v1, hasAlpha:Z
    if-eqz v1, :cond_1

    const-string v0, "%08x"

    .line 211
    .local v0, format:Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_2

    const/4 v2, -0x1

    .line 213
    .local v2, mask:I
    :goto_1
    iget-object v3, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mNewColor:Lcom/android/settings/notificationlight/ColorPanelView;

    invoke-virtual {v3, p1}, Lcom/android/settings/notificationlight/ColorPanelView;->setColor(I)V

    .line 214
    iget-object v3, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mHexColorInput:Landroid/widget/EditText;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    and-int v7, p1, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v3, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mListener:Lcom/android/settings/notificationlight/ColorPickerView$OnColorChangedListener;

    if-eqz v3, :cond_0

    .line 217
    iget-object v3, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mListener:Lcom/android/settings/notificationlight/ColorPickerView$OnColorChangedListener;

    invoke-interface {v3, p1}, Lcom/android/settings/notificationlight/ColorPickerView$OnColorChangedListener;->onColorChanged(I)V

    .line 220
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/notificationlight/LightSettingsDialog;->updateLed()V

    .line 221
    return-void

    .line 210
    .end local v0           #format:Ljava/lang/String;
    .end local v2           #mask:I
    :cond_1
    const-string v0, "%06x"

    goto :goto_0

    .line 211
    .restart local v0       #format:Ljava/lang/String;
    :cond_2
    const v2, 0xffffff

    goto :goto_1
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 408
    if-nez p2, :cond_0

    .line 409
    iget-object v1, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mHexColorInput:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 410
    invoke-virtual {p0}, Lcom/android/settings/notificationlight/LightSettingsDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 412
    .local v0, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 416
    .end local v0           #inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    :goto_0
    return-void

    .line 414
    :cond_0
    iget-object v1, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mHexColorInput:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 191
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 192
    iget-object v0, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mColorPicker:Lcom/android/settings/notificationlight/ColorPickerView;

    const-string v1, "LightSettingsDialog:color"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/notificationlight/ColorPickerView;->setColor(IZ)V

    .line 193
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 184
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 185
    .local v0, state:Landroid/os/Bundle;
    const-string v1, "LightSettingsDialog:color"

    invoke-virtual {p0}, Lcom/android/settings/notificationlight/LightSettingsDialog;->getColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 186
    return-object v0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 203
    invoke-super {p0}, Landroid/app/AlertDialog;->onStart()V

    .line 204
    invoke-direct {p0}, Lcom/android/settings/notificationlight/LightSettingsDialog;->updateLed()V

    .line 205
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 197
    invoke-super {p0}, Landroid/app/AlertDialog;->onStop()V

    .line 198
    invoke-virtual {p0}, Lcom/android/settings/notificationlight/LightSettingsDialog;->dismissLed()V

    .line 199
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 383
    return-void
.end method

.method public setAlphaSliderVisible(Z)V
    .locals 5
    .parameter "visible"

    .prologue
    .line 224
    iget-object v1, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mHexColorInput:Landroid/widget/EditText;

    const/4 v0, 0x1

    new-array v2, v0, [Landroid/text/InputFilter;

    const/4 v3, 0x0

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-direct {v4, v0}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 225
    iget-object v0, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mColorPicker:Lcom/android/settings/notificationlight/ColorPickerView;

    invoke-virtual {v0, p1}, Lcom/android/settings/notificationlight/ColorPickerView;->setAlphaSliderVisible(Z)V

    .line 226
    return-void

    .line 224
    :cond_0
    const/4 v0, 0x6

    goto :goto_0
.end method
