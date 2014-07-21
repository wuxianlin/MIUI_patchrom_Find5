.class public Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;
.super Landroid/widget/ListView;
.source "TouchInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/cyanogenmod/TouchInterceptor$DropListener;,
        Lcom/android/settings_ex/cyanogenmod/TouchInterceptor$DragListener;
    }
.end annotation


# instance fields
.field private mCoordOffset:I

.field private mDragBitmap:Landroid/graphics/Bitmap;

.field private mDragListener:Lcom/android/settings_ex/cyanogenmod/TouchInterceptor$DragListener;

.field private mDragPoint:I

.field private mDragPos:I

.field private mDragView:Landroid/widget/ImageView;

.field private mDropListener:Lcom/android/settings_ex/cyanogenmod/TouchInterceptor$DropListener;

.field private mFirstDragPos:I

.field private mHeight:I

.field private mItemHeightExpanded:I

.field private mItemHeightHalf:I

.field private mItemHeightNormal:I

.field private mLowerBound:I

.field private mTempRect:Landroid/graphics/Rect;

.field private final mTouchSlop:I

.field private mUpperBound:I

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mTempRect:Landroid/graphics/Rect;

    .line 62
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mTouchSlop:I

    .line 63
    invoke-virtual {p0}, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 64
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f070008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mItemHeightNormal:I

    .line 65
    iget v1, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mItemHeightNormal:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mItemHeightHalf:I

    .line 66
    const v1, 0x7f070009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mItemHeightExpanded:I

    .line 67
    return-void
.end method

.method private adjustScrollBounds(I)V
    .locals 1
    .parameter "y"

    .prologue
    .line 158
    iget v0, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mHeight:I

    div-int/lit8 v0, v0, 0x3

    if-lt p1, v0, :cond_0

    .line 159
    iget v0, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mHeight:I

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mUpperBound:I

    .line 161
    :cond_0
    iget v0, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mHeight:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    if-gt p1, v0, :cond_1

    .line 162
    iget v0, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mHeight:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mLowerBound:I

    .line 164
    :cond_1
    return-void
.end method

