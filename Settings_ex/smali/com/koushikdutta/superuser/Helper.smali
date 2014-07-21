.class public Lcom/koushikdutta/superuser/Helper;
.super Ljava/lang/Object;
.source "Helper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAdminUser(Landroid/content/Context;)Z
    .locals 6
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 60
    const-string v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 62
    :try_start_0
    const-class v3, Landroid/os/UserManager;

    const-string v4, "getUserHandle"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 63
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 64
    if-nez v0, :cond_0

    move v0, v1

    .line 67
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 64
    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    move v0, v1

    .line 67
    goto :goto_0
.end method

.method public static loadPackageIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "context"
    .parameter "pn"

    .prologue
    .line 33
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 34
    .local v1, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 35
    .local v0, pi:Landroid/content/pm/PackageInfo;
    invoke-static {}, Lcom/koushikdutta/superuser/util/ImageCache;->getInstance()Lcom/koushikdutta/superuser/util/ImageCache;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/koushikdutta/superuser/util/ImageCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    .line 36
    .local v2, ret:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 43
    .end local v0           #pi:Landroid/content/pm/PackageInfo;
    .end local v1           #pm:Landroid/content/pm/PackageManager;
    .end local v2           #ret:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v2

    .line 38
    .restart local v0       #pi:Landroid/content/pm/PackageInfo;
    .restart local v1       #pm:Landroid/content/pm/PackageManager;
    .restart local v2       #ret:Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-static {}, Lcom/koushikdutta/superuser/util/ImageCache;->getInstance()Lcom/koushikdutta/superuser/util/ImageCache;

    move-result-object v3

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v3, p1, v2}, Lcom/koushikdutta/superuser/util/ImageCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 41
    .end local v0           #pi:Landroid/content/pm/PackageInfo;
    .end local v1           #pm:Landroid/content/pm/PackageManager;
    .end local v2           #ret:Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v3

    .line 43
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static supportsMultipleUsers(Landroid/content/Context;)Z
    .locals 5
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 48
    const-string v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 50
    :try_start_0
    const-class v2, Landroid/os/UserManager;

    const-string v3, "supportsMultipleUsers"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 51
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 54
    :goto_0
    return v0

    .line 53
    :catch_0
    move-exception v0

    move v0, v1

    .line 54
    goto :goto_0
.end method
