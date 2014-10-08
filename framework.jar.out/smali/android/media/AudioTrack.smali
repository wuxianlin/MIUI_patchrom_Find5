.class public Landroid/media/AudioTrack;
.super Ljava/lang/Object;
.source "AudioTrack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioTrack$NativeEventHandlerDelegate;,
        Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;
    }
.end annotation


# static fields
.field public static final ERROR:I = -0x1

.field public static final ERROR_BAD_VALUE:I = -0x2

.field public static final ERROR_INVALID_OPERATION:I = -0x3

.field private static final ERROR_NATIVESETUP_AUDIOSYSTEM:I = -0x10

.field private static final ERROR_NATIVESETUP_INVALIDCHANNELMASK:I = -0x11

.field private static final ERROR_NATIVESETUP_INVALIDFORMAT:I = -0x12

.field private static final ERROR_NATIVESETUP_INVALIDSTREAMTYPE:I = -0x13

.field private static final ERROR_NATIVESETUP_NATIVEINITFAILED:I = -0x14

.field public static final MODE_STATIC:I = 0x0

.field public static final MODE_STREAM:I = 0x1

.field private static final NATIVE_EVENT_MARKER:I = 0x3

.field private static final NATIVE_EVENT_NEW_POS:I = 0x4

.field public static final PLAYSTATE_PAUSED:I = 0x2

.field public static final PLAYSTATE_PLAYING:I = 0x3

.field public static final PLAYSTATE_STOPPED:I = 0x1

.field private static final SAMPLE_RATE_HZ_MAX:I = 0xbb80

.field private static final SAMPLE_RATE_HZ_MIN:I = 0xfa0

.field public static final STATE_INITIALIZED:I = 0x1

.field public static final STATE_NO_STATIC_DATA:I = 0x2

.field public static final STATE_UNINITIALIZED:I = 0x0

.field public static final SUCCESS:I = 0x0

.field private static final SUPPORTED_OUT_CHANNELS:I = 0x4fc

.field private static final TAG:Ljava/lang/String; = "android.media.AudioTrack"

.field private static final VOLUME_MAX:F = 1.0f

.field private static final VOLUME_MIN:F


# instance fields
.field private mAudioFormat:I

.field private mChannelConfiguration:I

.field private mChannelCount:I

.field private mChannels:I

.field private mDataLoadMode:I

.field private mEventHandlerDelegate:Landroid/media/AudioTrack$NativeEventHandlerDelegate;

.field private final mInitializationLooper:Landroid/os/Looper;

.field private mJniData:I

.field private mNativeBufferSizeInBytes:I

.field private mNativeBufferSizeInFrames:I

.field private mNativeTrackInJavaObj:I

.field private mPlayState:I

.field private final mPlayStateLock:Ljava/lang/Object;

.field private mSampleRate:I

.field private mSessionId:I

.field private mState:I

.field private mStreamType:I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 8
    .parameter "streamType"
    .parameter "sampleRateInHz"
    .parameter "channelConfig"
    .parameter "audioFormat"
    .parameter "bufferSizeInBytes"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 268
    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    .line 270
    return-void
.end method

