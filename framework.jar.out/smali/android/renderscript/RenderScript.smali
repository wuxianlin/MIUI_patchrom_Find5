.class public Landroid/renderscript/RenderScript;
.super Ljava/lang/Object;
.source "RenderScript.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/RenderScript$MessageThread;,
        Landroid/renderscript/RenderScript$Priority;,
        Landroid/renderscript/RenderScript$RSErrorHandler;,
        Landroid/renderscript/RenderScript$RSMessageHandler;,
        Landroid/renderscript/RenderScript$ContextType;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final LOG_ENABLED:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "RenderScript_jni"

.field static final TRACE_TAG:J = 0x8000L

.field static mCacheDir:Ljava/io/File;

.field static registerNativeAllocation:Ljava/lang/reflect/Method;

.field static registerNativeFree:Ljava/lang/reflect/Method;

.field static sInitialized:Z

.field static sRuntime:Ljava/lang/Object;


# instance fields
.field private mApplicationContext:Landroid/content/Context;

.field mContext:I

.field mContextType:Landroid/renderscript/RenderScript$ContextType;

.field mDev:I

.field mElement_ALLOCATION:Landroid/renderscript/Element;

.field mElement_A_8:Landroid/renderscript/Element;

.field mElement_BOOLEAN:Landroid/renderscript/Element;

.field mElement_CHAR_2:Landroid/renderscript/Element;

.field mElement_CHAR_3:Landroid/renderscript/Element;

.field mElement_CHAR_4:Landroid/renderscript/Element;

.field mElement_DOUBLE_2:Landroid/renderscript/Element;

.field mElement_DOUBLE_3:Landroid/renderscript/Element;

.field mElement_DOUBLE_4:Landroid/renderscript/Element;

.field mElement_ELEMENT:Landroid/renderscript/Element;

.field mElement_F32:Landroid/renderscript/Element;

.field mElement_F64:Landroid/renderscript/Element;

.field mElement_FLOAT_2:Landroid/renderscript/Element;

.field mElement_FLOAT_3:Landroid/renderscript/Element;

.field mElement_FLOAT_4:Landroid/renderscript/Element;

.field mElement_FONT:Landroid/renderscript/Element;

.field mElement_I16:Landroid/renderscript/Element;

.field mElement_I32:Landroid/renderscript/Element;

.field mElement_I64:Landroid/renderscript/Element;

.field mElement_I8:Landroid/renderscript/Element;

.field mElement_INT_2:Landroid/renderscript/Element;

.field mElement_INT_3:Landroid/renderscript/Element;

.field mElement_INT_4:Landroid/renderscript/Element;

.field mElement_LONG_2:Landroid/renderscript/Element;

.field mElement_LONG_3:Landroid/renderscript/Element;

.field mElement_LONG_4:Landroid/renderscript/Element;

.field mElement_MATRIX_2X2:Landroid/renderscript/Element;

.field mElement_MATRIX_3X3:Landroid/renderscript/Element;

.field mElement_MATRIX_4X4:Landroid/renderscript/Element;

.field mElement_MESH:Landroid/renderscript/Element;

.field mElement_PROGRAM_FRAGMENT:Landroid/renderscript/Element;

.field mElement_PROGRAM_RASTER:Landroid/renderscript/Element;

.field mElement_PROGRAM_STORE:Landroid/renderscript/Element;

.field mElement_PROGRAM_VERTEX:Landroid/renderscript/Element;

.field mElement_RGBA_4444:Landroid/renderscript/Element;

.field mElement_RGBA_5551:Landroid/renderscript/Element;

.field mElement_RGBA_8888:Landroid/renderscript/Element;

.field mElement_RGB_565:Landroid/renderscript/Element;

.field mElement_RGB_888:Landroid/renderscript/Element;

.field mElement_SAMPLER:Landroid/renderscript/Element;

.field mElement_SCRIPT:Landroid/renderscript/Element;

.field mElement_SHORT_2:Landroid/renderscript/Element;

.field mElement_SHORT_3:Landroid/renderscript/Element;

.field mElement_SHORT_4:Landroid/renderscript/Element;

.field mElement_TYPE:Landroid/renderscript/Element;

.field mElement_U16:Landroid/renderscript/Element;

.field mElement_U32:Landroid/renderscript/Element;

.field mElement_U64:Landroid/renderscript/Element;

.field mElement_U8:Landroid/renderscript/Element;

.field mElement_UCHAR_2:Landroid/renderscript/Element;

.field mElement_UCHAR_3:Landroid/renderscript/Element;

.field mElement_UCHAR_4:Landroid/renderscript/Element;

.field mElement_UINT_2:Landroid/renderscript/Element;

.field mElement_UINT_3:Landroid/renderscript/Element;

.field mElement_UINT_4:Landroid/renderscript/Element;

.field mElement_ULONG_2:Landroid/renderscript/Element;

.field mElement_ULONG_3:Landroid/renderscript/Element;

.field mElement_ULONG_4:Landroid/renderscript/Element;

.field mElement_USHORT_2:Landroid/renderscript/Element;

.field mElement_USHORT_3:Landroid/renderscript/Element;

.field mElement_USHORT_4:Landroid/renderscript/Element;

.field mElement_YUV:Landroid/renderscript/Element;

.field mErrorCallback:Landroid/renderscript/RenderScript$RSErrorHandler;

.field mMessageCallback:Landroid/renderscript/RenderScript$RSMessageHandler;

.field mMessageThread:Landroid/renderscript/RenderScript$MessageThread;

.field mProgramRaster_CULL_BACK:Landroid/renderscript/ProgramRaster;

.field mProgramRaster_CULL_FRONT:Landroid/renderscript/ProgramRaster;

.field mProgramRaster_CULL_NONE:Landroid/renderscript/ProgramRaster;

.field mProgramStore_BLEND_ALPHA_DEPTH_NO_DEPTH:Landroid/renderscript/ProgramStore;

.field mProgramStore_BLEND_ALPHA_DEPTH_TEST:Landroid/renderscript/ProgramStore;

.field mProgramStore_BLEND_NONE_DEPTH_NO_DEPTH:Landroid/renderscript/ProgramStore;

.field mProgramStore_BLEND_NONE_DEPTH_TEST:Landroid/renderscript/ProgramStore;

.field mSampler_CLAMP_LINEAR:Landroid/renderscript/Sampler;

.field mSampler_CLAMP_LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler;

.field mSampler_CLAMP_NEAREST:Landroid/renderscript/Sampler;

.field mSampler_MIRRORED_REPEAT_LINEAR:Landroid/renderscript/Sampler;

.field mSampler_MIRRORED_REPEAT_LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler;

.field mSampler_MIRRORED_REPEAT_NEAREST:Landroid/renderscript/Sampler;

.field mSampler_WRAP_LINEAR:Landroid/renderscript/Sampler;

.field mSampler_WRAP_LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler;

