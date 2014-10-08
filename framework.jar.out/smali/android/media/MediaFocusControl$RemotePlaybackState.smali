.class Landroid/media/MediaFocusControl$RemotePlaybackState;
.super Ljava/lang/Object;
.source "MediaFocusControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaFocusControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemotePlaybackState"
.end annotation


# instance fields
.field mRccId:I

.field mVolume:I

.field mVolumeHandling:I

.field mVolumeMax:I

.field final synthetic this$0:Landroid/media/MediaFocusControl;


# direct methods
.method private constructor <init>(Landroid/media/MediaFocusControl;III)V
    .locals 1
    .parameter
    .parameter "id"
    .parameter "vol"
    .parameter "volMax"

    .prologue
    .line 1120
    iput-object p1, p0, Landroid/media/MediaFocusControl$RemotePlaybackState;->this$0:Landroid/media/MediaFocusControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1121
    iput p2, p0, Landroid/media/MediaFocusControl$RemotePlaybackState;->mRccId:I

    .line 1122
    iput p3, p0, Landroid/media/MediaFocusControl$RemotePlaybackState;->mVolume:I

    .line 1123
    iput p4, p0, Landroid/media/MediaFocusControl$RemotePlaybackState;->mVolumeMax:I

    .line 1124
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/MediaFocusControl$RemotePlaybackState;->mVolumeHandling:I

    .line 1125
    return-void
.end method

.method synthetic constructor <init>(Landroid/media/MediaFocusControl;IIILandroid/media/MediaFocusControl$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 1114
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/MediaFocusControl$RemotePlaybackState;-><init>(Landroid/media/MediaFocusControl;III)V

    return-void
.end method
