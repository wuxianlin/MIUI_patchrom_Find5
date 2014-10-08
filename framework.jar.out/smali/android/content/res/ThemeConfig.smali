.class public Landroid/content/res/ThemeConfig;
.super Ljava/lang/Object;
.source "ThemeConfig.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/ThemeConfig$HoloTheme;,
        Landroid/content/res/ThemeConfig$HoloConfig;,
        Landroid/content/res/ThemeConfig$JsonSerializer;,
        Landroid/content/res/ThemeConfig$Builder;,
        Landroid/content/res/ThemeConfig$AppTheme;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/content/res/ThemeConfig;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/res/ThemeConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final HOLO_DEFAULT:Ljava/lang/String; = "holo"

.field private static final KEY_DEFAULT_PKG:Ljava/lang/String; = "default"

.field public static final SYSTEMUI_NAVBAR_PKG:Ljava/lang/String; = "com.android.systemui.navbar"

.field public static final TAG:Ljava/lang/String;

.field private static final mHoloAppTheme:Landroid/content/res/ThemeConfig$HoloTheme;

.field private static final mHoloConfig:Landroid/content/res/ThemeConfig$HoloConfig;


# instance fields
.field protected final mThemes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/res/ThemeConfig$AppTheme;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Landroid/content/res/ThemeConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/content/res/ThemeConfig;->TAG:Ljava/lang/String;

    .line 56
    new-instance v0, Landroid/content/res/ThemeConfig$HoloConfig;

    invoke-direct {v0}, Landroid/content/res/ThemeConfig$HoloConfig;-><init>()V

    sput-object v0, Landroid/content/res/ThemeConfig;->mHoloConfig:Landroid/content/res/ThemeConfig$HoloConfig;

    .line 57
    new-instance v0, Landroid/content/res/ThemeConfig$HoloTheme;

    invoke-direct {v0}, Landroid/content/res/ThemeConfig$HoloTheme;-><init>()V

    sput-object v0, Landroid/content/res/ThemeConfig;->mHoloAppTheme:Landroid/content/res/ThemeConfig$HoloTheme;

    .line 196
    new-instance v0, Landroid/content/res/ThemeConfig$1;

    invoke-direct {v0}, Landroid/content/res/ThemeConfig$1;-><init>()V

    sput-object v0, Landroid/content/res/ThemeConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/res/ThemeConfig$AppTheme;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, appThemes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/content/res/ThemeConfig$AppTheme;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/content/res/ThemeConfig;->mThemes:Ljava/util/Map;

    .line 63
    iget-object v0, p0, Landroid/content/res/ThemeConfig;->mThemes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 64
    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Landroid/content/res/ThemeConfig;
    .locals 1
    .parameter "json"

    .prologue
    .line 141
    invoke-static {p0}, Landroid/content/res/ThemeConfig$JsonSerializer;->fromJson(Ljava/lang/String;)Landroid/content/res/ThemeConfig;

    move-result-object v0

    return-object v0
.end method