.field mSampler_WRAP_NEAREST:Landroid/renderscript/Sampler;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 70
    sput-boolean v4, Landroid/renderscript/RenderScript;->sInitialized:Z

    .line 71
    const-string v3, "config.disable_renderscript"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 73
    :try_start_0
    const-string v3, "dalvik.system.VMRuntime"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 74
    .local v2, vm_runtime:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v3, "getRuntime"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 75
    .local v1, get_runtime:Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sput-object v3, Landroid/renderscript/RenderScript;->sRuntime:Ljava/lang/Object;

    .line 76
    const-string/jumbo v3, "registerNativeAllocation"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Landroid/renderscript/RenderScript;->registerNativeAllocation:Ljava/lang/reflect/Method;

    .line 77
    const-string/jumbo v3, "registerNativeFree"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Landroid/renderscript/RenderScript;->registerNativeFree:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :try_start_1
    const-string/jumbo v3, "rs_jni"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 84
    invoke-static {}, Landroid/renderscript/RenderScript;->_nInit()V

    .line 85
    const/4 v3, 0x1

    sput-boolean v3, Landroid/renderscript/RenderScript;->sInitialized:Z
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1

    .line 91
    :cond_0
    return-void

    .line 78
    .end local v1           #get_runtime:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 79
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "RenderScript_jni"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error loading GC methods: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error loading GC methods: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 86
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #get_runtime:Ljava/lang/reflect/Method;
    :catch_1
    move-exception v0

    .line 87
    .local v0, e:Ljava/lang/UnsatisfiedLinkError;
    const-string v3, "RenderScript_jni"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error loading RS jni library: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error loading RS jni library: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "ctx"

    .prologue
    const/4 v0, 0x0

    .line 1134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 954
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mMessageCallback:Landroid/renderscript/RenderScript$RSMessageHandler;

    .line 994
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mErrorCallback:Landroid/renderscript/RenderScript$RSErrorHandler;

    .line 1135
    sget-object v0, Landroid/renderscript/RenderScript$ContextType;->NORMAL:Landroid/renderscript/RenderScript$ContextType;

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mContextType:Landroid/renderscript/RenderScript$ContextType;

    .line 1136
    if-eqz p1, :cond_0

    .line 1137
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mApplicationContext:Landroid/content/Context;

    .line 1139
    :cond_0
    return-void
.end method

.method static native _nInit()V
.end method

.method public static create(Landroid/content/Context;)Landroid/renderscript/RenderScript;
    .locals 1
    .parameter "ctx"

    .prologue
    .line 1190
    sget-object v0, Landroid/renderscript/RenderScript$ContextType;->NORMAL:Landroid/renderscript/RenderScript$ContextType;

    invoke-static {p0, v0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;Landroid/renderscript/RenderScript$ContextType;)Landroid/renderscript/RenderScript;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;I)Landroid/renderscript/RenderScript;
    .locals 1
    .parameter "ctx"
    .parameter "sdkVersion"

    .prologue
    .line 1154
    sget-object v0, Landroid/renderscript/RenderScript$ContextType;->NORMAL:Landroid/renderscript/RenderScript$ContextType;

    invoke-static {p0, p1, v0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;ILandroid/renderscript/RenderScript$ContextType;)Landroid/renderscript/RenderScript;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;ILandroid/renderscript/RenderScript$ContextType;)Landroid/renderscript/RenderScript;
    .locals 4
    .parameter "ctx"
    .parameter "sdkVersion"
    .parameter "ct"

    .prologue
    .line 1165
    sget-boolean v1, Landroid/renderscript/RenderScript;->sInitialized:Z

    if-nez v1, :cond_0

    .line 1166
    const-string v1, "RenderScript_jni"

    const-string v2, "RenderScript.create() called when disabled; someone is likely to crash"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    const/4 v0, 0x0

    .line 1180
    :goto_0
    return-object v0

    .line 1170
    :cond_0
    new-instance v0, Landroid/renderscript/RenderScript;

    invoke-direct {v0, p0}, Landroid/renderscript/RenderScript;-><init>(Landroid/content/Context;)V

    .line 1172
    .local v0, rs:Landroid/renderscript/RenderScript;
    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->nDeviceCreate()I

    move-result v1

    iput v1, v0, Landroid/renderscript/RenderScript;->mDev:I

    .line 1173
    iget v1, v0, Landroid/renderscript/RenderScript;->mDev:I

    const/4 v2, 0x0

    iget v3, p2, Landroid/renderscript/RenderScript$ContextType;->mID:I

    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/renderscript/RenderScript;->nContextCreate(IIII)I

    move-result v1

    iput v1, v0, Landroid/renderscript/RenderScript;->mContext:I

    .line 1174
    iput-object p2, v0, Landroid/renderscript/RenderScript;->mContextType:Landroid/renderscript/RenderScript$ContextType;

    .line 1175
    iget v1, v0, Landroid/renderscript/RenderScript;->mContext:I

    if-nez v1, :cond_1

    .line 1176
    new-instance v1, Landroid/renderscript/RSDriverException;

    const-string v2, "Failed to create RS context."

    invoke-direct {v1, v2}, Landroid/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1178
    :cond_1
    new-instance v1, Landroid/renderscript/RenderScript$MessageThread;

    invoke-direct {v1, v0}, Landroid/renderscript/RenderScript$MessageThread;-><init>(Landroid/renderscript/RenderScript;)V

    iput-object v1, v0, Landroid/renderscript/RenderScript;->mMessageThread:Landroid/renderscript/RenderScript$MessageThread;

    .line 1179
    iget-object v1, v0, Landroid/renderscript/RenderScript;->mMessageThread:Landroid/renderscript/RenderScript$MessageThread;

    invoke-virtual {v1}, Landroid/renderscript/RenderScript$MessageThread;->start()V

    goto :goto_0
.end method

.method public static create(Landroid/content/Context;Landroid/renderscript/RenderScript$ContextType;)Landroid/renderscript/RenderScript;
    .locals 2
    .parameter "ctx"
    .parameter "ct"

    .prologue
    .line 1202
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1203
    .local v0, v:I
    invoke-static {p0, v0, p1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;ILandroid/renderscript/RenderScript$ContextType;)Landroid/renderscript/RenderScript;

    move-result-object v1

    return-object v1
.end method

.method public static setupDiskCache(Ljava/io/File;)V
    .locals 2
    .parameter "cacheDir"

    .prologue
    .line 113
    sget-boolean v0, Landroid/renderscript/RenderScript;->sInitialized:Z

    if-nez v0, :cond_0

    .line 114
    const-string v0, "RenderScript_jni"

    const-string v1, "RenderScript.setupDiskCache() called when disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :goto_0
    return-void

    .line 119
    :cond_0
    sput-object p0, Landroid/renderscript/RenderScript;->mCacheDir:Ljava/io/File;

    goto :goto_0
.end method


# virtual methods
.method public contextDump()V
    .locals 1

    .prologue
    .line 1212
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 1213
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/renderscript/RenderScript;->nContextDump(I)V

    .line 1214
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1232
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 1233
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0}, Landroid/renderscript/RenderScript;->nContextDeinitToClient(I)V

    .line 1234
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mMessageThread:Landroid/renderscript/RenderScript$MessageThread;

    iput-boolean v1, v0, Landroid/renderscript/RenderScript$MessageThread;->mRun:Z

    .line 1236
    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mMessageThread:Landroid/renderscript/RenderScript$MessageThread;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript$MessageThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1240
    :goto_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->nContextDestroy()V

    .line 1241
    iput v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    .line 1243
    iget v0, p0, Landroid/renderscript/RenderScript;->mDev:I

    invoke-virtual {p0, v0}, Landroid/renderscript/RenderScript;->nDeviceDestroy(I)V

    .line 1244
    iput v1, p0, Landroid/renderscript/RenderScript;->mDev:I

    .line 1245
    return-void

    .line 1237
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 1222
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->nContextFinish()V

    .line 1223
    return-void