.method private doExpansion()V
    .locals 9

    .prologue
    .line 207
    iget v7, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mDragPos:I

    invoke-virtual {p0}, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->getFirstVisiblePosition()I

    move-result v8

    sub-int v0, v7, v8

    .line 208
    .local v0, childnum:I
    iget v7, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mDragPos:I

    iget v8, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mFirstDragPos:I

    if-le v7, v8, :cond_0

    .line 209
    add-int/lit8 v0, v0, 0x1

    .line 212
    :cond_0
    iget v7, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mFirstDragPos:I

    invoke-virtual {p0}, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->getFirstVisiblePosition()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 214
    .local v1, first:Landroid/view/View;
    const/4 v3, 0x0

    .line 215
    .local v3, i:I
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 216
    .local v6, vv:Landroid/view/View;
    if-nez v6, :cond_1

    .line 240
    return-void

    .line 219
    :cond_1
    iget v2, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mItemHeightNormal:I

    .line 220
    .local v2, height:I
    const/4 v5, 0x0

    .line 221
    .local v5, visibility:I
    invoke-virtual {v6, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 223
    iget v7, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mDragPos:I

    iget v8, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mFirstDragPos:I

    if-ne v7, v8, :cond_3

    .line 225
    const/4 v5, 0x4

    .line 235
    :cond_2
    :goto_1
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 236
    .local v4, params:Landroid/view/ViewGroup$LayoutParams;
    iput v2, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 237
    invoke-virtual {v6, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 214
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 228
    .end local v4           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    const/4 v2, 0x1

    goto :goto_1

    .line 230
    :cond_4
    if-ne v3, v0, :cond_2

    .line 231
    iget v7, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mDragPos:I

    invoke-virtual {p0}, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->getCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ge v7, v8, :cond_2

    .line 232
    iget v2, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mItemHeightExpanded:I

    goto :goto_1
.end method

.method private dragView(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mDragPoint:I

    sub-int v1, p2, v1

    iget v2, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mCoordOffset:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 335
    iget-object v0, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mDragView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 336
    return-void
.end method

.method private getItemForPosition(I)I
    .locals 4
    .parameter "y"

    .prologue
    .line 143
    iget v2, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mDragPoint:I

    sub-int v2, p1, v2

    iget v3, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mItemHeightHalf:I

    sub-int v0, v2, v3

    .line 144
    .local v0, adjustedy:I
    const/4 v2, 0x0

    invoke-direct {p0, v2, v0}, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->myPointToPosition(II)I

    move-result v1

    .line 145
    .local v1, pos:I
    if-ltz v1, :cond_1

    .line 146
    iget v2, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mFirstDragPos:I

    if-gt v1, v2, :cond_0

    .line 147
    add-int/lit8 v1, v1, 0x1

    .line 154
    :cond_0
    :goto_0
    return v1

    .line 149
    :cond_1
    if-gez v0, :cond_0

    .line 152
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private myPointToPosition(II)I
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 121
    if-gez p2, :cond_0

    .line 124
    iget v5, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mItemHeightNormal:I

    add-int/2addr v5, p2

    invoke-direct {p0, p1, v5}, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->myPointToPosition(II)I

    move-result v4

    .line 125
    .local v4, pos:I
    if-lez v4, :cond_0

    .line 126
    add-int/lit8 v5, v4, -0x1

    .line 139
    .end local v4           #pos:I
    :goto_0
    return v5

    .line 130
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mTempRect:Landroid/graphics/Rect;

    .line 131
    .local v2, frame:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->getChildCount()I

    move-result v1

    .line 132
    .local v1, count:I
    add-int/lit8 v3, v1, -0x1

    .local v3, i:I
    :goto_1
    if-ltz v3, :cond_2

    .line 133
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 134
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 135
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 136
    invoke-virtual {p0}, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->getFirstVisiblePosition()I

    move-result v5

    add-int/2addr v5, v3

    goto :goto_0

    .line 132
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 139
    .end local v0           #child:Landroid/view/View;
    :cond_2
    const/4 v5, -0x1

    goto :goto_0
.end method

.method private startDragging(Landroid/graphics/Bitmap;II)V
    .locals 7
    .parameter "bm"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v6, -0x2

    .line 303
    invoke-direct {p0}, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->stopDragging()V

    .line 305
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v3}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v3, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 306
    iget-object v3, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x33

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 307
    iget-object v3, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput p2, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 308
    iget-object v3, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mDragPoint:I

    sub-int v4, p3, v4

    iget v5, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mCoordOffset:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 310
    iget-object v3, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 311
    iget-object v3, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 312
    iget-object v3, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x398

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 317
    iget-object v3, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v4, -0x3

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 318
    iget-object v3, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v4, 0x0

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 320
    invoke-virtual {p0}, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 321
    .local v1, context:Landroid/content/Context;
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 322
    .local v2, v:Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1060013

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 323
    .local v0, backGroundColor:I
    const v3, 0x3f333333

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 324
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 325
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 326
    iput-object p1, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 328
    const-string v3, "window"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    iput-object v3, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mWindowManager:Landroid/view/WindowManager;

    .line 329
    iget-object v3, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v3, v2, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 330
    iput-object v2, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mDragView:Landroid/widget/ImageView;

    .line 331
    return-void
.end method

.method private stopDragging()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 339
    iget-object v1, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mDragView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 340
    iget-object v1, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mDragView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 341
    invoke-virtual {p0}, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 342
    .local v0, wm:Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mDragView:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 343
    iget-object v1, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 344
    iput-object v3, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mDragView:Landroid/widget/ImageView;

    .line 346
    .end local v0           #wm:Landroid/view/WindowManager;
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mDragBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 347
    iget-object v1, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 348
    iput-object v3, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 350
    :cond_1
    return-void
.end method

.method private unExpandViews(Z)V
    .locals 7
    .parameter "deletion"

    .prologue
    const/4 v6, 0x0

    .line 170
    const/4 v0, 0x0

    .line 171
    .local v0, i:I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 172
    .local v3, v:Landroid/view/View;
    if-nez v3, :cond_1

    .line 173
    if-eqz p1, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->getFirstVisiblePosition()I

    move-result v2

    .line 176
    .local v2, position:I
    invoke-virtual {p0, v6}, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    .line 177
    .local v4, y:I
    invoke-virtual {p0}, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 178
    invoke-virtual {p0, v2, v4}, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->setSelectionFromTop(II)V

    .line 181
    .end local v2           #position:I
    .end local v4           #y:I
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->layoutChildren()V

    .line 182
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 183
    if-nez v3, :cond_1

    .line 195
    return-void

    .line 187
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 188
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    iget v5, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mItemHeightNormal:I

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 189
    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 193
    invoke-virtual {v3, v6}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "ev"

    .prologue
    const/4 v10, 0x0

    .line 71
    iget-object v11, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mDragListener:Lcom/android/settings_ex/cyanogenmod/TouchInterceptor$DragListener;

    if-nez v11, :cond_0

    iget-object v11, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mDropListener:Lcom/android/settings_ex/cyanogenmod/TouchInterceptor$DropListener;

    if-eqz v11, :cond_1

    .line 72
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    packed-switch v11, :pswitch_data_0

    .line 112
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v10

    :goto_1
    return v10

    .line 74
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    float-to-int v6, v11

    .line 75
    .local v6, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    float-to-int v9, v11

    .line 76
    .local v9, y:I
    invoke-virtual {p0, v6, v9}, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->pointToPosition(II)I

    move-result v4

    .line 77
    .local v4, itemnum:I
    const/4 v11, -0x1

    if-eq v4, v11, :cond_1

    .line 80
    invoke-virtual {p0}, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->getFirstVisiblePosition()I

    move-result v11

    sub-int v11, v4, v11

    invoke-virtual {p0, v11}, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 81
    .local v2, item:Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTop()I

    move-result v11

    sub-int v11, v9, v11

    iput v11, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mDragPoint:I

    .line 82
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v11

    float-to-int v11, v11

    sub-int/2addr v11, v9

    iput v11, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mCoordOffset:I

    .line 83
    const v11, 0x7f0d028e

    invoke-virtual {v2, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 86
    .local v1, dragger:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v11

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    sub-int v7, v11, v12

    .line 87
    .local v7, x1:I
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v11

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    add-int v8, v11, v12

    .line 88
    .local v8, x2:I
    if-le v6, v7, :cond_2

    if-ge v6, v8, :cond_2

    .line 90
    const/4 v11, 0x2

    new-array v3, v11, [I

    .line 91
    .local v3, itemPos:[I
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 93
    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Landroid/view/ViewGroup;->setDrawingCacheEnabled(Z)V

    .line 98
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-static {v11}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 99
    .local v0, bitmap:Landroid/graphics/Bitmap;
    aget v11, v3, v10

    invoke-direct {p0, v0, v11, v9}, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->startDragging(Landroid/graphics/Bitmap;II)V

    .line 100
    iput v4, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mDragPos:I

    .line 101
    iget v11, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mDragPos:I

    iput v11, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mFirstDragPos:I

    .line 102
    invoke-virtual {p0}, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->getHeight()I

    move-result v11

    iput v11, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mHeight:I

    .line 103
    iget v5, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mTouchSlop:I

    .line 104
    .local v5, touchSlop:I
    sub-int v11, v9, v5

    iget v12, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mHeight:I

    div-int/lit8 v12, v12, 0x3

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    iput v11, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mUpperBound:I

    .line 105
    add-int v11, v9, v5

    iget v12, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mHeight:I

    mul-int/lit8 v12, v12, 0x2

    div-int/lit8 v12, v12, 0x3

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    iput v11, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mLowerBound:I

    goto/16 :goto_1

    .line 108
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #itemPos:[I
    .end local v5           #touchSlop:I
    :cond_2
    invoke-direct {p0}, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->stopDragging()V

    goto/16 :goto_0

    .line 72
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "ev"

    .prologue
    const/4 v12, 0x0

    .line 244
    iget-object v9, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mDragListener:Lcom/android/settings_ex/cyanogenmod/TouchInterceptor$DragListener;

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mDropListener:Lcom/android/settings_ex/cyanogenmod/TouchInterceptor$DropListener;

    if-eqz v9, :cond_b

    :cond_0
    iget-object v9, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mDragView:Landroid/widget/ImageView;

    if-eqz v9, :cond_b

    .line 245
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 246
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 297
    :cond_1
    :goto_0
    const/4 v9, 0x1

    .line 299
    .end local v0           #action:I
    :goto_1
    return v9

    .line 249
    .restart local v0       #action:I
    :pswitch_0
    iget-object v3, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mTempRect:Landroid/graphics/Rect;

    .line 250
    .local v3, r:Landroid/graphics/Rect;
    iget-object v9, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 251
    invoke-direct {p0}, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->stopDragging()V

    .line 252
    iget-object v9, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mDropListener:Lcom/android/settings_ex/cyanogenmod/TouchInterceptor$DropListener;

    if-eqz v9, :cond_2

    iget v9, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mDragPos:I

    if-ltz v9, :cond_2

    iget v9, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mDragPos:I

    invoke-virtual {p0}, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->getCount()I

    move-result v10

    if-ge v9, v10, :cond_2

    .line 253
    iget-object v9, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mDropListener:Lcom/android/settings_ex/cyanogenmod/TouchInterceptor$DropListener;

    iget v10, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mFirstDragPos:I

    iget v11, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mDragPos:I

    invoke-interface {v9, v10, v11}, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor$DropListener;->drop(II)V

    .line 255
    :cond_2
    invoke-direct {p0, v12}, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->unExpandViews(Z)V

    goto :goto_0

    .line 260
    .end local v3           #r:Landroid/graphics/Rect;
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v7, v9

    .line 261
    .local v7, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v8, v9

    .line 262
    .local v8, y:I
    invoke-direct {p0, v7, v8}, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->dragView(II)V

    .line 263
    invoke-direct {p0, v8}, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->getItemForPosition(I)I

    move-result v1

    .line 264
    .local v1, itemnum:I
    if-ltz v1, :cond_1

    .line 265
    if-eqz v0, :cond_3

    iget v9, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mDragPos:I

    if-eq v1, v9, :cond_5

    .line 266
    :cond_3
    iget-object v9, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mDragListener:Lcom/android/settings_ex/cyanogenmod/TouchInterceptor$DragListener;

    if-eqz v9, :cond_4

    .line 267
    iget-object v9, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mDragListener:Lcom/android/settings_ex/cyanogenmod/TouchInterceptor$DragListener;

    iget v10, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mDragPos:I

    invoke-interface {v9, v10, v1}, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor$DragListener;->drag(II)V

    .line 269
    :cond_4
    iput v1, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mDragPos:I

    .line 270
    invoke-direct {p0}, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->doExpansion()V

    .line 272
    :cond_5
    const/4 v5, 0x0

    .line 273
    .local v5, speed:I
    invoke-direct {p0, v8}, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->adjustScrollBounds(I)V

    .line 274
    iget v9, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mLowerBound:I

    if-le v8, v9, :cond_9

    .line 276
    iget v9, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mHeight:I

    iget v10, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mLowerBound:I

    add-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    if-le v8, v9, :cond_8

    const/16 v5, 0x10

    .line 281
    :cond_6
    :goto_2
    if-eqz v5, :cond_1

    .line 282
    iget v9, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mHeight:I

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {p0, v12, v9}, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->pointToPosition(II)I

    move-result v4

    .line 283
    .local v4, ref:I
    const/4 v9, -0x1

    if-ne v4, v9, :cond_7

    .line 286
    iget v9, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mHeight:I

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {p0}, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->getDividerHeight()I

    move-result v10

    add-int/2addr v9, v10

    add-int/lit8 v9, v9, 0x40

    invoke-virtual {p0, v12, v9}, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->pointToPosition(II)I

    move-result v4

    .line 288
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->getFirstVisiblePosition()I

    move-result v9

    sub-int v9, v4, v9

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 289
    .local v6, v:Landroid/view/View;
    if-eqz v6, :cond_1

    .line 290
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v2

    .line 291
    .local v2, pos:I
    sub-int v9, v2, v5

    invoke-virtual {p0, v4, v9}, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->setSelectionFromTop(II)V

    goto/16 :goto_0

    .line 276
    .end local v2           #pos:I
    .end local v4           #ref:I
    .end local v6           #v:Landroid/view/View;
    :cond_8
    const/4 v5, 0x4

    goto :goto_2

    .line 277
    :cond_9
    iget v9, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mUpperBound:I

    if-ge v8, v9, :cond_6

    .line 279
    iget v9, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mUpperBound:I

    div-int/lit8 v9, v9, 0x2

    if-ge v8, v9, :cond_a

    const/16 v5, -0x10

    :goto_3
    goto :goto_2

    :cond_a
    const/4 v5, -0x4

    goto :goto_3

    .line 299
    .end local v0           #action:I
    .end local v1           #itemnum:I
    .end local v5           #speed:I
    .end local v7           #x:I
    .end local v8           #y:I
    :cond_b
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    goto/16 :goto_1

    .line 246
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setDropListener(Lcom/android/settings_ex/cyanogenmod/TouchInterceptor$DropListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 357
    iput-object p1, p0, Lcom/android/settings_ex/cyanogenmod/TouchInterceptor;->mDropListener:Lcom/android/settings_ex/cyanogenmod/TouchInterceptor$DropListener;

    .line 358
    return-void
.end method
