.class public Landroid/media/AudioRecord;
.super Ljava/lang/Object;
.source "AudioRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioRecord$NativeEventHandler;,
        Landroid/media/AudioRecord$OnRecordPositionUpdateListener;
    }
.end annotation


# static fields
.field private static final AUDIORECORD_ERROR_SETUP_INVALIDCHANNELMASK:I = -0x11

.field private static final AUDIORECORD_ERROR_SETUP_INVALIDFORMAT:I = -0x12

.field private static final AUDIORECORD_ERROR_SETUP_INVALIDSOURCE:I = -0x13

.field private static final AUDIORECORD_ERROR_SETUP_NATIVEINITFAILED:I = -0x14

.field private static final AUDIORECORD_ERROR_SETUP_ZEROFRAMECOUNT:I = -0x10

.field public static final ERROR:I = -0x1

.field public static final ERROR_BAD_VALUE:I = -0x2

.field public static final ERROR_INVALID_OPERATION:I = -0x3

.field private static final NATIVE_EVENT_MARKER:I = 0x2

.field private static final NATIVE_EVENT_NEW_POS:I = 0x3

.field public static final RECORDSTATE_RECORDING:I = 0x3

.field public static final RECORDSTATE_STOPPED:I = 0x1

.field public static final STATE_INITIALIZED:I = 0x1

.field public static final STATE_UNINITIALIZED:I = 0x0

.field public static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "android.media.AudioRecord"


# instance fields
.field private mAudioFormat:I

.field private mChannelCount:I

.field private mChannelMask:I

.field private mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

.field private mInitializationLooper:Landroid/os/Looper;

.field private mNativeBufferSizeInBytes:I

.field private mNativeCallbackCookie:I

.field private mNativeRecorderInJavaObj:I

.field private mPositionListener:Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

.field private final mPositionListenerLock:Ljava/lang/Object;

.field private mRecordSource:I

.field private mRecordingState:I

.field private final mRecordingStateLock:Ljava/lang/Object;

.field private mSampleRate:I

.field private mSessionId:I