.method public static getBootTheme(Landroid/content/ContentResolver;)Landroid/content/res/ThemeConfig;
    .locals 9
    .parameter "resolver"

    .prologue
    .line 150
    sget-object v0, Landroid/content/res/ThemeConfig;->mHoloConfig:Landroid/content/res/ThemeConfig$HoloConfig;

    .line 152
    .local v0, bootTheme:Landroid/content/res/ThemeConfig;
    :try_start_0
    const-string/jumbo v7, "themeConfig"

    invoke-static {p0, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 154
    .local v5, json:Ljava/lang/String;
    invoke-static {v5}, Landroid/content/res/ThemeConfig;->fromJson(Ljava/lang/String;)Landroid/content/res/ThemeConfig;

    move-result-object v0

    .line 157
    if-nez v0, :cond_0

    .line 158
    const-string/jumbo v7, "persist.sys.themePackageName"

    invoke-static {p0, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 160
    .local v6, overlayPkgName:Ljava/lang/String;
    const-string/jumbo v7, "themeIconPackPkgName"

    invoke-static {p0, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 162
    .local v4, iconPackPkgName:Ljava/lang/String;
    const-string/jumbo v7, "themeFontPackPkgName"

    invoke-static {p0, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 165
    .local v3, fontPkgName:Ljava/lang/String;
    new-instance v1, Landroid/content/res/ThemeConfig$Builder;

    invoke-direct {v1}, Landroid/content/res/ThemeConfig$Builder;-><init>()V

    .line 166
    .local v1, builder:Landroid/content/res/ThemeConfig$Builder;
    invoke-virtual {v1, v6}, Landroid/content/res/ThemeConfig$Builder;->defaultOverlay(Ljava/lang/String;)Landroid/content/res/ThemeConfig$Builder;

    .line 167
    invoke-virtual {v1, v4}, Landroid/content/res/ThemeConfig$Builder;->defaultIcon(Ljava/lang/String;)Landroid/content/res/ThemeConfig$Builder;

    .line 168
    invoke-virtual {v1, v3}, Landroid/content/res/ThemeConfig$Builder;->defaultFont(Ljava/lang/String;)Landroid/content/res/ThemeConfig$Builder;

    .line 169
    invoke-virtual {v1}, Landroid/content/res/ThemeConfig$Builder;->build()Landroid/content/res/ThemeConfig;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 174
    .end local v1           #builder:Landroid/content/res/ThemeConfig$Builder;
    .end local v3           #fontPkgName:Ljava/lang/String;
    .end local v4           #iconPackPkgName:Ljava/lang/String;
    .end local v5           #json:Ljava/lang/String;
    .end local v6           #overlayPkgName:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 171
    :catch_0
    move-exception v2

    .line 172
    .local v2, e:Ljava/lang/SecurityException;
    sget-object v7, Landroid/content/res/ThemeConfig;->TAG:Ljava/lang/String;

    const-string v8, "Could not get boot theme"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getDefaultTheme()Landroid/content/res/ThemeConfig$AppTheme;
    .locals 3

    .prologue
    .line 103
    iget-object v1, p0, Landroid/content/res/ThemeConfig;->mThemes:Ljava/util/Map;

    const-string v2, "default"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ThemeConfig$AppTheme;

    .line 104
    .local v0, theme:Landroid/content/res/ThemeConfig$AppTheme;
    if-nez v0, :cond_0

    sget-object v0, Landroid/content/res/ThemeConfig;->mHoloAppTheme:Landroid/content/res/ThemeConfig$HoloTheme;

    .line 105
    :cond_0
    return-object v0
.end method

.method public static getSystemTheme()Landroid/content/res/ThemeConfig;
    .locals 1

    .prologue
    .line 182
    sget-object v0, Landroid/content/res/ThemeConfig;->mHoloConfig:Landroid/content/res/ThemeConfig$HoloConfig;

    return-object v0
.end method

.method private getThemeFor(Ljava/lang/String;)Landroid/content/res/ThemeConfig$AppTheme;
    .locals 2
    .parameter "pkgName"

    .prologue
    .line 97
    iget-object v1, p0, Landroid/content/res/ThemeConfig;->mThemes:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ThemeConfig$AppTheme;

    .line 98
    .local v0, theme:Landroid/content/res/ThemeConfig$AppTheme;
    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/content/res/ThemeConfig;->getDefaultTheme()Landroid/content/res/ThemeConfig$AppTheme;

    move-result-object v0

    .line 99
    :cond_0
    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 218
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 221
    :goto_0
    return-object v1

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    sget-object v1, Landroid/content/res/ThemeConfig;->TAG:Ljava/lang/String;

    const-string v2, "clone not supported"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 221
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public compareTo(Landroid/content/res/ThemeConfig;)I
    .locals 3
    .parameter "o"

    .prologue
    .line 210
    if-nez p1, :cond_0

    const/4 v0, -0x1

    .line 213
    :goto_0
    return v0

    .line 211
    :cond_0
    const/4 v0, 0x0

    .line 212
    .local v0, n:I
    iget-object v1, p0, Landroid/content/res/ThemeConfig;->mThemes:Ljava/util/Map;

    iget-object v2, p1, Landroid/content/res/ThemeConfig;->mThemes:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 213
    :goto_1
    goto :goto_0

    .line 212
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    check-cast p1, Landroid/content/res/ThemeConfig;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/content/res/ThemeConfig;->compareTo(Landroid/content/res/ThemeConfig;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "object"

    .prologue
    .line 110
    if-ne p1, p0, :cond_0

    .line 111
    const/4 v3, 0x1

    .line 123
    :goto_0
    return v3

    .line 113
    :cond_0
    instance-of v3, p1, Landroid/content/res/ThemeConfig;

    if-eqz v3, :cond_3

    move-object v2, p1

    .line 114
    check-cast v2, Landroid/content/res/ThemeConfig;

    .line 116
    .local v2, o:Landroid/content/res/ThemeConfig;
    iget-object v3, p0, Landroid/content/res/ThemeConfig;->mThemes:Ljava/util/Map;

    if-nez v3, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 118
    .local v0, currThemes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/content/res/ThemeConfig$AppTheme;>;"
    :goto_1
    iget-object v3, v2, Landroid/content/res/ThemeConfig;->mThemes:Ljava/util/Map;

    if-nez v3, :cond_2

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 121
    .local v1, newThemes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/content/res/ThemeConfig$AppTheme;>;"
    :goto_2
    invoke-interface {v0, v1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0

    .line 116
    .end local v0           #currThemes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/content/res/ThemeConfig$AppTheme;>;"
    .end local v1           #newThemes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/content/res/ThemeConfig$AppTheme;>;"
    :cond_1
    iget-object v0, p0, Landroid/content/res/ThemeConfig;->mThemes:Ljava/util/Map;

    goto :goto_1

    .line 118
    .restart local v0       #currThemes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/content/res/ThemeConfig$AppTheme;>;"
    :cond_2
    iget-object v1, v2, Landroid/content/res/ThemeConfig;->mThemes:Ljava/util/Map;

    goto :goto_2

    .line 123
    .end local v0           #currThemes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/content/res/ThemeConfig$AppTheme;>;"
    .end local v2           #o:Landroid/content/res/ThemeConfig;
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getFontPkgName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 87
    invoke-direct {p0}, Landroid/content/res/ThemeConfig;->getDefaultTheme()Landroid/content/res/ThemeConfig$AppTheme;

    move-result-object v0

    .line 88
    .local v0, defaultTheme:Landroid/content/res/ThemeConfig$AppTheme;
    iget-object v1, v0, Landroid/content/res/ThemeConfig$AppTheme;->mFontPkgName:Ljava/lang/String;

    return-object v1
.end method

.method public getFontPkgNameForApp(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "appPkgName"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Landroid/content/res/ThemeConfig;->getThemeFor(Ljava/lang/String;)Landroid/content/res/ThemeConfig$AppTheme;

    move-result-object v0

    .line 93
    .local v0, theme:Landroid/content/res/ThemeConfig$AppTheme;
    iget-object v1, v0, Landroid/content/res/ThemeConfig$AppTheme;->mFontPkgName:Ljava/lang/String;

    return-object v1
.end method

.method public getIconPackPkgName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/content/res/ThemeConfig;->getDefaultTheme()Landroid/content/res/ThemeConfig$AppTheme;

    move-result-object v0

    .line 78
    .local v0, theme:Landroid/content/res/ThemeConfig$AppTheme;
    iget-object v1, v0, Landroid/content/res/ThemeConfig$AppTheme;->mIconPkgName:Ljava/lang/String;

    return-object v1
.end method

.method public getIconPackPkgNameForApp(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "appPkgName"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Landroid/content/res/ThemeConfig;->getThemeFor(Ljava/lang/String;)Landroid/content/res/ThemeConfig$AppTheme;

    move-result-object v0

    .line 83
    .local v0, theme:Landroid/content/res/ThemeConfig$AppTheme;
    iget-object v1, v0, Landroid/content/res/ThemeConfig$AppTheme;->mIconPkgName:Ljava/lang/String;

    return-object v1
.end method

.method public getOverlayPkgName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/content/res/ThemeConfig;->getDefaultTheme()Landroid/content/res/ThemeConfig$AppTheme;

    move-result-object v0

    .line 68
    .local v0, theme:Landroid/content/res/ThemeConfig$AppTheme;
    iget-object v1, v0, Landroid/content/res/ThemeConfig$AppTheme;->mOverlayPkgName:Ljava/lang/String;

    return-object v1
.end method

.method public getOverlayPkgNameForApp(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "appPkgName"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Landroid/content/res/ThemeConfig;->getThemeFor(Ljava/lang/String;)Landroid/content/res/ThemeConfig$AppTheme;

    move-result-object v0

    .line 73
    .local v0, theme:Landroid/content/res/ThemeConfig$AppTheme;
    iget-object v1, v0, Landroid/content/res/ThemeConfig$AppTheme;->mOverlayPkgName:Ljava/lang/String;

    return-object v1
.end method

.method public toJson()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    invoke-static {p0}, Landroid/content/res/ThemeConfig$JsonSerializer;->toJson(Landroid/content/res/ThemeConfig;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .local v0, result:Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/content/res/ThemeConfig;->mThemes:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 130
    const-string/jumbo v1, "themes:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    iget-object v1, p0, Landroid/content/res/ThemeConfig;->mThemes:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 133
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 192
    invoke-static {p0}, Landroid/content/res/ThemeConfig$JsonSerializer;->toJson(Landroid/content/res/ThemeConfig;)Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, json:Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 194
    return-void
.end method
