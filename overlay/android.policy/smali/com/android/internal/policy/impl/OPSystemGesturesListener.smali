.class public Lcom/android/internal/policy/impl/OPSystemGesturesListener;
.super Ljava/lang/Object;
.source "OPSystemGesturesListener.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/OPSystemGesturesListener$Callbacks;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final MAX_TRACKED_POINTERS:I = 0x20

.field private static final NUM_POINTER_SCREENSHOT:I = 0x3

.field private static final SWIPE_TIMEOUT_MS:J = 0x1f4L

.field private static final TAG:Ljava/lang/String; = "OPGestures"

.field private static final THREE_SWIPE_DISTANCE:I = 0x15e

.field private static final UNTRACKED_POINTER:I = -0x1


# instance fields
.field private final GESTURE_THREE_SWIPE_MASK:I

.field private final POINTER_1_MASK:I

.field private final POINTER_2_MASK:I

.field private final POINTER_3_MASK:I

.field private final POINTER_NONE_MASK:I

.field private final mCallbacks:Lcom/android/internal/policy/impl/OPSystemGesturesListener$Callbacks;

.field private final mDownPointerId:[I

.field private mDownPointers:I

.field private final mDownTime:[J

.field private final mDownX:[F

.field private final mDownY:[F

.field private mSwipeFireable:Z

.field private mSwipeMask:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/OPSystemGesturesListener$Callbacks;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callbacks"    # Lcom/android/internal/policy/impl/OPSystemGesturesListener$Callbacks;

    .prologue
    const/4 v2, 0x1

    const/16 v1, 0x20

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/internal/policy/impl/OPSystemGesturesListener;->mDownPointerId:[I

    .line 40
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/internal/policy/impl/OPSystemGesturesListener;->mDownX:[F

    .line 41
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/internal/policy/impl/OPSystemGesturesListener;->mDownY:[F

    .line 42
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/android/internal/policy/impl/OPSystemGesturesListener;->mDownTime:[J

    .line 44
    iput v2, p0, Lcom/android/internal/policy/impl/OPSystemGesturesListener;->POINTER_NONE_MASK:I

    .line 45
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/impl/OPSystemGesturesListener;->POINTER_1_MASK:I

    .line 46
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/impl/OPSystemGesturesListener;->POINTER_2_MASK:I

    .line 47
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/internal/policy/impl/OPSystemGesturesListener;->POINTER_3_MASK:I

    .line 49
    iput v2, p0, Lcom/android/internal/policy/impl/OPSystemGesturesListener;->mSwipeMask:I

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/OPSystemGesturesListener;->mSwipeFireable:Z

    .line 55
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/internal/policy/impl/OPSystemGesturesListener;->GESTURE_THREE_SWIPE_MASK:I

    .line 59
    const-string v0, "callbacks"

    invoke-static {v0, p2}, Lcom/android/internal/policy/impl/OPSystemGesturesListener;->checkNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/OPSystemGesturesListener$Callbacks;

    iput-object v0, p0, Lcom/android/internal/policy/impl/OPSystemGesturesListener;->mCallbacks:Lcom/android/internal/policy/impl/OPSystemGesturesListener$Callbacks;

    .line 60
    return-void
.end method

.method private captureDown(Landroid/view/MotionEvent;I)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    .prologue
    .line 99
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 100
    .local v2, "pointerId":I
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/OPSystemGesturesListener;->findIndex(I)I

    move-result v0

    .line 101
    .local v0, "i":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 102
    .local v1, "pointerCount":I
    const-string v3, "OPGestures"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pointer "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " down pointerIndex="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " trackingIndex="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " pointerCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 105
    iget-object v3, p0, Lcom/android/internal/policy/impl/OPSystemGesturesListener;->mDownX:[F

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    aput v4, v3, v0

    .line 106
    iget-object v3, p0, Lcom/android/internal/policy/impl/OPSystemGesturesListener;->mDownY:[F

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    aput v4, v3, v0

    .line 107
    iget-object v3, p0, Lcom/android/internal/policy/impl/OPSystemGesturesListener;->mDownTime:[J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    aput-wide v4, v3, v0

    .line 108
    const-string v3, "OPGestures"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pointer "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " down x="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/OPSystemGesturesListener;->mDownX:[F

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " y="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/OPSystemGesturesListener;->mDownY:[F

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_0
    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    .line 114
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/OPSystemGesturesListener;->mSwipeFireable:Z

    .line 117
    :goto_0
    return-void

    .line 116
    :cond_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/OPSystemGesturesListener;->mSwipeFireable:Z

    goto :goto_0
.end method

.method private static checkNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "arg":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_0

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must not be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    return-object p1
.end method

.method private detectSwipe(IJFF)V
    .locals 8
    .param p1, "i"    # I
    .param p2, "time"    # J
    .param p4, "x"    # F
    .param p5, "y"    # F

    .prologue
    .line 146
    iget-object v4, p0, Lcom/android/internal/policy/impl/OPSystemGesturesListener;->mDownX:[F

    aget v2, v4, p1

    .line 147
    .local v2, "fromX":F
    iget-object v4, p0, Lcom/android/internal/policy/impl/OPSystemGesturesListener;->mDownY:[F

    aget v3, v4, p1

    .line 148
    .local v3, "fromY":F
    iget-object v4, p0, Lcom/android/internal/policy/impl/OPSystemGesturesListener;->mDownTime:[J

    aget-wide v4, v4, p1

    sub-long v0, p2, v4

    .line 149
    .local v0, "elapsed":J
    const-string v4, "OPGestures"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pointer "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/OPSystemGesturesListener;->mDownPointerId:[I

    aget v6, v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " moved ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const/high16 v4, 0x43af0000    # 350.0f

    add-float/2addr v4, v3

    cmpl-float v4, p5, v4

    if-lez v4, :cond_0

    const-wide/16 v4, 0x1f4

    cmp-long v4, v0, v4

    if-gez v4, :cond_0

    iget v4, p0, Lcom/android/internal/policy/impl/OPSystemGesturesListener;->mSwipeMask:I

    const/16 v5, 0xf

    if-ge v4, v5, :cond_0

    .line 156
    iget v4, p0, Lcom/android/internal/policy/impl/OPSystemGesturesListener;->mSwipeMask:I

    const/4 v5, 0x1

    add-int/lit8 v6, p1, 0x1

    shl-int/2addr v5, v6

    or-int/2addr v4, v5

    iput v4, p0, Lcom/android/internal/policy/impl/OPSystemGesturesListener;->mSwipeMask:I

    .line 157
    const-string v4, "OPGestures"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "swipe mask = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/policy/impl/OPSystemGesturesListener;->mSwipeMask:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_0
    return-void
.end method

.method private detectSwipe(Landroid/view/MotionEvent;)V
    .locals 10
    .param p1, "move"    # Landroid/view/MotionEvent;

    .prologue
    .line 133
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v6

    .line 134
    .local v6, "historySize":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    .line 136
    .local v8, "pointerCount":I
    const/4 v7, 0x0

    .local v7, "p":I
    :goto_0
    if-ge v7, v8, :cond_1

    .line 137
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    .line 138
    .local v9, "pointerId":I
    invoke-direct {p0, v9}, Lcom/android/internal/policy/impl/OPSystemGesturesListener;->findIndex(I)I

    move-result v1

    .line 139
    .local v1, "i":I
    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    .line 140
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/OPSystemGesturesListener;->detectSwipe(IJFF)V

    .line 136
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 143
    .end local v1    # "i":I
    .end local v9    # "pointerId":I
    :cond_1
    return-void
.end method

.method private findIndex(I)I
    .locals 4
    .param p1, "pointerId"    # I

    .prologue
    const/4 v1, -0x1

    .line 120
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/internal/policy/impl/OPSystemGesturesListener;->mDownPointers:I

    if-ge v0, v2, :cond_1

    .line 121
    iget-object v2, p0, Lcom/android/internal/policy/impl/OPSystemGesturesListener;->mDownPointerId:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_0

    .line 129
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 120
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    :cond_1
    iget v2, p0, Lcom/android/internal/policy/impl/OPSystemGesturesListener;->mDownPointers:I

    const/16 v3, 0x20

    if-eq v2, v3, :cond_2

    if-ne p1, v1, :cond_3

    :cond_2
    move v0, v1

    .line 126
    goto :goto_1

    .line 128
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/OPSystemGesturesListener;->mDownPointerId:[I

    iget v2, p0, Lcom/android/internal/policy/impl/OPSystemGesturesListener;->mDownPointers:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/policy/impl/OPSystemGesturesListener;->mDownPointers:I

    aput p1, v1, v2

    .line 129
    iget v1, p0, Lcom/android/internal/policy/impl/OPSystemGesturesListener;->mDownPointers:I

    add-int/lit8 v0, v1, -0x1

    goto :goto_1
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 72
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 94
    :pswitch_0
    const-string v0, "OPGestures"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 74
    :pswitch_1
    iput v2, p0, Lcom/android/internal/policy/impl/OPSystemGesturesListener;->mDownPointers:I

    .line 75
    invoke-direct {p0, p1, v2}, Lcom/android/internal/policy/impl/OPSystemGesturesListener;->captureDown(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 78
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/OPSystemGesturesListener;->captureDown(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 81
    :pswitch_3
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OPSystemGesturesListener;->mSwipeFireable:Z

    if-eqz v0, :cond_0

    .line 82
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/OPSystemGesturesListener;->detectSwipe(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 86
    :pswitch_4
    iget v0, p0, Lcom/android/internal/policy/impl/OPSystemGesturesListener;->mSwipeMask:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    .line 87
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/OPSystemGesturesListener;->mSwipeMask:I

    .line 88
    iget-object v0, p0, Lcom/android/internal/policy/impl/OPSystemGesturesListener;->mCallbacks:Lcom/android/internal/policy/impl/OPSystemGesturesListener$Callbacks;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/OPSystemGesturesListener$Callbacks;->onSwipeThreeFinger()V

    .line 91
    :cond_1
    :pswitch_5
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OPSystemGesturesListener;->mSwipeFireable:Z

    goto :goto_0

    .line 72
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
