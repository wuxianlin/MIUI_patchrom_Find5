.class public Lcom/android/settings/quicksettings/DraggableGridView;
.super Landroid/view/ViewGroup;
.source "DraggableGridView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/quicksettings/DraggableGridView$OnRearrangeListener;
    }
.end annotation


# static fields
.field public static animT:I


# instance fields
.field protected cellGap:I

.field protected childHeight:I

.field protected childWidth:I

.field protected colCount:I

.field protected dragged:I

.field protected enabled:Z

.field protected handler:Landroid/os/Handler;

.field protected isDelete:Z

.field protected lastDelta:F

.field protected lastTarget:I

.field protected lastX:I

.field protected lastY:I

.field protected newPositions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field protected onRearrangeListener:Lcom/android/settings/quicksettings/DraggableGridView$OnRearrangeListener;

.field protected scroll:I

.field protected secondaryOnClickListener:Landroid/view/View$OnClickListener;

.field protected touching:Z

.field protected updateTask:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const/16 v0, 0x96

    sput v0, Lcom/android/settings/quicksettings/DraggableGridView;->animT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 66
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 54
    iput v2, p0, Lcom/android/settings/quicksettings/DraggableGridView;->scroll:I

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/quicksettings/DraggableGridView;->lastDelta:F

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/quicksettings/DraggableGridView;->handler:Landroid/os/Handler;

    .line 57
    iput v1, p0, Lcom/android/settings/quicksettings/DraggableGridView;->dragged:I

    iput v1, p0, Lcom/android/settings/quicksettings/DraggableGridView;->lastX:I

    iput v1, p0, Lcom/android/settings/quicksettings/DraggableGridView;->lastY:I

    iput v1, p0, Lcom/android/settings/quicksettings/DraggableGridView;->lastTarget:I

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/quicksettings/DraggableGridView;->enabled:Z

    iput-boolean v2, p0, Lcom/android/settings/quicksettings/DraggableGridView;->touching:Z

    iput-boolean v2, p0, Lcom/android/settings/quicksettings/DraggableGridView;->isDelete:Z

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/quicksettings/DraggableGridView;->newPositions:Ljava/util/ArrayList;

    .line 106
    new-instance v0, Lcom/android/settings/quicksettings/DraggableGridView$1;

    invoke-direct {v0, p0}, Lcom/android/settings/quicksettings/DraggableGridView$1;-><init>(Lcom/android/settings/quicksettings/DraggableGridView;)V

    iput-object v0, p0, Lcom/android/settings/quicksettings/DraggableGridView;->updateTask:Ljava/lang/Runnable;

    .line 67
    invoke-direct {p0, p1}, Lcom/android/settings/quicksettings/DraggableGridView;->init(Landroid/content/Context;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 71
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    iput v2, p0, Lcom/android/settings/quicksettings/DraggableGridView;->scroll:I

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/quicksettings/DraggableGridView;->lastDelta:F

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/quicksettings/DraggableGridView;->handler:Landroid/os/Handler;

    .line 57
    iput v1, p0, Lcom/android/settings/quicksettings/DraggableGridView;->dragged:I

    iput v1, p0, Lcom/android/settings/quicksettings/DraggableGridView;->lastX:I

    iput v1, p0, Lcom/android/settings/quicksettings/DraggableGridView;->lastY:I

    iput v1, p0, Lcom/android/settings/quicksettings/DraggableGridView;->lastTarget:I

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/quicksettings/DraggableGridView;->enabled:Z

    iput-boolean v2, p0, Lcom/android/settings/quicksettings/DraggableGridView;->touching:Z

    iput-boolean v2, p0, Lcom/android/settings/quicksettings/DraggableGridView;->isDelete:Z

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/quicksettings/DraggableGridView;->newPositions:Ljava/util/ArrayList;

    .line 106
    new-instance v0, Lcom/android/settings/quicksettings/DraggableGridView$1;

    invoke-direct {v0, p0}, Lcom/android/settings/quicksettings/DraggableGridView$1;-><init>(Lcom/android/settings/quicksettings/DraggableGridView;)V

    iput-object v0, p0, Lcom/android/settings/quicksettings/DraggableGridView;->updateTask:Ljava/lang/Runnable;

    .line 72
    invoke-direct {p0, p1}, Lcom/android/settings/quicksettings/DraggableGridView;->init(Landroid/content/Context;)V

    .line 73
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/quicksettings/DraggableGridView;->setListeners()V

    .line 83
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/quicksettings/DraggableGridView;->setChildrenDrawingOrderEnabled(Z)V

    .line 84
    invoke-virtual {p0, v1}, Lcom/android/settings/quicksettings/DraggableGridView;->setClipChildren(Z)V

    .line 85
    invoke-virtual {p0, v1}, Lcom/android/settings/quicksettings/DraggableGridView;->setClipToPadding(Z)V

    .line 86
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings/quicksettings/DraggableGridView;->colCount:I

    .line 87
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 136
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 137
    iget-object v0, p0, Lcom/android/settings/quicksettings/DraggableGridView;->newPositions:Ljava/util/ArrayList;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .parameter "child"
    .parameter "index"

    .prologue
    .line 130
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 131
    iget-object v0, p0, Lcom/android/settings/quicksettings/DraggableGridView;->newPositions:Ljava/util/ArrayList;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    return-void
.end method

.method protected animateDragged()V
    .locals 15

    .prologue
    const v1, 0x3f2ac083

    const/4 v14, 0x1

    const/high16 v2, 0x3f80

    .line 377
    iget v3, p0, Lcom/android/settings/quicksettings/DraggableGridView;->dragged:I

    invoke-virtual {p0, v3}, Lcom/android/settings/quicksettings/DraggableGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 378
    .local v11, v:Landroid/view/View;
    iget v3, p0, Lcom/android/settings/quicksettings/DraggableGridView;->dragged:I

    invoke-virtual {p0, v3}, Lcom/android/settings/quicksettings/DraggableGridView;->getCoorFromIndex(I)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget v4, p0, Lcom/android/settings/quicksettings/DraggableGridView;->childWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int v12, v3, v4

    .local v12, x:I
    iget v3, p0, Lcom/android/settings/quicksettings/DraggableGridView;->dragged:I

    invoke-virtual {p0, v3}, Lcom/android/settings/quicksettings/DraggableGridView;->getCoorFromIndex(I)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget v4, p0, Lcom/android/settings/quicksettings/DraggableGridView;->childWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int v13, v3, v4

    .line 380
    .local v13, y:I
    iget v3, p0, Lcom/android/settings/quicksettings/DraggableGridView;->childWidth:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x4

    sub-int v9, v12, v3

    .local v9, l:I
    iget v3, p0, Lcom/android/settings/quicksettings/DraggableGridView;->childHeight:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x4

    sub-int v10, v13, v3

    .line 381
    .local v10, t:I
    iget v3, p0, Lcom/android/settings/quicksettings/DraggableGridView;->childWidth:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v9

    iget v4, p0, Lcom/android/settings/quicksettings/DraggableGridView;->childHeight:I

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v10

    invoke-virtual {v11, v9, v10, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 382
    new-instance v8, Landroid/view/animation/AnimationSet;

    invoke-direct {v8, v14}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 383
    .local v8, animSet:Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget v3, p0, Lcom/android/settings/quicksettings/DraggableGridView;->childWidth:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x4

    int-to-float v5, v3

    iget v3, p0, Lcom/android/settings/quicksettings/DraggableGridView;->childHeight:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x4

    int-to-float v6, v3

    move v3, v1

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 385
    .local v0, scale:Landroid/view/animation/ScaleAnimation;
    sget v1, Lcom/android/settings/quicksettings/DraggableGridView;->animT:I

    int-to-long v3, v1

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 386
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f00

    invoke-direct {v7, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 387
    .local v7, alpha:Landroid/view/animation/AlphaAnimation;
    sget v1, Lcom/android/settings/quicksettings/DraggableGridView;->animT:I

    int-to-long v1, v1

    invoke-virtual {v7, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 389
    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 390
    invoke-virtual {v8, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 391
    invoke-virtual {v8, v14}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    .line 392
    invoke-virtual {v8, v14}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 394
    invoke-virtual {v11}, Landroid/view/View;->clearAnimation()V

    .line 395
    invoke-virtual {v11, v8}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 396
    return-void
.end method

.method protected animateGap(I)V
    .locals 18
    .parameter "target"

    .prologue
    .line 399
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/quicksettings/DraggableGridView;->getChildCount()I

    move-result v2

    if-ge v10, v2, :cond_5

    .line 400
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/settings/quicksettings/DraggableGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 401
    .local v17, v:Landroid/view/View;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/quicksettings/DraggableGridView;->dragged:I

    if-ne v10, v2, :cond_1

    .line 399
    :cond_0
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 403
    :cond_1
    move v12, v10

    .line 404
    .local v12, newPos:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/quicksettings/DraggableGridView;->dragged:I

    move/from16 v0, p1

    if-ge v2, v0, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/quicksettings/DraggableGridView;->dragged:I

    add-int/lit8 v2, v2, 0x1

    if-lt v10, v2, :cond_4

    move/from16 v0, p1

    if-gt v10, v0, :cond_4

    .line 405
    add-int/lit8 v12, v12, -0x1

    .line 410
    :cond_2
    :goto_2
    move v15, v10

    .line 411
    .local v15, oldPos:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/quicksettings/DraggableGridView;->newPositions:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 412
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/quicksettings/DraggableGridView;->newPositions:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 413
    :cond_3
    if-eq v15, v12, :cond_0

    .line 416
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/quicksettings/DraggableGridView;->getCoorFromIndex(I)Landroid/graphics/Point;

    move-result-object v16

    .line 417
    .local v16, oldXY:Landroid/graphics/Point;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/quicksettings/DraggableGridView;->getCoorFromIndex(I)Landroid/graphics/Point;

    move-result-object v13

    .line 418
    .local v13, newXY:Landroid/graphics/Point;
    new-instance v14, Landroid/graphics/Point;

    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/Point;->x:I

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    move-object/from16 v0, v16

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-direct {v14, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 420
    .local v14, oldOffset:Landroid/graphics/Point;
    new-instance v11, Landroid/graphics/Point;

    iget v2, v13, Landroid/graphics/Point;->x:I

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, v13, Landroid/graphics/Point;->y:I

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-direct {v11, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 423
    .local v11, newOffset:Landroid/graphics/Point;
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x0

    iget v3, v14, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    const/4 v4, 0x0

    iget v5, v11, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    const/4 v6, 0x0

    iget v7, v14, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    const/4 v8, 0x0

    iget v9, v11, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 427
    .local v1, translate:Landroid/view/animation/TranslateAnimation;
    sget v2, Lcom/android/settings/quicksettings/DraggableGridView;->animT:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 428
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setFillEnabled(Z)V

    .line 429
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 430
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->clearAnimation()V

    .line 431
    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 433
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/quicksettings/DraggableGridView;->newPositions:Ljava/util/ArrayList;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v10, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 406
    .end local v1           #translate:Landroid/view/animation/TranslateAnimation;
    .end local v11           #newOffset:Landroid/graphics/Point;
    .end local v13           #newXY:Landroid/graphics/Point;
    .end local v14           #oldOffset:Landroid/graphics/Point;
    .end local v15           #oldPos:I
    .end local v16           #oldXY:Landroid/graphics/Point;
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/quicksettings/DraggableGridView;->dragged:I

    move/from16 v0, p1

    if-ge v0, v2, :cond_2

    move/from16 v0, p1

    if-lt v10, v0, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/quicksettings/DraggableGridView;->dragged:I

    if-ge v10, v2, :cond_2

    .line 407
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 435
    .end local v12           #newPos:I
    .end local v17           #v:Landroid/view/View;
    :cond_5
    return-void
.end method

.method protected clampScroll()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 478
    invoke-virtual {p0}, Lcom/android/settings/quicksettings/DraggableGridView;->getMaxScroll()I

    move-result v0

    .line 479
    .local v0, max:I
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 480
    iget v1, p0, Lcom/android/settings/quicksettings/DraggableGridView;->scroll:I

    if-gez v1, :cond_2

    .line 481
    iget-boolean v1, p0, Lcom/android/settings/quicksettings/DraggableGridView;->touching:Z

    if-nez v1, :cond_1

    .line 482
    iget v1, p0, Lcom/android/settings/quicksettings/DraggableGridView;->scroll:I

    iget v2, p0, Lcom/android/settings/quicksettings/DraggableGridView;->scroll:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/settings/quicksettings/DraggableGridView;->scroll:I

    .line 495
    :cond_0
    :goto_0
    return-void

    .line 484
    :cond_1
    iput v3, p0, Lcom/android/settings/quicksettings/DraggableGridView;->scroll:I

    .line 485
    iput v2, p0, Lcom/android/settings/quicksettings/DraggableGridView;->lastDelta:F

    goto :goto_0

    .line 487
    :cond_2
    iget v1, p0, Lcom/android/settings/quicksettings/DraggableGridView;->scroll:I

    if-le v1, v0, :cond_0

    .line 488
    iget-boolean v1, p0, Lcom/android/settings/quicksettings/DraggableGridView;->touching:Z

    if-nez v1, :cond_3

    .line 489
    iget v1, p0, Lcom/android/settings/quicksettings/DraggableGridView;->scroll:I

    iget v2, p0, Lcom/android/settings/quicksettings/DraggableGridView;->scroll:I

    sub-int v2, v0, v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/settings/quicksettings/DraggableGridView;->scroll:I

    goto :goto_0

    .line 491
    :cond_3
    iput v0, p0, Lcom/android/settings/quicksettings/DraggableGridView;->scroll:I

    .line 492
    iput v2, p0, Lcom/android/settings/quicksettings/DraggableGridView;->lastDelta:F

    goto :goto_0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2
    .parameter "childCount"
    .parameter "i"

    .prologue
    .line 183
    iget v0, p0, Lcom/android/settings/quicksettings/DraggableGridView;->dragged:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 189
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 185
    .restart local p2
    :cond_1
    add-int/lit8 v0, p1, -0x1

    if-ne p2, v0, :cond_2

    .line 186
    iget p2, p0, Lcom/android/settings/quicksettings/DraggableGridView;->dragged:I

    goto :goto_0

    .line 187
    :cond_2
    iget v0, p0, Lcom/android/settings/quicksettings/DraggableGridView;->dragged:I

    if-lt p2, v0, :cond_0

    .line 188
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method protected getColumnFromCoor(I)I
    .locals 3
    .parameter "coor"

    .prologue
    .line 203
    iget v1, p0, Lcom/android/settings/quicksettings/DraggableGridView;->cellGap:I

    sub-int/2addr p1, v1

    .line 204
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lez p1, :cond_1

    .line 205
    iget v1, p0, Lcom/android/settings/quicksettings/DraggableGridView;->childWidth:I

    if-ge p1, v1, :cond_0

    .line 209
    .end local v0           #i:I
    :goto_1
    return v0

    .line 207
    .restart local v0       #i:I
    :cond_0
    iget v1, p0, Lcom/android/settings/quicksettings/DraggableGridView;->childWidth:I

    iget v2, p0, Lcom/android/settings/quicksettings/DraggableGridView;->cellGap:I

    add-int/2addr v1, v2

    sub-int/2addr p1, v1

    .line 204
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 209
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method protected getCoorFromIndex(I)Landroid/graphics/Point;
    .locals 7
    .parameter "index"

    .prologue
    .line 246
    iget v2, p0, Lcom/android/settings/quicksettings/DraggableGridView;->colCount:I

    rem-int v0, p1, v2

    .line 247
    .local v0, col:I
    iget v2, p0, Lcom/android/settings/quicksettings/DraggableGridView;->colCount:I

    div-int v1, p1, v2

    .line 248
    .local v1, row:I
    new-instance v2, Landroid/graphics/Point;

    iget v3, p0, Lcom/android/settings/quicksettings/DraggableGridView;->cellGap:I

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/android/settings/quicksettings/DraggableGridView;->childWidth:I

    iget v5, p0, Lcom/android/settings/quicksettings/DraggableGridView;->cellGap:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    mul-int/2addr v4, v0

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/settings/quicksettings/DraggableGridView;->cellGap:I

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/android/settings/quicksettings/DraggableGridView;->childHeight:I

    iget v6, p0, Lcom/android/settings/quicksettings/DraggableGridView;->cellGap:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    mul-int/2addr v5, v1

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/settings/quicksettings/DraggableGridView;->scroll:I

    sub-int/2addr v4, v5

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    return-object v2
.end method

.method public getIndexFromCoor(II)I
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, -0x1

    .line 193
    invoke-virtual {p0, p1}, Lcom/android/settings/quicksettings/DraggableGridView;->getColumnFromCoor(I)I

    move-result v0

    .local v0, col:I
    iget v4, p0, Lcom/android/settings/quicksettings/DraggableGridView;->scroll:I

    add-int/2addr v4, p2

    invoke-virtual {p0, v4}, Lcom/android/settings/quicksettings/DraggableGridView;->getRowFromCoor(I)I

    move-result v2

    .line 194
    .local v2, row:I
    if-eq v0, v3, :cond_0

    if-ne v2, v3, :cond_2

    :cond_0
    move v1, v3

    .line 199
    :cond_1
    :goto_0
    return v1

    .line 196
    :cond_2
    iget v4, p0, Lcom/android/settings/quicksettings/DraggableGridView;->colCount:I

    mul-int/2addr v4, v2

    add-int v1, v4, v0

    .line 197
    .local v1, index:I
    invoke-virtual {p0}, Lcom/android/settings/quicksettings/DraggableGridView;->getChildCount()I

    move-result v4

    if-lt v1, v4, :cond_1

    move v1, v3

    .line 198
    goto :goto_0
.end method

.method public getLastIndex()I
    .locals 2

    .prologue
    .line 504
    iget v0, p0, Lcom/android/settings/quicksettings/DraggableGridView;->lastX:I

    iget v1, p0, Lcom/android/settings/quicksettings/DraggableGridView;->lastY:I

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/quicksettings/DraggableGridView;->getIndexFromCoor(II)I

    move-result v0

    return v0
.end method

.method protected getMaxScroll()I
    .locals 6

    .prologue
    .line 498
    invoke-virtual {p0}, Lcom/android/settings/quicksettings/DraggableGridView;->getChildCount()I

    move-result v2

    int-to-double v2, v2

    iget v4, p0, Lcom/android/settings/quicksettings/DraggableGridView;->colCount:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    .local v1, rowCount:I
    iget v2, p0, Lcom/android/settings/quicksettings/DraggableGridView;->childHeight:I

    mul-int/2addr v2, v1

    add-int/lit8 v3, v1, 0x1

    iget v4, p0, Lcom/android/settings/quicksettings/DraggableGridView;->cellGap:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/settings/quicksettings/DraggableGridView;->getHeight()I

    move-result v3

    sub-int v0, v2, v3

    .line 500
    .local v0, max:I
    return v0
.end method

.method protected getRowFromCoor(I)I
    .locals 3
    .parameter "coor"

    .prologue
    .line 213
    iget v1, p0, Lcom/android/settings/quicksettings/DraggableGridView;->cellGap:I

    sub-int/2addr p1, v1

    .line 214
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lez p1, :cond_1

    .line 215
    iget v1, p0, Lcom/android/settings/quicksettings/DraggableGridView;->childHeight:I

    if-ge p1, v1, :cond_0

    .line 219
    .end local v0           #i:I
    :goto_1
    return v0

    .line 217
    .restart local v0       #i:I
    :cond_0
    iget v1, p0, Lcom/android/settings/quicksettings/DraggableGridView;->childHeight:I

    iget v2, p0, Lcom/android/settings/quicksettings/DraggableGridView;->cellGap:I

    add-int/2addr v1, v2

    sub-int/2addr p1, v1

    .line 214
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 219
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method protected getTargetFromCoor(II)I
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, -0x1

    .line 223
    iget v4, p0, Lcom/android/settings/quicksettings/DraggableGridView;->scroll:I

    add-int/2addr v4, p2

    invoke-virtual {p0, v4}, Lcom/android/settings/quicksettings/DraggableGridView;->getRowFromCoor(I)I

    move-result v4

    if-ne v4, v3, :cond_1

    move v2, v3

    .line 242
    :cond_0
    :goto_0
    return v2

    .line 226
    :cond_1
    iget v4, p0, Lcom/android/settings/quicksettings/DraggableGridView;->childWidth:I

    div-int/lit8 v4, v4, 0x4

    sub-int v4, p1, v4

    invoke-virtual {p0, v4, p2}, Lcom/android/settings/quicksettings/DraggableGridView;->getIndexFromCoor(II)I

    move-result v0

    .line 227
    .local v0, leftPos:I
    iget v4, p0, Lcom/android/settings/quicksettings/DraggableGridView;->childWidth:I

    div-int/lit8 v4, v4, 0x4

    add-int/2addr v4, p1

    invoke-virtual {p0, v4, p2}, Lcom/android/settings/quicksettings/DraggableGridView;->getIndexFromCoor(II)I

    move-result v1

    .line 228
    .local v1, rightPos:I
    if-ne v0, v3, :cond_2

    if-ne v1, v3, :cond_2

    move v2, v3

    .line 230
    goto :goto_0

    .line 231
    :cond_2
    if-ne v0, v1, :cond_3

    move v2, v3

    .line 232
    goto :goto_0

    .line 234
    :cond_3
    const/4 v2, -0x1

    .line 235
    .local v2, target:I
    if-le v1, v3, :cond_5

    .line 236
    move v2, v1

    .line 239
    :cond_4
    :goto_1
    iget v3, p0, Lcom/android/settings/quicksettings/DraggableGridView;->dragged:I

    if-ge v3, v2, :cond_0

    .line 240
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 237
    :cond_5
    if-le v0, v3, :cond_4

    .line 238
    add-int/lit8 v2, v0, 0x1

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    .line 261
    iget-boolean v0, p0, Lcom/android/settings/quicksettings/DraggableGridView;->enabled:Z

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/android/settings/quicksettings/DraggableGridView;->secondaryOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/android/settings/quicksettings/DraggableGridView;->secondaryOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/android/settings/quicksettings/DraggableGridView;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/android/settings/quicksettings/DraggableGridView;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/settings/quicksettings/DraggableGridView;->getLastIndex()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/settings/quicksettings/DraggableGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/quicksettings/DraggableGridView;->getLastIndex()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/settings/quicksettings/DraggableGridView;->getLastIndex()I

    move-result v4

    iget v5, p0, Lcom/android/settings/quicksettings/DraggableGridView;->colCount:I

    div-int/2addr v4, v5

    int-to-long v4, v4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 269
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/android/settings/quicksettings/DraggableGridView;->getChildCount()I

    move-result v0

    .line 149
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 150
    invoke-virtual {p0, v1}, Lcom/android/settings/quicksettings/DraggableGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 151
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    .line 152
    invoke-virtual {p0, v1}, Lcom/android/settings/quicksettings/DraggableGridView;->getCoorFromIndex(I)Landroid/graphics/Point;

    move-result-object v3

    .line 153
    .local v3, xy:Landroid/graphics/Point;
    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v5, v3, Landroid/graphics/Point;->y:I

    iget v6, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v6, v7

    iget v7, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 149
    .end local v3           #xy:Landroid/graphics/Point;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 156
    .end local v2           #v:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .parameter "view"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 284
    iget-boolean v3, p0, Lcom/android/settings/quicksettings/DraggableGridView;->enabled:Z

    if-nez v3, :cond_1

    .line 293
    :cond_0
    :goto_0
    return v1

    .line 286
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/quicksettings/DraggableGridView;->getLastIndex()I

    move-result v0

    .line 287
    .local v0, index:I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/quicksettings/DraggableGridView;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v0, v3, :cond_0

    .line 288
    invoke-virtual {p0, v2}, Lcom/android/settings/quicksettings/DraggableGridView;->toggleAddDelete(Z)V

    .line 289
    iput v0, p0, Lcom/android/settings/quicksettings/DraggableGridView;->dragged:I

    .line 290
    invoke-virtual {p0}, Lcom/android/settings/quicksettings/DraggableGridView;->animateDragged()V

    move v1, v2

    .line 291
    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 9
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 161
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 162
    .local v5, width:I
    invoke-virtual {p0}, Lcom/android/settings/quicksettings/DraggableGridView;->getPaddingLeft()I

    move-result v6

    sub-int v6, v5, v6

    invoke-virtual {p0}, Lcom/android/settings/quicksettings/DraggableGridView;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/android/settings/quicksettings/DraggableGridView;->colCount:I

    add-int/lit8 v7, v7, -0x1

    iget v8, p0, Lcom/android/settings/quicksettings/DraggableGridView;->cellGap:I

    mul-int/2addr v7, v8

    sub-int v1, v6, v7

    .line 164
    .local v1, availableWidth:I
    int-to-float v6, v1

    iget v7, p0, Lcom/android/settings/quicksettings/DraggableGridView;->colCount:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    iput v6, p0, Lcom/android/settings/quicksettings/DraggableGridView;->childWidth:I

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/quicksettings/DraggableGridView;->getChildCount()I

    move-result v0

    .line 168
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 169
    invoke-virtual {p0, v2}, Lcom/android/settings/quicksettings/DraggableGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 170
    .local v4, v:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 171
    .local v3, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v6, p0, Lcom/android/settings/quicksettings/DraggableGridView;->childWidth:I

    iput v6, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 172
    iget v6, p0, Lcom/android/settings/quicksettings/DraggableGridView;->childHeight:I

    iput v6, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 173
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_0

    .line 174
    iget v6, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/high16 v7, 0x4000

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    iget v7, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v8, -0x8000

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {p0, v4, v6, v7}, Lcom/android/settings/quicksettings/DraggableGridView;->measureChild(Landroid/view/View;II)V

    .line 168
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 178
    .end local v3           #lp:Landroid/view/ViewGroup$LayoutParams;
    .end local v4           #v:Landroid/view/View;
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 179
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 15
    .parameter "view"
    .parameter "event"

    .prologue
    .line 297
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    .line 298
    .local v6, action:I
    and-int/lit16 v0, v6, 0xff

    packed-switch v0, :pswitch_data_0

    .line 370
    :goto_0
    iget v0, p0, Lcom/android/settings/quicksettings/DraggableGridView;->dragged:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 371
    const/4 v0, 0x1

    .line 372
    :goto_1
    return v0

    .line 300
    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/quicksettings/DraggableGridView;->enabled:Z

    .line 301
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/quicksettings/DraggableGridView;->lastX:I

    .line 302
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/quicksettings/DraggableGridView;->lastY:I

    .line 303
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/quicksettings/DraggableGridView;->touching:Z

    goto :goto_0

    .line 306
    :pswitch_1
    iget v0, p0, Lcom/android/settings/quicksettings/DraggableGridView;->lastY:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    sub-int v7, v0, v1

    .line 307
    .local v7, delta:I
    iget v0, p0, Lcom/android/settings/quicksettings/DraggableGridView;->dragged:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 309
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v12, v0

    .local v12, x:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v14, v0

    .line 310
    .local v14, y:I
    iget v0, p0, Lcom/android/settings/quicksettings/DraggableGridView;->childWidth:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    sub-int v8, v12, v0

    .local v8, l:I
    iget v0, p0, Lcom/android/settings/quicksettings/DraggableGridView;->childHeight:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    sub-int v9, v14, v0

    .line 311
    .local v9, t:I
    iget v0, p0, Lcom/android/settings/quicksettings/DraggableGridView;->dragged:I

    invoke-virtual {p0, v0}, Lcom/android/settings/quicksettings/DraggableGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/quicksettings/DraggableGridView;->childWidth:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v8

    iget v2, p0, Lcom/android/settings/quicksettings/DraggableGridView;->childHeight:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v9

    invoke-virtual {v0, v8, v9, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 315
    invoke-virtual {p0, v12, v14}, Lcom/android/settings/quicksettings/DraggableGridView;->getTargetFromCoor(II)I

    move-result v10

    .line 317
    .local v10, target:I
    invoke-virtual {p0, v12, v14}, Lcom/android/settings/quicksettings/DraggableGridView;->getIndexFromCoor(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/quicksettings/DraggableGridView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 318
    iget v0, p0, Lcom/android/settings/quicksettings/DraggableGridView;->dragged:I

    invoke-virtual {p0, v0}, Lcom/android/settings/quicksettings/DraggableGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/high16 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 319
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/quicksettings/DraggableGridView;->isDelete:Z

    goto :goto_0

    .line 322
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/quicksettings/DraggableGridView;->isDelete:Z

    .line 323
    iget v0, p0, Lcom/android/settings/quicksettings/DraggableGridView;->dragged:I

    invoke-virtual {p0, v0}, Lcom/android/settings/quicksettings/DraggableGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "#AA222222"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 325
    iget v0, p0, Lcom/android/settings/quicksettings/DraggableGridView;->lastTarget:I

    if-eq v0, v10, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/quicksettings/DraggableGridView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq v10, v0, :cond_1

    .line 326
    const/4 v0, -0x1

    if-eq v10, v0, :cond_1

    .line 327
    invoke-virtual {p0, v10}, Lcom/android/settings/quicksettings/DraggableGridView;->animateGap(I)V

    .line 328
    iput v10, p0, Lcom/android/settings/quicksettings/DraggableGridView;->lastTarget:I

    .line 338
    .end local v8           #l:I
    .end local v9           #t:I
    .end local v10           #target:I
    .end local v12           #x:I
    .end local v14           #y:I
    :cond_1
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/quicksettings/DraggableGridView;->lastX:I

    .line 339
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/quicksettings/DraggableGridView;->lastY:I

    .line 340
    int-to-float v0, v7

    iput v0, p0, Lcom/android/settings/quicksettings/DraggableGridView;->lastDelta:F

    goto/16 :goto_0

    .line 332
    :cond_2
    iget v0, p0, Lcom/android/settings/quicksettings/DraggableGridView;->scroll:I

    add-int/2addr v0, v7

    iput v0, p0, Lcom/android/settings/quicksettings/DraggableGridView;->scroll:I

    .line 333
    invoke-virtual {p0}, Lcom/android/settings/quicksettings/DraggableGridView;->clampScroll()V

    .line 334
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_3

    .line 335
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/quicksettings/DraggableGridView;->enabled:Z

    .line 336
    :cond_3
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/settings/quicksettings/DraggableGridView;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/quicksettings/DraggableGridView;->getTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/settings/quicksettings/DraggableGridView;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/settings/quicksettings/DraggableGridView;->getBottom()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/quicksettings/DraggableGridView;->onLayout(ZIIII)V

    goto :goto_2

    .line 343
    .end local v7           #delta:I
    :pswitch_2
    iget v0, p0, Lcom/android/settings/quicksettings/DraggableGridView;->dragged:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    .line 344
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/quicksettings/DraggableGridView;->toggleAddDelete(Z)V

    .line 345
    iget v0, p0, Lcom/android/settings/quicksettings/DraggableGridView;->dragged:I

    invoke-virtual {p0, v0}, Lcom/android/settings/quicksettings/DraggableGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 346
    .local v11, v:Landroid/view/View;
    iget v0, p0, Lcom/android/settings/quicksettings/DraggableGridView;->lastTarget:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    iget-boolean v0, p0, Lcom/android/settings/quicksettings/DraggableGridView;->isDelete:Z

    if-nez v0, :cond_6

    .line 347
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/quicksettings/DraggableGridView;->reorderChildren(Z)V

    .line 352
    :goto_3
    invoke-virtual {v11}, Landroid/view/View;->clearAnimation()V

    .line 353
    instance-of v0, v11, Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 354
    check-cast v11, Landroid/widget/ImageView;

    .end local v11           #v:Landroid/view/View;
    const/16 v0, 0xff

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 355
    :cond_4
    iget-boolean v0, p0, Lcom/android/settings/quicksettings/DraggableGridView;->isDelete:Z

    if-eqz v0, :cond_5

    .line 356
    iget v0, p0, Lcom/android/settings/quicksettings/DraggableGridView;->dragged:I

    iput v0, p0, Lcom/android/settings/quicksettings/DraggableGridView;->lastTarget:I

    .line 357
    iget v0, p0, Lcom/android/settings/quicksettings/DraggableGridView;->dragged:I

    invoke-virtual {p0, v0}, Lcom/android/settings/quicksettings/DraggableGridView;->removeViewAt(I)V

    .line 358
    iget-object v0, p0, Lcom/android/settings/quicksettings/DraggableGridView;->onRearrangeListener:Lcom/android/settings/quicksettings/DraggableGridView$OnRearrangeListener;

    iget v1, p0, Lcom/android/settings/quicksettings/DraggableGridView;->dragged:I

    invoke-interface {v0, v1}, Lcom/android/settings/quicksettings/DraggableGridView$OnRearrangeListener;->onDelete(I)V

    .line 359
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/quicksettings/DraggableGridView;->reorderChildren(Z)V

    .line 361
    :cond_5
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/quicksettings/DraggableGridView;->lastTarget:I

    .line 362
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/quicksettings/DraggableGridView;->dragged:I

    .line 366
    :goto_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/quicksettings/DraggableGridView;->touching:Z

    .line 367
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/quicksettings/DraggableGridView;->isDelete:Z

    goto/16 :goto_0

    .line 349
    .restart local v11       #v:Landroid/view/View;
    :cond_6
    iget v0, p0, Lcom/android/settings/quicksettings/DraggableGridView;->dragged:I

    invoke-virtual {p0, v0}, Lcom/android/settings/quicksettings/DraggableGridView;->getCoorFromIndex(I)Landroid/graphics/Point;

    move-result-object v13

    .line 350
    .local v13, xy:Landroid/graphics/Point;
    iget v0, v13, Landroid/graphics/Point;->x:I

    iget v1, v13, Landroid/graphics/Point;->y:I

    iget v2, v13, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/android/settings/quicksettings/DraggableGridView;->childWidth:I

    add-int/2addr v2, v3

    iget v3, v13, Landroid/graphics/Point;->y:I

    iget v4, p0, Lcom/android/settings/quicksettings/DraggableGridView;->childHeight:I

    add-int/2addr v3, v4

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto :goto_3

    .line 364
    .end local v11           #v:Landroid/view/View;
    .end local v13           #xy:Landroid/graphics/Point;
    :cond_7
    iget-object v0, p0, Lcom/android/settings/quicksettings/DraggableGridView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/quicksettings/DraggableGridView;->updateTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    .line 372
    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 298
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public removeViewAt(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 142
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 143
    iget-object v0, p0, Lcom/android/settings/quicksettings/DraggableGridView;->newPositions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 144
    return-void
.end method

.method protected reorderChildren(Z)V
    .locals 8
    .parameter "notify"

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/settings/quicksettings/DraggableGridView;->onRearrangeListener:Lcom/android/settings/quicksettings/DraggableGridView$OnRearrangeListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 439
    iget-object v0, p0, Lcom/android/settings/quicksettings/DraggableGridView;->onRearrangeListener:Lcom/android/settings/quicksettings/DraggableGridView$OnRearrangeListener;

    iget v1, p0, Lcom/android/settings/quicksettings/DraggableGridView;->dragged:I

    iget v2, p0, Lcom/android/settings/quicksettings/DraggableGridView;->lastTarget:I

    invoke-interface {v0, v1, v2}, Lcom/android/settings/quicksettings/DraggableGridView$OnRearrangeListener;->onRearrange(II)V

    .line 440
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 441
    .local v6, children:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/quicksettings/DraggableGridView;->getChildCount()I

    move-result v0

    if-ge v7, v0, :cond_1

    .line 442
    invoke-virtual {p0, v7}, Lcom/android/settings/quicksettings/DraggableGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 443
    invoke-virtual {p0, v7}, Lcom/android/settings/quicksettings/DraggableGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 445
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/quicksettings/DraggableGridView;->removeAllViews()V

    .line 446
    :cond_2
    :goto_1
    iget v0, p0, Lcom/android/settings/quicksettings/DraggableGridView;->dragged:I

    iget v1, p0, Lcom/android/settings/quicksettings/DraggableGridView;->lastTarget:I

    if-eq v0, v1, :cond_5

    .line 447
    iget v0, p0, Lcom/android/settings/quicksettings/DraggableGridView;->lastTarget:I

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 450
    iget v0, p0, Lcom/android/settings/quicksettings/DraggableGridView;->dragged:I

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    iget v0, p0, Lcom/android/settings/quicksettings/DraggableGridView;->lastTarget:I

    iput v0, p0, Lcom/android/settings/quicksettings/DraggableGridView;->dragged:I

    goto :goto_1

    .line 452
    :cond_3
    iget v0, p0, Lcom/android/settings/quicksettings/DraggableGridView;->dragged:I

    iget v1, p0, Lcom/android/settings/quicksettings/DraggableGridView;->lastTarget:I

    if-ge v0, v1, :cond_4

    .line 454
    iget v0, p0, Lcom/android/settings/quicksettings/DraggableGridView;->dragged:I

    iget v1, p0, Lcom/android/settings/quicksettings/DraggableGridView;->dragged:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v6, v0, v1}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 455
    iget v0, p0, Lcom/android/settings/quicksettings/DraggableGridView;->dragged:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/quicksettings/DraggableGridView;->dragged:I

    goto :goto_1

    .line 456
    :cond_4
    iget v0, p0, Lcom/android/settings/quicksettings/DraggableGridView;->dragged:I

    iget v1, p0, Lcom/android/settings/quicksettings/DraggableGridView;->lastTarget:I

    if-le v0, v1, :cond_2

    .line 458
    iget v0, p0, Lcom/android/settings/quicksettings/DraggableGridView;->dragged:I

    iget v1, p0, Lcom/android/settings/quicksettings/DraggableGridView;->dragged:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v6, v0, v1}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 459
    iget v0, p0, Lcom/android/settings/quicksettings/DraggableGridView;->dragged:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/quicksettings/DraggableGridView;->dragged:I

    goto :goto_1

    .line 461
    :cond_5
    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_6

    .line 462
    iget-object v0, p0, Lcom/android/settings/quicksettings/DraggableGridView;->newPositions:Ljava/util/ArrayList;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 463
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/settings/quicksettings/DraggableGridView;->addView(Landroid/view/View;)V

    .line 461
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 465
    :cond_6
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/settings/quicksettings/DraggableGridView;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/quicksettings/DraggableGridView;->getTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/settings/quicksettings/DraggableGridView;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/settings/quicksettings/DraggableGridView;->getBottom()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/quicksettings/DraggableGridView;->onLayout(ZIIII)V

    .line 466
    return-void
.end method

.method public setCellGap(I)V
    .locals 0
    .parameter "gap"

    .prologue
    .line 98
    iput p1, p0, Lcom/android/settings/quicksettings/DraggableGridView;->cellGap:I

    .line 99
    return-void
.end method

.method public setCellHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 94
    iput p1, p0, Lcom/android/settings/quicksettings/DraggableGridView;->childHeight:I

    .line 95
    return-void
.end method

.method public setColumnCount(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 90
    iput p1, p0, Lcom/android/settings/quicksettings/DraggableGridView;->colCount:I

    .line 91
    return-void
.end method

.method protected setListeners()V
    .locals 0

    .prologue
    .line 76
    invoke-virtual {p0, p0}, Lcom/android/settings/quicksettings/DraggableGridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 77
    invoke-super {p0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    invoke-virtual {p0, p0}, Lcom/android/settings/quicksettings/DraggableGridView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 79
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/settings/quicksettings/DraggableGridView;->secondaryOnClickListener:Landroid/view/View$OnClickListener;

    .line 104
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 512
    iput-object p1, p0, Lcom/android/settings/quicksettings/DraggableGridView;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 513
    return-void
.end method

.method public setOnRearrangeListener(Lcom/android/settings/quicksettings/DraggableGridView$OnRearrangeListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 508
    iput-object p1, p0, Lcom/android/settings/quicksettings/DraggableGridView;->onRearrangeListener:Lcom/android/settings/quicksettings/DraggableGridView$OnRearrangeListener;

    .line 509
    return-void
.end method

.method toggleAddDelete(Z)V
    .locals 6
    .parameter "delete"

    .prologue
    const/4 v5, 0x0

    .line 272
    const v1, 0x7f02007e

    .line 273
    .local v1, resid:I
    const v2, 0x7f0800be

    .line 274
    .local v2, stringid:I
    if-eqz p1, :cond_0

    .line 275
    const v1, 0x7f020081

    .line 276
    const v2, 0x7f080140

    .line 278
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/quicksettings/DraggableGridView;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Lcom/android/settings/quicksettings/DraggableGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0d01b8

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 279
    .local v0, addDeleteTile:Landroid/widget/TextView;
    invoke-virtual {v0, v5, v1, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 280
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 281
    return-void
.end method
