.class final Lcom/koushikdutta/widgets/AnimatedView$1;
.super Ljava/lang/Object;
.source "AnimatedView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/widgets/AnimatedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Landroid/view/View$OnClickListener;

.field final synthetic val$view:Landroid/view/View;


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const/4 v5, 0x1

    const/high16 v2, 0x3f80

    const v1, 0x3f733333

    const/high16 v6, 0x3f00

    .line 29
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 30
    .local v0, scale:Landroid/view/animation/ScaleAnimation;
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 31
    iget-object v1, p0, Lcom/koushikdutta/widgets/AnimatedView$1;->val$view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 32
    iget-object v1, p0, Lcom/koushikdutta/widgets/AnimatedView$1;->val$listener:Landroid/view/View$OnClickListener;

    iget-object v2, p0, Lcom/koushikdutta/widgets/AnimatedView$1;->val$view:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 33
    return-void
.end method
