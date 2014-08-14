.class final Landroid/view/ViewRootImpl$SyntheticJoystickHandler;
.super Landroid/os/Handler;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SyntheticJoystickHandler"
.end annotation


# static fields
.field private static final MSG_ENQUEUE_X_AXIS_KEY_REPEAT:I = 0x1

.field private static final MSG_ENQUEUE_Y_AXIS_KEY_REPEAT:I = 0x2


# instance fields
.field private mLastXDirection:I

.field private mLastXKeyCode:I

.field private mLastYDirection:I

.field private mLastYKeyCode:I

.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 1
    .parameter

    .prologue
    .line 4330
    iput-object p1, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->this$0:Landroid/view/ViewRootImpl;

    .line 4331
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Z)V

    .line 4332
    return-void
.end method

.method private joystickAxisValueToDirection(F)I
    .locals 1
    .parameter "value"

    .prologue
    .line 4429
    const/high16 v0, 0x3f00

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 4430
    const/4 v0, 0x1

    .line 4434
    :goto_0
    return v0

    .line 4431
    :cond_0
    const/high16 v0, -0x4100

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    .line 4432
    const/4 v0, -0x1

    goto :goto_0

    .line 4434
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private update(Landroid/view/MotionEvent;Z)V
    .locals 31
    .parameter "event"
    .parameter "synthesizeNewKeys"

    .prologue
    .line 4362
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    .line 4363
    .local v3, time:J
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v10

    .line 4364
    .local v10, metaState:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v11

    .line 4365
    .local v11, deviceId:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v14

    .line 4367
    .local v14, source:I
    const/16 v5, 0xf

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->joystickAxisValueToDirection(F)I

    move-result v29

    .line 4369
    .local v29, xDirection:I
    if-nez v29, :cond_0

    .line 4370
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->joystickAxisValueToDirection(F)I

    move-result v29

    .line 4373
    :cond_0
    const/16 v5, 0x10

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->joystickAxisValueToDirection(F)I

    move-result v30

    .line 4375
    .local v30, yDirection:I
    if-nez v30, :cond_1

    .line 4376
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->joystickAxisValueToDirection(F)I

    move-result v30

    .line 4379
    :cond_1
    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mLastXDirection:I

    move/from16 v0, v29

    if-eq v0, v5, :cond_3

    .line 4380
    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mLastXKeyCode:I

    if-eqz v5, :cond_2

    .line 4381
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->removeMessages(I)V

    .line 4382
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->this$0:Landroid/view/ViewRootImpl;

    new-instance v2, Landroid/view/KeyEvent;

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget v8, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mLastXKeyCode:I

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x400

    move-wide v5, v3

    invoke-direct/range {v2 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-virtual {v15, v2}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    .line 4385
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mLastXKeyCode:I

    .line 4388
    :cond_2
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mLastXDirection:I

    .line 4390
    if-eqz v29, :cond_3

    if-eqz p2, :cond_3

    .line 4391
    if-lez v29, :cond_6

    const/16 v5, 0x16

    :goto_0
    move-object/from16 v0, p0

    iput v5, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mLastXKeyCode:I

    .line 4393
    new-instance v2, Landroid/view/KeyEvent;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mLastXKeyCode:I

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x400

    move-wide v5, v3

    invoke-direct/range {v2 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 4396
    .local v2, e:Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v5, v2}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    .line 4397
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v2}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v28

    .line 4398
    .local v28, m:Landroid/os/Message;
    const/4 v5, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 4399
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v5

    int-to-long v5, v5

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v5, v6}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4403
    .end local v2           #e:Landroid/view/KeyEvent;
    .end local v28           #m:Landroid/os/Message;
    :cond_3
    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mLastYDirection:I

    move/from16 v0, v30

    if-eq v0, v5, :cond_5

    .line 4404
    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mLastYKeyCode:I

    if-eqz v5, :cond_4

    .line 4405
    const/4 v5, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->removeMessages(I)V

    .line 4406
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->this$0:Landroid/view/ViewRootImpl;

    new-instance v15, Landroid/view/KeyEvent;

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mLastYKeyCode:I

    move/from16 v21, v0

    const/16 v22, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x400

    move-wide/from16 v16, v3

    move-wide/from16 v18, v3

    move/from16 v23, v10

    move/from16 v24, v11

    move/from16 v27, v14

    invoke-direct/range {v15 .. v27}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-virtual {v5, v15}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    .line 4409
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mLastYKeyCode:I

    .line 4412
    :cond_4
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mLastYDirection:I

    .line 4414
    if-eqz v30, :cond_5

    if-eqz p2, :cond_5

    .line 4415
    if-lez v30, :cond_7

    const/16 v5, 0x14

    :goto_1
    move-object/from16 v0, p0

    iput v5, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mLastYKeyCode:I

    .line 4417
    new-instance v2, Landroid/view/KeyEvent;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mLastYKeyCode:I

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x400

    move-wide v5, v3

    invoke-direct/range {v2 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 4420
    .restart local v2       #e:Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v5, v2}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    .line 4421
    const/4 v5, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v2}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v28

    .line 4422
    .restart local v28       #m:Landroid/os/Message;
    const/4 v5, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 4423
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v5

    int-to-long v5, v5

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v5, v6}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4426
    .end local v2           #e:Landroid/view/KeyEvent;
    .end local v28           #m:Landroid/os/Message;
    :cond_5
    return-void

    .line 4391
    :cond_6
    const/16 v5, 0x15

    goto/16 :goto_0

    .line 4415
    :cond_7
    const/16 v5, 0x13

    goto :goto_1
.end method


# virtual methods
.method public cancel(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 4358
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->update(Landroid/view/MotionEvent;Z)V

    .line 4359
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 4336
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 4351
    :cond_0
    :goto_0
    return-void

    .line 4339
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/KeyEvent;

    .line 4340
    .local v2, oldEvent:Landroid/view/KeyEvent;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v2, v3, v4, v5}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    move-result-object v0

    .line 4343
    .local v0, e:Landroid/view/KeyEvent;
    iget-object v3, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v3, v3, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-eqz v3, :cond_0

    .line 4344
    iget-object v3, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v3, v0}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    .line 4345
    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v3, v0}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 4346
    .local v1, m:Landroid/os/Message;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 4347
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p0, v1, v3, v4}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 4336
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public process(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 4354
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->update(Landroid/view/MotionEvent;Z)V

    .line 4355
    return-void
.end method
