.class public Lcom/android/internal/util/cm/NavigationRingHelpers;
.super Ljava/lang/Object;
.source "NavigationRingHelpers.java"


# static fields
.field private static final ASSIST_ICON_METADATA_NAME:Ljava/lang/String; = "com.android.systemui.action_assist_icon"

.field public static final MAX_ACTIONS:I = 0x3

.field private static final TORCH_STATE_FILTER:Landroid/content/IntentFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "net.cactii.flash2.TORCH_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/util/cm/NavigationRingHelpers;->TORCH_STATE_FILTER:Landroid/content/IntentFilter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method private static addFocusedStateToSearchIconIfMissing(Landroid/content/Context;Lcom/android/internal/widget/multiwaveview/GlowPadView;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Lcom/android/internal/widget/multiwaveview/GlowPadView;

    .prologue
    const/4 v9, -0x1

    .line 305
    invoke-virtual {p1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getTargetDrawables()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 306
    .local v6, "target":Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getResourceId()I

    move-result v7

    const v8, 0x108029b

    if-ne v7, v8, :cond_0

    .line 308
    invoke-virtual {v6}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 309
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v7, v2, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v7, :cond_1

    move-object v1, v2

    .line 310
    check-cast v1, Landroid/graphics/drawable/StateListDrawable;

    .line 311
    .local v1, "d":Landroid/graphics/drawable/StateListDrawable;
    sget-object v7, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawableIndex([I)I

    move-result v4

    .line 312
    .local v4, "inActiveIndex":I
    sget-object v7, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_ACTIVE:[I

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawableIndex([I)I

    move-result v0

    .line 313
    .local v0, "activeIndex":I
    if-eq v4, v9, :cond_1

    if-eq v0, v9, :cond_1

    .line 314
    new-instance v5, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 315
    .local v5, "selector":Landroid/graphics/drawable/StateListDrawable;
    sget-object v7, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 317
    sget-object v7, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_ACTIVE:[I

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 319
    sget-object v7, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_FOCUSED:[I

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 321
    invoke-virtual {v6, v5}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 327
    .end local v0    # "activeIndex":I
    .end local v1    # "d":Landroid/graphics/drawable/StateListDrawable;
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v4    # "inActiveIndex":I
    .end local v5    # "selector":Landroid/graphics/drawable/StateListDrawable;
    .end local v6    # "target":Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_1
    return-void
.end method

.method private static createDrawableForActivity(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    .locals 16
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "activityIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 172
    const v14, 0x1080371

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 174
    .local v7, "iconBg":Landroid/graphics/drawable/Drawable;
    const v14, 0x1080370

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 178
    .local v8, "iconBgActivated":Landroid/graphics/drawable/Drawable;
    const v14, 0x1050081

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v9, v14

    .line 180
    .local v9, "iconSize":I
    const v14, 0x1050082

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v1, v14

    .line 182
    .local v1, "activityIconSize":I
    sub-int v14, v9, v1

    div-int/lit8 v10, v14, 0x2

    .line 185
    .local v10, "margin":I
    new-instance v3, Landroid/graphics/ColorMatrix;

    invoke-direct {v3}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 186
    .local v3, "colorMatrix":Landroid/graphics/ColorMatrix;
    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 187
    new-instance v4, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v4, v3}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 190
    .local v4, "grayscaleFilter":Landroid/graphics/ColorMatrixColorFilter;
    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v9, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 192
    .local v12, "scaledActivityIconBitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 193
    .local v2, "canvas":Landroid/graphics/Canvas;
    sub-int v14, v9, v10

    sub-int v15, v9, v10

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v10, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 194
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 195
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 198
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v12}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 200
    .local v11, "scaledActivityIcon":Landroid/graphics/drawable/BitmapDrawable;
    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    const/4 v14, 0x2

    new-array v14, v14, [Landroid/graphics/drawable/Drawable;

    const/4 v15, 0x0

    aput-object v7, v14, v15

    const/4 v15, 0x1

    aput-object v11, v14, v15

    invoke-direct {v5, v14}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 202
    .local v5, "icon":Landroid/graphics/drawable/LayerDrawable;
    new-instance v6, Landroid/graphics/drawable/LayerDrawable;

    const/4 v14, 0x2

    new-array v14, v14, [Landroid/graphics/drawable/Drawable;

    const/4 v15, 0x0

    aput-object v8, v14, v15

    const/4 v15, 0x1

    aput-object v11, v14, v15

    invoke-direct {v6, v14}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 205
    .local v6, "iconActivated":Landroid/graphics/drawable/LayerDrawable;
    new-instance v13, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v13}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 206
    .local v13, "selector":Landroid/graphics/drawable/StateListDrawable;
    sget-object v14, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v13, v14, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 207
    sget-object v14, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_ACTIVE:[I

    invoke-virtual {v13, v14, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 208
    sget-object v14, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_FOCUSED:[I

    invoke-virtual {v13, v14, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 210
    new-instance v14, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v13}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    return-object v14
.end method

.method private static filterAction([Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "result"    # [Ljava/lang/String;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "available"    # Z

    .prologue
    .line 86
    if-eqz p2, :cond_1

    .line 95
    :cond_0
    return-void

    .line 90
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 91
    aget-object v1, p0, v0

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 92
    const/4 v1, 0x0

    aput-object v1, p0, v0

    .line 90
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static getRingerDrawableResId(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 232
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 233
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 235
    .local v1, "ringerMode":I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 236
    const v2, 0x108038b

    .line 240
    :goto_0
    return v2

    .line 237
    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 238
    const v2, 0x108037c

    goto :goto_0

    .line 240
    :cond_1
    const v2, 0x108037f

    goto :goto_0
.end method

.method private static getSilentDrawableResId(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 223
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 224
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    const v1, 0x108037c

    .line 227
    :goto_0
    return v1

    :cond_0
    const v1, 0x108037f

    goto :goto_0
.end method

.method public static getTargetActions(Landroid/content/Context;)[Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x3

    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 64
    .local v0, "cr":Landroid/content/ContentResolver;
    new-array v3, v5, [Ljava/lang/String;

    .line 65
    .local v3, "result":[Ljava/lang/String;
    const/4 v2, 0x1

    .line 67
    .local v2, "isDefault":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_1

    .line 68
    sget-object v4, Landroid/provider/Settings$System;->NAVIGATION_RING_TARGETS:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 69
    aget-object v4, v3, v1

    if-eqz v4, :cond_0

    .line 70
    const/4 v2, 0x0

    .line 67
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 74
    :cond_1
    if-eqz v2, :cond_2

    .line 75
    invoke-static {p0}, Lcom/android/internal/util/cm/NavigationRingHelpers;->resetActionsToDefaults(Landroid/content/Context;)V

    .line 76
    const/4 v4, 0x1

    const-string v5, "assist"

    aput-object v5, v3, v4

    .line 79
    :cond_2
    const-string v4, "assist"

    invoke-static {p0}, Lcom/android/internal/util/cm/NavigationRingHelpers;->isAssistantAvailable(Landroid/content/Context;)Z

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/android/internal/util/cm/NavigationRingHelpers;->filterAction([Ljava/lang/String;Ljava/lang/String;Z)V

    .line 80
    const-string v4, "torch"

    invoke-static {p0}, Lcom/android/internal/util/cm/NavigationRingHelpers;->isTorchAvailable(Landroid/content/Context;)Z

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/android/internal/util/cm/NavigationRingHelpers;->filterAction([Ljava/lang/String;Ljava/lang/String;Z)V

    .line 82
    return-object v3
.end method

.method public static getTargetDrawable(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 121
    const/4 v5, -0x1

    .line 122
    .local v5, "resourceId":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 124
    .local v4, "res":Landroid/content/res/Resources;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "none"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 125
    :cond_0
    const v5, 0x1080372

    .line 146
    :cond_1
    :goto_0
    if-gez v5, :cond_d

    .line 149
    const/4 v6, 0x0

    :try_start_0
    invoke-static {p1, v6}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    .line 150
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 151
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v6, 0x1

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 153
    .local v1, "info":Landroid/content/pm/ActivityInfo;
    if-eqz v1, :cond_c

    .line 154
    invoke-virtual {v1, v3}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/internal/util/cm/NavigationRingHelpers;->createDrawableForActivity(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 168
    .end local v1    # "info":Landroid/content/pm/ActivityInfo;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_2
    :goto_1
    return-object v0

    .line 126
    :cond_3
    const-string v6, "screenshot"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 127
    const v5, 0x1080379

    goto :goto_0

    .line 128
    :cond_4
    const-string v6, "imeSwitcher"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 129
    const v5, 0x1080373

    goto :goto_0

    .line 130
    :cond_5
    const-string v6, "ringVibrate"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 131
    invoke-static {p0}, Lcom/android/internal/util/cm/NavigationRingHelpers;->getVibrateDrawableResId(Landroid/content/Context;)I

    move-result v5

    goto :goto_0

    .line 132
    :cond_6
    const-string v6, "ringSilent"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 133
    invoke-static {p0}, Lcom/android/internal/util/cm/NavigationRingHelpers;->getSilentDrawableResId(Landroid/content/Context;)I

    move-result v5

    goto :goto_0

    .line 134
    :cond_7
    const-string v6, "ringVibrateSilent"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 135
    invoke-static {p0}, Lcom/android/internal/util/cm/NavigationRingHelpers;->getRingerDrawableResId(Landroid/content/Context;)I

    move-result v5

    goto :goto_0

    .line 136
    :cond_8
    const-string v6, "killTask"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 137
    const v5, 0x1080376

    goto :goto_0

    .line 138
    :cond_9
    const-string v6, "standby"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 139
    const v5, 0x1080382

    goto :goto_0

    .line 140
    :cond_a
    const-string v6, "torch"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 141
    invoke-static {p0}, Lcom/android/internal/util/cm/NavigationRingHelpers;->getTorchDrawableResId(Landroid/content/Context;)I

    move-result v5

    goto :goto_0

    .line 142
    :cond_b
    const-string v6, "assist"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 143
    const v5, 0x108029b

    goto/16 :goto_0

    .line 156
    :catch_0
    move-exception v6

    .line 160
    :cond_c
    const v5, 0x1080372

    .line 163
    :cond_d
    new-instance v0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-direct {v0, v4, v5}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;I)V

    .line 164
    .local v0, "drawable":Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    const v6, 0x1080372

    if-ne v5, v6, :cond_2

    .line 165
    invoke-virtual {v0, v7}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setEnabled(Z)V

    goto/16 :goto_1
.end method

.method private static getTorchDrawableResId(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 245
    const/4 v2, 0x0

    sget-object v3, Lcom/android/internal/util/cm/NavigationRingHelpers;->TORCH_STATE_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 246
    .local v1, "stateIntent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    const-string v2, "state"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 249
    .local v0, "active":Z
    :cond_0
    if-eqz v0, :cond_1

    .line 250
    const v2, 0x1080388

    .line 253
    :goto_0
    return v2

    :cond_1
    const v2, 0x1080385

    goto :goto_0
.end method

.method private static getVibrateDrawableResId(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 214
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 215
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 216
    const v1, 0x108038b

    .line 218
    :goto_0
    return v1

    :cond_0
    const v1, 0x108037f

    goto :goto_0
.end method

.method public static hasLockscreenTargets(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 257
    const/4 v3, 0x3

    new-array v1, v3, [Ljava/lang/String;

    .line 258
    .local v1, "result":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_1

    .line 259
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Settings$System;->NAVIGATION_RING_TARGETS:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 261
    .local v2, "targetValue":Ljava/lang/String;
    const-string v3, "none"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 262
    const/4 v3, 0x1

    .line 265
    .end local v2    # "targetValue":Ljava/lang/String;
    :goto_1
    return v3

    .line 258
    .restart local v2    # "targetValue":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 265
    .end local v2    # "targetValue":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static isAssistantAvailable(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 105
    const-string v0, "search"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    const/4 v2, -0x2

    invoke-virtual {v0, p0, v1, v2}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;ZI)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTorchAvailable(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 110
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 112
    .local v0, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v2, "net.cactii.flash2"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 117
    :cond_0
    :goto_0
    return v1

    .line 113
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static resetActionsToDefaults(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 98
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 99
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/Settings$System;->NAVIGATION_RING_TARGETS:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 100
    sget-object v1, Landroid/provider/Settings$System;->NAVIGATION_RING_TARGETS:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const-string v2, "assist"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 101
    sget-object v1, Landroid/provider/Settings$System;->NAVIGATION_RING_TARGETS:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 102
    return-void
.end method

.method public static swapSearchIconIfNeeded(Landroid/content/Context;Lcom/android/internal/widget/multiwaveview/GlowPadView;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Lcom/android/internal/widget/multiwaveview/GlowPadView;

    .prologue
    .line 289
    const-string v3, "search"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/SearchManager;

    const/4 v4, 0x1

    const/4 v5, -0x2

    invoke-virtual {v3, p0, v4, v5}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;ZI)Landroid/content/Intent;

    move-result-object v1

    .line 291
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 292
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 293
    .local v0, "component":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 294
    const-string v3, "com.android.systemui.action_assist_icon"

    const v4, 0x108029b

    invoke-virtual {p1, v0, v3, v4}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->replaceTargetDrawablesIfPresent(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v2

    .line 297
    .local v2, "replaced":Z
    if-eqz v2, :cond_0

    .line 298
    invoke-static {p0, p1}, Lcom/android/internal/util/cm/NavigationRingHelpers;->addFocusedStateToSearchIconIfMissing(Landroid/content/Context;Lcom/android/internal/widget/multiwaveview/GlowPadView;)V

    .line 302
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v2    # "replaced":Z
    :cond_0
    return-void
.end method

.method public static updateDynamicIconIfNeeded(Landroid/content/Context;Lcom/android/internal/widget/multiwaveview/GlowPadView;Ljava/lang/String;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Lcom/android/internal/widget/multiwaveview/GlowPadView;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "position"    # I

    .prologue
    .line 270
    const/4 v1, -0x1

    .line 272
    .local v1, "resourceId":I
    const-string v2, "ringVibrate"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 273
    invoke-static {p0}, Lcom/android/internal/util/cm/NavigationRingHelpers;->getVibrateDrawableResId(Landroid/content/Context;)I

    move-result v1

    .line 282
    :cond_0
    :goto_0
    if-lez v1, :cond_1

    .line 283
    invoke-virtual {p1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getTargetDrawables()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 284
    .local v0, "drawable":Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setDrawable(Landroid/content/res/Resources;I)V

    .line 286
    .end local v0    # "drawable":Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_1
    return-void

    .line 274
    :cond_2
    const-string v2, "ringSilent"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 275
    invoke-static {p0}, Lcom/android/internal/util/cm/NavigationRingHelpers;->getSilentDrawableResId(Landroid/content/Context;)I

    move-result v1

    goto :goto_0

    .line 276
    :cond_3
    const-string v2, "ringVibrateSilent"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 277
    invoke-static {p0}, Lcom/android/internal/util/cm/NavigationRingHelpers;->getRingerDrawableResId(Landroid/content/Context;)I

    move-result v1

    goto :goto_0

    .line 278
    :cond_4
    const-string v2, "torch"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 279
    invoke-static {p0}, Lcom/android/internal/util/cm/NavigationRingHelpers;->getTorchDrawableResId(Landroid/content/Context;)I

    move-result v1

    goto :goto_0
.end method
