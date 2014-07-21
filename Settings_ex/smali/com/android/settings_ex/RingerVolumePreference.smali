.class public Lcom/android/settings_ex/RingerVolumePreference;
.super Landroid/preference/VolumePreference;
.source "RingerVolumePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/RingerVolumePreference$SavedState;
    }
.end annotation


# static fields
.field private static final CHECKBOX_VIEW_ID:[I

.field private static final SEEKBAR_ID:[I

.field private static final SEEKBAR_MUTED_RES_ID:[I

.field private static final SEEKBAR_SECTION_ID:[I

.field private static final SEEKBAR_TYPE:[I

.field private static final SEEKBAR_UNMUTED_RES_ID:[I


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mCheckBoxes:[Landroid/widget/ImageView;

.field private mDialogClicked:Z

.field private mHandler:Landroid/os/Handler;

.field private mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mSafeHeadsetVolume:Landroid/widget/CheckBox;

.field private mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

.field private mSeekBars:[Landroid/widget/SeekBar;

.field private mWaiverDialog:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 71
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings_ex/RingerVolumePreference;->SEEKBAR_ID:[I

    .line 78
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings_ex/RingerVolumePreference;->SEEKBAR_TYPE:[I

    .line 85
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/settings_ex/RingerVolumePreference;->CHECKBOX_VIEW_ID:[I

    .line 92
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/settings_ex/RingerVolumePreference;->SEEKBAR_SECTION_ID:[I

    .line 99
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/settings_ex/RingerVolumePreference;->SEEKBAR_MUTED_RES_ID:[I

    .line 106
    new-array v0, v1, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/settings_ex/RingerVolumePreference;->SEEKBAR_UNMUTED_RES_ID:[I

    return-void

    .line 71
    :array_0
    .array-data 0x4
        0x71t 0x1t 0xdt 0x7ft
        0x77t 0x1t 0xdt 0x7ft
        0x7bt 0x1t 0xdt 0x7ft
        0x82t 0x1t 0xdt 0x7ft
    .end array-data

    .line 78
    :array_1
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 85
    :array_2
    .array-data 0x4
        0x70t 0x1t 0xdt 0x7ft
        0x76t 0x1t 0xdt 0x7ft
        0x7at 0x1t 0xdt 0x7ft
        0x81t 0x1t 0xdt 0x7ft
    .end array-data

    .line 92
    :array_3
    .array-data 0x4
        0x6ft 0x1t 0xdt 0x7ft
        0x74t 0x1t 0xdt 0x7ft
        0x78t 0x1t 0xdt 0x7ft
        0x80t 0x1t 0xdt 0x7ft
    .end array-data

    .line 99
    :array_4
    .array-data 0x4
        0xb1t 0x2t 0x8t 0x1t
        0xabt 0x2t 0x8t 0x1t
        0xa5t 0x2t 0x8t 0x1t
        0xa0t 0x2t 0x8t 0x1t
    .end array-data

    .line 106
    :array_5
    .array-data 0x4
        0xaft 0x2t 0x8t 0x1t
        0xa9t 0x2t 0x8t 0x1t
        0xa3t 0x2t 0x8t 0x1t
        0x9ft 0x2t 0x8t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 163
    invoke-direct {p0, p1, p2}, Landroid/preference/VolumePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 113
    sget-object v0, Lcom/android/settings_ex/RingerVolumePreference;->SEEKBAR_MUTED_RES_ID:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ex/RingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    .line 114
    sget-object v0, Lcom/android/settings_ex/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/settings_ex/RingerVolumePreference;->mSeekBars:[Landroid/widget/SeekBar;

    .line 116
    new-instance v0, Lcom/android/settings_ex/RingerVolumePreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/RingerVolumePreference$1;-><init>(Lcom/android/settings_ex/RingerVolumePreference;)V

    iput-object v0, p0, Lcom/android/settings_ex/RingerVolumePreference;->mHandler:Landroid/os/Handler;

    .line 166
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/RingerVolumePreference;->setStreamType(I)V

    .line 168
    const v0, 0x7f04008f

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/RingerVolumePreference;->setDialogLayoutResource(I)V

    .line 169
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/RingerVolumePreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 171
    sget-object v0, Lcom/android/settings_ex/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/preference/VolumePreference$SeekBarVolumizer;

    iput-object v0, p0, Lcom/android/settings_ex/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    .line 173
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/settings_ex/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    .line 174
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/RingerVolumePreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/settings_ex/RingerVolumePreference;->updateSlidersAndMutedStates()V

    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-static {p0}, Lcom/android/settings_ex/RingerVolumePreference;->getCurrentMutableStreams(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/RingerVolumePreference;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings_ex/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/RingerVolumePreference;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/settings_ex/RingerVolumePreference;->mDialogClicked:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/settings_ex/RingerVolumePreference;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/settings_ex/RingerVolumePreference;->mDialogClicked:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings_ex/RingerVolumePreference;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings_ex/RingerVolumePreference;->mWaiverDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/settings_ex/RingerVolumePreference;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/settings_ex/RingerVolumePreference;->mWaiverDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/settings_ex/RingerVolumePreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/settings_ex/RingerVolumePreference;->dismissDialog()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings_ex/RingerVolumePreference;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings_ex/RingerVolumePreference;->mSafeHeadsetVolume:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings_ex/RingerVolumePreference;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings_ex/RingerVolumePreference;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800()[I
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/android/settings_ex/RingerVolumePreference;->SEEKBAR_ID:[I

    return-object v0
.end method

.method private cleanup()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 461
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v2, Lcom/android/settings_ex/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 462
    iget-object v2, p0, Lcom/android/settings_ex/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    .line 463
    invoke-virtual {p0}, Lcom/android/settings_ex/RingerVolumePreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 464
    .local v0, dialog:Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 466
    iget-object v2, p0, Lcom/android/settings_ex/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/preference/VolumePreference$SeekBarVolumizer;->revertVolume()V

    .line 468
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/preference/VolumePreference$SeekBarVolumizer;->stop()V

    .line 469
    iget-object v2, p0, Lcom/android/settings_ex/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    aput-object v4, v2, v1

    .line 461
    .end local v0           #dialog:Landroid/app/Dialog;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 472
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/RingerVolumePreference;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_3

    .line 473
    invoke-virtual {p0}, Lcom/android/settings_ex/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/RingerVolumePreference;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 474
    iput-object v4, p0, Lcom/android/settings_ex/RingerVolumePreference;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 476
    :cond_3
    return-void
.end method

.method private dismissDialog()V
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/settings_ex/RingerVolumePreference;->mWaiverDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/android/settings_ex/RingerVolumePreference;->mWaiverDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 408
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/RingerVolumePreference;->mWaiverDialog:Landroid/app/Dialog;

    .line 410
    :cond_0
    return-void
.end method

.method private static getCurrentMutableStreams(Landroid/content/Context;)I
    .locals 4
    .parameter "c"

    .prologue
    .line 177
    const/16 v0, 0xa6

    .line 179
    .local v0, defaultMuteStreams:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mode_ringer_streams_affected"

    const/16 v3, 0xa6

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private getMediaVolumeUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 2
    .parameter "context"

    .prologue
    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/high16 v1, 0x7f06

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private updateSlidersAndMutedStates()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 129
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v4, Lcom/android/settings_ex/RingerVolumePreference;->SEEKBAR_TYPE:[I

    array-length v4, v4

    if-ge v0, v4, :cond_6

    .line 130
    sget-object v4, Lcom/android/settings_ex/RingerVolumePreference;->SEEKBAR_TYPE:[I

    aget v2, v4, v0

    .line 131
    .local v2, streamType:I
    iget-object v4, p0, Lcom/android/settings_ex/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v2}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v1

    .line 133
    .local v1, muted:Z
    iget-object v4, p0, Lcom/android/settings_ex/RingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    aget-object v4, v4, v0

    if-eqz v4, :cond_1

    .line 134
    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    const/4 v4, 0x5

    if-ne v2, v4, :cond_3

    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    if-ne v4, v6, :cond_3

    .line 137
    iget-object v4, p0, Lcom/android/settings_ex/RingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    aget-object v4, v4, v0

    const v5, 0x10802ad

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 144
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/android/settings_ex/RingerVolumePreference;->mSeekBars:[Landroid/widget/SeekBar;

    aget-object v4, v4, v0

    if-eqz v4, :cond_2

    .line 145
    iget-object v4, p0, Lcom/android/settings_ex/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    .line 146
    .local v3, volume:I
    iget-object v4, p0, Lcom/android/settings_ex/RingerVolumePreference;->mSeekBars:[Landroid/widget/SeekBar;

    aget-object v4, v4, v0

    invoke-virtual {v4, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 147
    iget-object v4, p0, Lcom/android/settings_ex/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getMasterStreamType()I

    move-result v4

    if-eq v2, v4, :cond_5

    if-eqz v1, :cond_5

    .line 148
    iget-object v4, p0, Lcom/android/settings_ex/RingerVolumePreference;->mSeekBars:[Landroid/widget/SeekBar;

    aget-object v4, v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 129
    .end local v3           #volume:I
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    :cond_3
    iget-object v4, p0, Lcom/android/settings_ex/RingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    aget-object v5, v4, v0

    if-eqz v1, :cond_4

    sget-object v4, Lcom/android/settings_ex/RingerVolumePreference;->SEEKBAR_MUTED_RES_ID:[I

    aget v4, v4, v0

    :goto_3
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_4
    sget-object v4, Lcom/android/settings_ex/RingerVolumePreference;->SEEKBAR_UNMUTED_RES_ID:[I

    aget v4, v4, v0

    goto :goto_3

    .line 150
    .restart local v3       #volume:I
    :cond_5
    iget-object v4, p0, Lcom/android/settings_ex/RingerVolumePreference;->mSeekBars:[Landroid/widget/SeekBar;

    aget-object v4, v4, v0

    invoke-virtual {v4, v6}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_2

    .line 154
    .end local v1           #muted:Z
    .end local v2           #streamType:I
    .end local v3           #volume:I
    :cond_6
    return-void
.end method


# virtual methods
.method public createActionButtons()V
    .locals 1

    .prologue
    .line 124
    const v0, 0x104000a

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/RingerVolumePreference;->setPositiveButtonText(I)V

    .line 125
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/RingerVolumePreference;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    .line 126
    return-void
.end method

.method public onActivityStop()V
    .locals 4

    .prologue
    .line 432
    invoke-super {p0}, Landroid/preference/VolumePreference;->onActivityStop()V

    .line 434
    iget-object v0, p0, Lcom/android/settings_ex/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    .local v0, arr$:[Landroid/preference/VolumePreference$SeekBarVolumizer;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 435
    .local v3, vol:Landroid/preference/VolumePreference$SeekBarVolumizer;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/preference/VolumePreference$SeekBarVolumizer;->stopSample()V

    .line 434
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 437
    .end local v3           #vol:Landroid/preference/VolumePreference$SeekBarVolumizer;
    :cond_1
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 21
    .parameter "view"

    .prologue
    .line 185
    invoke-super/range {p0 .. p1}, Landroid/preference/VolumePreference;->onBindDialogView(Landroid/view/View;)V

    .line 187
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    sget-object v1, Lcom/android/settings_ex/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v1, v1

    if-ge v9, v1, :cond_1

    .line 188
    sget-object v1, Lcom/android/settings_ex/RingerVolumePreference;->SEEKBAR_ID:[I

    aget v1, v1, v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SeekBar;

    .line 189
    .local v4, seekBar:Landroid/widget/SeekBar;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/RingerVolumePreference;->mSeekBars:[Landroid/widget/SeekBar;

    aput-object v4, v1, v9

    .line 190
    sget-object v1, Lcom/android/settings_ex/RingerVolumePreference;->SEEKBAR_TYPE:[I

    aget v1, v1, v9

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    move-object/from16 v20, v0

    new-instance v1, Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v2, Lcom/android/settings_ex/RingerVolumePreference;->SEEKBAR_TYPE:[I

    aget v5, v2, v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings_ex/RingerVolumePreference;->getMediaVolumeUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Landroid/preference/VolumePreference$SeekBarVolumizer;-><init>(Landroid/preference/VolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;ILandroid/net/Uri;)V

    aput-object v1, v20, v9

    .line 187
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 194
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    new-instance v2, Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v5, Lcom/android/settings_ex/RingerVolumePreference;->SEEKBAR_TYPE:[I

    aget v5, v5, v9

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Landroid/preference/VolumePreference$SeekBarVolumizer;-><init>(Landroid/preference/VolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;I)V

    aput-object v2, v1, v9

    goto :goto_1

    .line 200
    .end local v4           #seekBar:Landroid/widget/SeekBar;
    :cond_1
    const/4 v9, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/RingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    array-length v1, v1

    if-ge v9, v1, :cond_2

    .line 201
    sget-object v1, Lcom/android/settings_ex/RingerVolumePreference;->CHECKBOX_VIEW_ID:[I

    aget v1, v1, v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 202
    .local v7, checkbox:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/RingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    aput-object v7, v1, v9

    .line 200
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 205
    .end local v7           #checkbox:Landroid/widget/ImageView;
    :cond_2
    const v1, 0x7f0d017d

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/CheckBox;

    .line 206
    .local v11, linkCheckBox:Landroid/widget/CheckBox;
    const v1, 0x7f0d017e

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/CheckBox;

    .line 207
    .local v12, linkMuteStates:Landroid/widget/CheckBox;
    const v1, 0x7f0d017f

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/CheckBox;

    .line 208
    .local v19, volumeKeysControlRingStream:Landroid/widget/CheckBox;
    const v1, 0x7f0d0173

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings_ex/RingerVolumePreference;->mSafeHeadsetVolume:Landroid/widget/CheckBox;

    .line 210
    const v1, 0x7f0d0174

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 211
    .local v16, ringerSection:Landroid/view/View;
    const v1, 0x7f0d0178

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 212
    .local v14, notificationSection:Landroid/view/View;
    const v1, 0x7f0d017c

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 213
    .local v13, linkVolumesSection:Landroid/view/View;
    const v1, 0x7f0d0175

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 216
    .local v15, ringerDesc:Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 217
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/RingerVolumePreference;->getCurrentMutableStreams(Landroid/content/Context;)I

    move-result v1

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 218
    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 223
    :goto_3
    new-instance v1, Lcom/android/settings_ex/RingerVolumePreference$2;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/android/settings_ex/RingerVolumePreference$2;-><init>(Lcom/android/settings_ex/RingerVolumePreference;)V

    invoke-virtual {v12, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 242
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "volume_link_notification"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 244
    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 245
    const/16 v1, 0x8

    invoke-virtual {v14, v1}, Landroid/view/View;->setVisibility(I)V

    .line 246
    const v1, 0x7f0806b1

    invoke-virtual {v15, v1}, Landroid/widget/TextView;->setText(I)V

    .line 247
    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 255
    :goto_4
    new-instance v1, Lcom/android/settings_ex/RingerVolumePreference$3;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v14, v15, v12}, Lcom/android/settings_ex/RingerVolumePreference$3;-><init>(Lcom/android/settings_ex/RingerVolumePreference;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/CheckBox;)V

    invoke-virtual {v11, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 279
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "volume_keys_control_ring_stream"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    .line 281
    const/4 v1, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 286
    :goto_5
    new-instance v1, Lcom/android/settings_ex/RingerVolumePreference$4;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/android/settings_ex/RingerVolumePreference$4;-><init>(Lcom/android/settings_ex/RingerVolumePreference;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 302
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x111005f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v17

    .line 304
    .local v17, safeMediaVolumeEnabled:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/RingerVolumePreference;->mSafeHeadsetVolume:Landroid/widget/CheckBox;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "safe_headset_volume"

    if-eqz v17, :cond_9

    const/4 v1, 0x1

    :goto_7
    invoke-static {v3, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    :goto_8
    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 306
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/RingerVolumePreference;->mSafeHeadsetVolume:Landroid/widget/CheckBox;

    new-instance v2, Lcom/android/settings_ex/RingerVolumePreference$5;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/settings_ex/RingerVolumePreference$5;-><init>(Lcom/android/settings_ex/RingerVolumePreference;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 368
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/RingerVolumePreference;->updateSlidersAndMutedStates()V

    .line 371
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/RingerVolumePreference;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_3

    .line 372
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 373
    .local v8, filter:Landroid/content/IntentFilter;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 374
    new-instance v1, Lcom/android/settings_ex/RingerVolumePreference$6;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/android/settings_ex/RingerVolumePreference$6;-><init>(Lcom/android/settings_ex/RingerVolumePreference;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings_ex/RingerVolumePreference;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 383
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/RingerVolumePreference;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 386
    .end local v8           #filter:Landroid/content/IntentFilter;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v18

    .line 388
    .local v18, useMasterVolume:Z
    if-eqz v18, :cond_c

    .line 392
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 393
    const v10, 0x7f0d0174

    .line 397
    .local v10, id:I
    :goto_9
    const/4 v9, 0x0

    :goto_a
    sget-object v1, Lcom/android/settings_ex/RingerVolumePreference;->SEEKBAR_SECTION_ID:[I

    array-length v1, v1

    if-ge v9, v1, :cond_c

    .line 398
    sget-object v1, Lcom/android/settings_ex/RingerVolumePreference;->SEEKBAR_SECTION_ID:[I

    aget v1, v1, v9

    if-eq v1, v10, :cond_4

    .line 399
    sget-object v1, Lcom/android/settings_ex/RingerVolumePreference;->SEEKBAR_SECTION_ID:[I

    aget v1, v1, v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 397
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    .line 220
    .end local v10           #id:I
    .end local v17           #safeMediaVolumeEnabled:Z
    .end local v18           #useMasterVolume:Z
    :cond_5
    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_3

    .line 249
    :cond_6
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 250
    const/4 v1, 0x0

    invoke-virtual {v14, v1}, Landroid/view/View;->setVisibility(I)V

    .line 251
    const v1, 0x7f08010f

    invoke-virtual {v15, v1}, Landroid/widget/TextView;->setText(I)V

    .line 252
    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto/16 :goto_4

    .line 283
    :cond_7
    const/4 v1, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_5

    .line 297
    :cond_8
    const/16 v1, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 298
    const/16 v1, 0x8

    invoke-virtual {v13, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 304
    .restart local v17       #safeMediaVolumeEnabled:Z
    :cond_9
    const/4 v1, 0x0

    goto/16 :goto_7

    :cond_a
    const/4 v1, 0x0

    goto/16 :goto_8

    .line 395
    .restart local v18       #useMasterVolume:Z
    :cond_b
    const v10, 0x7f0d016f

    .restart local v10       #id:I
    goto :goto_9

    .line 403
    .end local v10           #id:I
    :cond_c
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 4
    .parameter "positiveResult"

    .prologue
    .line 420
    invoke-super {p0, p1}, Landroid/preference/VolumePreference;->onDialogClosed(Z)V

    .line 422
    if-nez p1, :cond_1

    .line 423
    iget-object v0, p0, Lcom/android/settings_ex/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    .local v0, arr$:[Landroid/preference/VolumePreference$SeekBarVolumizer;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 424
    .local v3, vol:Landroid/preference/VolumePreference$SeekBarVolumizer;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/preference/VolumePreference$SeekBarVolumizer;->revertVolume()V

    .line 423
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 427
    .end local v0           #arr$:[Landroid/preference/VolumePreference$SeekBarVolumizer;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #vol:Landroid/preference/VolumePreference$SeekBarVolumizer;
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/RingerVolumePreference;->cleanup()V

    .line 428
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 441
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    .line 442
    .local v0, isdown:Z
    :goto_0
    sparse-switch p2, :sswitch_data_0

    move v1, v2

    .line 448
    :sswitch_0
    return v1

    .end local v0           #isdown:Z
    :cond_0
    move v0, v2

    .line 441
    goto :goto_0

    .line 442
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0xa4 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .parameter

    .prologue
    .line 499
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/settings_ex/RingerVolumePreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 501
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/VolumePreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 514
    :cond_1
    return-void

    .line 505
    :cond_2
    check-cast p1, Lcom/android/settings_ex/RingerVolumePreference$SavedState;

    .line 506
    invoke-virtual {p1}, Lcom/android/settings_ex/RingerVolumePreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/preference/VolumePreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 507
    sget-object v0, Lcom/android/settings_ex/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Lcom/android/settings_ex/RingerVolumePreference$SavedState;->getVolumeStore(I)[Landroid/preference/VolumePreference$VolumeStore;

    move-result-object v1

    .line 508
    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/android/settings_ex/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 509
    iget-object v2, p0, Lcom/android/settings_ex/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    aget-object v2, v2, v0

    .line 510
    if-eqz v2, :cond_3

    .line 511
    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Landroid/preference/VolumePreference$SeekBarVolumizer;->onRestoreInstanceState(Landroid/preference/VolumePreference$VolumeStore;)V

    .line 508
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onSampleStarting(Landroid/preference/VolumePreference$SeekBarVolumizer;)V
    .locals 4
    .parameter "volumizer"

    .prologue
    .line 454
    invoke-super {p0, p1}, Landroid/preference/VolumePreference;->onSampleStarting(Landroid/preference/VolumePreference$SeekBarVolumizer;)V

    .line 455
    iget-object v0, p0, Lcom/android/settings_ex/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    .local v0, arr$:[Landroid/preference/VolumePreference$SeekBarVolumizer;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 456
    .local v3, vol:Landroid/preference/VolumePreference$SeekBarVolumizer;
    if-eqz v3, :cond_0

    if-eq v3, p1, :cond_0

    invoke-virtual {v3}, Landroid/preference/VolumePreference$SeekBarVolumizer;->stopSample()V

    .line 455
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 458
    .end local v3           #vol:Landroid/preference/VolumePreference$SeekBarVolumizer;
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 480
    invoke-super {p0}, Landroid/preference/VolumePreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    .line 481
    .local v2, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/android/settings_ex/RingerVolumePreference;->isPersistent()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 494
    .end local v2           #superState:Landroid/os/Parcelable;
    :goto_0
    return-object v2

    .line 486
    .restart local v2       #superState:Landroid/os/Parcelable;
    :cond_0
    new-instance v1, Lcom/android/settings_ex/RingerVolumePreference$SavedState;

    invoke-direct {v1, v2}, Lcom/android/settings_ex/RingerVolumePreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 487
    .local v1, myState:Lcom/android/settings_ex/RingerVolumePreference$SavedState;
    sget-object v5, Lcom/android/settings_ex/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v5, v5

    invoke-virtual {v1, v5}, Lcom/android/settings_ex/RingerVolumePreference$SavedState;->getVolumeStore(I)[Landroid/preference/VolumePreference$VolumeStore;

    move-result-object v4

    .line 488
    .local v4, volumeStore:[Landroid/preference/VolumePreference$VolumeStore;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v5, Lcom/android/settings_ex/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v5, v5

    if-ge v0, v5, :cond_2

    .line 489
    iget-object v5, p0, Lcom/android/settings_ex/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    aget-object v3, v5, v0

    .line 490
    .local v3, vol:Landroid/preference/VolumePreference$SeekBarVolumizer;
    if-eqz v3, :cond_1

    .line 491
    aget-object v5, v4, v0

    invoke-virtual {v3, v5}, Landroid/preference/VolumePreference$SeekBarVolumizer;->onSaveInstanceState(Landroid/preference/VolumePreference$VolumeStore;)V

    .line 488
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v3           #vol:Landroid/preference/VolumePreference$SeekBarVolumizer;
    :cond_2
    move-object v2, v1

    .line 494
    goto :goto_0
.end method
