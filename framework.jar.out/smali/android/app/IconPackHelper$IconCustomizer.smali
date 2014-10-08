.class public Landroid/app/IconPackHelper$IconCustomizer;
.super Ljava/lang/Object;
.source "IconPackHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IconPackHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IconCustomizer"
.end annotation


# static fields
.field private static final sRandom:Ljava/util/Random;

.field private static final sThemeService:Landroid/content/res/IThemeService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 435
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Landroid/app/IconPackHelper$IconCustomizer;->sRandom:Ljava/util/Random;

    .line 439
    const-string/jumbo v0, "themes"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/res/IThemeService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/res/IThemeService;

    move-result-object v0

    sput-object v0, Landroid/app/IconPackHelper$IconCustomizer;->sThemeService:Landroid/content/res/IThemeService;

    .line 441
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static cacheComposedIcon(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 3
    .parameter "bmp"
    .parameter "path"

    .prologue
    .line 593
    :try_start_0
    sget-object v1, Landroid/app/IconPackHelper$IconCustomizer;->sThemeService:Landroid/content/res/IThemeService;

    invoke-interface {v1, p0, p1}, Landroid/content/res/IThemeService;->cacheComposedIcon(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 598
    :goto_0
    return v1

    .line 594
    :catch_0
    move-exception v0

    .line 595
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/IconPackHelper;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unable to cache icon."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 598
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;IIIFI[F)Landroid/graphics/Bitmap;
    .locals 16
    .parameter "icon"
    .parameter "res"
    .parameter "iconBack"
    .parameter "iconMask"
    .parameter "iconUpon"
    .parameter "scale"
    .parameter "iconSize"
    .parameter "colorFilter"

    .prologue
    .line 494
    if-gtz p6, :cond_0

    const/4 v3, 0x0

    .line 588
    :goto_0
    return-object v3

    .line 496
    :cond_0
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5}, Landroid/graphics/Canvas;-><init>()V

    .line 497
    .local v5, canvas:Landroid/graphics/Canvas;
    new-instance v13, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v14, 0x1

    const/4 v15, 0x2

    invoke-direct {v13, v14, v15}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v5, v13}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 500
    const/4 v12, 0x0

    .local v12, width:I
    const/4 v6, 0x0

    .line 501
    .local v6, height:I
    move-object/from16 v0, p0

    instance-of v13, v0, Landroid/graphics/drawable/PaintDrawable;

    if-eqz v13, :cond_3

    move-object/from16 v10, p0

    .line 502
    check-cast v10, Landroid/graphics/drawable/PaintDrawable;

    .line 503
    .local v10, painter:Landroid/graphics/drawable/PaintDrawable;
    move/from16 v0, p6

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 504
    move/from16 v0, p6

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 507
    move/from16 v12, p6

    .line 508
    move/from16 v6, p6

    .line 533
    .end local v10           #painter:Landroid/graphics/drawable/PaintDrawable;
    :cond_1
    :goto_1
    if-lez v12, :cond_2

    if-gtz v6, :cond_6

    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 509
    :cond_3
    move-object/from16 v0, p0

    instance-of v13, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v13, :cond_1

    move-object/from16 v4, p0

    .line 511
    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    .line 512
    .local v4, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 513
    .local v3, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v13

    if-nez v13, :cond_4

    .line 514
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    invoke-virtual {v4, v13}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    .line 516
    :cond_4
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v13

    invoke-virtual {v5, v13}, Landroid/graphics/Canvas;->setDensity(I)V

    .line 523
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    mul-int/lit8 v14, p6, 0x2

    if-ge v13, v14, :cond_5

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    mul-int/lit8 v14, p6, 0x2

    if-ge v13, v14, :cond_5

    .line 525
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    .line 526
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    goto :goto_1

    .line 528
    :cond_5
    move/from16 v12, p6

    .line 529
    move/from16 v6, p6

    goto :goto_1

    .line 535
    .end local v3           #bitmap:Landroid/graphics/Bitmap;
    .end local v4           #bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    :cond_6
    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v12, v6, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 537
    .restart local v3       #bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v5, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 540
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 541
    .local v8, oldBounds:Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v13

    invoke-virtual {v8, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 542
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v12, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 543
    invoke-virtual {v5}, Landroid/graphics/Canvas;->save()I

    .line 544
    div-int/lit8 v13, v12, 0x2

    int-to-float v13, v13

    div-int/lit8 v14, v6, 0x2

    int-to-float v14, v14

    move/from16 v0, p5

    move/from16 v1, p5

    invoke-virtual {v5, v0, v1, v13, v14}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 545
    if-eqz p7, :cond_8

    .line 546
    const/4 v9, 0x0

    .line 547
    .local v9, p:Landroid/graphics/Paint;
    move-object/from16 v0, p0

    instance-of v13, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v13, :cond_c

    move-object/from16 v13, p0

    .line 548
    check-cast v13, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v13}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v9

    .line 552
    :cond_7
    :goto_2
    new-instance v13, Landroid/graphics/ColorMatrixColorFilter;

    move-object/from16 v0, p7

    invoke-direct {v13, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    invoke-virtual {v9, v13}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 554
    .end local v9           #p:Landroid/graphics/Paint;
    :cond_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 555
    invoke-virtual {v5}, Landroid/graphics/Canvas;->restore()V

    .line 558
    if-eqz p3, :cond_9

    .line 559
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 560
    .local v7, mask:Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_9

    .line 561
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v13

    invoke-virtual {v7, v13}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    move-object v13, v7

    .line 562
    check-cast v13, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v13}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v13

    new-instance v14, Landroid/graphics/PorterDuffXfermode;

    sget-object v15, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v14, v15}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 564
    invoke-virtual {v7, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 568
    .end local v7           #mask:Landroid/graphics/drawable/Drawable;
    :cond_9
    if-eqz p2, :cond_a

    .line 569
    invoke-virtual/range {p1 .. p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 570
    .local v2, back:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_a

    .line 571
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v13

    invoke-virtual {v2, v13}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    move-object v13, v2

    .line 572
    check-cast v13, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v13}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v13

    new-instance v14, Landroid/graphics/PorterDuffXfermode;

    sget-object v15, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v14, v15}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 574
    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 578
    .end local v2           #back:Landroid/graphics/drawable/Drawable;
    :cond_a
    if-eqz p4, :cond_b

    .line 579
    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 580
    .local v11, upon:Landroid/graphics/drawable/Drawable;
    if-eqz v11, :cond_b

    .line 581
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 582
    invoke-virtual {v11, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 585
    .end local v11           #upon:Landroid/graphics/drawable/Drawable;
    :cond_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 586
    invoke-virtual {v5}, Landroid/graphics/Canvas;->getDensity()I

    move-result v13

    invoke-virtual {v3, v13}, Landroid/graphics/Bitmap;->setDensity(I)V

    goto/16 :goto_0

    .line 549
    .restart local v9       #p:Landroid/graphics/Paint;
    :cond_c
    move-object/from16 v0, p0

    instance-of v13, v0, Landroid/graphics/drawable/PaintDrawable;

    if-eqz v13, :cond_7

    move-object/from16 v13, p0

    .line 550
    check-cast v13, Landroid/graphics/drawable/PaintDrawable;

    invoke-virtual {v13}, Landroid/graphics/drawable/PaintDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v9

    goto/16 :goto_2
.end method

.method private static getCachedIconName(Ljava/lang/String;II)Ljava/lang/String;
    .locals 4
    .parameter "pkgName"
    .parameter "resId"
    .parameter "density"

    .prologue
    .line 607
    const-string v0, "%s_%08x_%d.png"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getCachedIconPath(Ljava/lang/String;II)Ljava/lang/String;
    .locals 4
    .parameter "pkgName"
    .parameter "resId"
    .parameter "density"

    .prologue
    .line 602
    const-string v0, "%s/%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Landroid/content/pm/ThemeUtils;->SYSTEM_THEME_ICON_CACHE_DIR:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p0, p1, p2}, Landroid/app/IconPackHelper$IconCustomizer;->getCachedIconName(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getComposedIconDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/Context;Landroid/app/ComposedIconInfo;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "icon"
    .parameter "context"
    .parameter "iconInfo"

    .prologue
    .line 445
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 446
    .local v0, res:Landroid/content/res/Resources;
    invoke-static {p0, v0, p2}, Landroid/app/IconPackHelper$IconCustomizer;->getComposedIconDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Landroid/app/ComposedIconInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method public static getComposedIconDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Landroid/app/ComposedIconInfo;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .parameter "icon"
    .parameter "res"
    .parameter "iconInfo"

    .prologue
    .line 451
    if-nez p2, :cond_0

    .line 458
    .end local p0
    :goto_0
    return-object p0

    .line 452
    .restart local p0
    :cond_0
    const/4 v2, 0x0

    .line 453
    .local v2, back:I
    iget-object v0, p2, Landroid/app/ComposedIconInfo;->iconBacks:[I

    if-eqz v0, :cond_1

    iget-object v0, p2, Landroid/app/ComposedIconInfo;->iconBacks:[I

    array-length v0, v0

    if-lez v0, :cond_1

    .line 454
    iget-object v0, p2, Landroid/app/ComposedIconInfo;->iconBacks:[I

    sget-object v1, Landroid/app/IconPackHelper$IconCustomizer;->sRandom:Ljava/util/Random;

    iget-object v3, p2, Landroid/app/ComposedIconInfo;->iconBacks:[I

    array-length v3, v3

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    aget v2, v0, v1

    .line 456
    :cond_1
    iget v3, p2, Landroid/app/ComposedIconInfo;->iconMask:I

    iget v4, p2, Landroid/app/ComposedIconInfo;->iconUpon:I

    iget v5, p2, Landroid/app/ComposedIconInfo;->iconScale:F

    iget v6, p2, Landroid/app/ComposedIconInfo;->iconSize:I

    iget-object v7, p2, Landroid/app/ComposedIconInfo;->colorFilter:[F

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v7}, Landroid/app/IconPackHelper$IconCustomizer;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;IIIFI[F)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 458
    .local v8, bmp:Landroid/graphics/Bitmap;
    if-eqz v8, :cond_2

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_1
    move-object p0, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getValue(Landroid/content/res/Resources;ILandroid/util/TypedValue;Landroid/graphics/drawable/Drawable;)V
    .locals 12
    .parameter "res"
    .parameter "resId"
    .parameter "outValue"
    .parameter "baseIcon"

    .prologue
    .line 463
    instance-of v0, p3, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_1

    .line 489
    :cond_0
    :goto_0
    return-void

    .line 465
    :cond_1
    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->getAppName()Ljava/lang/String;

    move-result-object v10

    .line 466
    .local v10, pkgName:Ljava/lang/String;
    new-instance v11, Landroid/util/TypedValue;

    invoke-direct {v11}, Landroid/util/TypedValue;-><init>()V

    .line 467
    .local v11, tempValue:Landroid/util/TypedValue;
    invoke-virtual {v11, p2}, Landroid/util/TypedValue;->setTo(Landroid/util/TypedValue;)V

    .line 468
    const/16 v0, 0x80

    iput v0, p2, Landroid/util/TypedValue;->assetCookie:I

    .line 469
    const v0, -0x7f000001

    and-int/2addr v0, p1

    iput v0, p2, Landroid/util/TypedValue;->data:I

    .line 470
    iget v0, p2, Landroid/util/TypedValue;->density:I

    invoke-static {v10, p1, v0}, Landroid/app/IconPackHelper$IconCustomizer;->getCachedIconPath(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .line 472
    new-instance v0, Ljava/io/File;

    iget-object v1, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 474
    invoke-virtual {p0}, Landroid/content/res/Resources;->getComposedIconInfo()Landroid/app/ComposedIconInfo;

    move-result-object v9

    .line 475
    .local v9, iconInfo:Landroid/app/ComposedIconInfo;
    const/4 v2, 0x0

    .line 476
    .local v2, back:I
    iget-object v0, v9, Landroid/app/ComposedIconInfo;->iconBacks:[I

    if-eqz v0, :cond_2

    iget-object v0, v9, Landroid/app/ComposedIconInfo;->iconBacks:[I

    array-length v0, v0

    if-lez v0, :cond_2

    .line 477
    iget-object v0, v9, Landroid/app/ComposedIconInfo;->iconBacks:[I

    iget-object v1, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const v3, 0x7fffffff

    and-int/2addr v1, v3

    iget-object v3, v9, Landroid/app/ComposedIconInfo;->iconBacks:[I

    array-length v3, v3

    rem-int/2addr v1, v3

    aget v2, v0, v1

    .line 480
    :cond_2
    iget v3, v9, Landroid/app/ComposedIconInfo;->iconMask:I

    iget v4, v9, Landroid/app/ComposedIconInfo;->iconUpon:I

    iget v5, v9, Landroid/app/ComposedIconInfo;->iconScale:F

    iget v6, v9, Landroid/app/ComposedIconInfo;->iconSize:I

    iget-object v7, v9, Landroid/app/ComposedIconInfo;->colorFilter:[F

    move-object v0, p3

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Landroid/app/IconPackHelper$IconCustomizer;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;IIIFI[F)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 483
    .local v8, bmp:Landroid/graphics/Bitmap;
    iget v0, p2, Landroid/util/TypedValue;->density:I

    invoke-static {v10, p1, v0}, Landroid/app/IconPackHelper$IconCustomizer;->getCachedIconName(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/app/IconPackHelper$IconCustomizer;->cacheComposedIcon(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 484
    invoke-static {}, Landroid/app/IconPackHelper;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to cache icon "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    invoke-virtual {p2, v11}, Landroid/util/TypedValue;->setTo(Landroid/util/TypedValue;)V

    goto/16 :goto_0
.end method
