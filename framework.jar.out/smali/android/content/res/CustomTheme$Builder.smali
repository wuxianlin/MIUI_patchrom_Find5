.class public Landroid/content/res/CustomTheme$Builder;
.super Ljava/lang/Object;
.source "CustomTheme.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/CustomTheme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mFontPkgName:Ljava/lang/String;

.field private mIconPkgName:Ljava/lang/String;

.field private mSystemUiPkgName:Ljava/lang/String;

.field private mThemePkgName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    return-void
.end method

.method public constructor <init>(Landroid/content/res/CustomTheme;)V
    .locals 1
    .parameter "theme"

    .prologue
    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    if-nez p1, :cond_0

    .line 236
    :goto_0
    return-void

    .line 232
    :cond_0
    iget-object v0, p1, Landroid/content/res/CustomTheme;->mIconPackPkgName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/res/CustomTheme$Builder;->mIconPkgName:Ljava/lang/String;

    .line 233
    iget-object v0, p1, Landroid/content/res/CustomTheme;->mThemePackageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/res/CustomTheme$Builder;->mThemePkgName:Ljava/lang/String;

    .line 234
    iget-object v0, p1, Landroid/content/res/CustomTheme;->mThemePackageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/res/CustomTheme$Builder;->mSystemUiPkgName:Ljava/lang/String;

    .line 235
    iget-object v0, p1, Landroid/content/res/CustomTheme;->mFontPkgName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/res/CustomTheme$Builder;->mFontPkgName:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public build()Landroid/content/res/CustomTheme;
    .locals 5

    .prologue
    .line 259
    new-instance v0, Landroid/content/res/CustomTheme;

    iget-object v1, p0, Landroid/content/res/CustomTheme$Builder;->mThemePkgName:Ljava/lang/String;

    iget-object v2, p0, Landroid/content/res/CustomTheme$Builder;->mSystemUiPkgName:Ljava/lang/String;

    iget-object v3, p0, Landroid/content/res/CustomTheme$Builder;->mIconPkgName:Ljava/lang/String;

    iget-object v4, p0, Landroid/content/res/CustomTheme$Builder;->mFontPkgName:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/res/CustomTheme;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public fonts(Ljava/lang/String;)Landroid/content/res/CustomTheme$Builder;
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 254
    const-string v0, "holo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    .end local p1
    :cond_0
    iput-object p1, p0, Landroid/content/res/CustomTheme$Builder;->mFontPkgName:Ljava/lang/String;

    .line 255
    return-object p0
.end method

.method public icons(Ljava/lang/String;)Landroid/content/res/CustomTheme$Builder;
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 249
    const-string v0, "holo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    .end local p1
    :cond_0
    iput-object p1, p0, Landroid/content/res/CustomTheme$Builder;->mIconPkgName:Ljava/lang/String;

    .line 250
    return-object p0
.end method

.method public overlay(Ljava/lang/String;)Landroid/content/res/CustomTheme$Builder;
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 239
    const-string v0, "holo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    .end local p1
    :cond_0
    iput-object p1, p0, Landroid/content/res/CustomTheme$Builder;->mThemePkgName:Ljava/lang/String;

    .line 240
    return-object p0
.end method

.method public systemUi(Ljava/lang/String;)Landroid/content/res/CustomTheme$Builder;
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 244
    const-string v0, "holo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    .end local p1
    :cond_0
    iput-object p1, p0, Landroid/content/res/CustomTheme$Builder;->mSystemUiPkgName:Ljava/lang/String;

    .line 245
    return-object p0
.end method