.field private mState:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 9
    .parameter "audioSource"
    .parameter "sampleRateInHz"
    .parameter "channelConfig"
    .parameter "audioFormat"
    .parameter "bufferSizeInBytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioRecord;->mState:I

    .line 158
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/AudioRecord;->mRecordingState:I

    .line 162
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioRecord;->mRecordingStateLock:Ljava/lang/Object;

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioRecord;->mPositionListener:Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

    .line 173
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioRecord;->mPositionListenerLock:Ljava/lang/Object;

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioRecord;->mInitializationLooper:Landroid/os/Looper;

    .line 185
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioRecord;->mNativeBufferSizeInBytes:I

    .line 189
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioRecord;->mSessionId:I

    .line 218
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/AudioRecord;->mRecordingState:I

    .line 221
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioRecord;->mInitializationLooper:Landroid/os/Looper;

    if-nez v0, :cond_0

    .line 222
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioRecord;->mInitializationLooper:Landroid/os/Looper;

    .line 225
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/AudioRecord;->audioParamCheck(IIII)V

    .line 227
    invoke-direct {p0, p5}, Landroid/media/AudioRecord;->audioBuffSizeCheck(I)V

    .line 230
    const/4 v0, 0x1

    new-array v7, v0, [I

    .line 231
    .local v7, session:[I
    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v1, v7, v0

    .line 234
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget v2, p0, Landroid/media/AudioRecord;->mRecordSource:I

    iget v3, p0, Landroid/media/AudioRecord;->mSampleRate:I

    iget v4, p0, Landroid/media/AudioRecord;->mChannelMask:I

    iget v5, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    iget v6, p0, Landroid/media/AudioRecord;->mNativeBufferSizeInBytes:I

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Landroid/media/AudioRecord;->native_setup(Ljava/lang/Object;IIIII[I)I

    move-result v8

    .line 237
    .local v8, initResult:I
    if-eqz v8, :cond_1

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " when initializing native AudioRecord object."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioRecord;->loge(Ljava/lang/String;)V

    .line 245
    :goto_0
    return-void

    .line 242
    :cond_1
    const/4 v0, 0x0

    aget v0, v7, v0

    iput v0, p0, Landroid/media/AudioRecord;->mSessionId:I

    .line 244
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/AudioRecord;->mState:I

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/media/AudioRecord;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Landroid/media/AudioRecord;->mPositionListenerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Landroid/media/AudioRecord;)Landroid/media/AudioRecord$OnRecordPositionUpdateListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Landroid/media/AudioRecord;->mPositionListener:Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-static {p0}, Landroid/media/AudioRecord;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private audioBuffSizeCheck(I)V
    .locals 4
    .parameter "audioBufferSize"

    .prologue
    .line 335
    iget v2, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 336
    const/4 v0, 0x2

    .line 342
    .local v0, bytesPerSample:I
    :goto_0
    iget v2, p0, Landroid/media/AudioRecord;->mChannelCount:I

    mul-int v1, v2, v0

    .line 343
    .local v1, frameSizeInBytes:I
    rem-int v2, p1, v1

    if-nez v2, :cond_0

    const/4 v2, 0x1

    if-ge p1, v2, :cond_3

    .line 344
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid audio buffer size."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 337
    .end local v0           #bytesPerSample:I
    .end local v1           #frameSizeInBytes:I
    :cond_1
    iget v2, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    const/16 v3, 0x65

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/media/AudioRecord;->mRecordSource:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_2

    .line 339
    const/16 v0, 0x3d

    .restart local v0       #bytesPerSample:I
    goto :goto_0

    .line 341
    .end local v0           #bytesPerSample:I
    :cond_2
    const/4 v0, 0x1

    .restart local v0       #bytesPerSample:I
    goto :goto_0

    .line 347
    .restart local v1       #frameSizeInBytes:I
    :cond_3
    iput p1, p0, Landroid/media/AudioRecord;->mNativeBufferSizeInBytes:I

    .line 348
    return-void
.end method

.method private audioParamCheck(IIII)V
    .locals 3
    .parameter "audioSource"
    .parameter "sampleRateInHz"
    .parameter "channelConfig"
    .parameter "audioFormat"

    .prologue
    const/4 v1, 0x2

    .line 261
    if-ltz p1, :cond_0

    invoke-static {}, Landroid/media/MediaRecorder;->getAudioSourceMax()I

    move-result v0

    if-le p1, v0, :cond_1

    const/16 v0, 0x7cf

    if-eq p1, v0, :cond_1

    .line 264
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid audio source."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :cond_1
    iput p1, p0, Landroid/media/AudioRecord;->mRecordSource:I

    .line 270
    const/16 v0, 0xfa0

    if-lt p2, v0, :cond_2

    const v0, 0xbb80

    if-le p2, v0, :cond_3

    .line 271
    :cond_2
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

    .line 274
    :cond_3
    iput p2, p0, Landroid/media/AudioRecord;->mSampleRate:I

    .line 278
    sparse-switch p3, :sswitch_data_0

    .line 299
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported channel configuration."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :sswitch_0
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/AudioRecord;->mChannelCount:I

    .line 283
    const/16 v0, 0x10

    iput v0, p0, Landroid/media/AudioRecord;->mChannelMask:I

    .line 304
    :goto_0
    sparse-switch p4, :sswitch_data_1

    .line 319
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported sample encoding. Should be ENCODING_PCM_8BIT or ENCODING_PCM_16BIT."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :sswitch_1
    iput v1, p0, Landroid/media/AudioRecord;->mChannelCount:I

    .line 288
    const/16 v0, 0xc

    iput v0, p0, Landroid/media/AudioRecord;->mChannelMask:I

    goto :goto_0

    .line 291
    :sswitch_2
    iput v1, p0, Landroid/media/AudioRecord;->mChannelCount:I

    .line 292
    iput p3, p0, Landroid/media/AudioRecord;->mChannelMask:I

    goto :goto_0

    .line 295
    :sswitch_3
    const/4 v0, 0x6

    iput v0, p0, Landroid/media/AudioRecord;->mChannelCount:I

    .line 296
    const/high16 v0, 0x3f

    iput v0, p0, Landroid/media/AudioRecord;->mChannelMask:I

    goto :goto_0

    .line 306
    :sswitch_4
    iput v1, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    .line 322
    :goto_1
    return-void

    .line 316
    :sswitch_5
    iput p4, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    goto :goto_1

    .line 278
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0xc -> :sswitch_1
        0x10 -> :sswitch_0
        0x30 -> :sswitch_2
        0x3f0000 -> :sswitch_3
    .end sparse-switch

    .line 304
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_5
        0x3 -> :sswitch_5
        0x64 -> :sswitch_5
        0x65 -> :sswitch_5
        0x66 -> :sswitch_5
        0x67 -> :sswitch_5
        0x68 -> :sswitch_5
        0x69 -> :sswitch_5
    .end sparse-switch
.end method

.method private checkPermission()Z
    .locals 5

    .prologue
    .line 533
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v3

    const-string v4, "appops"

    invoke-virtual {v3, v4}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 535
    .local v0, appOps:Landroid/app/AppOpsManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 536
    .local v2, callingUid:I
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    .line 537
    .local v1, callingPackage:Ljava/lang/String;
    const/16 v3, 0x1b

    invoke-virtual {v0, v3, v2, v1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 539
    const/4 v3, 0x1

    .line 541
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getMinBufferSize(III)I
    .locals 5
    .parameter "sampleRateInHz"
    .parameter "channelConfig"
    .parameter "audioFormat"

    .prologue
    const/4 v3, -0x1

    const/4 v2, -0x2

    .line 475
    const/4 v0, 0x0

    .line 476
    .local v0, channelCount:I
    sparse-switch p1, :sswitch_data_0

    .line 492
    const-string v3, "getMinBufferSize(): Invalid channel configuration."

    invoke-static {v3}, Landroid/media/AudioRecord;->loge(Ljava/lang/String;)V

    move v1, v2

    .line 516
    :cond_0
    :goto_0
    return v1

    .line 480
    :sswitch_0
    const/4 v0, 0x1

    .line 497
    :goto_1
    const/4 v4, 0x2

    if-eq p2, v4, :cond_1

    const/16 v4, 0x64

    if-eq p2, v4, :cond_1

    const/16 v4, 0x65

    if-eq p2, v4, :cond_1

    const/16 v4, 0x66

    if-eq p2, v4, :cond_1

    const/16 v4, 0x67

    if-eq p2, v4, :cond_1

    const/16 v4, 0x68

    if-eq p2, v4, :cond_1

    const/16 v4, 0x69

    if-eq p2, v4, :cond_1

    .line 504
    const-string v3, "getMinBufferSize(): Invalid audio format."

    invoke-static {v3}, Landroid/media/AudioRecord;->loge(Ljava/lang/String;)V

    move v1, v2

    .line 505
    goto :goto_0

    .line 485
    :sswitch_1
    const/4 v0, 0x2

    .line 486
    goto :goto_1

    .line 488
    :sswitch_2
    const/4 v0, 0x6

    .line 489
    goto :goto_1

    .line 508
    :cond_1
    invoke-static {p0, v0, p2}, Landroid/media/AudioRecord;->native_get_min_buff_size(III)I

    move-result v1

    .line 509
    .local v1, size:I
    if-nez v1, :cond_2

    move v1, v2

    .line 510
    goto :goto_0

    .line 512
    :cond_2
    if-ne v1, v3, :cond_0

    move v1, v3

    .line 513
    goto :goto_0

    .line 476
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0xc -> :sswitch_1
        0x10 -> :sswitch_0
        0x30 -> :sswitch_1
        0x3f0000 -> :sswitch_2
    .end sparse-switch
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 893
    const-string v0, "android.media.AudioRecord"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 897
    const-string v0, "android.media.AudioRecord"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    return-void
.end method

.method private final native native_finalize()V
.end method

.method private final native native_get_marker_pos()I
.end method

.method private static final native native_get_min_buff_size(III)I
.end method

.method private final native native_get_pos_update_period()I
.end method

.method private final native native_read_in_byte_array([BII)I
.end method

.method private final native native_read_in_direct_buffer(Ljava/lang/Object;I)I
.end method

.method private final native native_read_in_short_array([SII)I
.end method

.method private final native native_release()V
.end method

.method private final native native_set_marker_pos(I)I
.end method

.method private final native native_set_pos_update_period(I)I
.end method

.method private final native native_setup(Ljava/lang/Object;IIIII[I)I
.end method

.method private final native native_start(II)I
.end method

.method private final native native_stop()V
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 3
    .parameter "audiorecord_ref"
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 840
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioRecord;

    .line 841
    .local v1, recorder:Landroid/media/AudioRecord;
    if-nez v1, :cond_1

    .line 851
    :cond_0
    :goto_0
    return-void

    .line 845
    :cond_1
    iget-object v2, v1, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    if-eqz v2, :cond_0

    .line 846
    iget-object v2, v1, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/media/AudioRecord$NativeEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 848
    .local v0, m:Landroid/os/Message;
    iget-object v2, v1, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    invoke-virtual {v2, v0}, Landroid/media/AudioRecord$NativeEventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    .prologue
    .line 370
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_finalize()V

    .line 371
    return-void
.end method

.method public getAudioFormat()I
    .locals 1

    .prologue
    .line 397
    iget v0, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    return v0
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 526
    iget v0, p0, Landroid/media/AudioRecord;->mSessionId:I

    return v0
.end method

.method public getAudioSource()I
    .locals 1

    .prologue
    .line 389
    iget v0, p0, Landroid/media/AudioRecord;->mRecordSource:I

    return v0
.end method

.method public getChannelConfiguration()I
    .locals 1

    .prologue
    .line 406
    iget v0, p0, Landroid/media/AudioRecord;->mChannelMask:I

    return v0
.end method

.method public getChannelCount()I
    .locals 1

    .prologue
    .line 413
    iget v0, p0, Landroid/media/AudioRecord;->mChannelCount:I

    return v0
.end method

.method public getNotificationMarkerPosition()I
    .locals 1

    .prologue
    .line 443
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_get_marker_pos()I

    move-result v0

    return v0
.end method

.method public getPositionNotificationPeriod()I
    .locals 1

    .prologue
    .line 450
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_get_pos_update_period()I

    move-result v0

    return v0
.end method

.method public getRecordingState()I
    .locals 2

    .prologue
    .line 434
    iget-object v1, p0, Landroid/media/AudioRecord;->mRecordingStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 435
    :try_start_0
    iget v0, p0, Landroid/media/AudioRecord;->mRecordingState:I

    monitor-exit v1

    return v0

    .line 436
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSampleRate()I
    .locals 1

    .prologue
    .line 381
    iget v0, p0, Landroid/media/AudioRecord;->mSampleRate:I

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 425
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    return v0
.end method

.method public read(Ljava/nio/ByteBuffer;I)I
    .locals 2
    .parameter "audioBuffer"
    .parameter "sizeInBytes"

    .prologue
    .line 680
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 681
    const/4 v0, -0x3

    .line 688
    :goto_0
    return v0

    .line 684
    :cond_0
    if-eqz p1, :cond_1

    if-gez p2, :cond_2

    .line 685
    :cond_1
    const/4 v0, -0x2

    goto :goto_0

    .line 688
    :cond_2
    invoke-direct {p0, p1, p2}, Landroid/media/AudioRecord;->native_read_in_direct_buffer(Ljava/lang/Object;I)I

    move-result v0

    goto :goto_0
.end method

.method public read([BII)I
    .locals 2
    .parameter "audioData"
    .parameter "offsetInBytes"
    .parameter "sizeInBytes"

    .prologue
    .line 628
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 629
    const/4 v0, -0x3

    .line 638
    :goto_0
    return v0

    .line 632
    :cond_0
    if-eqz p1, :cond_1

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    add-int v0, p2, p3

    if-ltz v0, :cond_1

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_2

    .line 635
    :cond_1
    const/4 v0, -0x2

    goto :goto_0

    .line 638
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioRecord;->native_read_in_byte_array([BII)I

    move-result v0

    goto :goto_0
.end method

.method public read([SII)I
    .locals 2
    .parameter "audioData"
    .parameter "offsetInShorts"
    .parameter "sizeInShorts"

    .prologue
    .line 653
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 654
    const/4 v0, -0x3

    .line 663
    :goto_0
    return v0

    .line 657
    :cond_0
    if-eqz p1, :cond_1

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    add-int v0, p2, p3

    if-ltz v0, :cond_1

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_2

    .line 660
    :cond_1
    const/4 v0, -0x2

    goto :goto_0

    .line 663
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioRecord;->native_read_in_short_array([SII)I

    move-result v0

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 359
    :try_start_0
    invoke-virtual {p0}, Landroid/media/AudioRecord;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    :goto_0
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_release()V

    .line 364
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioRecord;->mState:I

    .line 365
    return-void

    .line 360
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setNotificationMarkerPosition(I)I
    .locals 1
    .parameter "markerInFrames"

    .prologue
    .line 742
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    if-nez v0, :cond_0

    .line 743
    const/4 v0, -0x3

    .line 745
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Landroid/media/AudioRecord;->native_set_marker_pos(I)I

    move-result v0

    goto :goto_0
.end method

.method public setPositionNotificationPeriod(I)I
    .locals 1
    .parameter "periodInFrames"

    .prologue
    .line 758
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    if-nez v0, :cond_0

    .line 759
    const/4 v0, -0x3

    .line 761
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Landroid/media/AudioRecord;->native_set_pos_update_period(I)I

    move-result v0

    goto :goto_0
.end method

.method public setRecordPositionUpdateListener(Landroid/media/AudioRecord$OnRecordPositionUpdateListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 701
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/AudioRecord;->setRecordPositionUpdateListener(Landroid/media/AudioRecord$OnRecordPositionUpdateListener;Landroid/os/Handler;)V

    .line 702
    return-void
.end method

.method public setRecordPositionUpdateListener(Landroid/media/AudioRecord$OnRecordPositionUpdateListener;Landroid/os/Handler;)V
    .locals 3
    .parameter "listener"
    .parameter "handler"

    .prologue
    .line 714
    iget-object v1, p0, Landroid/media/AudioRecord;->mPositionListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 716
    :try_start_0
    iput-object p1, p0, Landroid/media/AudioRecord;->mPositionListener:Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

    .line 718
    if-eqz p1, :cond_1

    .line 719
    if-eqz p2, :cond_0

    .line 720
    new-instance v0, Landroid/media/AudioRecord$NativeEventHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, p0, v2}, Landroid/media/AudioRecord$NativeEventHandler;-><init>(Landroid/media/AudioRecord;Landroid/media/AudioRecord;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    .line 728
    :goto_0
    monitor-exit v1

    .line 730
    return-void

    .line 723
    :cond_0
    new-instance v0, Landroid/media/AudioRecord$NativeEventHandler;

    iget-object v2, p0, Landroid/media/AudioRecord;->mInitializationLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, p0, v2}, Landroid/media/AudioRecord$NativeEventHandler;-><init>(Landroid/media/AudioRecord;Landroid/media/AudioRecord;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    goto :goto_0

    .line 728
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 726
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public startRecording()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 553
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 554
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "startRecording() called on an uninitialized AudioRecord."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 559
    :cond_0
    invoke-direct {p0}, Landroid/media/AudioRecord;->checkPermission()Z

    move-result v0

    if-nez v0, :cond_1

    .line 568
    :goto_0
    return-void

    .line 563
    :cond_1
    iget-object v1, p0, Landroid/media/AudioRecord;->mRecordingStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 564
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, v0, v2}, Landroid/media/AudioRecord;->native_start(II)I

    move-result v0

    if-nez v0, :cond_2

    .line 565
    const/4 v0, 0x3

    iput v0, p0, Landroid/media/AudioRecord;->mRecordingState:I

    .line 567
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startRecording(Landroid/media/MediaSyncEvent;)V
    .locals 3
    .parameter "syncEvent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 579
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 580
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "startRecording() called on an uninitialized AudioRecord."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 585
    :cond_0
    invoke-direct {p0}, Landroid/media/AudioRecord;->checkPermission()Z

    move-result v0

    if-nez v0, :cond_1

    .line 594
    :goto_0
    return-void

    .line 589
    :cond_1
    iget-object v1, p0, Landroid/media/AudioRecord;->mRecordingStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 590
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaSyncEvent;->getType()I

    move-result v0

    invoke-virtual {p1}, Landroid/media/MediaSyncEvent;->getAudioSessionId()I

    move-result v2

    invoke-direct {p0, v0, v2}, Landroid/media/AudioRecord;->native_start(II)I

    move-result v0

    if-nez v0, :cond_2

    .line 591
    const/4 v0, 0x3

    iput v0, p0, Landroid/media/AudioRecord;->mRecordingState:I

    .line 593
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
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

    .line 602
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    if-eq v0, v1, :cond_0

    .line 603
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "stop() called on an uninitialized AudioRecord."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 607
    :cond_0
    iget-object v1, p0, Landroid/media/AudioRecord;->mRecordingStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 608
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_stop()V

    .line 609
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/AudioRecord;->mRecordingState:I

    .line 610
    monitor-exit v1

    .line 611
    return-void

    .line 610
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
