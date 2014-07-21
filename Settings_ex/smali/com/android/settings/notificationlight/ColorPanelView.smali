.class public Lcom/android/settings/notificationlight/ColorPanelView;
.super Landroid/view/View;
.source "ColorPanelView.java"


# static fields
.field private static mDensity:F


# instance fields
.field private mAlphaPattern:Lcom/android/settings/notificationlight/AlphaPatternDrawable;

.field private mBorderColor:I

.field private mBorderPaint:Landroid/graphics/Paint;

.field private mColor:I

.field private mColorPaint:Landroid/graphics/Paint;

.field private mColorRect:Landroid/graphics/RectF;

.field private mDrawingRect:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/high16 v0, 0x3f80

    sput v0, Lcom/android/settings/notificationlight/ColorPanelView;->mDensity:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/notificationlight/ColorPanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/notificationlight/ColorPanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    const v0, -0x919192

    iput v0, p0, Lcom/android/settings/notificationlight/ColorPanelView;->mBorderColor:I

    .line 44
    const/high16 v0, -0x100

    iput v0, p0, Lcom/android/settings/notificationlight/ColorPanelView;->mColor:I

    .line 65
    invoke-direct {p0}, Lcom/android/settings/notificationlight/ColorPanelView;->init()V

    .line 66
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notificationlight/ColorPanelView;->mBorderPaint:Landroid/graphics/Paint;

    .line 70
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notificationlight/ColorPanelView;->mColorPaint:Landroid/graphics/Paint;

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/notificationlight/ColorPanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/android/settings/notificationlight/ColorPanelView;->mDensity:F

    .line 72
    return-void
.end method

.method private setUpColorRect()V
    .locals 10

    .prologue
    const/high16 v6, 0x3f80

    .line 117
    iget-object v1, p0, Lcom/android/settings/notificationlight/ColorPanelView;->mDrawingRect:Landroid/graphics/RectF;

    .line 119
    .local v1, dRect:Landroid/graphics/RectF;
    iget v5, v1, Landroid/graphics/RectF;->left:F

    add-float v2, v5, v6

    .line 120
    .local v2, left:F
    iget v5, v1, Landroid/graphics/RectF;->top:F

    add-float v4, v5, v6

    .line 121
    .local v4, top:F
    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    sub-float v0, v5, v6

    .line 122
    .local v0, bottom:F
    iget v5, v1, Landroid/graphics/RectF;->right:F

    sub-float v3, v5, v6

    .line 124
    .local v3, right:F
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v2, v4, v3, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v5, p0, Lcom/android/settings/notificationlight/ColorPanelView;->mColorRect:Landroid/graphics/RectF;

    .line 126
    new-instance v5, Lcom/android/settings/notificationlight/AlphaPatternDrawable;

    const/high16 v6, 0x40a0

    sget v7, Lcom/android/settings/notificationlight/ColorPanelView;->mDensity:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-direct {v5, v6}, Lcom/android/settings/notificationlight/AlphaPatternDrawable;-><init>(I)V

    iput-object v5, p0, Lcom/android/settings/notificationlight/ColorPanelView;->mAlphaPattern:Lcom/android/settings/notificationlight/AlphaPatternDrawable;

    .line 128
    iget-object v5, p0, Lcom/android/settings/notificationlight/ColorPanelView;->mAlphaPattern:Lcom/android/settings/notificationlight/AlphaPatternDrawable;

    iget-object v6, p0, Lcom/android/settings/notificationlight/ColorPanelView;->mColorRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iget-object v7, p0, Lcom/android/settings/notificationlight/ColorPanelView;->mColorRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iget-object v8, p0, Lcom/android/settings/notificationlight/ColorPanelView;->mColorRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iget-object v9, p0, Lcom/android/settings/notificationlight/ColorPanelView;->mColorRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/settings/notificationlight/AlphaPatternDrawable;->setBounds(IIII)V

    .line 133
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/settings/notificationlight/ColorPanelView;->mColorRect:Landroid/graphics/RectF;

    .line 80
    .local v0, rect:Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/android/settings/notificationlight/ColorPanelView;->mBorderPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/settings/notificationlight/ColorPanelView;->mBorderColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    iget-object v1, p0, Lcom/android/settings/notificationlight/ColorPanelView;->mDrawingRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/settings/notificationlight/ColorPanelView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 84
    iget-object v1, p0, Lcom/android/settings/notificationlight/ColorPanelView;->mAlphaPattern:Lcom/android/settings/notificationlight/AlphaPatternDrawable;

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/android/settings/notificationlight/ColorPanelView;->mAlphaPattern:Lcom/android/settings/notificationlight/AlphaPatternDrawable;

    invoke-virtual {v1, p1}, Lcom/android/settings/notificationlight/AlphaPatternDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/android/settings/notificationlight/ColorPanelView;->mColorPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/settings/notificationlight/ColorPanelView;->mColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    iget-object v1, p0, Lcom/android/settings/notificationlight/ColorPanelView;->mColorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 91
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 96
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 97
    .local v1, width:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 99
    .local v0, height:I
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/notificationlight/ColorPanelView;->setMeasuredDimension(II)V

    .line 100
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 104
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 106
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notificationlight/ColorPanelView;->mDrawingRect:Landroid/graphics/RectF;

    .line 107
    iget-object v0, p0, Lcom/android/settings/notificationlight/ColorPanelView;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/android/settings/notificationlight/ColorPanelView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 108
    iget-object v0, p0, Lcom/android/settings/notificationlight/ColorPanelView;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/android/settings/notificationlight/ColorPanelView;->getPaddingRight()I

    move-result v1

    sub-int v1, p1, v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 109
    iget-object v0, p0, Lcom/android/settings/notificationlight/ColorPanelView;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/android/settings/notificationlight/ColorPanelView;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 110
    iget-object v0, p0, Lcom/android/settings/notificationlight/ColorPanelView;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/android/settings/notificationlight/ColorPanelView;->getPaddingBottom()I

    move-result v1

    sub-int v1, p2, v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 112
    invoke-direct {p0}, Lcom/android/settings/notificationlight/ColorPanelView;->setUpColorRect()V

    .line 114
    return-void
.end method

.method public setColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 141
    iput p1, p0, Lcom/android/settings/notificationlight/ColorPanelView;->mColor:I

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/notificationlight/ColorPanelView;->invalidate()V

    .line 143
    return-void
.end method
