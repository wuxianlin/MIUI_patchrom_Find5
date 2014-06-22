.class public final Landroid/content/res/CustomTheme;
.super Ljava/lang/Object;
.source "CustomTheme.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/CustomTheme$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/content/res/CustomTheme;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/res/CustomTheme;",
            ">;"
        }
    .end annotation
.end field

.field public static final HOLO_DEFAULT:Ljava/lang/String; = "holo"

.field private static final sSystemTheme:Landroid/content/res/CustomTheme;


# instance fields
.field private final SYSTEMUI_PKG_NAME:Ljava/lang/String;

.field protected final mFontPkgName:Ljava/lang/String;

.field protected final mIconPackPkgName:Ljava/lang/String;

.field protected final mSystemUiThemePkgName:Ljava/lang/String;

.field protected final mThemePackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 40
    new-instance v0, Landroid/content/res/CustomTheme;

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/res/CustomTheme;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/content/res/CustomTheme;->sSystemTheme:Landroid/content/res/CustomTheme;

    .line 197
    new-instance v0, Landroid/content/res/CustomTheme$1;

    invoke-direct {v0}, Landroid/content/res/CustomTheme$1;-><init>()V

    sput-object v0, Landroid/content/res/CustomTheme;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "src"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, "com.android.systemui"

    iput-object v0, p0, Landroid/content/res/CustomTheme;->SYSTEMUI_PKG_NAME:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/CustomTheme;->mThemePackageName:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/CustomTheme;->mSystemUiThemePkgName:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/CustomTheme;->mIconPackPkgName:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/CustomTheme;->mFontPkgName:Ljava/lang/String;

    .line 47
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/res/CustomTheme$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/content/res/CustomTheme;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "pkgName"
    .parameter "systemUiThemePkgName"
    .parameter "iconPackPkgName"

    .prologue
    .line 53
    const-string v0, ""

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/content/res/CustomTheme;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "pkgName"
    .parameter "systemUiThemePkgName"
    .parameter "iconPackPkgName"
    .parameter "fontPkgName"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, "com.android.systemui"

    iput-object v0, p0, Landroid/content/res/CustomTheme;->SYSTEMUI_PKG_NAME:Ljava/lang/String;

    .line 57
    iput-object p1, p0, Landroid/content/res/CustomTheme;->mThemePackageName:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Landroid/content/res/CustomTheme;->mSystemUiThemePkgName:Ljava/lang/String;

    .line 59
    iput-object p3, p0, Landroid/content/res/CustomTheme;->mIconPackPkgName:Ljava/lang/String;

    .line 60
    iput-object p4, p0, Landroid/content/res/CustomTheme;->mFontPkgName:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public static getBootTheme(Landroid/content/ContentResolver;)Landroid/content/res/CustomTheme;
    .locals 6
    .parameter "resolver"

    .prologue
    .line 159
    :try_start_0
    const-string/jumbo v5, "persist.sys.themePackageName"

    invoke-static {p0, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 160
    .local v4, themePkgName:Ljava/lang/String;
    if-nez v4, :cond_0

    const-string v4, ""

    .line 162
    :cond_0
    const-string/jumbo v5, "persist.sys.themeSysUiPkgName"

    invoke-static {p0, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 163
    .local v3, systemUiPkgName:Ljava/lang/String;
    if-nez v3, :cond_1

    const-string v3, ""

    .line 165
    :cond_1
    const-string/jumbo v5, "themeIconPackPkgName"

    invoke-static {p0, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 166
    .local v2, iconPackPkgName:Ljava/lang/String;
    if-nez v2, :cond_2

    const-string v2, ""

    .line 168
    :cond_2
    const-string/jumbo v5, "themeFontPackPkgName"

    invoke-static {p0, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, fontPkgName:Ljava/lang/String;
    if-nez v1, :cond_3

    const-string v1, ""

    .line 170
    :cond_3
    new-instance v5, Landroid/content/res/CustomTheme;

    invoke-direct {v5, v4, v3, v2, v1}, Landroid/content/res/CustomTheme;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    .end local v1           #fontPkgName:Ljava/lang/String;
    .end local v2           #iconPackPkgName:Ljava/lang/String;
    .end local v3           #systemUiPkgName:Ljava/lang/String;
    .end local v4           #themePkgName:Ljava/lang/String;
    :goto_0
    return-object v5

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, e:Ljava/lang/SecurityException;
    sget-object v5, Landroid/content/res/CustomTheme;->sSystemTheme:Landroid/content/res/CustomTheme;

    goto :goto_0
.end method

.method public static getSystemTheme()Landroid/content/res/CustomTheme;
    .locals 1

    .prologue
    .line 181
    sget-object v0, Landroid/content/res/CustomTheme;->sSystemTheme:Landroid/content/res/CustomTheme;

    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 66
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 68
    :goto_0
    return-object v1

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public compareTo(Landroid/content/res/CustomTheme;)I
    .locals 3
    .parameter "o"

    .prologue
    .line 209
    if-nez p1, :cond_1

    const/4 v0, -0x1

    .line 218
    :cond_0
    :goto_0
    return v0

    .line 210
    :cond_1
    const/4 v0, 0x0

    .line 211
    .local v0, n:I
    iget-object v1, p0, Landroid/content/res/CustomTheme;->mSystemUiThemePkgName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/res/CustomTheme;->mSystemUiThemePkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 212
    if-nez v0, :cond_0

    .line 213
    iget-object v1, p0, Landroid/content/res/CustomTheme;->mThemePackageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/res/CustomTheme;->mThemePackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 214
    if-nez v0, :cond_0

    .line 215
    iget-object v1, p0, Landroid/content/res/CustomTheme;->mIconPackPkgName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/res/CustomTheme;->mIconPackPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 216
    if-nez v0, :cond_0

    .line 217
    iget-object v1, p0, Landroid/content/res/CustomTheme;->mFontPkgName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/res/CustomTheme;->mFontPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 218
    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    check-cast p1, Landroid/content/res/CustomTheme;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/content/res/CustomTheme;->compareTo(Landroid/content/res/CustomTheme;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 12
    .parameter "object"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 74
    if-ne p1, p0, :cond_1

    .line 97
    :cond_0
    :goto_0
    return v9

    .line 77
    :cond_1
    instance-of v11, p1, Landroid/content/res/CustomTheme;

    if-eqz v11, :cond_b

    move-object v8, p1

    .line 78
    check-cast v8, Landroid/content/res/CustomTheme;

    .line 80
    .local v8, o:Landroid/content/res/CustomTheme;
    iget-object v11, p0, Landroid/content/res/CustomTheme;->mSystemUiThemePkgName:Ljava/lang/String;

    if-nez v11, :cond_3

    const-string v3, ""

    .line 81
    .local v3, currentSystemUi:Ljava/lang/String;
    :goto_1
    iget-object v11, v8, Landroid/content/res/CustomTheme;->mSystemUiThemePkgName:Ljava/lang/String;

    if-nez v11, :cond_4

    const-string v7, ""

    .line 83
    .local v7, newSystemUi:Ljava/lang/String;
    :goto_2
    iget-object v11, p0, Landroid/content/res/CustomTheme;->mThemePackageName:Ljava/lang/String;

    if-nez v11, :cond_5

    const-string v2, ""

    .line 84
    .local v2, currentPackageName:Ljava/lang/String;
    :goto_3
    iget-object v11, v8, Landroid/content/res/CustomTheme;->mThemePackageName:Ljava/lang/String;

    if-nez v11, :cond_6

    const-string v6, ""

    .line 86
    .local v6, newPackageName:Ljava/lang/String;
    :goto_4
    iget-object v11, p0, Landroid/content/res/CustomTheme;->mIconPackPkgName:Ljava/lang/String;

    if-nez v11, :cond_7

    const-string v1, ""

    .line 87
    .local v1, currentIconPkgName:Ljava/lang/String;
    :goto_5
    iget-object v11, v8, Landroid/content/res/CustomTheme;->mIconPackPkgName:Ljava/lang/String;

    if-nez v11, :cond_8

    const-string v5, ""

    .line 89
    .local v5, newIconPkgName:Ljava/lang/String;
    :goto_6
    iget-object v11, p0, Landroid/content/res/CustomTheme;->mFontPkgName:Ljava/lang/String;

    if-nez v11, :cond_9

    const-string v0, ""

    .line 90
    .local v0, currentFontPkgName:Ljava/lang/String;
    :goto_7
    iget-object v11, v8, Landroid/content/res/CustomTheme;->mFontPkgName:Ljava/lang/String;

    if-nez v11, :cond_a

    const-string v4, ""

    .line 92
    .local v4, newFontPkgName:Ljava/lang/String;
    :goto_8
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    :cond_2
    move v9, v10

    goto :goto_0

    .line 80
    .end local v0           #currentFontPkgName:Ljava/lang/String;
    .end local v1           #currentIconPkgName:Ljava/lang/String;
    .end local v2           #currentPackageName:Ljava/lang/String;
    .end local v3           #currentSystemUi:Ljava/lang/String;
    .end local v4           #newFontPkgName:Ljava/lang/String;
    .end local v5           #newIconPkgName:Ljava/lang/String;
    .end local v6           #newPackageName:Ljava/lang/String;
    .end local v7           #newSystemUi:Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Landroid/content/res/CustomTheme;->mSystemUiThemePkgName:Ljava/lang/String;

    goto :goto_1

    .line 81
    .restart local v3       #currentSystemUi:Ljava/lang/String;
    :cond_4
    iget-object v7, v8, Landroid/content/res/CustomTheme;->mSystemUiThemePkgName:Ljava/lang/String;

    goto :goto_2

    .line 83
    .restart local v7       #newSystemUi:Ljava/lang/String;
    :cond_5
    iget-object v2, p0, Landroid/content/res/CustomTheme;->mThemePackageName:Ljava/lang/String;

    goto :goto_3

    .line 84
    .restart local v2       #currentPackageName:Ljava/lang/String;
    :cond_6
    iget-object v6, v8, Landroid/content/res/CustomTheme;->mThemePackageName:Ljava/lang/String;

    goto :goto_4

    .line 86
    .restart local v6       #newPackageName:Ljava/lang/String;
    :cond_7
    iget-object v1, p0, Landroid/content/res/CustomTheme;->mIconPackPkgName:Ljava/lang/String;

    goto :goto_5

    .line 87
    .restart local v1       #currentIconPkgName:Ljava/lang/String;
    :cond_8
    iget-object v5, v8, Landroid/content/res/CustomTheme;->mIconPackPkgName:Ljava/lang/String;

    goto :goto_6

    .line 89
    .restart local v5       #newIconPkgName:Ljava/lang/String;
    :cond_9
    iget-object v0, p0, Landroid/content/res/CustomTheme;->mFontPkgName:Ljava/lang/String;

    goto :goto_7

    .line 90
    .restart local v0       #currentFontPkgName:Ljava/lang/String;
    :cond_a
    iget-object v4, v8, Landroid/content/res/CustomTheme;->mFontPkgName:Ljava/lang/String;

    goto :goto_8

    .end local v0           #currentFontPkgName:Ljava/lang/String;
    .end local v1           #currentIconPkgName:Ljava/lang/String;
    .end local v2           #currentPackageName:Ljava/lang/String;
    .end local v3           #currentSystemUi:Ljava/lang/String;
    .end local v5           #newIconPkgName:Ljava/lang/String;
    .end local v6           #newPackageName:Ljava/lang/String;
    .end local v7           #newSystemUi:Ljava/lang/String;
    .end local v8           #o:Landroid/content/res/CustomTheme;
    :cond_b
    move v9, v10

    .line 97
    goto :goto_0
.end method

.method public getFontPackPkgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Landroid/content/res/CustomTheme;->mFontPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getIconPackPkgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Landroid/content/res/CustomTheme;->mIconPackPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemUiPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Landroid/content/res/CustomTheme;->mSystemUiThemePkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getThemePackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Landroid/content/res/CustomTheme;->mThemePackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getThemePackageNameForApp(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "appPkgName"

    .prologue
    .line 142
    const-string v0, "com.android.systemui"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/res/CustomTheme;->mSystemUiThemePkgName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/res/CustomTheme;->mSystemUiThemePkgName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Landroid/content/res/CustomTheme;->mSystemUiThemePkgName:Ljava/lang/String;

    .line 145
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/content/res/CustomTheme;->mThemePackageName:Ljava/lang/String;

    goto :goto_0
.end method

.method public declared-synchronized hashCode()I
    .locals 2

    .prologue
    .line 126
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/content/res/CustomTheme;->mSystemUiThemePkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/res/CustomTheme;->mThemePackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/res/CustomTheme;->mIconPackPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/res/CustomTheme;->mFontPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .local v0, result:Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/content/res/CustomTheme;->mThemePackageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/content/res/CustomTheme;->mSystemUiThemePkgName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 104
    iget-object v1, p0, Landroid/content/res/CustomTheme;->mThemePackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 106
    iget-object v1, p0, Landroid/content/res/CustomTheme;->mSystemUiThemePkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 109
    iget-object v1, p0, Landroid/content/res/CustomTheme;->mIconPackPkgName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 110
    const-string v1, ", iconPack:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    iget-object v1, p0, Landroid/content/res/CustomTheme;->mIconPackPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    :cond_0
    iget-object v1, p0, Landroid/content/res/CustomTheme;->mFontPkgName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 115
    const-string v1, ", fontPkg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget-object v1, p0, Landroid/content/res/CustomTheme;->mFontPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 119
    :cond_2
    const-string/jumbo v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 191
    iget-object v0, p0, Landroid/content/res/CustomTheme;->mThemePackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Landroid/content/res/CustomTheme;->mSystemUiThemePkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Landroid/content/res/CustomTheme;->mIconPackPkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Landroid/content/res/CustomTheme;->mFontPkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 195
    return-void
.end method
