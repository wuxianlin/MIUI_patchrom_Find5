.class public Landroid/webkit/WebView$PrivateAccess;
.super Ljava/lang/Object;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PrivateAccess"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;)V
    .locals 0
    .parameter

    .prologue
    .line 1887
    iput-object p1, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public awakenScrollBars(I)V
    .locals 1
    .parameter "duration"

    .prologue
    .line 1944
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->awakenScrollBars(I)Z
    invoke-static {v0, p1}, Landroid/webkit/WebView;->access$1300(Landroid/webkit/WebView;I)Z

    .line 1945
    return-void
.end method

.method public awakenScrollBars(IZ)V
    .locals 1
    .parameter "duration"
    .parameter "invalidate"

    .prologue
    .line 1948
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->awakenScrollBars(IZ)Z
    invoke-static {v0, p1, p2}, Landroid/webkit/WebView;->access$1400(Landroid/webkit/WebView;IZ)Z

    .line 1949
    return-void
.end method

.method public getHorizontalScrollFactor()F
    .locals 1

    .prologue
    .line 1956
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->getHorizontalScrollFactor()F
    invoke-static {v0}, Landroid/webkit/WebView;->access$1600(Landroid/webkit/WebView;)F

    move-result v0

    return v0
.end method

.method public getHorizontalScrollbarHeight()I
    .locals 1

    .prologue
    .line 1968
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->getHorizontalScrollbarHeight()I
    invoke-static {v0}, Landroid/webkit/WebView;->access$1800(Landroid/webkit/WebView;)I

    move-result v0

    return v0
.end method

.method public getVerticalScrollFactor()F
    .locals 1

    .prologue
    .line 1952
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->getVerticalScrollFactor()F
    invoke-static {v0}, Landroid/webkit/WebView;->access$1500(Landroid/webkit/WebView;)F

    move-result v0

    return v0
.end method

.method public onScrollChanged(IIII)V
    .locals 1
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    .line 1964
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    .line 1965
    return-void
.end method

.method public overScrollBy(IIIIIIIIZ)V
    .locals 10
    .parameter "deltaX"
    .parameter "deltaY"
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "scrollRangeX"
    .parameter "scrollRangeY"
    .parameter "maxOverScrollX"
    .parameter "maxOverScrollY"
    .parameter "isTouchEvent"

    .prologue
    .line 1939
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    #calls: Landroid/webkit/WebView;->overScrollBy(IIIIIIIIZ)Z
    invoke-static/range {v0 .. v9}, Landroid/webkit/WebView;->access$1200(Landroid/webkit/WebView;IIIIIIIIZ)Z

    .line 1941
    return-void
.end method

.method public setMeasuredDimension(II)V
    .locals 1
    .parameter "measuredWidth"
    .parameter "measuredHeight"

    .prologue
    .line 1960
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->setMeasuredDimension(II)V
    invoke-static {v0, p1, p2}, Landroid/webkit/WebView;->access$1700(Landroid/webkit/WebView;II)V

    .line 1961
    return-void
.end method

.method public setScrollXRaw(I)V
    .locals 1
    .parameter "scrollX"

    .prologue
    .line 1979
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    #setter for: Landroid/webkit/WebView;->mScrollX:I
    invoke-static {v0, p1}, Landroid/webkit/WebView;->access$2002(Landroid/webkit/WebView;I)I

    .line 1980
    return-void
.end method

.method public setScrollYRaw(I)V
    .locals 1
    .parameter "scrollY"

    .prologue
    .line 1984
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    #setter for: Landroid/webkit/WebView;->mScrollY:I
    invoke-static {v0, p1}, Landroid/webkit/WebView;->access$2102(Landroid/webkit/WebView;I)I

    .line 1985
    return-void
.end method

.method public super_computeScroll()V
    .locals 1

    .prologue
    .line 1898
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/view/View;->computeScroll()V
    invoke-static {v0}, Landroid/webkit/WebView;->access$301(Landroid/webkit/WebView;)V

    .line 1899
    return-void
.end method

.method public super_dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1918
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    invoke-static {v0, p1}, Landroid/webkit/WebView;->access$801(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public super_getScrollBarStyle()I
    .locals 1

    .prologue
    .line 1890
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/view/View;->getScrollBarStyle()I
    invoke-static {v0}, Landroid/webkit/WebView;->access$101(Landroid/webkit/WebView;)I

    move-result v0

    return v0
.end method

.method public super_onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V
    .locals 7
    .parameter "canvas"
    .parameter "scrollBar"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1973
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    #calls: Landroid/view/View;->onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V
    invoke-static/range {v0 .. v6}, Landroid/webkit/WebView;->access$1901(Landroid/webkit/WebView;Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    .line 1974
    return-void
.end method

.method public super_onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1922
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    invoke-static {v0, p1}, Landroid/webkit/WebView;->access$901(Landroid/webkit/WebView;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public super_onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1902
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z
    invoke-static {v0, p1}, Landroid/webkit/WebView;->access$401(Landroid/webkit/WebView;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public super_performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1
    .parameter "action"
    .parameter "arguments"

    .prologue
    .line 1906
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z
    invoke-static {v0, p1, p2}, Landroid/webkit/WebView;->access$501(Landroid/webkit/WebView;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public super_performLongClick()Z
    .locals 1

    .prologue
    .line 1910
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/view/View;->performLongClick()Z
    invoke-static {v0}, Landroid/webkit/WebView;->access$601(Landroid/webkit/WebView;)Z

    move-result v0

    return v0
.end method

.method public super_requestFocus(ILandroid/graphics/Rect;)Z
    .locals 1
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1926
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/view/ViewGroup;->requestFocus(ILandroid/graphics/Rect;)Z
    invoke-static {v0, p1, p2}, Landroid/webkit/WebView;->access$1001(Landroid/webkit/WebView;ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public super_scrollTo(II)V
    .locals 1
    .parameter "scrollX"
    .parameter "scrollY"

    .prologue
    .line 1894
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/view/View;->scrollTo(II)V
    invoke-static {v0, p1, p2}, Landroid/webkit/WebView;->access$201(Landroid/webkit/WebView;II)V

    .line 1895
    return-void
.end method

.method public super_setFrame(IIII)Z
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1914
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/view/View;->setFrame(IIII)Z
    invoke-static {v0, p1, p2, p3, p4}, Landroid/webkit/WebView;->access$701(Landroid/webkit/WebView;IIII)Z

    move-result v0

    return v0
.end method

.method public super_setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "params"

    .prologue
    .line 1930
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    invoke-static {v0, p1}, Landroid/webkit/WebView;->access$1101(Landroid/webkit/WebView;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1931
    return-void
.end method