.method public constructor <init>(IIIIIII)V
    .locals 12
    .parameter "streamType"
    .parameter "sampleRateInHz"
    .parameter "channelConfig"
    .parameter "audioFormat"
    .parameter "bufferSizeInBytes"
    .parameter "mode"
    .parameter "sessionId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/AudioTrack;->mState:I

    .line 161
    const/4 v1, 0x1

    iput v1, p0, Landroid/media/AudioTrack;->mPlayState:I

    .line 165
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    .line 169
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    .line 170
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    .line 186
    const/4 v1, 0x1

    iput v1, p0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 190
    const/4 v1, 0x4

    iput v1, p0, Landroid/media/AudioTrack;->mChannels:I

    .line 199
    const/4 v1, 0x3

    iput v1, p0, Landroid/media/AudioTrack;->mStreamType:I

    .line 203
    const/4 v1, 0x1

    iput v1, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    .line 207
    const/4 v1, 0x4

    iput v1, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    .line 213
    const/4 v1, 0x2

    iput v1, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    .line 217
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/AudioTrack;->mSessionId:I

    .line 313
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v11

    .local v11, looper:Landroid/os/Looper;
    if-nez v11, :cond_0

    .line 314
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v11

    .line 316
    :cond_0
    iput-object v11, p0, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p6

    .line 318
    invoke-direct/range {v1 .. v6}, Landroid/media/AudioTrack;->audioParamCheck(IIIII)V

    .line 320
    move/from16 v0, p5

    invoke-direct {p0, v0}, Landroid/media/AudioTrack;->audioBuffSizeCheck(I)V

    .line 322
    if-gez p7, :cond_1

    .line 323
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid audio session ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 326
    :cond_1
    const/4 v1, 0x1

    new-array v9, v1, [I

    .line 327
    .local v9, session:[I
    const/4 v1, 0x0

    aput p7, v9, v1

    .line 329
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget v3, p0, Landroid/media/AudioTrack;->mStreamType:I

    iget v4, p0, Landroid/media/AudioTrack;->mSampleRate:I

    iget v5, p0, Landroid/media/AudioTrack;->mChannels:I

    iget v6, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    iget v7, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    iget v8, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/media/AudioTrack;->native_setup(Ljava/lang/Object;IIIIII[I)I

    move-result v10

    .line 332
    .local v10, initResult:I
    if-eqz v10, :cond_2

    .line 333
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " when initializing AudioTrack."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 344
    :goto_0
    return-void

    .line 337
    :cond_2
    const/4 v1, 0x0

    aget v1, v9, v1

    iput v1, p0, Landroid/media/AudioTrack;->mSessionId:I

    .line 339
    iget v1, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez v1, :cond_3

    .line 340
    const/4 v1, 0x2

    iput v1, p0, Landroid/media/AudioTrack;->mState:I

    goto :goto_0

    .line 342
    :cond_3
    const/4 v1, 0x1

    iput v1, p0, Landroid/media/AudioTrack;->mState:I

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/media/AudioTrack;)Landroid/os/Looper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-static {p0}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private audioBuffSizeCheck(I)V
    .locals 5
    .parameter "audioBufferSize"

    .prologue
    const/4 v2, 0x1

    .line 483
    iget v3, p0, Landroid/media/AudioTrack;->mChannelCount:I

    iget v1, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_1

    move v1, v2

    :goto_0
    mul-int v0, v3, v1

    .line 485
    .local v0, frameSizeInBytes:I
    rem-int v1, p1, v0

    if-nez v1, :cond_0

    if-ge p1, v2, :cond_2

    .line 486
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid audio buffer size."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 483
    .end local v0           #frameSizeInBytes:I
    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    .line 489
    .restart local v0       #frameSizeInBytes:I
    :cond_2
    iput p1, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    .line 490
    div-int v1, p1, v0

    iput v1, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    .line 491
    return-void
.end method

.method private audioParamCheck(IIIII)V
    .locals 4
    .parameter "streamType"
    .parameter "sampleRateInHz"
    .parameter "channelConfig"
    .parameter "audioFormat"
    .parameter "mode"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 370
    if-eq p1, v3, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    if-eq p1, v2, :cond_0

    if-eq p1, v1, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    .line 376
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid stream type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 378
    :cond_0
    iput p1, p0, Landroid/media/AudioTrack;->mStreamType:I

    .line 382
    const/16 v0, 0xfa0

    if-lt p2, v0, :cond_1

    const v0, 0xbb80

    if-le p2, v0, :cond_2

    .line 383
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Hz is not a supported sample rate."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 386
    :cond_2
    iput p2, p0, Landroid/media/AudioTrack;->mSampleRate:I

    .line 390
    iput p3, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    .line 392
    sparse-switch p3, :sswitch_data_0

    .line 405
    invoke-static {p3}, Landroid/media/AudioTrack;->isMultichannelConfigSupported(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 407
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported channel configuration."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 396
    :sswitch_0
    iput v1, p0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 397
    iput v3, p0, Landroid/media/AudioTrack;->mChannels:I

    .line 415
    :goto_0
    sparse-switch p4, :sswitch_data_1

    .line 430
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported sample encoding. Should be ENCODING_PCM_8BIT or ENCODING_PCM_16BIT."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 401
    :sswitch_1
    iput v2, p0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 402
    const/16 v0, 0xc

    iput v0, p0, Landroid/media/AudioTrack;->mChannels:I

    goto :goto_0

    .line 409
    :cond_3
    iput p3, p0, Landroid/media/AudioTrack;->mChannels:I

    .line 410
    invoke-static {p3}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    iput v0, p0, Landroid/media/AudioTrack;->mChannelCount:I

    goto :goto_0

    .line 417
    :sswitch_2
    iput v2, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    .line 436
    :goto_1
    if-eq p5, v1, :cond_4

    if-eqz p5, :cond_4

    .line 437
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 427
    :sswitch_3
    iput p4, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    goto :goto_1

    .line 439
    :cond_4
    iput p5, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    .line 440
    return-void

    .line 392
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_0
        0xc -> :sswitch_1
    .end sparse-switch

    .line 415
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_3
        0x64 -> :sswitch_3
        0x65 -> :sswitch_3
        0x66 -> :sswitch_3
        0x67 -> :sswitch_3
        0x68 -> :sswitch_3
        0x69 -> :sswitch_3
    .end sparse-switch
.end method

.method public static getMaxVolume()F
    .locals 1

    .prologue
    .line 532
    const/high16 v0, 0x3f80

    return v0
.end method

.method public static getMinBufferSize(III)I
    .locals 4
    .parameter "sampleRateInHz"
    .parameter "channelConfig"
    .parameter "audioFormat"

    .prologue
    const/4 v1, -0x2

    .line 693
    const/4 v0, 0x0

    .line 694
    .local v0, channelCount:I
    sparse-switch p1, :sswitch_data_0

    .line 704
    and-int/lit16 v2, p1, 0x4fc

    if-eq v2, p1, :cond_1

    .line 706
    const-string v2, "getMinBufferSize(): Invalid channel configuration."

    invoke-static {v2}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 737
    :cond_0
    :goto_0
    return v1

    .line 697
    :sswitch_0
    const/4 v0, 0x1

    .line 713
    :goto_1
    const/4 v2, 0x2

    if-eq p2, v2, :cond_2

    const/4 v2, 0x3

    if-eq p2, v2, :cond_2

    const/16 v2, 0x64

    if-eq p2, v2, :cond_2

    const/16 v2, 0x65

    if-eq p2, v2, :cond_2

    const/16 v2, 0x66

    if-eq p2, v2, :cond_2

    const/16 v2, 0x67

    if-eq p2, v2, :cond_2

    const/16 v2, 0x68

    if-eq p2, v2, :cond_2

    const/16 v2, 0x69

    if-eq p2, v2, :cond_2

    .line 721
    const-string v2, "getMinBufferSize(): Invalid audio format."

    invoke-static {v2}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 701
    :sswitch_1
    const/4 v0, 0x2

    .line 702
    goto :goto_1

    .line 709
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    goto :goto_1

    .line 726
    :cond_2
    const/16 v2, 0xfa0

    if-lt p0, v2, :cond_3

    const v2, 0xbb80

    if-le p0, v2, :cond_4

    .line 727
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMinBufferSize(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Hz is not a supported sample rate."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 731
    :cond_4
    invoke-static {p0, v0, p2}, Landroid/media/AudioTrack;->native_get_min_buff_size(III)I

    move-result v1

    .line 732
    .local v1, size:I
    if-gtz v1, :cond_0

    .line 733
    const-string v2, "getMinBufferSize(): error querying hardware"

    invoke-static {v2}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 734
    const/4 v1, -0x1

    goto :goto_0

    .line 694
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_0
        0xc -> :sswitch_1
    .end sparse-switch
.end method

.method public static getMinVolume()F
    .locals 1

    .prologue
    .line 523
    const/4 v0, 0x0

    return v0
.end method

.method public static getNativeOutputSampleRate(I)I
    .locals 1
    .parameter "streamType"

    .prologue
    .line 670
    invoke-static {p0}, Landroid/media/AudioTrack;->native_get_output_sample_rate(I)I

    move-result v0

    return v0
.end method

.method private static isMultichannelConfigSupported(I)Z
    .locals 5
    .parameter "channelConfig"

    .prologue
    const/4 v2, 0x0

    .line 449
    and-int/lit16 v3, p0, 0x4fc

    if-eq v3, p0, :cond_0

    .line 450
    const-string v3, "Channel configuration features unsupported channels"

    invoke-static {v3}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 470
    :goto_0
    return v2

    .line 456
    :cond_0
    const/16 v1, 0xc

    .line 458
    .local v1, frontPair:I
    and-int/lit8 v3, p0, 0xc

    const/16 v4, 0xc

    if-eq v3, v4, :cond_1

    .line 459
    const-string v3, "Front channels must be present in multichannel configurations"

    invoke-static {v3}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 462
    :cond_1
    const/16 v0, 0xc0

    .line 464
    .local v0, backPair:I
    and-int/lit16 v3, p0, 0xc0

    if-eqz v3, :cond_2

    .line 465
    and-int/lit16 v3, p0, 0xc0

    const/16 v4, 0xc0

    if-eq v3, v4, :cond_2

    .line 466
    const-string v3, "Rear channels can\'t be used independently"

    invoke-static {v3}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 470
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1397
    const-string v0, "android.media.AudioTrack"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1401
    const-string v0, "android.media.AudioTrack"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    return-void
.end method

.method private final native native_attachAuxEffect(I)I
.end method

.method private final native native_finalize()V
.end method

.method private final native native_flush()V
.end method

.method private final native native_get_latency()I
.end method

.method private final native native_get_marker_pos()I
.end method

.method private static final native native_get_min_buff_size(III)I
.end method

.method private final native native_get_native_frame_count()I
.end method

.method private static final native native_get_output_sample_rate(I)I
.end method

.method private final native native_get_playback_rate()I
.end method

.method private final native native_get_pos_update_period()I
.end method

.method private final native native_get_position()I
.end method

.method private final native native_get_timestamp([J)I
.end method

.method private final native native_pause()V
.end method

.method private final native native_release()V
.end method

.method private final native native_reload_static()I
.end method

.method private final native native_setAuxEffectSendLevel(F)V
.end method

.method private final native native_setVolume(FF)V
.end method

.method private final native native_set_loop(III)I
.end method

.method private final native native_set_marker_pos(I)I
.end method

.method private final native native_set_playback_rate(I)I
.end method

.method private final native native_set_pos_update_period(I)I
.end method

.method private final native native_set_position(I)I
.end method

.method private final native native_setup(Ljava/lang/Object;IIIIII[I)I
.end method

.method private final native native_start()V
.end method

.method private final native native_stop()V
.end method

.method private final native native_write_byte([BIII)I
.end method

.method private final native native_write_short([SIII)I
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 4
    .parameter "audiotrack_ref"
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 1315
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioTrack;

    .line 1316
    .local v3, track:Landroid/media/AudioTrack;
    if-nez v3, :cond_1

    .line 1329
    :cond_0
    :goto_0
    return-void

    .line 1320
    :cond_1
    iget-object v0, v3, Landroid/media/AudioTrack;->mEventHandlerDelegate:Landroid/media/AudioTrack$NativeEventHandlerDelegate;

    .line 1321
    .local v0, delegate:Landroid/media/AudioTrack$NativeEventHandlerDelegate;
    if-eqz v0, :cond_0

    .line 1322
    invoke-virtual {v0}, Landroid/media/AudioTrack$NativeEventHandlerDelegate;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 1323
    .local v1, handler:Landroid/os/Handler;
    if-eqz v1, :cond_0

    .line 1324
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1325
    .local v2, m:Landroid/os/Message;
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method


# virtual methods
.method public attachAuxEffect(I)I
    .locals 1
    .parameter "effectId"

    .prologue
    .line 1190
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_0

    .line 1191
    const/4 v0, -0x3

    .line 1193
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_attachAuxEffect(I)I

    move-result v0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 511
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_finalize()V

    .line 512
    return-void
.end method

.method public flush()V
    .locals 2

    .prologue
    .line 1061
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1063
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_flush()V

    .line 1066
    :cond_0
    return-void
.end method

.method public getAudioFormat()I
    .locals 1

    .prologue
    .line 554
    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    return v0
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 747
    iget v0, p0, Landroid/media/AudioTrack;->mSessionId:I

    return v0
.end method

.method public getChannelConfiguration()I
    .locals 1

    .prologue
    .line 574
    iget v0, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    return v0
.end method

.method public getChannelCount()I
    .locals 1

    .prologue
    .line 581
    iget v0, p0, Landroid/media/AudioTrack;->mChannelCount:I

    return v0
.end method

.method public getLatency()I
    .locals 1

    .prologue
    .line 663
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_latency()I

    move-result v0

    return v0
.end method

.method protected getNativeFrameCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 622
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_native_frame_count()I

    move-result v0

    return v0
.end method

.method public getNotificationMarkerPosition()I
    .locals 1

    .prologue
    .line 631
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_marker_pos()I

    move-result v0

    return v0
.end method

.method public getPlayState()I
    .locals 2

    .prologue
    .line 603
    iget-object v1, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 604
    :try_start_0
    iget v0, p0, Landroid/media/AudioTrack;->mPlayState:I

    monitor-exit v1

    return v0

    .line 605
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPlaybackHeadPosition()I
    .locals 1

    .prologue
    .line 651
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_position()I

    move-result v0

    return v0
.end method

.method public getPlaybackRate()I
    .locals 1

    .prologue
    .line 546
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_playback_rate()I

    move-result v0

    return v0
.end method

.method public getPositionNotificationPeriod()I
    .locals 1

    .prologue
    .line 639
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_pos_update_period()I

    move-result v0

    return v0
.end method

.method public getSampleRate()I
    .locals 1

    .prologue
    .line 539
    iget v0, p0, Landroid/media/AudioTrack;->mSampleRate:I

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 593
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    return v0
.end method

.method public getStreamType()I
    .locals 1

    .prologue
    .line 565
    iget v0, p0, Landroid/media/AudioTrack;->mStreamType:I

    return v0
.end method

.method public getTimestamp(Landroid/media/AudioTimestamp;)Z
    .locals 6
    .parameter "timestamp"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 774
    if-nez p1, :cond_0

    .line 775
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 778
    :cond_0
    const/4 v4, 0x2

    new-array v0, v4, [J

    .line 779
    .local v0, longArray:[J
    invoke-direct {p0, v0}, Landroid/media/AudioTrack;->native_get_timestamp([J)I

    move-result v1

    .line 780
    .local v1, ret:I
    if-eqz v1, :cond_1

    .line 785
    :goto_0
    return v2

    .line 783
    :cond_1
    aget-wide v4, v0, v2

    iput-wide v4, p1, Landroid/media/AudioTimestamp;->framePosition:J

    .line 784
    aget-wide v4, v0, v3

    iput-wide v4, p1, Landroid/media/AudioTimestamp;->nanoTime:J

    move v2, v3

    .line 785
    goto :goto_0
.end method

.method public pause()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1038
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1039
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "pause() called on uninitialized AudioTrack."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1044
    :cond_0
    iget-object v1, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1045
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_pause()V

    .line 1046
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/AudioTrack;->mPlayState:I

    .line 1047
    monitor-exit v1

    .line 1048
    return-void

    .line 1047
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public play()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 998
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 999
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "play() called on uninitialized AudioTrack."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1002
    :cond_0
    iget-object v1, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1003
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_start()V

    .line 1004
    const/4 v0, 0x3

    iput v0, p0, Landroid/media/AudioTrack;->mPlayState:I

    .line 1005
    monitor-exit v1

    .line 1006
    return-void

    .line 1005
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 501
    :try_start_0
    invoke-virtual {p0}, Landroid/media/AudioTrack;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 505
    :goto_0
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_release()V

    .line 506
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioTrack;->mState:I

    .line 507
    return-void

    .line 502
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public reloadStaticData()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1162
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eq v0, v1, :cond_1

    .line 1163
    :cond_0
    const/4 v0, -0x3

    .line 1165
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_reload_static()I

    move-result v0

    goto :goto_0
.end method

.method public setAuxEffectSendLevel(F)I
    .locals 1
    .parameter "level"

    .prologue
    .line 1213
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_0

    .line 1214
    const/4 v0, -0x3

    .line 1224
    :goto_0
    return v0

    .line 1217
    :cond_0
    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 1218
    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result p1

    .line 1220
    :cond_1
    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    .line 1221
    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result p1

    .line 1223
    :cond_2
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_setAuxEffectSendLevel(F)V

    .line 1224
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLoopPoints(III)I
    .locals 2
    .parameter "startInFrames"
    .parameter "endInFrames"
    .parameter "loopCount"

    .prologue
    const/4 v1, 0x1

    .line 961
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 963
    :cond_0
    const/4 v0, -0x3

    .line 971
    :goto_0
    return v0

    .line 965
    :cond_1
    if-nez p3, :cond_3

    .line 971
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioTrack;->native_set_loop(III)I

    move-result v0

    goto :goto_0

    .line 967
    :cond_3
    if-ltz p1, :cond_4

    iget v0, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    if-ge p1, v0, :cond_4

    if-ge p1, p2, :cond_4

    iget v0, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    if-le p2, v0, :cond_2

    .line 969
    :cond_4
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public setNotificationMarkerPosition(I)I
    .locals 1
    .parameter "markerInFrames"

    .prologue
    .line 900
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_0

    .line 901
    const/4 v0, -0x3

    .line 903
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_marker_pos(I)I

    move-result v0

    goto :goto_0
.end method

.method public setPlaybackHeadPosition(I)I
    .locals 2
    .parameter "positionInFrames"

    .prologue
    const/4 v1, 0x1

    .line 931
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 933
    :cond_0
    const/4 v0, -0x3

    .line 938
    :goto_0
    return v0

    .line 935
    :cond_1
    if-ltz p1, :cond_2

    iget v0, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    if-le p1, v0, :cond_3

    .line 936
    :cond_2
    const/4 v0, -0x2

    goto :goto_0

    .line 938
    :cond_3
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_position(I)I

    move-result v0

    goto :goto_0
.end method

.method public setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 800
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/AudioTrack;->setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;Landroid/os/Handler;)V

    .line 801
    return-void
.end method

.method public setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;Landroid/os/Handler;)V
    .locals 1
    .parameter "listener"
    .parameter "handler"

    .prologue
    .line 813
    if-eqz p1, :cond_0

    .line 814
    new-instance v0, Landroid/media/AudioTrack$NativeEventHandlerDelegate;

    invoke-direct {v0, p0, p0, p1, p2}, Landroid/media/AudioTrack$NativeEventHandlerDelegate;-><init>(Landroid/media/AudioTrack;Landroid/media/AudioTrack;Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/media/AudioTrack;->mEventHandlerDelegate:Landroid/media/AudioTrack$NativeEventHandlerDelegate;

    .line 818
    :goto_0
    return-void

    .line 816
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioTrack;->mEventHandlerDelegate:Landroid/media/AudioTrack$NativeEventHandlerDelegate;

    goto :goto_0
.end method

.method public setPlaybackRate(I)I
    .locals 2
    .parameter "sampleRateInHz"

    .prologue
    .line 880
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 881
    const/4 v0, -0x3

    .line 886
    :goto_0
    return v0

    .line 883
    :cond_0
    if-gtz p1, :cond_1

    .line 884
    const/4 v0, -0x2

    goto :goto_0

    .line 886
    :cond_1
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_playback_rate(I)I

    move-result v0

    goto :goto_0
.end method

.method public setPositionNotificationPeriod(I)I
    .locals 1
    .parameter "periodInFrames"

    .prologue
    .line 913
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_0

    .line 914
    const/4 v0, -0x3

    .line 916
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_pos_update_period(I)I

    move-result v0

    goto :goto_0
.end method

.method protected setState(I)V
    .locals 0
    .parameter "state"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 983
    iput p1, p0, Landroid/media/AudioTrack;->mState:I

    .line 984
    return-void
.end method

.method public setStereoVolume(FF)I
    .locals 1
    .parameter "leftVolume"
    .parameter "rightVolume"

    .prologue
    .line 832
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_0

    .line 833
    const/4 v0, -0x3

    .line 852
    :goto_0
    return v0

    .line 837
    :cond_0
    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 838
    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result p1

    .line 840
    :cond_1
    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    .line 841
    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result p1

    .line 843
    :cond_2
    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_3

    .line 844
    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result p2

    .line 846
    :cond_3
    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_4

    .line 847
    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result p2

    .line 850
    :cond_4
    invoke-direct {p0, p1, p2}, Landroid/media/AudioTrack;->native_setVolume(FF)V

    .line 852
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setVolume(F)I
    .locals 1
    .parameter "volume"

    .prologue
    .line 861
    invoke-virtual {p0, p1, p1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    move-result v0

    return v0
.end method

.method public stop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1018
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eq v0, v1, :cond_0

    .line 1019
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "stop() called on uninitialized AudioTrack."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1023
    :cond_0
    iget-object v1, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1024
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_stop()V

    .line 1025
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/AudioTrack;->mPlayState:I

    .line 1026
    monitor-exit v1

    .line 1027
    return-void

    .line 1026
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public write([BII)I
    .locals 3
    .parameter "audioData"
    .parameter "offsetInBytes"
    .parameter "sizeInBytes"

    .prologue
    .line 1088
    iget v1, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v1, :cond_1

    .line 1089
    const/4 v0, -0x3

    .line 1107
    :cond_0
    :goto_0
    return v0

    .line 1092
    :cond_1
    if-eqz p1, :cond_2

    if-ltz p2, :cond_2

    if-ltz p3, :cond_2

    add-int v1, p2, p3

    if-ltz v1, :cond_2

    add-int v1, p2, p3

    array-length v2, p1

    if-le v1, v2, :cond_3

    .line 1095
    :cond_2
    const/4 v0, -0x2

    goto :goto_0

    .line 1098
    :cond_3
    iget v1, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    invoke-direct {p0, p1, p2, p3, v1}, Landroid/media/AudioTrack;->native_write_byte([BIII)I

    move-result v0

    .line 1100
    .local v0, ret:I
    iget v1, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez v1, :cond_0

    iget v1, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    if-lez v0, :cond_0

    .line 1104
    const/4 v1, 0x1

    iput v1, p0, Landroid/media/AudioTrack;->mState:I

    goto :goto_0
.end method

.method public write([SII)I
    .locals 3
    .parameter "audioData"
    .parameter "offsetInShorts"
    .parameter "sizeInShorts"

    .prologue
    .line 1131
    iget v1, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v1, :cond_1

    .line 1132
    const/4 v0, -0x3

    .line 1150
    :cond_0
    :goto_0
    return v0

    .line 1135
    :cond_1
    if-eqz p1, :cond_2

    if-ltz p2, :cond_2

    if-ltz p3, :cond_2

    add-int v1, p2, p3

    if-ltz v1, :cond_2

    add-int v1, p2, p3

    array-length v2, p1

    if-le v1, v2, :cond_3

    .line 1138
    :cond_2
    const/4 v0, -0x2

    goto :goto_0

    .line 1141
    :cond_3
    iget v1, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    invoke-direct {p0, p1, p2, p3, v1}, Landroid/media/AudioTrack;->native_write_short([SIII)I

    move-result v0

    .line 1143
    .local v0, ret:I
    iget v1, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez v1, :cond_0

    iget v1, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    if-lez v0, :cond_0

    .line 1147
    const/4 v1, 0x1

    iput v1, p0, Landroid/media/AudioTrack;->mState:I

    goto :goto_0
.end method
