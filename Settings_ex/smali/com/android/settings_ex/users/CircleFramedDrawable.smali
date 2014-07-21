.class Lcom/android/settings_ex/users/CircleFramedDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CircleFramedDrawable.java"


# instance fields
.field private final mBitmap:Landroid/graphics/Bitmap;

.field private mDstRect:Landroid/graphics/RectF;

.field private final mFrameColor:I

.field private mFramePath:Landroid/graphics/Path;

.field private mFrameRect:Landroid/graphics/RectF;

.field private final mFrameShadowColor:I

.field private final mHighlightColor:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mPressed:Z

.field private mScale:F

.field private final mShadowRadius:F

.field private final mSize:I

.field private mSrcRect:Landroid/graphics/Rect;

.field private final mStrokeWidth:F


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;IIFIFI)V
    .locals 13
    .parameter "icon"
    .parameter "size"
    .parameter "frameColor"
    .parameter "strokeWidth"
    .parameter "frameShadowColor"
    .parameter "shadowRadius"
    .parameter "highlightColor"

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 78
    iput p2, p0, Lcom/android/settings_ex/users/CircleFramedDrawable;->mSize:I

    .line 79
    move/from16 v0, p6

    iput v0, p0, Lcom/android/settings_ex/users/CircleFramedDrawable;->mShadowRadius:F

    .line 80
    move/from16 v0, p3

    iput v0, p0, Lcom/android/settings_ex/users/CircleFramedDrawable;->mFrameColor:I

    .line 81
    move/from16 v0, p5

    iput v0, p0, Lcom/android/settings_ex/users/CircleFramedDrawable;->mFrameShadowColor:I

    .line 82
    move/from16 v0, p4

    iput v0, p0, Lcom/android/settings_ex/users/CircleFramedDrawable;->mStrokeWidth:F

    .line 83
    move/from16 v0, p7

    iput v0, p0, Lcom/android/settings_ex/users/CircleFramedDrawable;->mHighlightColor:I

    .line 85
    iget v8, p0, Lcom/android/settings_ex/users/CircleFramedDrawable;->mSize:I

    iget v9, p0, Lcom/android/settings_ex/users/CircleFramedDrawable;->mSize:I

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/users/CircleFramedDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 86
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v8, p0, Lcom/android/settings_ex/users/CircleFramedDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 88
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 89
    .local v7, width:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 90
    .local v5, height:I
    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 92
    .local v6, square:I
    new-instance v3, Landroid/graphics/Rect;

    sub-int v8, v7, v6

    div-int/lit8 v8, v8, 0x2

    sub-int v9, v5, v6

    div-int/lit8 v9, v9, 0x2

    invoke-direct {v3, v8, v9, v6, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 93
    .local v3, cropRect:Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/RectF;

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/settings_ex/users/CircleFramedDrawable;->mSize:I

    int-to-float v10, v10

    iget v11, p0, Lcom/android/settings_ex/users/CircleFramedDrawable;->mSize:I

    int-to-float v11, v11

    invoke-direct {v2, v8, v9, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 94
    .local v2, circleRect:Landroid/graphics/RectF;
    iget v8, p0, Lcom/android/settings_ex/users/CircleFramedDrawable;->mStrokeWidth:F

    const/high16 v9, 0x4000

    div-float/2addr v8, v9

    iget v9, p0, Lcom/android/settings_ex/users/CircleFramedDrawable;->mStrokeWidth:F

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    invoke-virtual {v2, v8, v9}, Landroid/graphics/RectF;->inset(FF)V

    .line 95
    iget v8, p0, Lcom/android/settings_ex/users/CircleFramedDrawable;->mShadowRadius:F

    iget v9, p0, Lcom/android/settings_ex/users/CircleFramedDrawable;->mShadowRadius:F

    invoke-virtual {v2, v8, v9}, Landroid/graphics/RectF;->inset(FF)V

    .line 97
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    .line 98
    .local v4, fillPath:Landroid/graphics/Path;
    const/4 v8, 0x0

    const/high16 v9, 0x43b4

    invoke-virtual {v4, v2, v8, v9}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 100
    const/4 v8, 0x0

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v8, v9}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 103
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    iput-object v8, p0, Lcom/android/settings_ex/users/CircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    .line 104
    iget-object v8, p0, Lcom/android/settings_ex/users/CircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 105
    iget-object v8, p0, Lcom/android/settings_ex/users/CircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    const/high16 v9, -0x100

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 106
    iget-object v8, p0, Lcom/android/settings_ex/users/CircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 107
    iget-object v8, p0, Lcom/android/settings_ex/users/CircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 110
    iget-object v8, p0, Lcom/android/settings_ex/users/CircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    new-instance v9, Landroid/graphics/PorterDuffXfermode;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v10}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 111
    iget-object v8, p0, Lcom/android/settings_ex/users/CircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, v3, v2, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 114
    iget-object v8, p0, Lcom/android/settings_ex/users/CircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 116
    const/high16 v8, 0x3f80

    iput v8, p0, Lcom/android/settings_ex/users/CircleFramedDrawable;->mScale:F

    .line 118
    new-instance v8, Landroid/graphics/Rect;

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, p0, Lcom/android/settings_ex/users/CircleFramedDrawable;->mSize:I

    iget v12, p0, Lcom/android/settings_ex/users/CircleFramedDrawable;->mSize:I

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v8, p0, Lcom/android/settings_ex/users/CircleFramedDrawable;->mSrcRect:Landroid/graphics/Rect;

    .line 119
    new-instance v8, Landroid/graphics/RectF;

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, p0, Lcom/android/settings_ex/users/CircleFramedDrawable;->mSize:I

    int-to-float v11, v11

    iget v12, p0, Lcom/android/settings_ex/users/CircleFramedDrawable;->mSize:I

    int-to-float v12, v12

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v8, p0, Lcom/android/settings_ex/users/CircleFramedDrawable;->mDstRect:Landroid/graphics/RectF;

    .line 120
    new-instance v8, Landroid/graphics/RectF;

    iget-object v9, p0, Lcom/android/settings_ex/users/CircleFramedDrawable;->mDstRect:Landroid/graphics/RectF;

    invoke-direct {v8, v9}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v8, p0, Lcom/android/settings_ex/users/CircleFramedDrawable;->mFrameRect:Landroid/graphics/RectF;

    .line 121
    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    iput-object v8, p0, Lcom/android/settings_ex/users/CircleFramedDrawable;->mFramePath:Landroid/graphics/Path;

    .line 122
    return-void