.end method

.method public final getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1147
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public getErrorHandler()Landroid/renderscript/RenderScript$RSErrorHandler;
    .locals 1

    .prologue
    .line 1000
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mErrorCallback:Landroid/renderscript/RenderScript$RSErrorHandler;

    return-object v0
.end method

.method public getMessageHandler()Landroid/renderscript/RenderScript$RSMessageHandler;
    .locals 1

    .prologue
    .line 960
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mMessageCallback:Landroid/renderscript/RenderScript$RSMessageHandler;

    return-object v0
.end method

.method isAlive()Z
    .locals 1

    .prologue
    .line 1248
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method declared-synchronized nAllocationCopyFromBitmap(ILandroid/graphics/Bitmap;)V
    .locals 1
    .parameter "alloc"
    .parameter "bmp"

    .prologue
    .line 384
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 385
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnAllocationCopyFromBitmap(IILandroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    monitor-exit p0

    return-void

    .line 384
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationCopyToBitmap(ILandroid/graphics/Bitmap;)V
    .locals 1
    .parameter "alloc"
    .parameter "bmp"

    .prologue
    .line 345
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 346
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnAllocationCopyToBitmap(IILandroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    monitor-exit p0

    return-void

    .line 345
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationCreateBitmapBackedAllocation(IILandroid/graphics/Bitmap;I)I
    .locals 6
    .parameter "type"
    .parameter "mip"
    .parameter "bmp"
    .parameter "usage"

    .prologue
    .line 322
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 323
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnAllocationCreateBitmapBackedAllocation(IIILandroid/graphics/Bitmap;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 322
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationCreateBitmapRef(ILandroid/graphics/Bitmap;)I
    .locals 1
    .parameter "type"
    .parameter "bmp"

    .prologue
    .line 334
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 335
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnAllocationCreateBitmapRef(IILandroid/graphics/Bitmap;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 334
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationCreateFromAssetStream(III)I
    .locals 1
    .parameter "mips"
    .parameter "assetStream"
    .parameter "usage"

    .prologue
    .line 339
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 340
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnAllocationCreateFromAssetStream(IIII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 339
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationCreateFromBitmap(IILandroid/graphics/Bitmap;I)I
    .locals 6
    .parameter "type"
    .parameter "mip"
    .parameter "bmp"
    .parameter "usage"

    .prologue
    .line 316
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 317
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnAllocationCreateFromBitmap(IIILandroid/graphics/Bitmap;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 316
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationCreateTyped(IIII)I
    .locals 6
    .parameter "type"
    .parameter "mip"
    .parameter "usage"
    .parameter "pointer"

    .prologue
    .line 311
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 312
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnAllocationCreateTyped(IIIII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 311
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationCubeCreateFromBitmap(IILandroid/graphics/Bitmap;I)I
    .locals 6
    .parameter "type"
    .parameter "mip"
    .parameter "bmp"
    .parameter "usage"

    .prologue
    .line 329
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 330
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnAllocationCubeCreateFromBitmap(IIILandroid/graphics/Bitmap;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 329
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationData1D(IIII[BI)V
    .locals 8
    .parameter "id"
    .parameter "off"
    .parameter "mip"
    .parameter "count"
    .parameter "d"
    .parameter "sizeBytes"

    .prologue
    .line 401
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 402
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/RenderScript;->rsnAllocationData1D(IIIII[BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    monitor-exit p0

    return-void

    .line 401
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationData1D(IIII[FI)V
    .locals 8
    .parameter "id"
    .parameter "off"
    .parameter "mip"
    .parameter "count"
    .parameter "d"
    .parameter "sizeBytes"

    .prologue
    .line 406
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 407
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/RenderScript;->rsnAllocationData1D(IIIII[FI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    monitor-exit p0

    return-void

    .line 406
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationData1D(IIII[II)V
    .locals 8
    .parameter "id"
    .parameter "off"
    .parameter "mip"
    .parameter "count"
    .parameter "d"
    .parameter "sizeBytes"

    .prologue
    .line 391
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 392
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/RenderScript;->rsnAllocationData1D(IIIII[II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    monitor-exit p0

    return-void

    .line 391
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationData1D(IIII[SI)V
    .locals 8
    .parameter "id"
    .parameter "off"
    .parameter "mip"
    .parameter "count"
    .parameter "d"
    .parameter "sizeBytes"

    .prologue
    .line 396
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 397
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/RenderScript;->rsnAllocationData1D(IIIII[SI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    monitor-exit p0

    return-void

    .line 396
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationData2D(IIIIIIIIIIII)V
    .locals 14
    .parameter "dstAlloc"
    .parameter "dstXoff"
    .parameter "dstYoff"
    .parameter "dstMip"
    .parameter "dstFace"
    .parameter "width"
    .parameter "height"
    .parameter "srcAlloc"
    .parameter "srcXoff"
    .parameter "srcYoff"
    .parameter "srcMip"
    .parameter "srcFace"

    .prologue
    .line 427
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 428
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    invoke-virtual/range {v0 .. v13}, Landroid/renderscript/RenderScript;->rsnAllocationData2D(IIIIIIIIIIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    monitor-exit p0

    return-void

    .line 427
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationData2D(IIIIIII[BI)V
    .locals 11
    .parameter "id"
    .parameter "xoff"
    .parameter "yoff"
    .parameter "mip"
    .parameter "face"
    .parameter "w"
    .parameter "h"
    .parameter "d"
    .parameter "sizeBytes"

    .prologue
    .line 438
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 439
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Landroid/renderscript/RenderScript;->rsnAllocationData2D(IIIIIIII[BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 440
    monitor-exit p0

    return-void

    .line 438
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationData2D(IIIIIII[FI)V
    .locals 11
    .parameter "id"
    .parameter "xoff"
    .parameter "yoff"
    .parameter "mip"
    .parameter "face"
    .parameter "w"
    .parameter "h"
    .parameter "d"
    .parameter "sizeBytes"

    .prologue
    .line 453
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 454
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Landroid/renderscript/RenderScript;->rsnAllocationData2D(IIIIIIII[FI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    monitor-exit p0

    return-void

    .line 453
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationData2D(IIIIIII[II)V
    .locals 11
    .parameter "id"
    .parameter "xoff"
    .parameter "yoff"
    .parameter "mip"
    .parameter "face"
    .parameter "w"
    .parameter "h"
    .parameter "d"
    .parameter "sizeBytes"

    .prologue
    .line 448
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 449
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Landroid/renderscript/RenderScript;->rsnAllocationData2D(IIIIIIII[II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    monitor-exit p0

    return-void

    .line 448
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationData2D(IIIIIII[SI)V
    .locals 11
    .parameter "id"
    .parameter "xoff"
    .parameter "yoff"
    .parameter "mip"
    .parameter "face"
    .parameter "w"
    .parameter "h"
    .parameter "d"
    .parameter "sizeBytes"

    .prologue
    .line 443
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 444
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Landroid/renderscript/RenderScript;->rsnAllocationData2D(IIIIIIII[SI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    monitor-exit p0

    return-void

    .line 443
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationData2D(IIIIILandroid/graphics/Bitmap;)V
    .locals 8
    .parameter "id"
    .parameter "xoff"
    .parameter "yoff"
    .parameter "mip"
    .parameter "face"
    .parameter "b"

    .prologue
    .line 458
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 459
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/RenderScript;->rsnAllocationData2D(IIIIIILandroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 460
    monitor-exit p0

    return-void

    .line 458
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationData3D(IIIIIIIIIIIII)V
    .locals 15
    .parameter "dstAlloc"
    .parameter "dstXoff"
    .parameter "dstYoff"
    .parameter "dstZoff"
    .parameter "dstMip"
    .parameter "width"
    .parameter "height"
    .parameter "depth"
    .parameter "srcAlloc"
    .parameter "srcXoff"
    .parameter "srcYoff"
    .parameter "srcZoff"
    .parameter "srcMip"

    .prologue
    .line 473
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 474
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    invoke-virtual/range {v0 .. v14}, Landroid/renderscript/RenderScript;->rsnAllocationData3D(IIIIIIIIIIIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 478
    monitor-exit p0

    return-void

    .line 473
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationData3D(IIIIIIII[BI)V
    .locals 12
    .parameter "id"
    .parameter "xoff"
    .parameter "yoff"
    .parameter "zoff"
    .parameter "mip"
    .parameter "w"
    .parameter "h"
    .parameter "depth"
    .parameter "d"
    .parameter "sizeBytes"

    .prologue
    .line 482
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 483
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    invoke-virtual/range {v0 .. v11}, Landroid/renderscript/RenderScript;->rsnAllocationData3D(IIIIIIIII[BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 484
    monitor-exit p0

    return-void

    .line 482
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationData3D(IIIIIIII[FI)V
    .locals 12
    .parameter "id"
    .parameter "xoff"
    .parameter "yoff"
    .parameter "zoff"
    .parameter "mip"
    .parameter "w"
    .parameter "h"
    .parameter "depth"
    .parameter "d"
    .parameter "sizeBytes"

    .prologue
    .line 497
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 498
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    invoke-virtual/range {v0 .. v11}, Landroid/renderscript/RenderScript;->rsnAllocationData3D(IIIIIIIII[FI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    monitor-exit p0

    return-void

    .line 497
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationData3D(IIIIIIII[II)V
    .locals 12
    .parameter "id"
    .parameter "xoff"
    .parameter "yoff"
    .parameter "zoff"
    .parameter "mip"
    .parameter "w"
    .parameter "h"
    .parameter "depth"
    .parameter "d"
    .parameter "sizeBytes"

    .prologue
    .line 492
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 493
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    invoke-virtual/range {v0 .. v11}, Landroid/renderscript/RenderScript;->rsnAllocationData3D(IIIIIIIII[II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 494
    monitor-exit p0

    return-void

    .line 492
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationData3D(IIIIIIII[SI)V
    .locals 12
    .parameter "id"
    .parameter "xoff"
    .parameter "yoff"
    .parameter "zoff"
    .parameter "mip"
    .parameter "w"
    .parameter "h"
    .parameter "depth"
    .parameter "d"
    .parameter "sizeBytes"

    .prologue
    .line 487
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 488
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    invoke-virtual/range {v0 .. v11}, Landroid/renderscript/RenderScript;->rsnAllocationData3D(IIIIIIIII[SI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 489
    monitor-exit p0

    return-void

    .line 487
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationElementData1D(IIII[BI)V
    .locals 8
    .parameter "id"
    .parameter "xoff"
    .parameter "mip"
    .parameter "compIdx"
    .parameter "d"
    .parameter "sizeBytes"

    .prologue
    .line 412
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 413
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/RenderScript;->rsnAllocationElementData1D(IIIII[BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    monitor-exit p0

    return-void

    .line 412
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationGenerateMipmaps(I)V
    .locals 1
    .parameter "alloc"

    .prologue
    .line 379
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 380
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnAllocationGenerateMipmaps(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    monitor-exit p0

    return-void

    .line 379
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationGetSurface(I)Landroid/view/Surface;
    .locals 1
    .parameter "alloc"

    .prologue
    .line 357
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 358
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnAllocationGetSurface(II)Landroid/view/Surface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 357
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationGetType(I)I
    .locals 1
    .parameter "id"

    .prologue
    .line 524
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 525
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnAllocationGetType(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 524
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationIoReceive(I)V
    .locals 1
    .parameter "alloc"

    .prologue
    .line 372
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 373
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnAllocationIoReceive(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    monitor-exit p0

    return-void

    .line 372
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationIoSend(I)V
    .locals 1
    .parameter "alloc"

    .prologue
    .line 367
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 368
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnAllocationIoSend(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    monitor-exit p0

    return-void

    .line 367
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationRead(I[B)V
    .locals 1
    .parameter "id"
    .parameter "d"

    .prologue
    .line 504
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 505
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnAllocationRead(II[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 506
    monitor-exit p0

    return-void

    .line 504
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationRead(I[F)V
    .locals 1
    .parameter "id"
    .parameter "d"

    .prologue
    .line 519
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 520
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnAllocationRead(II[F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 521
    monitor-exit p0

    return-void

    .line 519
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationRead(I[I)V
    .locals 1
    .parameter "id"
    .parameter "d"

    .prologue
    .line 514
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 515
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnAllocationRead(II[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 516
    monitor-exit p0

    return-void

    .line 514
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationRead(I[S)V
    .locals 1
    .parameter "id"
    .parameter "d"

    .prologue
    .line 509
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 510
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnAllocationRead(II[S)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 511
    monitor-exit p0

    return-void

    .line 509
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationResize1D(II)V
    .locals 1
    .parameter "id"
    .parameter "dimX"

    .prologue
    .line 530
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 531
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnAllocationResize1D(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 532
    monitor-exit p0

    return-void

    .line 530
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationSetSurface(ILandroid/view/Surface;)V
    .locals 1
    .parameter "alloc"
    .parameter "sur"

    .prologue
    .line 362
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 363
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnAllocationSetSurface(IILandroid/view/Surface;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    monitor-exit p0

    return-void

    .line 362
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationSyncAll(II)V
    .locals 1
    .parameter "alloc"
    .parameter "src"

    .prologue
    .line 352
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 353
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnAllocationSyncAll(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    monitor-exit p0

    return-void

    .line 352
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAssignName(I[B)V
    .locals 1
    .parameter "obj"
    .parameter "name"

    .prologue
    .line 258
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 259
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnAssignName(II[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    monitor-exit p0

    return-void

    .line 258
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nContextBindProgramFragment(I)V
    .locals 1
    .parameter "pf"

    .prologue
    .line 232
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 233
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnContextBindProgramFragment(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    monitor-exit p0

    return-void

    .line 232
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nContextBindProgramRaster(I)V
    .locals 1
    .parameter "pr"

    .prologue
    .line 242
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 243
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnContextBindProgramRaster(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    monitor-exit p0

    return-void

    .line 242
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nContextBindProgramStore(I)V
    .locals 1
    .parameter "pfs"

    .prologue
    .line 227
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 228
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnContextBindProgramStore(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    monitor-exit p0

    return-void

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nContextBindProgramVertex(I)V
    .locals 1
    .parameter "pv"

    .prologue
    .line 237
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 238
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnContextBindProgramVertex(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    monitor-exit p0

    return-void

    .line 237
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nContextBindRootScript(I)V
    .locals 1
    .parameter "script"

    .prologue
    .line 217
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 218
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnContextBindRootScript(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    monitor-exit p0

    return-void

    .line 217
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nContextBindSampler(II)V
    .locals 1
    .parameter "sampler"
    .parameter "slot"

    .prologue
    .line 222
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 223
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnContextBindSampler(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    monitor-exit p0

    return-void

    .line 222
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nContextCreate(IIII)I
    .locals 1
    .parameter "dev"
    .parameter "ver"
    .parameter "sdkVer"
    .parameter "contextType"

    .prologue
    .line 176
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/renderscript/RenderScript;->rsnContextCreate(IIII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nContextCreateGL(IIIIIIIIIIIIIFI)I
    .locals 1
    .parameter "dev"
    .parameter "ver"
    .parameter "sdkVer"
    .parameter "colorMin"
    .parameter "colorPref"
    .parameter "alphaMin"
    .parameter "alphaPref"
    .parameter "depthMin"
    .parameter "depthPref"
    .parameter "stencilMin"
    .parameter "stencilPref"
    .parameter "samplesMin"
    .parameter "samplesPref"
    .parameter "samplesQ"
    .parameter "dpi"

    .prologue
    .line 169
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p15}, Landroid/renderscript/RenderScript;->rsnContextCreateGL(IIIIIIIIIIIIIFI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method native nContextDeinitToClient(I)V
.end method

.method declared-synchronized nContextDestroy()V
    .locals 1

    .prologue
    .line 180
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 181
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0}, Landroid/renderscript/RenderScript;->rsnContextDestroy(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    monitor-exit p0

    return-void

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nContextDump(I)V
    .locals 1
    .parameter "bits"

    .prologue
    .line 200
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 201
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnContextDump(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    monitor-exit p0

    return-void

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nContextFinish()V
    .locals 1

    .prologue
    .line 205
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 206
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0}, Landroid/renderscript/RenderScript;->rsnContextFinish(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    monitor-exit p0

    return-void

    .line 205
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method native nContextGetErrorMessage(I)Ljava/lang/String;
.end method

.method native nContextGetUserMessage(I[I)I
.end method

.method native nContextInitToClient(I)V
.end method

.method declared-synchronized nContextPause()V
    .locals 1

    .prologue
    .line 247
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 248
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0}, Landroid/renderscript/RenderScript;->rsnContextPause(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    monitor-exit p0

    return-void

    .line 247
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method native nContextPeekMessage(I[I)I
.end method

.method declared-synchronized nContextResume()V
    .locals 1

    .prologue
    .line 252
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 253
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0}, Landroid/renderscript/RenderScript;->rsnContextResume(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    monitor-exit p0

    return-void

    .line 252
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nContextSendMessage(I[I)V
    .locals 1
    .parameter "id"
    .parameter "data"

    .prologue
    .line 211
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 212
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnContextSendMessage(II[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    monitor-exit p0

    return-void

    .line 211
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nContextSetPriority(I)V
    .locals 1
    .parameter "p"

    .prologue
    .line 195
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 196
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnContextSetPriority(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    monitor-exit p0

    return-void

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nContextSetSurface(IILandroid/view/Surface;)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "sur"

    .prologue
    .line 185
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 186
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnContextSetSurface(IIILandroid/view/Surface;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    monitor-exit p0

    return-void

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nContextSetSurfaceTexture(IILandroid/graphics/SurfaceTexture;)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "sur"

    .prologue
    .line 190
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 191
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnContextSetSurfaceTexture(IIILandroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    monitor-exit p0

    return-void

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method native nDeviceCreate()I
.end method

.method native nDeviceDestroy(I)V
.end method

.method native nDeviceSetConfig(III)V
.end method

.method declared-synchronized nElementCreate(IIZI)I
    .locals 6
    .parameter "type"
    .parameter "kind"
    .parameter "norm"
    .parameter "vecSize"

    .prologue
    .line 278
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 279
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnElementCreate(IIIZI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 278
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nElementCreate2([I[Ljava/lang/String;[I)I
    .locals 1
    .parameter "elements"
    .parameter "names"
    .parameter "arraySizes"

    .prologue
    .line 283
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 284
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnElementCreate2(I[I[Ljava/lang/String;[I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 283
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nElementGetNativeData(I[I)V
    .locals 1
    .parameter "id"
    .parameter "elementData"

    .prologue
    .line 288
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 289
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnElementGetNativeData(II[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    monitor-exit p0

    return-void

    .line 288
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nElementGetSubElements(I[I[Ljava/lang/String;[I)V
    .locals 6
    .parameter "id"
    .parameter "IDs"
    .parameter "names"
    .parameter "arraySizes"

    .prologue
    .line 294
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 295
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnElementGetSubElements(II[I[Ljava/lang/String;[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    monitor-exit p0

    return-void

    .line 294
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nFileA3DCreateFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)I
    .locals 1
    .parameter "mgr"
    .parameter "path"

    .prologue
    .line 546
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 547
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnFileA3DCreateFromAsset(ILandroid/content/res/AssetManager;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 546
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nFileA3DCreateFromAssetStream(I)I
    .locals 1
    .parameter "assetStream"

    .prologue
    .line 536
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 537
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnFileA3DCreateFromAssetStream(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 536
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nFileA3DCreateFromFile(Ljava/lang/String;)I
    .locals 1
    .parameter "path"

    .prologue
    .line 541
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 542
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnFileA3DCreateFromFile(ILjava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 541
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nFileA3DGetEntryByIndex(II)I
    .locals 1
    .parameter "fileA3D"
    .parameter "index"

    .prologue
    .line 561
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 562
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnFileA3DGetEntryByIndex(III)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 561
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nFileA3DGetIndexEntries(II[I[Ljava/lang/String;)V
    .locals 6
    .parameter "fileA3D"
    .parameter "numEntries"
    .parameter "IDs"
    .parameter "names"

    .prologue
    .line 556
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 557
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnFileA3DGetIndexEntries(III[I[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 558
    monitor-exit p0

    return-void

    .line 556
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nFileA3DGetNumIndexEntries(I)I
    .locals 1
    .parameter "fileA3D"

    .prologue
    .line 551
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 552
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnFileA3DGetNumIndexEntries(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 551
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nFontCreateFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;FI)I
    .locals 6
    .parameter "mgr"
    .parameter "path"
    .parameter "size"
    .parameter "dpi"

    .prologue
    .line 577
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 578
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnFontCreateFromAsset(ILandroid/content/res/AssetManager;Ljava/lang/String;FI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 577
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nFontCreateFromAssetStream(Ljava/lang/String;FII)I
    .locals 6
    .parameter "name"
    .parameter "size"
    .parameter "dpi"
    .parameter "assetStream"

    .prologue
    .line 572
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 573
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnFontCreateFromAssetStream(ILjava/lang/String;FII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 572
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nFontCreateFromFile(Ljava/lang/String;FI)I
    .locals 1
    .parameter "fileName"
    .parameter "size"
    .parameter "dpi"

    .prologue
    .line 567
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 568
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnFontCreateFromFile(ILjava/lang/String;FI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 567
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nGetName(I)Ljava/lang/String;
    .locals 1
    .parameter "obj"

    .prologue
    .line 263
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 264
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnGetName(II)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 263
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nMeshCreate([I[I[I)I
    .locals 1
    .parameter "vtx"
    .parameter "idx"
    .parameter "prim"

    .prologue
    .line 795
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 796
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnMeshCreate(I[I[I[I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 795
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nMeshGetIndexCount(I)I
    .locals 1
    .parameter "id"

    .prologue
    .line 805
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 806
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnMeshGetIndexCount(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 805
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nMeshGetIndices(I[I[II)V
    .locals 6
    .parameter "id"
    .parameter "idxIds"
    .parameter "primitives"
    .parameter "vtxIdCount"

    .prologue
    .line 815
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 816
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnMeshGetIndices(II[I[II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 817
    monitor-exit p0

    return-void

    .line 815
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nMeshGetVertexBufferCount(I)I
    .locals 1
    .parameter "id"

    .prologue
    .line 800
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 801
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnMeshGetVertexBufferCount(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 800
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nMeshGetVertices(I[II)V
    .locals 1
    .parameter "id"
    .parameter "vtxIds"
    .parameter "vtxIdCount"

    .prologue
    .line 810
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 811
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnMeshGetVertices(II[II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 812
    monitor-exit p0

    return-void

    .line 810
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nObjDestroy(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 271
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    if-eqz v0, :cond_0

    .line 272
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnObjDestroy(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    :cond_0
    monitor-exit p0

    return-void

    .line 271
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nPathCreate(IZIIF)I
    .locals 7
    .parameter "prim"
    .parameter "isStatic"
    .parameter "vtx"
    .parameter "loop"
    .parameter "q"

    .prologue
    .line 821
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 822
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/RenderScript;->rsnPathCreate(IIZIIF)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 821
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nProgramBindConstants(III)V
    .locals 1
    .parameter "pv"
    .parameter "slot"
    .parameter "mID"

    .prologue
    .line 769
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 770
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnProgramBindConstants(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 771
    monitor-exit p0

    return-void

    .line 769
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nProgramBindSampler(III)V
    .locals 1
    .parameter "vpf"
    .parameter "slot"
    .parameter "s"

    .prologue
    .line 779
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 780
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnProgramBindSampler(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 781
    monitor-exit p0

    return-void

    .line 779
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nProgramBindTexture(III)V
    .locals 1
    .parameter "vpf"
    .parameter "slot"
    .parameter "a"

    .prologue
    .line 774
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 775
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnProgramBindTexture(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 776
    monitor-exit p0

    return-void

    .line 774
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nProgramFragmentCreate(Ljava/lang/String;[Ljava/lang/String;[I)I
    .locals 1
    .parameter "shader"
    .parameter "texNames"
    .parameter "params"

    .prologue
    .line 784
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 785
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnProgramFragmentCreate(ILjava/lang/String;[Ljava/lang/String;[I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 784
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nProgramRasterCreate(ZI)I
    .locals 1
    .parameter "pointSprite"
    .parameter "cullMode"

    .prologue
    .line 763
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 764
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnProgramRasterCreate(IZI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 763
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nProgramStoreCreate(ZZZZZZIII)I
    .locals 11
    .parameter "r"
    .parameter "g"
    .parameter "b"
    .parameter "a"
    .parameter "depthMask"
    .parameter "dither"
    .parameter "srcMode"
    .parameter "dstMode"
    .parameter "depthFunc"

    .prologue
    .line 756
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 757
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Landroid/renderscript/RenderScript;->rsnProgramStoreCreate(IZZZZZZIII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 756
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nProgramVertexCreate(Ljava/lang/String;[Ljava/lang/String;[I)I
    .locals 1
    .parameter "shader"
    .parameter "texNames"
    .parameter "params"

    .prologue
    .line 789
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 790
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnProgramVertexCreate(ILjava/lang/String;[Ljava/lang/String;[I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 789
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nSamplerCreate(IIIIIF)I
    .locals 8
    .parameter "magFilter"
    .parameter "minFilter"
    .parameter "wrapS"
    .parameter "wrapT"
    .parameter "wrapR"
    .parameter "aniso"

    .prologue
    .line 746
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 747
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/RenderScript;->rsnSamplerCreate(IIIIIIF)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 746
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptBindAllocation(III)V
    .locals 1
    .parameter "script"
    .parameter "alloc"
    .parameter "slot"

    .prologue
    .line 584
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 585
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnScriptBindAllocation(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 586
    monitor-exit p0

    return-void

    .line 584
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptCCreate(Ljava/lang/String;Ljava/lang/String;[BI)I
    .locals 6
    .parameter "resName"
    .parameter "cacheDir"
    .parameter "script"
    .parameter "length"

    .prologue
    .line 696
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 697
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnScriptCCreate(ILjava/lang/String;Ljava/lang/String;[BI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 696
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptFieldIDCreate(II)I
    .locals 1
    .parameter "sid"
    .parameter "slot"

    .prologue
    .line 714
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 715
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnScriptFieldIDCreate(III)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 714
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptForEach(IIII[B)V
    .locals 7
    .parameter "id"
    .parameter "slot"
    .parameter "ain"
    .parameter "aout"
    .parameter "params"

    .prologue
    .line 604
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 605
    if-nez p5, :cond_0

    .line 606
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnScriptForEach(IIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 610
    :goto_0
    monitor-exit p0

    return-void

    .line 608
    :cond_0
    :try_start_1
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/RenderScript;->rsnScriptForEach(IIIII[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 604
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptForEachClipped(IIII[BIIIIII)V
    .locals 13
    .parameter "id"
    .parameter "slot"
    .parameter "ain"
    .parameter "aout"
    .parameter "params"
    .parameter "xstart"
    .parameter "xend"
    .parameter "ystart"
    .parameter "yend"
    .parameter "zstart"
    .parameter "zend"

    .prologue
    .line 614
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 615
    if-nez p5, :cond_0

    .line 616
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-virtual/range {v0 .. v11}, Landroid/renderscript/RenderScript;->rsnScriptForEachClipped(IIIIIIIIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 620
    :goto_0
    monitor-exit p0

    return-void

    .line 618
    :cond_0
    :try_start_1
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-virtual/range {v0 .. v12}, Landroid/renderscript/RenderScript;->rsnScriptForEachClipped(IIIII[BIIIIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 614
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptGetVarD(II)D
    .locals 2
    .parameter "id"
    .parameter "slot"

    .prologue
    .line 667
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 668
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnScriptGetVarD(III)D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 667
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptGetVarF(II)F
    .locals 1
    .parameter "id"
    .parameter "slot"

    .prologue
    .line 657
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 658
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnScriptGetVarF(III)F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 657
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptGetVarI(II)I
    .locals 1
    .parameter "id"
    .parameter "slot"

    .prologue
    .line 635
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 636
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnScriptGetVarI(III)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 635
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptGetVarJ(II)J
    .locals 2
    .parameter "id"
    .parameter "slot"

    .prologue
    .line 646
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 647
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnScriptGetVarJ(III)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 646
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptGetVarV(II[B)V
    .locals 1
    .parameter "id"
    .parameter "slot"
    .parameter "val"

    .prologue
    .line 677
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 678
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnScriptGetVarV(III[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 679
    monitor-exit p0

    return-void

    .line 677
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptGroupCreate([I[I[I[I[I)I
    .locals 7
    .parameter "kernels"
    .parameter "src"
    .parameter "dstk"
    .parameter "dstf"
    .parameter "types"

    .prologue
    .line 720
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 721
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/RenderScript;->rsnScriptGroupCreate(I[I[I[I[I[I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 720
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptGroupExecute(I)V
    .locals 1
    .parameter "group"

    .prologue
    .line 738
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 739
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnScriptGroupExecute(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 740
    monitor-exit p0

    return-void

    .line 738
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptGroupSetInput(III)V
    .locals 1
    .parameter "group"
    .parameter "kernel"
    .parameter "alloc"

    .prologue
    .line 726
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 727
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnScriptGroupSetInput(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 728
    monitor-exit p0

    return-void

    .line 726
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptGroupSetOutput(III)V
    .locals 1
    .parameter "group"
    .parameter "kernel"
    .parameter "alloc"

    .prologue
    .line 732
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 733
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnScriptGroupSetOutput(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 734
    monitor-exit p0

    return-void

    .line 732
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptIntrinsicCreate(II)I
    .locals 1
    .parameter "id"
    .parameter "eid"

    .prologue
    .line 702
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 703
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnScriptIntrinsicCreate(III)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 702
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptInvoke(II)V
    .locals 1
    .parameter "id"
    .parameter "slot"

    .prologue
    .line 594
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 595
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnScriptInvoke(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 596
    monitor-exit p0

    return-void

    .line 594
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptInvokeV(II[B)V
    .locals 1
    .parameter "id"
    .parameter "slot"
    .parameter "params"

    .prologue
    .line 624
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 625
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnScriptInvokeV(III[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 626
    monitor-exit p0

    return-void

    .line 624
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptKernelIDCreate(III)I
    .locals 1
    .parameter "sid"
    .parameter "slot"
    .parameter "sig"

    .prologue
    .line 708
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 709
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnScriptKernelIDCreate(IIII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 708
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptSetTimeZone(I[B)V
    .locals 1
    .parameter "script"
    .parameter "timeZone"

    .prologue
    .line 589
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 590
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnScriptSetTimeZone(II[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 591
    monitor-exit p0

    return-void

    .line 589
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptSetVarD(IID)V
    .locals 6
    .parameter "id"
    .parameter "slot"
    .parameter "val"

    .prologue
    .line 662
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 663
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnScriptSetVarD(IIID)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 664
    monitor-exit p0

    return-void

    .line 662
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptSetVarF(IIF)V
    .locals 1
    .parameter "id"
    .parameter "slot"
    .parameter "val"

    .prologue
    .line 652
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 653
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnScriptSetVarF(IIIF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 654
    monitor-exit p0

    return-void

    .line 652
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptSetVarI(III)V
    .locals 1
    .parameter "id"
    .parameter "slot"
    .parameter "val"

    .prologue
    .line 630
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 631
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnScriptSetVarI(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 632
    monitor-exit p0

    return-void

    .line 630
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptSetVarJ(IIJ)V
    .locals 6
    .parameter "id"
    .parameter "slot"
    .parameter "val"

    .prologue
    .line 641
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 642
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnScriptSetVarJ(IIIJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 643
    monitor-exit p0

    return-void

    .line 641
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptSetVarObj(III)V
    .locals 1
    .parameter "id"
    .parameter "slot"
    .parameter "val"

    .prologue
    .line 689
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 690
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnScriptSetVarObj(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 691
    monitor-exit p0

    return-void

    .line 689
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptSetVarV(II[B)V
    .locals 1
    .parameter "id"
    .parameter "slot"
    .parameter "val"

    .prologue
    .line 672
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 673
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnScriptSetVarV(III[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 674
    monitor-exit p0

    return-void

    .line 672
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptSetVarVE(II[BI[I)V
    .locals 7
    .parameter "id"
    .parameter "slot"
    .parameter "val"
    .parameter "e"
    .parameter "dims"

    .prologue
    .line 684
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 685
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/RenderScript;->rsnScriptSetVarVE(III[BI[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 686
    monitor-exit p0

    return-void

    .line 684
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nTypeCreate(IIIIZZI)I
    .locals 9
    .parameter "eid"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "mips"
    .parameter "faces"
    .parameter "yuv"

    .prologue
    .line 300
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 301
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Landroid/renderscript/RenderScript;->rsnTypeCreate(IIIIIZZI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 300
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nTypeGetNativeData(I[I)V
    .locals 1
    .parameter "id"
    .parameter "typeData"

    .prologue
    .line 305
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 306
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnTypeGetNativeData(II[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    monitor-exit p0

    return-void

    .line 305
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method native rsnAllocationCopyFromBitmap(IILandroid/graphics/Bitmap;)V
.end method

.method native rsnAllocationCopyToBitmap(IILandroid/graphics/Bitmap;)V
.end method

.method native rsnAllocationCreateBitmapBackedAllocation(IIILandroid/graphics/Bitmap;I)I
.end method

.method native rsnAllocationCreateBitmapRef(IILandroid/graphics/Bitmap;)I
.end method

.method native rsnAllocationCreateFromAssetStream(IIII)I
.end method

.method native rsnAllocationCreateFromBitmap(IIILandroid/graphics/Bitmap;I)I
.end method

.method native rsnAllocationCreateTyped(IIIII)I
.end method

.method native rsnAllocationCubeCreateFromBitmap(IIILandroid/graphics/Bitmap;I)I
.end method

.method native rsnAllocationData1D(IIIII[BI)V
.end method

.method native rsnAllocationData1D(IIIII[FI)V
.end method

.method native rsnAllocationData1D(IIIII[II)V
.end method

.method native rsnAllocationData1D(IIIII[SI)V
.end method

.method native rsnAllocationData2D(IIIIIIIIIIIII)V
.end method

.method native rsnAllocationData2D(IIIIIIII[BI)V
.end method

.method native rsnAllocationData2D(IIIIIIII[FI)V
.end method

.method native rsnAllocationData2D(IIIIIIII[II)V
.end method

.method native rsnAllocationData2D(IIIIIIII[SI)V
.end method

.method native rsnAllocationData2D(IIIIIILandroid/graphics/Bitmap;)V
.end method

.method native rsnAllocationData3D(IIIIIIIIIIIIII)V
.end method

.method native rsnAllocationData3D(IIIIIIIII[BI)V
.end method

.method native rsnAllocationData3D(IIIIIIIII[FI)V
.end method

.method native rsnAllocationData3D(IIIIIIIII[II)V
.end method

.method native rsnAllocationData3D(IIIIIIIII[SI)V
.end method

.method native rsnAllocationElementData1D(IIIII[BI)V
.end method

.method native rsnAllocationGenerateMipmaps(II)V
.end method

.method native rsnAllocationGetSurface(II)Landroid/view/Surface;
.end method

.method native rsnAllocationGetType(II)I
.end method

.method native rsnAllocationIoReceive(II)V
.end method

.method native rsnAllocationIoSend(II)V
.end method

.method native rsnAllocationRead(II[B)V
.end method

.method native rsnAllocationRead(II[F)V
.end method

.method native rsnAllocationRead(II[I)V
.end method

.method native rsnAllocationRead(II[S)V
.end method

.method native rsnAllocationResize1D(III)V
.end method

.method native rsnAllocationSetSurface(IILandroid/view/Surface;)V
.end method

.method native rsnAllocationSyncAll(III)V
.end method

.method native rsnAssignName(II[B)V
.end method

.method native rsnContextBindProgramFragment(II)V
.end method

.method native rsnContextBindProgramRaster(II)V
.end method

.method native rsnContextBindProgramStore(II)V
.end method

.method native rsnContextBindProgramVertex(II)V
.end method

.method native rsnContextBindRootScript(II)V
.end method

.method native rsnContextBindSampler(III)V
.end method

.method native rsnContextCreate(IIII)I
.end method

.method native rsnContextCreateGL(IIIIIIIIIIIIIFI)I
.end method

.method native rsnContextDestroy(I)V
.end method

.method native rsnContextDump(II)V
.end method

.method native rsnContextFinish(I)V
.end method

.method native rsnContextPause(I)V
.end method

.method native rsnContextResume(I)V
.end method

.method native rsnContextSendMessage(II[I)V
.end method

.method native rsnContextSetPriority(II)V
.end method

.method native rsnContextSetSurface(IIILandroid/view/Surface;)V
.end method

.method native rsnContextSetSurfaceTexture(IIILandroid/graphics/SurfaceTexture;)V
.end method

.method native rsnElementCreate(IIIZI)I
.end method

.method native rsnElementCreate2(I[I[Ljava/lang/String;[I)I
.end method

.method native rsnElementGetNativeData(II[I)V
.end method

.method native rsnElementGetSubElements(II[I[Ljava/lang/String;[I)V
.end method

.method native rsnFileA3DCreateFromAsset(ILandroid/content/res/AssetManager;Ljava/lang/String;)I
.end method

.method native rsnFileA3DCreateFromAssetStream(II)I
.end method

.method native rsnFileA3DCreateFromFile(ILjava/lang/String;)I
.end method

.method native rsnFileA3DGetEntryByIndex(III)I
.end method

.method native rsnFileA3DGetIndexEntries(III[I[Ljava/lang/String;)V
.end method

.method native rsnFileA3DGetNumIndexEntries(II)I
.end method

.method native rsnFontCreateFromAsset(ILandroid/content/res/AssetManager;Ljava/lang/String;FI)I
.end method

.method native rsnFontCreateFromAssetStream(ILjava/lang/String;FII)I
.end method

.method native rsnFontCreateFromFile(ILjava/lang/String;FI)I
.end method

.method native rsnGetName(II)Ljava/lang/String;
.end method

.method native rsnMeshCreate(I[I[I[I)I
.end method

.method native rsnMeshGetIndexCount(II)I
.end method

.method native rsnMeshGetIndices(II[I[II)V
.end method

.method native rsnMeshGetVertexBufferCount(II)I
.end method

.method native rsnMeshGetVertices(II[II)V
.end method

.method native rsnObjDestroy(II)V
.end method

.method native rsnPathCreate(IIZIIF)I
.end method

.method native rsnProgramBindConstants(IIII)V
.end method

.method native rsnProgramBindSampler(IIII)V
.end method

.method native rsnProgramBindTexture(IIII)V
.end method

.method native rsnProgramFragmentCreate(ILjava/lang/String;[Ljava/lang/String;[I)I
.end method

.method native rsnProgramRasterCreate(IZI)I
.end method

.method native rsnProgramStoreCreate(IZZZZZZIII)I
.end method

.method native rsnProgramVertexCreate(ILjava/lang/String;[Ljava/lang/String;[I)I
.end method

.method native rsnSamplerCreate(IIIIIIF)I
.end method

.method native rsnScriptBindAllocation(IIII)V
.end method

.method native rsnScriptCCreate(ILjava/lang/String;Ljava/lang/String;[BI)I
.end method

.method native rsnScriptFieldIDCreate(III)I
.end method

.method native rsnScriptForEach(IIIII)V
.end method

.method native rsnScriptForEach(IIIII[B)V
.end method

.method native rsnScriptForEachClipped(IIIIIIIIIII)V
.end method

.method native rsnScriptForEachClipped(IIIII[BIIIIII)V
.end method

.method native rsnScriptGetVarD(III)D
.end method

.method native rsnScriptGetVarF(III)F
.end method

.method native rsnScriptGetVarI(III)I
.end method

.method native rsnScriptGetVarJ(III)J
.end method

.method native rsnScriptGetVarV(III[B)V
.end method

.method native rsnScriptGroupCreate(I[I[I[I[I[I)I
.end method

.method native rsnScriptGroupExecute(II)V
.end method

.method native rsnScriptGroupSetInput(IIII)V
.end method

.method native rsnScriptGroupSetOutput(IIII)V
.end method

.method native rsnScriptIntrinsicCreate(III)I
.end method

.method native rsnScriptInvoke(III)V
.end method

.method native rsnScriptInvokeV(III[B)V
.end method

.method native rsnScriptKernelIDCreate(IIII)I
.end method

.method native rsnScriptSetTimeZone(II[B)V
.end method

.method native rsnScriptSetVarD(IIID)V
.end method

.method native rsnScriptSetVarF(IIIF)V
.end method

.method native rsnScriptSetVarI(IIII)V
.end method

.method native rsnScriptSetVarJ(IIIJ)V
.end method

.method native rsnScriptSetVarObj(IIII)V
.end method

.method native rsnScriptSetVarV(III[B)V
.end method

.method native rsnScriptSetVarVE(III[BI[I)V
.end method

.method native rsnTypeCreate(IIIIIZZI)I
.end method

.method native rsnTypeGetNativeData(II[I)V
.end method

.method safeID(Landroid/renderscript/BaseObj;)I
    .locals 1
    .parameter "o"

    .prologue
    .line 1252
    if-eqz p1, :cond_0

    .line 1253
    invoke-virtual {p1, p0}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)I

    move-result v0

    .line 1255
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendMessage(I[I)V
    .locals 0
    .parameter "id"
    .parameter "data"

    .prologue
    .line 971
    invoke-virtual {p0, p1, p2}, Landroid/renderscript/RenderScript;->nContextSendMessage(I[I)V

    .line 972
    return-void
.end method

.method public setErrorHandler(Landroid/renderscript/RenderScript$RSErrorHandler;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 997
    iput-object p1, p0, Landroid/renderscript/RenderScript;->mErrorCallback:Landroid/renderscript/RenderScript$RSErrorHandler;

    .line 998
    return-void
.end method

.method public setMessageHandler(Landroid/renderscript/RenderScript$RSMessageHandler;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 957
    iput-object p1, p0, Landroid/renderscript/RenderScript;->mMessageCallback:Landroid/renderscript/RenderScript$RSMessageHandler;

    .line 958
    return-void
.end method

.method public setPriority(Landroid/renderscript/RenderScript$Priority;)V
    .locals 1
    .parameter "p"

    .prologue
    .line 1031
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 1032
    iget v0, p1, Landroid/renderscript/RenderScript$Priority;->mID:I

    invoke-virtual {p0, v0}, Landroid/renderscript/RenderScript;->nContextSetPriority(I)V

    .line 1033
    return-void
.end method

.method validate()V
    .locals 2

    .prologue
    .line 1019
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    if-nez v0, :cond_0

    .line 1020
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Calling RS with no Context active."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1022
    :cond_0
    return-void
.end method
