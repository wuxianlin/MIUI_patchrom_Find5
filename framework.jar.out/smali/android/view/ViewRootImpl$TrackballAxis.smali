.class final Landroid/view/ViewRootImpl$TrackballAxis;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TrackballAxis"
.end annotation


# static fields
.field static final ACCEL_MOVE_SCALING_FACTOR:F = 0.025f

.field static final FAST_MOVE_TIME:J = 0x96L

.field static final FIRST_MOVEMENT_THRESHOLD:F = 0.5f

.field static final MAX_ACCELERATION:F = 20.0f

.field static final SECOND_CUMULATIVE_MOVEMENT_THRESHOLD:F = 2.0f

.field static final SUBSEQUENT_INCREMENTAL_MOVEMENT_THRESHOLD:F = 1.0f


# instance fields
.field acceleration:F

.field dir:I

.field lastMoveTime:J

.field nonAccelMovement:I

.field position:F

.field step:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 4167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4193
    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 4194
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    return-void
.end method


# virtual methods
.method collect(FJLjava/lang/String;)F
    .locals 8
    .parameter "off"
    .parameter "time"
    .parameter "axis"

    .prologue
    .line 4219
    const/4 v6, 0x0

    cmpl-float v6, p1, v6

    if-lez v6, :cond_3

    .line 4220
    const/high16 v6, 0x4316

    mul-float/2addr v6, p1

    float-to-long v3, v6

    .line 4221
    .local v3, normTime:J
    iget v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    if-gez v6, :cond_0

    .line 4223
    const/4 v6, 0x0

    iput v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    .line 4224
    const/4 v6, 0x0

    iput v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    .line 4225
    const/high16 v6, 0x3f80

    iput v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 4226
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    .line 4228
    :cond_0
    const/4 v6, 0x1

    iput v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    .line 4246
    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v6, v3, v6

    if-lez v6, :cond_2

    .line 4247
    iget-wide v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    sub-long v1, p2, v6

    .line 4248
    .local v1, delta:J
    iput-wide p2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    .line 4249
    iget v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 4250
    .local v0, acc:F
    cmp-long v6, v1, v3

    if-gez v6, :cond_7

    .line 4252
    sub-long v6, v3, v1

    long-to-float v6, v6

    const v7, 0x3ccccccd

    mul-float v5, v6, v7

    .line 4253
    .local v5, scale:F
    const/high16 v6, 0x3f80

    cmpl-float v6, v5, v6

    if-lez v6, :cond_1

    mul-float/2addr v0, v5

    .line 4257
    :cond_1
    const/high16 v6, 0x41a0

    cmpg-float v6, v0, v6

    if-gez v6, :cond_6

    .end local v0           #acc:F
    :goto_1
    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 4268
    .end local v1           #delta:J
    .end local v5           #scale:F
    :cond_2
    :goto_2
    iget v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    add-float/2addr v6, p1

    iput v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    .line 4269
    iget v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    return v6

    .line 4229
    .end local v3           #normTime:J
    :cond_3
    const/4 v6, 0x0

    cmpg-float v6, p1, v6

    if-gez v6, :cond_5

    .line 4230
    neg-float v6, p1

    const/high16 v7, 0x4316

    mul-float/2addr v6, v7

    float-to-long v3, v6

    .line 4231
    .restart local v3       #normTime:J
    iget v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    if-lez v6, :cond_4

    .line 4233
    const/4 v6, 0x0

    iput v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    .line 4234
    const/4 v6, 0x0

    iput v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    .line 4235
    const/high16 v6, 0x3f80

    iput v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 4236
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    .line 4238
    :cond_4
    const/4 v6, -0x1

    iput v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    goto :goto_0

    .line 4240
    .end local v3           #normTime:J
    :cond_5
    const-wide/16 v3, 0x0

    .restart local v3       #normTime:J
    goto :goto_0

    .line 4257
    .restart local v0       #acc:F
    .restart local v1       #delta:J
    .restart local v5       #scale:F
    :cond_6
    const/high16 v0, 0x41a0

    goto :goto_1

    .line 4260
    .end local v5           #scale:F
    :cond_7
    sub-long v6, v1, v3

    long-to-float v6, v6

    const v7, 0x3ccccccd

    mul-float v5, v6, v7

    .line 4261
    .restart local v5       #scale:F
    const/high16 v6, 0x3f80

    cmpl-float v6, v5, v6

    if-lez v6, :cond_8

    div-float/2addr v0, v5

    .line 4265
    :cond_8
    const/high16 v6, 0x3f80

    cmpl-float v6, v0, v6

    if-lez v6, :cond_9

    .end local v0           #acc:F
    :goto_3
    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    goto :goto_2

    .restart local v0       #acc:F
    :cond_9
    const/high16 v0, 0x3f80

    goto :goto_3
.end method

.method generate()I
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/high16 v7, 0x4000

    const/high16 v6, 0x3f80

    .line 4281
    const/4 v2, 0x0

    .line 4282
    .local v2, movement:I
    const/4 v4, 0x0

    iput v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->nonAccelMovement:I

    .line 4284
    :goto_0
    iget v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_1

    move v1, v3

    .line 4285
    .local v1, dir:I
    :goto_1
    iget v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    packed-switch v4, :pswitch_data_0

    .line 4317
    iget v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v6

    if-gez v4, :cond_2

    .line 4318
    :cond_0
    return v2

    .line 4284
    .end local v1           #dir:I
    :cond_1
    const/4 v1, -0x1

    goto :goto_1

    .line 4290
    .restart local v1       #dir:I
    :pswitch_0
    iget v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x3f00

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_0

    .line 4293
    add-int/2addr v2, v1

    .line 4294
    iget v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->nonAccelMovement:I

    add-int/2addr v4, v1

    iput v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->nonAccelMovement:I

    .line 4295
    iput v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    goto :goto_0

    .line 4301
    :pswitch_1
    iget v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v7

    if-ltz v4, :cond_0

    .line 4304
    add-int/2addr v2, v1

    .line 4305
    iget v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->nonAccelMovement:I

    add-int/2addr v4, v1

    iput v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->nonAccelMovement:I

    .line 4306
    iget v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    int-to-float v5, v1

    mul-float/2addr v5, v7

    sub-float/2addr v4, v5

    iput v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    .line 4307
    const/4 v4, 0x2

    iput v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    goto :goto_0

    .line 4320
    :cond_2
    add-int/2addr v2, v1

    .line 4321
    iget v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    int-to-float v5, v1

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iput v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    .line 4322
    iget v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 4323
    .local v0, acc:F
    const v4, 0x3f8ccccd

    mul-float/2addr v0, v4

    .line 4324
    const/high16 v4, 0x41a0

    cmpg-float v4, v0, v4

    if-gez v4, :cond_3

    .end local v0           #acc:F
    :goto_2
    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    goto :goto_0

    .restart local v0       #acc:F
    :cond_3
    iget v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    goto :goto_2

    .line 4285
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method reset(I)V
    .locals 2
    .parameter "_step"

    .prologue
    .line 4200
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    .line 4201
    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 4202
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    .line 4203
    iput p1, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    .line 4204
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    .line 4205
    return-void
.end method
