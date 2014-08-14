.class public Landroid/media/EncoderCapabilities$VideoEncoderCap;
.super Ljava/lang/Object;
.source "EncoderCapabilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/EncoderCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoEncoderCap"
.end annotation


# instance fields
.field public final mCodec:I

.field public final mMaxBitRate:I

.field public final mMaxFrameHeight:I

.field public final mMaxFrameRate:I

.field public final mMaxFrameWidth:I

.field public final mMaxHFRFrameHeight:I

.field public final mMaxHFRFrameWidth:I

.field public final mMaxHFRMode:I

.field public final mMinBitRate:I

.field public final mMinFrameHeight:I

.field public final mMinFrameRate:I

.field public final mMinFrameWidth:I


# direct methods
.method private constructor <init>(IIIIIIIIIIII)V
    .locals 0
    .parameter "codec"
    .parameter "minBitRate"
    .parameter "maxBitRate"
    .parameter "minFrameRate"
    .parameter "maxFrameRate"
    .parameter "minFrameWidth"
    .parameter "maxFrameWidth"
    .parameter "minFrameHeight"
    .parameter "maxFrameHeight"
    .parameter "maxHFRFrameWidth"
    .parameter "maxHFRFrameHeight"
    .parameter "maxHFRMode"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput p1, p0, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mCodec:I

    .line 63
    iput p2, p0, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMinBitRate:I

    .line 64
    iput p3, p0, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMaxBitRate:I

    .line 65
    iput p4, p0, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMinFrameRate:I

    .line 66
    iput p5, p0, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMaxFrameRate:I

    .line 67
    iput p6, p0, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMinFrameWidth:I

    .line 68
    iput p7, p0, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMaxFrameWidth:I

    .line 69
    iput p8, p0, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMinFrameHeight:I

    .line 70
    iput p9, p0, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMaxFrameHeight:I

    .line 71
    iput p10, p0, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMaxHFRFrameWidth:I

    .line 72
    iput p11, p0, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMaxHFRFrameHeight:I

    .line 73
    iput p12, p0, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMaxHFRMode:I

    .line 74
    return-void
.end method
