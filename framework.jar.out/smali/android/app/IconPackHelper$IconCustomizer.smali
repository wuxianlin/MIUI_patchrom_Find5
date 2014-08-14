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
    .line 418
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Landroid/app/IconPackHelper$IconCustomizer;->sRandom:Ljava/util/Random;

    .line 422
    const-string/jumbo v0, "themes"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/res/IThemeService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/res/IThemeService;

    move-result-object v0

    sput-object v0, Landroid/app/IconPackHelper$IconCustomizer;->sThemeService:Landroid/content/res/IThemeService;

    .line 424
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static cacheComposedIcon(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 3
    .parameter "bmp"
    .parameter "path"

    .prologue
    .line 557
    :try_start_0
    sget-object v1, Landroid/app/IconPackHelper$IconCustomizer;->sThemeService:Landroid/content/res/IThemeService;

    invoke-interface {v1, p0, p1}, Landroid/content/res/IThemeService;->cacheComposedIcon(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 562
    :goto_0
    return v1

    .line 558
    :catch_0
    move-exception v0

    .line 559
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/IconPackHelper;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unable to cache icon."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 562
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FI)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "icon"
    .parameter "res"
    .parameter "iconBack"
    .parameter "iconMask"
    .parameter "iconUpon"
    .parameter "scale"
    .parameter "iconSize"

    .prologue
    .line 476
    if-gtz p6, :cond_0

    const/4 v2, 0x0

    .line 552
    :goto_0
    return-object v2

    .line 478
    :cond_0
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4}, Landroid/graphics/Canvas;-><init>()V

    .line 479
    .local v4, canvas:Landroid/graphics/Canvas;
    new-instance v9, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v10, 0x1

    const/4 v11, 0x2

    invoke-direct {v9, v10, v11}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v4, v9}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 482
    const/4 v8, 0x0

    .local v8, width:I
    const/4 v5, 0x0

    .line 483
    .local v5, height:I
    instance-of v9, p0, Landroid/graphics/drawable/PaintDrawable;

    if-eqz v9, :cond_3

    move-object v7, p0

    .line 484
    check-cast v7, Landroid/graphics/drawable/PaintDrawable;

    .line 485
    .local v7, painter:Landroid/graphics/drawable/PaintDrawable;
    move/from16 v0, p6

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 486
    move/from16 v0, p6

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 489
    move/from16 v8, p6

    .line 490
    move/from16 v5, p6

    .line 515
    .end local v7           #painter:Landroid/graphics/drawable/PaintDrawable;
    :cond_1
    :goto_1
    if-lez v8, :cond_2

    if-gtz v5, :cond_6

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 491
    :cond_3
    instance-of v9, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v9, :cond_1

    move-object v3, p0

    .line 493
    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 494
    .local v3, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 495
    .local v2, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v9

    if-nez v9, :cond_4

    .line 496
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    .line 498
    :cond_4
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/graphics/Canvas;->setDensity(I)V

    .line 505
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    mul-int/lit8 v10, p6, 0x2

    if-ge v9, v10, :cond_5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int/lit8 v10, p6, 0x2

    if-ge v9, v10, :cond_5

    .line 507
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 508
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    goto :goto_1

    .line 510
    :cond_5
    move/from16 v8, p6

    .line 511
    move/from16 v5, p6

    goto :goto_1

    .line 517
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    :cond_6
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v5, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 519
    .restart local v2       #bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v4, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 522
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 523
    .local v6, oldBounds:Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 524
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10, v8, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 525
    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    .line 526
    div-int/lit8 v9, v8, 0x2

    int-to-float v9, v9

    div-int/lit8 v10, v5, 0x2

    int-to-float v10, v10

    move/from16 v0, p5

    move/from16 v1, p5

    invoke-virtual {v4, v0, v1, v9, v10}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 527
    invoke-virtual {p0, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 528
    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V

    .line 531
    if-eqz p3, :cond_7

    .line 532
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {p3, v9}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    move-object v9, p3

    .line 533
    check-cast v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v9

    new-instance v10, Landroid/graphics/PorterDuffXfermode;

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v10, v11}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 535
    invoke-virtual {p3, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 538
    :cond_7
    if-eqz p2, :cond_8

    .line 539
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {p2, v9}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    move-object v9, p2

    .line 540
    check-cast v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v9

    new-instance v10, Landroid/graphics/PorterDuffXfermode;

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v10, v11}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 542
    invoke-virtual {p2, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 545
    :cond_8
    if-eqz p4, :cond_9

    .line 546
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 547
    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 549
    :cond_9
    invoke-virtual {p0, v6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 550
    invoke-virtual {v4}, Landroid/graphics/Canvas;->getDensity()I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/graphics/Bitmap;->setDensity(I)V

    goto/16 :goto_0
.end method

.method private static getCachedIconName(Ljava/lang/String;II)Ljava/lang/String;
    .locals 4
    .parameter "pkgName"
    .parameter "resId"
    .parameter "density"

    .prologue
    .line 571
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
    .line 566
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
    .line 428
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 429
    .local v0, res:Landroid/content/res/Resources;
    invoke-static {p0, v0, p2}, Landroid/app/IconPackHelper$IconCustomizer;->getComposedIconDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Landroid/app/ComposedIconInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method public static getComposedIconDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Landroid/app/ComposedIconInfo;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .parameter "icon"
    .parameter "res"
    .parameter "iconInfo"

    .prologue
    .line 434
    if-nez p2, :cond_0

    .line 441
    .end local p0
    :goto_0
    return-object p0

    .line 435
    .restart local p0
    :cond_0
    const/4 v2, 0x0

    .line 436
    .local v2, back:Landroid/graphics/drawable/Drawable;
    iget-object v0, p2, Landroid/app/ComposedIconInfo;->iconBacks:[Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    iget-object v0, p2, Landroid/app/ComposedIconInfo;->iconBacks:[Landroid/graphics/drawable/BitmapDrawable;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 437
    iget-object v0, p2, Landroid/app/ComposedIconInfo;->iconBacks:[Landroid/graphics/drawable/BitmapDrawable;

    sget-object v1, Landroid/app/IconPackHelper$IconCustomizer;->sRandom:Ljava/util/Random;

    iget-object v3, p2, Landroid/app/ComposedIconInfo;->iconBacks:[Landroid/graphics/drawable/BitmapDrawable;

    array-length v3, v3

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    aget-object v2, v0, v1

    .line 439
    :cond_1
    iget-object v3, p2, Landroid/app/ComposedIconInfo;->iconMask:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p2, Landroid/app/ComposedIconInfo;->iconUpon:Landroid/graphics/drawable/BitmapDrawable;

    iget v5, p2, Landroid/app/ComposedIconInfo;->iconScale:F

    iget v6, p2, Landroid/app/ComposedIconInfo;->iconSize:I

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Landroid/app/IconPackHelper$IconCustomizer;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FI)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 441
    .local v7, bmp:Landroid/graphics/Bitmap;
    if-eqz v7, :cond_2

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_1
    move-object p0, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getValue(Landroid/content/res/Resources;ILandroid/util/TypedValue;Landroid/graphics/drawable/Drawable;)V
    .locals 11
    .parameter "res"
    .parameter "resId"
    .parameter "outValue"
    .parameter "baseIcon"

    .prologue
    .line 446
    instance-of v0, p3, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_1

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 448
    :cond_1
    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->getAppName()Ljava/lang/String;

    move-result-object v9

    .line 449
    .local v9, pkgName:Ljava/lang/String;
    new-instance v10, Landroid/util/TypedValue;

    invoke-direct {v10}, Landroid/util/TypedValue;-><init>()V

    .line 450
    .local v10, tempValue:Landroid/util/TypedValue;
    invoke-virtual {v10, p2}, Landroid/util/TypedValue;->setTo(Landroid/util/TypedValue;)V

    .line 451
    const/16 v0, 0x80

    iput v0, p2, Landroid/util/TypedValue;->assetCookie:I

    .line 452
    const v0, -0x7f000001

    and-int/2addr v0, p1

    iput v0, p2, Landroid/util/TypedValue;->data:I

    .line 453
    iget v0, p2, Landroid/util/TypedValue;->density:I

    invoke-static {v9, p1, v0}, Landroid/app/IconPackHelper$IconCustomizer;->getCachedIconPath(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .line 455
    new-instance v0, Ljava/io/File;

    iget-object v1, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 457
    invoke-virtual {p0}, Landroid/content/res/Resources;->getComposedIconInfo()Landroid/app/ComposedIconInfo;

    move-result-object v8

    .line 458
    .local v8, iconInfo:Landroid/app/ComposedIconInfo;
    const/4 v2, 0x0

    .line 459
    .local v2, back:Landroid/graphics/drawable/Drawable;
    iget-object v0, v8, Landroid/app/ComposedIconInfo;->iconBacks:[Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_2

    iget-object v0, v8, Landroid/app/ComposedIconInfo;->iconBacks:[Landroid/graphics/drawable/BitmapDrawable;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 460
    iget-object v0, v8, Landroid/app/ComposedIconInfo;->iconBacks:[Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const v3, 0x7fffffff

    and-int/2addr v1, v3

    iget-object v3, v8, Landroid/app/ComposedIconInfo;->iconBacks:[Landroid/graphics/drawable/BitmapDrawable;

    array-length v3, v3

    rem-int/2addr v1, v3

    aget-object v2, v0, v1

    .line 463
    :cond_2
    iget-object v3, v8, Landroid/app/ComposedIconInfo;->iconMask:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, v8, Landroid/app/ComposedIconInfo;->iconUpon:Landroid/graphics/drawable/BitmapDrawable;

    iget v5, v8, Landroid/app/ComposedIconInfo;->iconScale:F

    iget v6, v8, Landroid/app/ComposedIconInfo;->iconSize:I

    move-object v0, p3

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Landroid/app/IconPackHelper$IconCustomizer;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FI)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 465
    .local v7, bmp:Landroid/graphics/Bitmap;
    iget v0, p2, Landroid/util/TypedValue;->density:I

    invoke-static {v9, p1, v0}, Landroid/app/IconPackHelper$IconCustomizer;->getCachedIconName(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/app/IconPackHelper$IconCustomizer;->cacheComposedIcon(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 466
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

    .line 468
    invoke-virtual {p2, v10}, Landroid/util/TypedValue;->setTo(Landroid/util/TypedValue;)V

    goto/16 :goto_0
.end method
