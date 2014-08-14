.class public Landroid/content/res/ThemeConfig$Builder;
.super Ljava/lang/Object;
.source "ThemeConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/ThemeConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mFonts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIcons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOverlays:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/content/res/ThemeConfig$Builder;->mOverlays:Ljava/util/HashMap;

    .line 316
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/content/res/ThemeConfig$Builder;->mIcons:Ljava/util/HashMap;

    .line 317
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/content/res/ThemeConfig$Builder;->mFonts:Ljava/util/HashMap;

    .line 319
    return-void
.end method

.method public constructor <init>(Landroid/content/res/ThemeConfig;)V
    .locals 6
    .parameter "theme"

    .prologue
    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Landroid/content/res/ThemeConfig$Builder;->mOverlays:Ljava/util/HashMap;

    .line 316
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Landroid/content/res/ThemeConfig$Builder;->mIcons:Ljava/util/HashMap;

    .line 317
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Landroid/content/res/ThemeConfig$Builder;->mFonts:Ljava/util/HashMap;

    .line 322
    iget-object v4, p1, Landroid/content/res/ThemeConfig;->mThemes:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 323
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/res/ThemeConfig$AppTheme;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 324
    .local v3, key:Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ThemeConfig$AppTheme;

    .line 325
    .local v0, appTheme:Landroid/content/res/ThemeConfig$AppTheme;
    iget-object v4, p0, Landroid/content/res/ThemeConfig$Builder;->mFonts:Ljava/util/HashMap;

    invoke-virtual {v0}, Landroid/content/res/ThemeConfig$AppTheme;->getFontPackPkgName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    iget-object v4, p0, Landroid/content/res/ThemeConfig$Builder;->mIcons:Ljava/util/HashMap;

    invoke-virtual {v0}, Landroid/content/res/ThemeConfig$AppTheme;->getIconPackPkgName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    iget-object v4, p0, Landroid/content/res/ThemeConfig$Builder;->mOverlays:Ljava/util/HashMap;

    invoke-virtual {v0}, Landroid/content/res/ThemeConfig$AppTheme;->getOverlayPkgName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 329
    .end local v0           #appTheme:Landroid/content/res/ThemeConfig$AppTheme;
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/res/ThemeConfig$AppTheme;>;"
    .end local v3           #key:Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Landroid/content/res/ThemeConfig;
    .locals 9

    .prologue
    .line 390
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 391
    .local v1, appPkgSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v8, p0, Landroid/content/res/ThemeConfig$Builder;->mOverlays:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 392
    iget-object v8, p0, Landroid/content/res/ThemeConfig$Builder;->mIcons:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 393
    iget-object v8, p0, Landroid/content/res/ThemeConfig$Builder;->mFonts:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 395
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 396
    .local v3, appThemes:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/content/res/ThemeConfig$AppTheme;>;"
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 397
    .local v0, appPkgName:Ljava/lang/String;
    iget-object v8, p0, Landroid/content/res/ThemeConfig$Builder;->mIcons:Ljava/util/HashMap;

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 398
    .local v6, icon:Ljava/lang/String;
    iget-object v8, p0, Landroid/content/res/ThemeConfig$Builder;->mOverlays:Ljava/util/HashMap;

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 399
    .local v7, overlay:Ljava/lang/String;
    iget-object v8, p0, Landroid/content/res/ThemeConfig$Builder;->mFonts:Ljava/util/HashMap;

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 401
    .local v4, font:Ljava/lang/String;
    new-instance v2, Landroid/content/res/ThemeConfig$AppTheme;

    invoke-direct {v2, v7, v6, v4}, Landroid/content/res/ThemeConfig$AppTheme;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    .local v2, appTheme:Landroid/content/res/ThemeConfig$AppTheme;
    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 404
    .end local v0           #appPkgName:Ljava/lang/String;
    .end local v2           #appTheme:Landroid/content/res/ThemeConfig$AppTheme;
    .end local v4           #font:Ljava/lang/String;
    .end local v6           #icon:Ljava/lang/String;
    .end local v7           #overlay:Ljava/lang/String;
    :cond_0
    new-instance v8, Landroid/content/res/ThemeConfig;

    invoke-direct {v8, v3}, Landroid/content/res/ThemeConfig;-><init>(Ljava/util/Map;)V

    return-object v8
.end method

.method public defaultFont(Ljava/lang/String;)Landroid/content/res/ThemeConfig$Builder;
    .locals 2
    .parameter "themePkgName"

    .prologue
    .line 345
    if-eqz p1, :cond_0

    .line 346
    iget-object v0, p0, Landroid/content/res/ThemeConfig$Builder;->mFonts:Ljava/util/HashMap;

    const-string v1, "default"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    :goto_0
    return-object p0

    .line 348
    :cond_0
    iget-object v0, p0, Landroid/content/res/ThemeConfig$Builder;->mFonts:Ljava/util/HashMap;

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public defaultIcon(Ljava/lang/String;)Landroid/content/res/ThemeConfig$Builder;
    .locals 2
    .parameter "themePkgName"

    .prologue
    .line 354
    if-eqz p1, :cond_0

    .line 355
    iget-object v0, p0, Landroid/content/res/ThemeConfig$Builder;->mIcons:Ljava/util/HashMap;

    const-string v1, "default"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    :goto_0
    return-object p0

    .line 357
    :cond_0
    iget-object v0, p0, Landroid/content/res/ThemeConfig$Builder;->mIcons:Ljava/util/HashMap;

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public defaultOverlay(Ljava/lang/String;)Landroid/content/res/ThemeConfig$Builder;
    .locals 2
    .parameter "themePkgName"

    .prologue
    .line 336
    if-eqz p1, :cond_0

    .line 337
    iget-object v0, p0, Landroid/content/res/ThemeConfig$Builder;->mOverlays:Ljava/util/HashMap;

    const-string v1, "default"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    :goto_0
    return-object p0

    .line 339
    :cond_0
    iget-object v0, p0, Landroid/content/res/ThemeConfig$Builder;->mOverlays:Ljava/util/HashMap;

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public font(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ThemeConfig$Builder;
    .locals 1
    .parameter "appPkgName"
    .parameter "themePkgName"

    .prologue
    .line 381
    if-eqz p2, :cond_0

    .line 382
    iget-object v0, p0, Landroid/content/res/ThemeConfig$Builder;->mFonts:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    :goto_0
    return-object p0

    .line 384
    :cond_0
    iget-object v0, p0, Landroid/content/res/ThemeConfig$Builder;->mFonts:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public icon(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ThemeConfig$Builder;
    .locals 1
    .parameter "appPkgName"
    .parameter "themePkgName"

    .prologue
    .line 363
    if-eqz p2, :cond_0

    .line 364
    iget-object v0, p0, Landroid/content/res/ThemeConfig$Builder;->mIcons:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    :goto_0
    return-object p0

    .line 366
    :cond_0
    iget-object v0, p0, Landroid/content/res/ThemeConfig$Builder;->mIcons:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public overlay(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ThemeConfig$Builder;
    .locals 1
    .parameter "appPkgName"
    .parameter "themePkgName"

    .prologue
    .line 372
    if-eqz p2, :cond_0

    .line 373
    iget-object v0, p0, Landroid/content/res/ThemeConfig$Builder;->mOverlays:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    :goto_0
    return-object p0

    .line 375
    :cond_0
    iget-object v0, p0, Landroid/content/res/ThemeConfig$Builder;->mOverlays:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
