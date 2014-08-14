.class final Landroid/widget/FastScroller$6;
.super Landroid/util/IntProperty;
.source "FastScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/IntProperty",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1499
    invoke-direct {p0, p1}, Landroid/util/IntProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/view/View;)Ljava/lang/Integer;
    .locals 1
    .parameter "object"

    .prologue
    .line 1507
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1499
    check-cast p1, Landroid/view/View;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/widget/FastScroller$6;->get(Landroid/view/View;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Landroid/view/View;I)V
    .locals 0
    .parameter "object"
    .parameter "value"

    .prologue
    .line 1502
    invoke-virtual {p1, p2}, Landroid/view/View;->setRight(I)V

    .line 1503
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1499
    check-cast p1, Landroid/view/View;

    .end local p1
    invoke-virtual {p0, p1, p2}, Landroid/widget/FastScroller$6;->setValue(Landroid/view/View;I)V

    return-void
.end method
