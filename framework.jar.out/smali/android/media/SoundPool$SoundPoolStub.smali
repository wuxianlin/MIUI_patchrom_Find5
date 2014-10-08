.class Landroid/media/SoundPool$SoundPoolStub;
.super Ljava/lang/Object;
.source "SoundPool.java"

# interfaces
.implements Landroid/media/SoundPool$SoundPoolDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/SoundPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SoundPoolStub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 625
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final autoPause()V
    .locals 0

    .prologue
    .line 656
    return-void
.end method

.method public final autoResume()V
    .locals 0

    .prologue
    .line 658
    return-void
.end method

.method public load(Landroid/content/Context;II)I
    .locals 1
    .parameter "context"
    .parameter "resId"
    .parameter "priority"

    .prologue
    .line 632
    const/4 v0, 0x0

    return v0
.end method

.method public load(Landroid/content/res/AssetFileDescriptor;I)I
    .locals 1
    .parameter "afd"
    .parameter "priority"

    .prologue
    .line 636
    const/4 v0, 0x0

    return v0
.end method

.method public load(Ljava/io/FileDescriptor;JJI)I
    .locals 1
    .parameter "fd"
    .parameter "offset"
    .parameter "length"
    .parameter "priority"

    .prologue
    .line 640
    const/4 v0, 0x0

    return v0
.end method

.method public load(Ljava/lang/String;I)I
    .locals 1
    .parameter "path"
    .parameter "priority"

    .prologue
    .line 628
    const/4 v0, 0x0

    return v0
.end method

.method public final pause(I)V
    .locals 0
    .parameter "streamID"

    .prologue
    .line 652
    return-void
.end method

.method public final play(IFFIIF)I
    .locals 1
    .parameter "soundID"
    .parameter "leftVolume"
    .parameter "rightVolume"
    .parameter "priority"
    .parameter "loop"
    .parameter "rate"

    .prologue
    .line 649
    const/4 v0, 0x0

    return v0
.end method

.method public final release()V
    .locals 0

    .prologue
    .line 677
    return-void
.end method

.method public final resume(I)V
    .locals 0
    .parameter "streamID"

    .prologue
    .line 654
    return-void
.end method

.method public final setLoop(II)V
    .locals 0
    .parameter "streamID"
    .parameter "loop"

    .prologue
    .line 670
    return-void
.end method

.method public setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 675
    return-void
.end method

.method public final setPriority(II)V
    .locals 0
    .parameter "streamID"
    .parameter "priority"

    .prologue
    .line 668
    return-void
.end method

.method public final setRate(IF)V
    .locals 0
    .parameter "streamID"
    .parameter "rate"

    .prologue
    .line 672
    return-void
.end method

.method public setVolume(IF)V
    .locals 0
    .parameter "streamID"
    .parameter "volume"

    .prologue
    .line 666
    return-void
.end method

.method public final setVolume(IFF)V
    .locals 0
    .parameter "streamID"
    .parameter "leftVolume"
    .parameter "rightVolume"

    .prologue
    .line 663
    return-void
.end method

.method public final stop(I)V
    .locals 0
    .parameter "streamID"

    .prologue
    .line 660
    return-void
.end method

.method public final unload(I)Z
    .locals 1
    .parameter "soundID"

    .prologue
    .line 644
    const/4 v0, 0x1

    return v0
.end method
