.class final Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;
.super Ljava/lang/Object;
.source "ElectronBeam.java"

# interfaces
.implements Lcom/android/server/display/DisplayTransactionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ElectronBeam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NaturalSurfaceLayout"
.end annotation


# instance fields
.field private final mDisplayManager:Lcom/android/server/display/DisplayManagerService;

.field private final mHWRotation:I

.field private mSurfaceControl:Landroid/view/SurfaceControl;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayManagerService;Landroid/view/SurfaceControl;I)V
    .locals 1
    .parameter "displayManager"
    .parameter "surfaceControl"
    .parameter "hwRotation"

    .prologue
    .line 721
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 722
    iput-object p1, p0, Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;->mDisplayManager:Lcom/android/server/display/DisplayManagerService;

    .line 723
    iput-object p2, p0, Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 724
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;->mDisplayManager:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v0, p0}, Lcom/android/server/display/DisplayManagerService;->registerDisplayTransactionListener(Lcom/android/server/display/DisplayTransactionListener;)V

    .line 725
    iput p3, p0, Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;->mHWRotation:I

    .line 726
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 729
    monitor-enter p0

    .line 730
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 731
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 732
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;->mDisplayManager:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v0, p0}, Lcom/android/server/display/DisplayManagerService;->unregisterDisplayTransactionListener(Lcom/android/server/display/DisplayTransactionListener;)V

    .line 733
    return-void

    .line 731
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onDisplayTransaction()V
    .locals 6

    .prologue
    .line 737
    monitor-enter p0

    .line 738
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v1, :cond_0

    .line 739
    monitor-exit p0

    .line 762
    :goto_0
    return-void

    .line 742
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;->mDisplayManager:Lcom/android/server/display/DisplayManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/display/DisplayManagerService;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    .line 743
    .local v0, displayInfo:Landroid/view/DisplayInfo;
    iget v1, v0, Landroid/view/DisplayInfo;->rotation:I

    iget v2, p0, Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;->mHWRotation:I

    add-int/2addr v1, v2

    rem-int/lit8 v1, v1, 0x4

    packed-switch v1, :pswitch_data_0

    .line 761
    :goto_1
    monitor-exit p0

    goto :goto_0

    .end local v0           #displayInfo:Landroid/view/DisplayInfo;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 745
    .restart local v0       #displayInfo:Landroid/view/DisplayInfo;
    :pswitch_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 746
    iget-object v1, p0, Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto :goto_1

    .line 749
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    iget v3, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 750
    iget-object v1, p0, Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    const/high16 v3, -0x4080

    const/high16 v4, 0x3f80

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto :goto_1

    .line 753
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v2, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-float v2, v2

    iget v3, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 754
    iget-object v1, p0, Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/high16 v2, -0x4080

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, -0x4080

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto :goto_1

    .line 757
    :pswitch_3
    iget-object v1, p0, Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v2, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 758
    iget-object v1, p0, Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    const/high16 v4, -0x4080

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 743
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
