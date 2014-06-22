.class public Landroid/view/View$MeasureSpec;
.super Ljava/lang/Object;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MeasureSpec"
.end annotation


# static fields
.field public static final AT_MOST:I = -0x80000000

.field public static final EXACTLY:I = 0x40000000

.field private static final MODE_MASK:I = -0x40000000

.field private static final MODE_SHIFT:I = 0x1e

.field public static final UNSPECIFIED:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static adjust(II)I
    .locals 2
    .parameter "measureSpec"
    .parameter "delta"

    .prologue
    .line 18388
    add-int v0, p0, p1

    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method

.method public static getMode(I)I
    .locals 1
    .parameter "measureSpec"

    .prologue
    .line 18374
    const/high16 v0, -0x4000

    and-int/2addr v0, p0

    return v0
.end method

.method public static getSize(I)I
    .locals 1
    .parameter "measureSpec"

    .prologue
    .line 18384
    const v0, 0x3fffffff

    and-int/2addr v0, p0

    return v0
.end method

.method public static makeMeasureSpec(II)I
    .locals 2
    .parameter "size"
    .parameter "mode"

    .prologue
    .line 18358
    invoke-static {}, Landroid/view/View;->access$2500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18359
    add-int v0, p0, p1

    .line 18361
    :goto_0
    return v0

    :cond_0
    const v0, 0x3fffffff

    and-int/2addr v0, p0

    const/high16 v1, -0x4000

    and-int/2addr v1, p1

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 5
    .parameter "measureSpec"

    .prologue
    .line 18399
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 18400
    .local v0, mode:I
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 18402
    .local v2, size:I
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "MeasureSpec: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18404
    .local v1, sb:Ljava/lang/StringBuilder;
    if-nez v0, :cond_0

    .line 18405
    const-string v3, "UNSPECIFIED "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18413
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18414
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 18406
    :cond_0
    const/high16 v3, 0x4000

    if-ne v0, v3, :cond_1

    .line 18407
    const-string v3, "EXACTLY "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 18408
    :cond_1
    const/high16 v3, -0x8000

    if-ne v0, v3, :cond_2

    .line 18409
    const-string v3, "AT_MOST "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 18411
    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
