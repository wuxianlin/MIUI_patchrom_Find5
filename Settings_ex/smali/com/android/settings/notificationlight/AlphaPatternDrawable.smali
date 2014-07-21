.class public Lcom/android/settings/notificationlight/AlphaPatternDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "AlphaPatternDrawable.java"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mPaint:Landroid/graphics/Paint;

.field private mPaintGray:Landroid/graphics/Paint;

.field private mPaintWhite:Landroid/graphics/Paint;

.field private mRectangleSize:I

.field private numRectanglesHorizontal:I

.field private numRectanglesVertical:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .parameter "rectangleSize"

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 37
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/settings/notificationlight/AlphaPatternDrawable;->mRectangleSize:I

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notificationlight/AlphaPatternDrawable;->mPaint:Landroid/graphics/Paint;

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notificationlight/AlphaPatternDrawable;->mPaintWhite:Landroid/graphics/Paint;

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notificationlight/AlphaPatternDrawable;->mPaintGray:Landroid/graphics/Paint;

    .line 52
    iput p1, p0, Lcom/android/settings/notificationlight/AlphaPatternDrawable;->mRectangleSize:I

    .line 53
    iget-object v0, p0, Lcom/android/settings/notificationlight/AlphaPatternDrawable;->mPaintWhite:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    iget-object v0, p0, Lcom/android/settings/notificationlight/AlphaPatternDrawable;->mPaintGray:Landroid/graphics/Paint;

    const v1, -0x343435

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 55
    return-void
.end method

.method private generatePatternBitmap()V
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/notificationlight/AlphaPatternDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-lez v6, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/notificationlight/AlphaPatternDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-gtz v6, :cond_1

    .line 124
    :cond_0
    return-void

    .line 104
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/notificationlight/AlphaPatternDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/settings/notificationlight/AlphaPatternDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/notificationlight/AlphaPatternDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 105
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v6, p0, Lcom/android/settings/notificationlight/AlphaPatternDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 107
    .local v0, canvas:Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 108
    .local v4, r:Landroid/graphics/Rect;
    const/4 v5, 0x1

    .line 109
    .local v5, verticalStartWhite:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v6, p0, Lcom/android/settings/notificationlight/AlphaPatternDrawable;->numRectanglesVertical:I

    if-gt v1, v6, :cond_0

    .line 110
    move v2, v5

    .line 111
    .local v2, isWhite:Z
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    iget v6, p0, Lcom/android/settings/notificationlight/AlphaPatternDrawable;->numRectanglesHorizontal:I

    if-gt v3, v6, :cond_4

    .line 112
    iget v6, p0, Lcom/android/settings/notificationlight/AlphaPatternDrawable;->mRectangleSize:I

    mul-int/2addr v6, v1

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 113
    iget v6, p0, Lcom/android/settings/notificationlight/AlphaPatternDrawable;->mRectangleSize:I

    mul-int/2addr v6, v3

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 114
    iget v6, v4, Landroid/graphics/Rect;->top:I

    iget v9, p0, Lcom/android/settings/notificationlight/AlphaPatternDrawable;->mRectangleSize:I

    add-int/2addr v6, v9

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 115
    iget v6, v4, Landroid/graphics/Rect;->left:I

    iget v9, p0, Lcom/android/settings/notificationlight/AlphaPatternDrawable;->mRectangleSize:I

    add-int/2addr v6, v9

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 117
    if-eqz v2, :cond_2

    iget-object v6, p0, Lcom/android/settings/notificationlight/AlphaPatternDrawable;->mPaintWhite:Landroid/graphics/Paint;

    :goto_2
    invoke-virtual {v0, v4, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 119
    if-nez v2, :cond_3

    move v2, v7

    .line 111
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 117
    :cond_2
    iget-object v6, p0, Lcom/android/settings/notificationlight/AlphaPatternDrawable;->mPaintGray:Landroid/graphics/Paint;

    goto :goto_2

    :cond_3
    move v2, v8

    .line 119
    goto :goto_3

    .line 122
    :cond_4
    if-nez v5, :cond_5

    move v5, v7

    .line 109
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    move v5, v8

    .line 122
    goto :goto_4
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/notificationlight/AlphaPatternDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/android/settings/notificationlight/AlphaPatternDrawable;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/settings/notificationlight/AlphaPatternDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/notificationlight/AlphaPatternDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 62
    :cond_0
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 4
    .parameter "bounds"

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 83
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 84
    .local v0, height:I
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 86
    .local v1, width:I
    iget v2, p0, Lcom/android/settings/notificationlight/AlphaPatternDrawable;->mRectangleSize:I

    div-int v2, v1, v2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, p0, Lcom/android/settings/notificationlight/AlphaPatternDrawable;->numRectanglesHorizontal:I

    .line 87
    iget v2, p0, Lcom/android/settings/notificationlight/AlphaPatternDrawable;->mRectangleSize:I

    div-int v2, v0, v2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, p0, Lcom/android/settings/notificationlight/AlphaPatternDrawable;->numRectanglesVertical:I

    .line 89
    invoke-direct {p0}, Lcom/android/settings/notificationlight/AlphaPatternDrawable;->generatePatternBitmap()V

    .line 90
    return-void
.end method

.method public setAlpha(I)V
    .locals 2
    .parameter "alpha"

    .prologue
    .line 71
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Alpha is not supported by this drawwable."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2
    .parameter "cf"

    .prologue
    .line 76
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ColorFilter is not supported by this drawwable."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
