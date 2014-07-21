.class public Lcom/android/settings_ex/widget/CubicSplinePreviewView;
.super Landroid/view/SurfaceView;
.source "CubicSplinePreviewView.java"


# instance fields
.field private final mBgColor:I

.field private final mFgPaint:Landroid/graphics/Paint;

.field private final mGridLinePaint:Landroid/graphics/Paint;

.field private final mMargin:I

.field private final mMarkerRadius:F

.field private final mPointPaint:Landroid/graphics/Paint;

.field private mSpline:Landroid/util/Spline;

.field private mXPoints:[F

.field private final mXTextPaint:Landroid/graphics/Paint;

.field private mYPoints:[F

.field private final mYTextPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/widget/CubicSplinePreviewView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings_ex/widget/CubicSplinePreviewView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    sget-object v6, Lcom/android/settings_ex/R$styleable;->CubicSplinePreviewView:[I

    const/4 v7, 0x0

    invoke-virtual {p1, p2, v6, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 70
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v6, 0x1

    const/4 v7, -0x1

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 71
    .local v1, fgColor:I
    const/4 v6, 0x3

    const v7, 0x22ffffff

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 72
    .local v3, markerColor:I
    const/4 v6, 0x2

    const/4 v7, -0x1

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 73
    .local v2, gridColor:I
    const/4 v6, 0x0

    const/high16 v7, -0x100

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, p0, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->mBgColor:I

    .line 75
    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    int-to-float v5, v6

    .line 76
    .local v5, textSize:F
    const/4 v6, 0x5

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    int-to-float v4, v6

    .line 77
    .local v4, strokeWidth:F
    const/4 v6, 0x6

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    int-to-float v6, v6

    iput v6, p0, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->mMarkerRadius:F

    .line 78
    const/4 v6, 0x7

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->mMargin:I

    .line 80
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 82
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, p0, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->mFgPaint:Landroid/graphics/Paint;

    .line 83
    iget-object v6, p0, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->mFgPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 84
    iget-object v6, p0, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->mFgPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 85
    iget-object v6, p0, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->mFgPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 86
    iget-object v6, p0, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->mFgPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 87
    iget-object v6, p0, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->mFgPaint:Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 89
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, p0, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->mGridLinePaint:Landroid/graphics/Paint;

    .line 90
    iget-object v6, p0, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->mGridLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    iget-object v6, p0, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->mGridLinePaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 93
    new-instance v6, Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->mFgPaint:Landroid/graphics/Paint;

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v6, p0, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->mXTextPaint:Landroid/graphics/Paint;

    .line 94
    iget-object v6, p0, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->mXTextPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 95
    iget-object v6, p0, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->mXTextPaint:Landroid/graphics/Paint;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 96
    iget-object v6, p0, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->mXTextPaint:Landroid/graphics/Paint;

    const/high16 v7, 0x4000

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, -0x100

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 98
    new-instance v6, Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->mXTextPaint:Landroid/graphics/Paint;

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v6, p0, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->mYTextPaint:Landroid/graphics/Paint;

    .line 99
    iget-object v6, p0, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->mYTextPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 101
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, p0, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->mPointPaint:Landroid/graphics/Paint;

    .line 102
    iget-object v6, p0, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->mPointPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 103
    iget-object v6, p0, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->mPointPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 104
    iget-object v6, p0, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->mPointPaint:Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 106
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->setWillNotDraw(Z)V

    .line 107
    return-void
.end method

.method private getMaxX()F
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->mXPoints:[F

    iget-object v1, p0, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->mXPoints:[F

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method private getMaxY()F
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->mYPoints:[F

    iget-object v1, p0, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->mYPoints:[F

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    const/high16 v1, 0x3f80

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method private getMinX()F
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->mXPoints:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    const/high16 v1, 0x3f80

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method private getMinY()F
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->mYPoints:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method private projectX(D)D
    .locals 10
    .parameter "value"

    .prologue
    .line 224
    invoke-static {p1, p2}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    .line 225
    .local v4, pos:D
    invoke-direct {p0}, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->getMinX()F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    .line 226
    .local v2, minPos:D
    invoke-direct {p0}, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->getMaxX()F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    .line 227
    .local v0, maxPos:D
    sub-double v6, v4, v2

    sub-double v8, v0, v2

    div-double/2addr v6, v8

    return-wide v6
.end method

.method private projectY(D)D
    .locals 8
    .parameter "value"

    .prologue
    .line 237
    invoke-direct {p0}, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->getMinY()F

    move-result v4

    float-to-double v2, v4

    .line 238
    .local v2, min:D
    invoke-direct {p0}, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->getMaxY()F

    move-result v4

    float-to-double v0, v4

    .line 239
    .local v0, max:D
    sub-double v4, p1, v2

    sub-double v6, v0, v2

    div-double/2addr v4, v6

    return-wide v4
.end method

.method private reverseProjectX(D)D
    .locals 6
    .parameter "pos"

    .prologue
    .line 231
    invoke-direct {p0}, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->getMinX()F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    .line 232
    .local v2, minPos:D
    invoke-direct {p0}, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->getMaxX()F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    .line 233
    .local v0, maxPos:D
    sub-double v4, v0, v2

    mul-double/2addr v4, p1

    add-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    return-wide v4
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 26
    .parameter "canvas"

    .prologue
    .line 134
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->mBgColor:I

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->mBgColor:I

    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->mBgColor:I

    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5, v6}, Landroid/graphics/Canvas;->drawRGB(III)V

    .line 136
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->mSpline:Landroid/util/Spline;

    if-nez v3, :cond_1

    .line 221
    :cond_0
    return-void

    .line 140
    :cond_1
    new-instance v11, Landroid/graphics/Path;

    invoke-direct {v11}, Landroid/graphics/Path;-><init>()V

    .line 142
    .local v11, curve:Landroid/graphics/Path;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->getWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->mMargin:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v20, v3, v5

    .line 143
    .local v20, width:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->getHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->mMargin:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v14, v3, v5

    .line 144
    .local v14, height:I
    move/from16 v0, v20

    int-to-double v5, v0

    const-wide v8, 0x4058c00000000000L

    div-double v12, v5, v8

    .line 146
    .local v12, dist:D
    const/4 v15, 0x0

    .local v15, i:I
    :goto_0
    const/16 v3, 0x64

    if-ge v15, v3, :cond_3

    .line 147
    int-to-double v5, v15

    mul-double v21, v12, v5

    .line 148
    .local v21, xPixel:D
    move/from16 v0, v20

    int-to-double v5, v0

    div-double v5, v21, v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->reverseProjectX(D)D

    move-result-wide v5

    double-to-float v4, v5

    .line 149
    .local v4, x:F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->mSpline:Landroid/util/Spline;

    invoke-virtual {v3, v4}, Landroid/util/Spline;->interpolate(F)F

    move-result v7

    .line 150
    .local v7, y:F
    const-wide/high16 v5, 0x3ff0

    float-to-double v8, v7

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->projectY(D)D

    move-result-wide v8

    sub-double/2addr v5, v8

    int-to-double v8, v14

    mul-double/2addr v5, v8

    double-to-float v0, v5

    move/from16 v25, v0

    .line 152
    .local v25, yPixel:F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->mMargin:I

    int-to-double v5, v3

    add-double v21, v21, v5

    .line 153
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->mMargin:I

    int-to-float v3, v3

    add-float v25, v25, v3

    .line 159
    if-nez v15, :cond_2

    .line 160
    move-wide/from16 v0, v21

    double-to-float v3, v0

    move/from16 v0, v25

    invoke-virtual {v11, v3, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 146
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 162
    :cond_2
    move-wide/from16 v0, v21

    double-to-float v3, v0

    move/from16 v0, v25

    invoke-virtual {v11, v3, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    .line 166
    .end local v4           #x:F
    .end local v7           #y:F
    .end local v21           #xPixel:D
    .end local v25           #yPixel:F
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->mFgPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 169
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->getMinX()F

    move-result v18

    .line 170
    .local v18, minX:F
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->getMaxX()F

    move-result v16

    .line 171
    .local v16, maxX:F
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->getMinY()F

    move-result v19

    .line 172
    .local v19, minY:F
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->getMaxY()F

    move-result v17

    .line 174
    .local v17, maxY:F
    move/from16 v23, v18

    .local v23, xPos:F
    :goto_2
    cmpg-float v3, v23, v16

    if-gtz v3, :cond_8

    .line 175
    move/from16 v0, v23

    float-to-double v5, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->projectX(D)D

    move-result-wide v5

    move/from16 v0, v20

    int-to-double v8, v0

    mul-double/2addr v5, v8

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->mMargin:I

    int-to-double v8, v3

    add-double/2addr v5, v8

    double-to-float v4, v5

    .line 176
    .restart local v4       #x:F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->mMargin:I

    int-to-float v5, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->mMargin:I

    add-int/2addr v3, v14

    int-to-float v7, v3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->mGridLinePaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    move v6, v4

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 177
    const/high16 v3, 0x4120

    cmpg-float v3, v23, v3

    if-gez v3, :cond_4

    .line 178
    const/high16 v3, 0x3f80

    add-float v23, v23, v3

    goto :goto_2

    .line 179
    :cond_4
    const/high16 v3, 0x42c8

    cmpg-float v3, v23, v3

    if-gez v3, :cond_5

    .line 180
    const/high16 v3, 0x4120

    add-float v23, v23, v3

    goto :goto_2

    .line 181
    :cond_5
    const/high16 v3, 0x447a

    cmpg-float v3, v23, v3

    if-gez v3, :cond_6

    .line 182
    const/high16 v3, 0x42c8

    add-float v23, v23, v3

    goto :goto_2

    .line 183
    :cond_6
    const v3, 0x461c4000

    cmpg-float v3, v23, v3

    if-gez v3, :cond_7

    .line 184
    const/high16 v3, 0x447a

    add-float v23, v23, v3

    goto :goto_2

    .line 186
    :cond_7
    const v3, 0x461c4000

    add-float v23, v23, v3

    goto :goto_2

    .line 191
    .end local v4           #x:F
    :cond_8
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->mMargin:I

    int-to-float v6, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->mMargin:I

    add-int/2addr v3, v14

    int-to-float v7, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->mMargin:I

    add-int v3, v3, v20

    int-to-float v8, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->mMargin:I

    add-int/2addr v3, v14

    int-to-float v9, v3

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->mGridLinePaint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 192
    sub-float v3, v17, v19

    const/high16 v5, 0x4120

    div-float v24, v3, v5

    .line 193
    .local v24, yDist:F
    const/4 v15, 0x1

    :goto_3
    const/16 v3, 0xa

    if-gt v15, v3, :cond_9

    .line 194
    const-wide/high16 v5, 0x3ff0

    int-to-float v3, v15

    mul-float v3, v3, v24

    add-float v3, v3, v19

    float-to-double v8, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->projectY(D)D

    move-result-wide v8

    sub-double/2addr v5, v8

    int-to-double v8, v14

    mul-double/2addr v5, v8

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->mMargin:I

    int-to-double v8, v3

    add-double/2addr v5, v8

    double-to-float v7, v5

    .line 195
    .restart local v7       #y:F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->mMargin:I

    int-to-float v6, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->mMargin:I

    add-int v3, v3, v20

    int-to-float v8, v3

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->mGridLinePaint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    move v9, v7

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 196
    const-string v3, "%.0f%%"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    int-to-float v8, v15

    mul-float v8, v8, v24

    const/high16 v9, 0x42c8

    mul-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->mMargin:I

    add-int/lit8 v5, v5, 0x1

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->mYTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getTextSize()F

    move-result v6

    add-float/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->mYTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5, v6, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 193
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 200
    .end local v7           #y:F
    :cond_9
    const/4 v15, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->mXPoints:[F

    array-length v3, v3

    if-ge v15, v3, :cond_0

    .line 202
    if-nez v15, :cond_a

    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->getMinX()F

    move-result v4

    .line 203
    .restart local v4       #x:F
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->mXPoints:[F

    aget v3, v3, v15

    cmpl-float v3, v4, v3

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->mSpline:Landroid/util/Spline;

    invoke-virtual {v3, v4}, Landroid/util/Spline;->interpolate(F)F

    move-result v7

    .line 204
    .restart local v7       #y:F
    :goto_6
    float-to-double v5, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->projectX(D)D

    move-result-wide v5

    move/from16 v0, v20

    int-to-double v8, v0

    mul-double/2addr v5, v8

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->mMargin:I

    int-to-double v8, v3

    add-double/2addr v5, v8

    double-to-float v0, v5

    move/from16 v21, v0

    .line 205
    .local v21, xPixel:F
    const-wide/high16 v5, 0x3ff0

    float-to-double v8, v7

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->projectY(D)D

    move-result-wide v8

    sub-double/2addr v5, v8

    int-to-double v8, v14

    mul-double/2addr v5, v8

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->mMargin:I

    int-to-double v8, v3

    add-double/2addr v5, v8

    double-to-float v0, v5

    move/from16 v25, v0

    .line 211
    .restart local v25       #yPixel:F
    if-nez v15, :cond_c

    .line 212
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->mXTextPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 218
    :goto_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->mMarkerRadius:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->mPointPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 219
    const-string v3, "%.0f"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->mXPoints:[F

    aget v8, v8, v15

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->mMargin:I

    add-int/2addr v5, v14

    add-int/lit8 v5, v5, -0x2

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->mXTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v3, v1, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 200
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_4

    .line 202
    .end local v4           #x:F
    .end local v7           #y:F
    .end local v21           #xPixel:F
    .end local v25           #yPixel:F
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->mXPoints:[F

    aget v4, v3, v15

    goto/16 :goto_5

    .line 203
    .restart local v4       #x:F
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->mYPoints:[F

    aget v7, v3, v15

    goto :goto_6

    .line 213
    .restart local v7       #y:F
    .restart local v21       #xPixel:F
    .restart local v25       #yPixel:F
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->mXPoints:[F

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ne v15, v3, :cond_d

    .line 214
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->mXTextPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_7

    .line 216
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->mXTextPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_7
.end method

.method public setSpline([F[F)V
    .locals 1
    .parameter "xPoints"
    .parameter "yPoints"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->mXPoints:[F

    .line 121
    iput-object p2, p0, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->mYPoints:[F

    .line 127
    invoke-static {p1, p2}, Landroid/util/Spline;->createMonotoneCubicSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->mSpline:Landroid/util/Spline;

    .line 128
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/CubicSplinePreviewView;->postInvalidate()V

    .line 129
    return-void
.end method