.end method

.method public static getInstance(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/android/settings_ex/users/CircleFramedDrawable;
    .locals 10
    .parameter "context"
    .parameter "icon"

    .prologue
    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 60
    .local v9, res:Landroid/content/res/Resources;
    const v1, 0x7f070036

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    .line 61
    .local v8, iconSize:F
    const v1, 0x7f070037

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 62
    .local v4, strokeWidth:F
    const v1, 0x7f070038

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    .line 63
    .local v6, shadowRadius:F
    const v1, 0x7f0a0020

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 64
    .local v3, frameColor:I
    const v1, 0x7f0a0021

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 65
    .local v5, frameShadowColor:I
    const v1, 0x7f0a0022

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    .line 67
    .local v7, highlightColor:I
    new-instance v0, Lcom/android/settings_ex/users/CircleFramedDrawable;

    float-to-int v2, v8

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/settings_ex/users/CircleFramedDrawable;-><init>(Landroid/graphics/Bitmap;IIFIFI)V

    .line 70
    .local v0, instance:Lcom/android/settings_ex/users/CircleFramedDrawable;
    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/high16 v6, 0x4000

    const/4 v7, 0x0

    .line 126
    iget v2, p0, Lcom/android/settings_ex/users/CircleFramedDrawable;->mScale:F

    iget v3, p0, Lcom/android/settings_ex/users/CircleFramedDrawable;->mSize:I

    int-to-float v3, v3

    mul-float v0, v2, v3

    .line 127
    .local v0, inside:F
    iget v2, p0, Lcom/android/settings_ex/users/CircleFramedDrawable;->mSize:I

    int-to-float v2, v2

    sub-float/2addr v2, v0

    div-float v1, v2, v6

    .line 129
    .local v1, pad:F
    iget-object v2, p0, Lcom/android/settings_ex/users/CircleFramedDrawable;->mDstRect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/android/settings_ex/users/CircleFramedDrawable;->mSize:I

    int-to-float v3, v3

    sub-float/2addr v3, v1

    iget v4, p0, Lcom/android/settings_ex/users/CircleFramedDrawable;->mSize:I

    int-to-float v4, v4

    sub-float/2addr v4, v1

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 130
    iget-object v2, p0, Lcom/android/settings_ex/users/CircleFramedDrawable;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/settings_ex/users/CircleFramedDrawable;->mSrcRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/settings_ex/users/CircleFramedDrawable;->mDstRect:Landroid/graphics/RectF;

    const/4 v5, 0x0

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 132
    iget-object v2, p0, Lcom/android/settings_ex/users/CircleFramedDrawable;->mFrameRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/settings_ex/users/CircleFramedDrawable;->mDstRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 133
    iget-object v2, p0, Lcom/android/settings_ex/users/CircleFramedDrawable;->mFrameRect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/android/settings_ex/users/CircleFramedDrawable;->mStrokeWidth:F

    div-float/2addr v3, v6

    iget v4, p0, Lcom/android/settings_ex/users/CircleFramedDrawable;->mStrokeWidth:F

    div-float/2addr v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 134
    iget-object v2, p0, Lcom/android/settings_ex/users/CircleFramedDrawable;->mFrameRect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/android/settings_ex/users/CircleFramedDrawable;->mShadowRadius:F

    iget v4, p0, Lcom/android/settings_ex/users/CircleFramedDrawable;->mShadowRadius:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 136
    iget-object v2, p0, Lcom/android/settings_ex/users/CircleFramedDrawable;->mFramePath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 137
    iget-object v2, p0, Lcom/android/settings_ex/users/CircleFramedDrawable;->mFramePath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/settings_ex/users/CircleFramedDrawable;->mFrameRect:Landroid/graphics/RectF;

    const/high16 v4, 0x43b4

    invoke-virtual {v2, v3, v7, v4}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 140
    iget-boolean v2, p0, Lcom/android/settings_ex/users/CircleFramedDrawable;->mPressed:Z

    if-eqz v2, :cond_0

    .line 141
    iget-object v2, p0, Lcom/android/settings_ex/users/CircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 142
    iget-object v2, p0, Lcom/android/settings_ex/users/CircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    const/16 v3, 0x54

    iget v4, p0, Lcom/android/settings_ex/users/CircleFramedDrawable;->mHighlightColor:I

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v4

    iget v5, p0, Lcom/android/settings_ex/users/CircleFramedDrawable;->mHighlightColor:I

    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v5

    iget v6, p0, Lcom/android/settings_ex/users/CircleFramedDrawable;->mHighlightColor:I

    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 146
    iget-object v2, p0, Lcom/android/settings_ex/users/CircleFramedDrawable;->mFramePath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/settings_ex/users/CircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 148
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/users/CircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/settings_ex/users/CircleFramedDrawable;->mStrokeWidth:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 149
    iget-object v2, p0, Lcom/android/settings_ex/users/CircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 150
    iget-object v3, p0, Lcom/android/settings_ex/users/CircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    iget-boolean v2, p0, Lcom/android/settings_ex/users/CircleFramedDrawable;->mPressed:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/settings_ex/users/CircleFramedDrawable;->mHighlightColor:I

    :goto_0
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 151
    iget-object v2, p0, Lcom/android/settings_ex/users/CircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/settings_ex/users/CircleFramedDrawable;->mShadowRadius:F

    iget v4, p0, Lcom/android/settings_ex/users/CircleFramedDrawable;->mFrameShadowColor:I

    invoke-virtual {v2, v3, v7, v7, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 152
    iget-object v2, p0, Lcom/android/settings_ex/users/CircleFramedDrawable;->mFramePath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/settings_ex/users/CircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 153
    return-void

    .line 150
    :cond_1
    iget v2, p0, Lcom/android/settings_ex/users/CircleFramedDrawable;->mFrameColor:I

    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcom/android/settings_ex/users/CircleFramedDrawable;->mSize:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lcom/android/settings_ex/users/CircleFramedDrawable;->mSize:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 169
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 174
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter "cf"

    .prologue
    .line 178
    return-void
.end method
