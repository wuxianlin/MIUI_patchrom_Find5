.class Landroid/media/AudioService$StreamVolumeCommand;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StreamVolumeCommand"
.end annotation


# instance fields
.field public final mDevice:I

.field public final mFlags:I

.field public final mIndex:I

.field public final mStreamType:I

.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method constructor <init>(Landroid/media/AudioService;IIII)V
    .locals 0
    .parameter
    .parameter "streamType"
    .parameter "index"
    .parameter "flags"
    .parameter "device"

    .prologue
    .line 1029
    iput-object p1, p0, Landroid/media/AudioService$StreamVolumeCommand;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1030
    iput p2, p0, Landroid/media/AudioService$StreamVolumeCommand;->mStreamType:I

    .line 1031
    iput p3, p0, Landroid/media/AudioService$StreamVolumeCommand;->mIndex:I

    .line 1032
    iput p4, p0, Landroid/media/AudioService$StreamVolumeCommand;->mFlags:I

    .line 1033
    iput p5, p0, Landroid/media/AudioService$StreamVolumeCommand;->mDevice:I

    .line 1034
    return-void
.end method
