.class public Lcom/android/server/ThemeService;
.super Landroid/content/res/IThemeService$Stub;
.source "ThemeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ThemeService$ThemeData;,
        Lcom/android/server/ThemeService$ThemeWorkerHandler;
    }
.end annotation


# static fields
.field private static final CM_SETUPWIZARD_PACKAGE:Ljava/lang/String; = "com.cyanogenmod.account"

.field private static final GOOGLE_SETUPWIZARD_PACKAGE:Ljava/lang/String; = "com.google.android.setupwizard"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mClients:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/content/res/IThemeChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/android/server/ThemeService$ThemeWorkerHandler;

.field private mPkgName:Ljava/lang/String;

.field private mProgress:I

.field private mWallpaperChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mWallpaperChangedByUs:Z

.field private mWorker:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    const-class v0, Lcom/android/server/ThemeService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 129
    invoke-direct {p0}, Landroid/content/res/IThemeService$Stub;-><init>()V

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ThemeService;->mWallpaperChangedByUs:Z

    .line 90
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ThemeService;->mClients:Landroid/os/RemoteCallbackList;

    .line 747
    new-instance v0, Lcom/android/server/ThemeService$1;

    invoke-direct {v0, p0}, Lcom/android/server/ThemeService$1;-><init>(Lcom/android/server/ThemeService;)V

    iput-object v0, p0, Lcom/android/server/ThemeService;->mWallpaperChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 130
    iput-object p1, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    .line 131
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ThemeServiceWorker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/ThemeService;->mWorker:Landroid/os/HandlerThread;

    .line 132
    iget-object v0, p0, Lcom/android/server/ThemeService;->mWorker:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 133
    new-instance v0, Lcom/android/server/ThemeService$ThemeWorkerHandler;

    iget-object v1, p0, Lcom/android/server/ThemeService;->mWorker:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/ThemeService$ThemeWorkerHandler;-><init>(Lcom/android/server/ThemeService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/ThemeService;->mHandler:Lcom/android/server/ThemeService$ThemeWorkerHandler;

    .line 134
    sget-object v0, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    const-string v1, "Spawned worker thread"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-static {}, Landroid/content/pm/ThemeUtils;->createThemeDirIfNotExists()V

    .line 138
    invoke-static {}, Landroid/content/pm/ThemeUtils;->createFontDirIfNotExists()V

    .line 139
    invoke-static {}, Landroid/content/pm/ThemeUtils;->createAlarmDirIfNotExists()V

    .line 140
    invoke-static {}, Landroid/content/pm/ThemeUtils;->createNotificationDirIfNotExists()V

    .line 141
    invoke-static {}, Landroid/content/pm/ThemeUtils;->createRingtoneDirIfNotExists()V

    .line 142
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/ThemeService;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/android/server/ThemeService;->doApplyTheme(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/ThemeService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/server/ThemeService;->doApplyDefaultTheme()V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/ThemeService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/android/server/ThemeService;->mWallpaperChangedByUs:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/ThemeService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/android/server/ThemeService;->mWallpaperChangedByUs:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/ThemeService;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/android/server/ThemeService;->updateProvider(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method private applyBootAnimation(Ljava/lang/String;)Z
    .locals 9
    .parameter "themePath"

    .prologue
    .line 719
    const/4 v3, 0x0

    .line 721
    .local v3, success:Z
    :try_start_0
    new-instance v5, Ljava/util/zip/ZipFile;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 722
    .local v5, zip:Ljava/util/zip/ZipFile;
    const-string v6, "assets/bootanimation/bootanimation.zip"

    invoke-virtual {v5, v6}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v4

    .line 723
    .local v4, ze:Ljava/util/zip/ZipEntry;
    if-eqz v4, :cond_0

    .line 724
    invoke-direct {p0}, Lcom/android/server/ThemeService;->clearBootAnimation()V

    .line 725
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v5, v4}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 726
    .local v2, is:Ljava/io/BufferedInputStream;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/data/system/theme"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "bootanimation.zip"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 728
    .local v0, bootAnimationPath:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    invoke-static {v6, v2, v0}, Landroid/content/pm/ThemeUtils;->copyAndScaleBootAnimation(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)V

    .line 729
    const/16 v6, 0x1e4

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-static {v0, v6, v7, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 732
    .end local v0           #bootAnimationPath:Ljava/lang/String;
    .end local v2           #is:Ljava/io/BufferedInputStream;
    :cond_0
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 733
    const/4 v3, 0x1

    .line 738
    .end local v4           #ze:Ljava/util/zip/ZipEntry;
    .end local v5           #zip:Ljava/util/zip/ZipFile;
    :goto_0
    return v3

    .line 734
    :catch_0
    move-exception v1

    .line 735
    .local v1, e:Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to load boot animation for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private clearBootAnimation()V
    .locals 3

    .prologue
    .line 742
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/system/theme"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "bootanimation.zip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 743
    .local v0, anim:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 744
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 745
    :cond_0
    return-void
.end method

.method private createBuilderFrom(Landroid/content/res/Configuration;Ljava/util/List;)Landroid/content/res/CustomTheme$Builder;
    .locals 2
    .parameter "config"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Configuration;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/res/CustomTheme$Builder;"
        }
    .end annotation

    .prologue
    .line 573
    .local p2, components:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Landroid/content/res/CustomTheme$Builder;

    iget-object v1, p1, Landroid/content/res/Configuration;->customTheme:Landroid/content/res/CustomTheme;

    invoke-direct {v0, v1}, Landroid/content/res/CustomTheme$Builder;-><init>(Landroid/content/res/CustomTheme;)V

    .line 575
    .local v0, builder:Landroid/content/res/CustomTheme$Builder;
    const-string v1, "mods_icons"

    invoke-interface {p2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 576
    iget-object v1, p0, Lcom/android/server/ThemeService;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/res/CustomTheme$Builder;->icons(Ljava/lang/String;)Landroid/content/res/CustomTheme$Builder;

    .line 579
    :cond_0
    const-string v1, "mods_overlays"

    invoke-interface {p2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 580
    iget-object v1, p0, Lcom/android/server/ThemeService;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/res/CustomTheme$Builder;->overlay(Ljava/lang/String;)Landroid/content/res/CustomTheme$Builder;

    .line 581
    iget-object v1, p0, Lcom/android/server/ThemeService;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/res/CustomTheme$Builder;->systemUi(Ljava/lang/String;)Landroid/content/res/CustomTheme$Builder;

    .line 584
    :cond_1
    const-string v1, "mods_fonts"

    invoke-interface {p2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 585
    iget-object v1, p0, Lcom/android/server/ThemeService;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/res/CustomTheme$Builder;->fonts(Ljava/lang/String;)Landroid/content/res/CustomTheme$Builder;

    .line 588
    :cond_2
    return-object v0
.end method

.method private doApplyDefaultTheme()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 225
    iget-object v7, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 226
    .local v4, resolver:Landroid/content/ContentResolver;
    const-string v7, "default_theme_package"

    invoke-static {v4, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 228
    .local v2, defaultThemePkg:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "default_theme_applied_on_first_boot"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_1

    .line 231
    .local v5, shouldApply:Z
    :goto_0
    if-eqz v5, :cond_0

    .line 232
    const-string v6, "default_theme_components"

    invoke-static {v4, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 235
    .local v1, defaultThemeComponents:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 236
    new-instance v0, Ljava/util/ArrayList;

    const/16 v6, 0x9

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 237
    .local v0, components:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v6, "mods_fonts"

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    const-string v6, "mods_homescreen"

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    const-string v6, "mods_alarms"

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    const-string v6, "mods_bootanim"

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    const-string v6, "mods_icons"

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    const-string v6, "mods_lockscreen"

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    const-string v6, "mods_notifications"

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    const-string v6, "mods_overlays"

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    const-string v6, "mods_ringtones"

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    :goto_1
    :try_start_0
    invoke-virtual {p0, v2, v0}, Lcom/android/server/ThemeService;->requestThemeChange(Ljava/lang/String;Ljava/util/List;)V

    .line 252
    const-string v6, "default_theme_applied_on_first_boot"

    const/4 v7, 0x1

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    .end local v0           #components:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v1           #defaultThemeComponents:Ljava/lang/String;
    :cond_0
    :goto_2
    return-void

    .end local v5           #shouldApply:Z
    :cond_1
    move v5, v6

    .line 228
    goto :goto_0

    .line 247
    .restart local v1       #defaultThemeComponents:Ljava/lang/String;
    .restart local v5       #shouldApply:Z
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    const-string v6, "\\|"

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .restart local v0       #components:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_1

    .line 254
    :catch_0
    move-exception v3

    .line 255
    .local v3, e:Landroid/os/RemoteException;
    sget-object v6, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    const-string v7, "Unable to set default theme"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private doApplyTheme(Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .parameter "pkgName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, components:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x1

    .line 151
    monitor-enter p0

    .line 152
    :try_start_0
    iput-object p1, p0, Lcom/android/server/ThemeService;->mPkgName:Ljava/lang/String;

    .line 153
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/ThemeService;->mProgress:I

    .line 154
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 157
    :cond_0
    invoke-direct {p0, v4, p1}, Lcom/android/server/ThemeService;->postFinish(ZLjava/lang/String;)V

    .line 222
    :goto_0
    return-void

    .line 154
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 161
    :cond_1
    const/4 v2, 0x5

    invoke-direct {p0, v2, p1}, Lcom/android/server/ThemeService;->incrementProgress(ILjava/lang/String;)V

    .line 164
    const/16 v2, 0x4b

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    div-int v1, v2, v3

    .line 166
    .local v1, progressIncrement:I
    iget-object v2, p0, Lcom/android/server/ThemeService;->mPkgName:Ljava/lang/String;

    invoke-direct {p0, p2, v2}, Lcom/android/server/ThemeService;->updateProvider(Ljava/util/List;Ljava/lang/String;)V

    .line 168
    const-string v2, "mods_icons"

    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 169
    invoke-direct {p0}, Lcom/android/server/ThemeService;->updateIcons()V

    .line 170
    invoke-direct {p0, v1, p1}, Lcom/android/server/ThemeService;->incrementProgress(ILjava/lang/String;)V

    .line 173
    :cond_2
    const-string v2, "mods_homescreen"

    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 174
    invoke-direct {p0}, Lcom/android/server/ThemeService;->updateWallpaper()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 175
    iput-boolean v4, p0, Lcom/android/server/ThemeService;->mWallpaperChangedByUs:Z

    .line 177
    :cond_3
    invoke-direct {p0, v1, p1}, Lcom/android/server/ThemeService;->incrementProgress(ILjava/lang/String;)V

    .line 180
    :cond_4
    const-string v2, "mods_lockscreen"

    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 181
    invoke-direct {p0}, Lcom/android/server/ThemeService;->updateLockscreen()Z

    .line 182
    invoke-direct {p0, v1, p1}, Lcom/android/server/ThemeService;->incrementProgress(ILjava/lang/String;)V

    .line 185
    :cond_5
    const/4 v0, 0x0

    .line 187
    .local v0, pi:Landroid/content/pm/PackageInfo;
    :try_start_2
    const-string v2, "holo"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 188
    iget-object v2, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    .line 192
    :cond_6
    :goto_1
    const-string v2, "mods_notifications"

    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 193
    invoke-direct {p0, v0}, Lcom/android/server/ThemeService;->updateNotifications(Landroid/content/pm/PackageInfo;)Z

    .line 194
    invoke-direct {p0, v1, p1}, Lcom/android/server/ThemeService;->incrementProgress(ILjava/lang/String;)V

    .line 197
    :cond_7
    const-string v2, "mods_alarms"

    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 198
    invoke-direct {p0, v0}, Lcom/android/server/ThemeService;->updateAlarms(Landroid/content/pm/PackageInfo;)Z

    .line 199
    invoke-direct {p0, v1, p1}, Lcom/android/server/ThemeService;->incrementProgress(ILjava/lang/String;)V

    .line 202
    :cond_8
    const-string v2, "mods_ringtones"

    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 203
    invoke-direct {p0, v0}, Lcom/android/server/ThemeService;->updateRingtones(Landroid/content/pm/PackageInfo;)Z

    .line 204
    invoke-direct {p0, v1, p1}, Lcom/android/server/ThemeService;->incrementProgress(ILjava/lang/String;)V

    .line 207
    :cond_9
    const-string v2, "mods_bootanim"

    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 208
    invoke-direct {p0}, Lcom/android/server/ThemeService;->updateBootAnim()V

    .line 209
    invoke-direct {p0, v1, p1}, Lcom/android/server/ThemeService;->incrementProgress(ILjava/lang/String;)V

    .line 212
    :cond_a
    const-string v2, "mods_fonts"

    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 213
    invoke-direct {p0}, Lcom/android/server/ThemeService;->updateFonts()Z

    .line 214
    invoke-direct {p0, v1, p1}, Lcom/android/server/ThemeService;->incrementProgress(ILjava/lang/String;)V

    .line 217
    :cond_b
    invoke-direct {p0, p2}, Lcom/android/server/ThemeService;->updateConfiguration(Ljava/util/List;)Z

    .line 219
    invoke-direct {p0}, Lcom/android/server/ThemeService;->killLaunchers()V

    .line 221
    invoke-direct {p0, v4, p1}, Lcom/android/server/ThemeService;->postFinish(ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 189
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private incrementProgress(ILjava/lang/String;)V
    .locals 2
    .parameter "increment"
    .parameter "pkgName"

    .prologue
    const/16 v1, 0x64

    .line 659
    monitor-enter p0

    .line 660
    :try_start_0
    iget v0, p0, Lcom/android/server/ThemeService;->mProgress:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/ThemeService;->mProgress:I

    .line 661
    iget v0, p0, Lcom/android/server/ThemeService;->mProgress:I

    if-le v0, v1, :cond_0

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/server/ThemeService;->mProgress:I

    .line 662
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 663
    invoke-direct {p0, p2}, Lcom/android/server/ThemeService;->postProgress(Ljava/lang/String;)V

    .line 664
    return-void

    .line 662
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private isSetupActivity(Landroid/content/pm/ResolveInfo;)Z
    .locals 2
    .parameter "info"

    .prologue
    .line 617
    const-string v0, "com.google.android.setupwizard"

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.cyanogenmod.account"

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private killLaunchers()V
    .locals 11

    .prologue
    .line 594
    iget-object v8, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    const-string v9, "activity"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 595
    .local v0, am:Landroid/app/ActivityManager;
    iget-object v8, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 597
    .local v7, pm:Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 598
    .local v2, homeIntent:Landroid/content/Intent;
    const-string v8, "android.intent.action.MAIN"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 599
    const-string v8, "android.intent.category.HOME"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 601
    const/4 v8, 0x0

    invoke-virtual {v7, v2, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 602
    .local v5, infos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 603
    .local v4, info:Landroid/content/pm/ResolveInfo;
    iget-object v8, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v8, :cond_0

    iget-object v8, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v8, :cond_0

    invoke-direct {p0, v4}, Lcom/android/server/ThemeService;->isSetupActivity(Landroid/content/pm/ResolveInfo;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 605
    iget-object v8, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 606
    .local v6, pkgToStop:Ljava/lang/String;
    sget-object v8, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Force stopping "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " for theme change"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    :try_start_0
    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 609
    :catch_0
    move-exception v1

    .line 610
    .local v1, e:Ljava/lang/Exception;
    sget-object v8, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    const-string v9, "Unable to force stop package, did you forget platform signature?"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 614
    .end local v1           #e:Ljava/lang/Exception;
    .end local v4           #info:Landroid/content/pm/ResolveInfo;
    .end local v6           #pkgToStop:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private postFinish(ZLjava/lang/String;)V
    .locals 7
    .parameter "isSuccess"
    .parameter "pkgName"

    .prologue
    const/4 v6, 0x0

    .line 635
    monitor-enter p0

    .line 636
    const/4 v4, 0x0

    :try_start_0
    iput v4, p0, Lcom/android/server/ThemeService;->mProgress:I

    .line 637
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/ThemeService;->mPkgName:Ljava/lang/String;

    .line 638
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 640
    iget-object v4, p0, Lcom/android/server/ThemeService;->mClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 641
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 642
    iget-object v4, p0, Lcom/android/server/ThemeService;->mClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v6}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/content/res/IThemeChangeListener;

    .line 644
    .local v3, listener:Landroid/content/res/IThemeChangeListener;
    :try_start_1
    invoke-interface {v3, p1, p2}, Landroid/content/res/IThemeChangeListener;->onFinish(ZLjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 641
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 638
    .end local v0           #N:I
    .end local v2           #i:I
    .end local v3           #listener:Landroid/content/res/IThemeChangeListener;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 645
    .restart local v0       #N:I
    .restart local v2       #i:I
    .restart local v3       #listener:Landroid/content/res/IThemeChangeListener;
    :catch_0
    move-exception v1

    .line 646
    .local v1, e:Landroid/os/RemoteException;
    sget-object v4, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    const-string v5, "Unable to post progress to client listener"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 649
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v3           #listener:Landroid/content/res/IThemeChangeListener;
    :cond_0
    iget-object v4, p0, Lcom/android/server/ThemeService;->mClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 652
    if-eqz p1, :cond_1

    .line 653
    iget-object v4, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "org.cyanogenmod.intent.action.THEME_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 656
    :cond_1
    return-void
.end method

.method private postProgress(Ljava/lang/String;)V
    .locals 6
    .parameter "pkgName"

    .prologue
    .line 622
    iget-object v4, p0, Lcom/android/server/ThemeService;->mClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 623
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 624
    iget-object v4, p0, Lcom/android/server/ThemeService;->mClients:Landroid/os/RemoteCallbackList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/content/res/IThemeChangeListener;

    .line 626
    .local v3, listener:Landroid/content/res/IThemeChangeListener;
    :try_start_0
    iget v4, p0, Lcom/android/server/ThemeService;->mProgress:I

    invoke-interface {v3, v4, p1}, Landroid/content/res/IThemeChangeListener;->onProgress(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 623
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 627
    :catch_0
    move-exception v1

    .line 628
    .local v1, e:Landroid/os/RemoteException;
    sget-object v4, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    const-string v5, "Unable to post progress to client listener"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 631
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v3           #listener:Landroid/content/res/IThemeChangeListener;
    :cond_0
    iget-object v4, p0, Lcom/android/server/ThemeService;->mClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 632
    return-void
.end method

.method private setCustomLockScreenWallpaper()Z
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 477
    :try_start_0
    iget-object v6, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/ThemeService;->mPkgName:Ljava/lang/String;

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    .line 478
    .local v3, themeCtx:Landroid/content/Context;
    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 479
    .local v0, assetManager:Landroid/content/res/AssetManager;
    invoke-static {v0}, Landroid/content/pm/ThemeUtils;->getLockscreenWallpaperPath(Landroid/content/res/AssetManager;)Ljava/lang/String;

    move-result-object v4

    .line 480
    .local v4, wpPath:Ljava/lang/String;
    if-nez v4, :cond_0

    .line 481
    sget-object v6, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    const-string v7, "Not setting lockscreen wp because wallpaper file was not found."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    .end local v0           #assetManager:Landroid/content/res/AssetManager;
    .end local v3           #themeCtx:Landroid/content/Context;
    .end local v4           #wpPath:Ljava/lang/String;
    :goto_0
    return v5

    .line 484
    .restart local v0       #assetManager:Landroid/content/res/AssetManager;
    .restart local v3       #themeCtx:Landroid/content/Context;
    .restart local v4       #wpPath:Ljava/lang/String;
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file:///android_asset/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/content/pm/ThemeUtils;->getInputStreamFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 486
    .local v2, is:Ljava/io/InputStream;
    iget-object v6, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/WallpaperManager;->setKeyguardStream(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    const/4 v5, 0x1

    goto :goto_0

    .line 487
    .end local v0           #assetManager:Landroid/content/res/AssetManager;
    .end local v2           #is:Ljava/io/InputStream;
    .end local v3           #themeCtx:Landroid/content/Context;
    .end local v4           #wpPath:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 488
    .local v1, e:Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "There was an error setting lockscreen wp for pkg "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/ThemeService;->mPkgName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private updateAlarms(Landroid/content/pm/PackageInfo;)Z
    .locals 3
    .parameter "pi"

    .prologue
    .line 343
    sget-object v0, Landroid/content/pm/ThemeUtils;->SYSTEM_THEME_ALARM_PATH:Ljava/lang/String;

    const-string v1, "alarms"

    const/4 v2, 0x4

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/server/ThemeService;->updateAudible(Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/PackageInfo;)Z

    move-result v0

    return v0
.end method

.method private updateAudible(Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/PackageInfo;)Z
    .locals 11
    .parameter "dirPath"
    .parameter "assetPath"
    .parameter "type"
    .parameter "pi"

    .prologue
    .line 359
    iget-object v8, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    invoke-static {v8, p1}, Landroid/content/pm/ThemeUtils;->clearAudibles(Landroid/content/Context;Ljava/lang/String;)V

    .line 360
    iget-object v8, p0, Lcom/android/server/ThemeService;->mPkgName:Ljava/lang/String;

    const-string v9, "holo"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 361
    iget-object v8, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    invoke-static {v8, p3}, Landroid/content/pm/ThemeUtils;->setDefaultAudible(Landroid/content/Context;I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 362
    sget-object v8, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    const-string v9, "There was an error installing the default audio file"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    const/4 v8, 0x0

    .line 409
    :goto_0
    return v8

    .line 365
    :cond_0
    const/4 v8, 0x1

    goto :goto_0

    .line 368
    :cond_1
    if-eqz p4, :cond_2

    iget-boolean v8, p4, Landroid/content/pm/PackageInfo;->isLegacyThemeApk:Z

    if-eqz v8, :cond_2

    .line 369
    invoke-direct {p0, p1, p3, p4}, Lcom/android/server/ThemeService;->updateLegacyAudible(Ljava/lang/String;ILandroid/content/pm/PackageInfo;)Z

    move-result v8

    goto :goto_0

    .line 376
    :cond_2
    :try_start_0
    iget-object v8, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/server/ThemeService;->mPkgName:Ljava/lang/String;

    const/4 v10, 0x2

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v7

    .line 377
    .local v7, themeCtx:Landroid/content/Context;
    invoke-virtual {v7}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 378
    .local v2, assetManager:Landroid/content/res/AssetManager;
    invoke-virtual {v2, p2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 383
    .local v1, assetList:[Ljava/lang/String;
    if-eqz v1, :cond_3

    array-length v8, v1

    if-nez v8, :cond_4

    .line 384
    :cond_3
    sget-object v8, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    const-string v9, "Could not find any audio assets"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    const/4 v8, 0x0

    goto :goto_0

    .line 379
    .end local v1           #assetList:[Ljava/lang/String;
    .end local v2           #assetManager:Landroid/content/res/AssetManager;
    .end local v7           #themeCtx:Landroid/content/Context;
    :catch_0
    move-exception v3

    .line 380
    .local v3, e:Ljava/lang/Exception;
    sget-object v8, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "There was an error getting assets for pkg "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/ThemeService;->mPkgName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 381
    const/4 v8, 0x0

    goto :goto_0

    .line 390
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v1       #assetList:[Ljava/lang/String;
    .restart local v2       #assetManager:Landroid/content/res/AssetManager;
    .restart local v7       #themeCtx:Landroid/content/Context;
    :cond_4
    const/4 v8, 0x0

    aget-object v0, v1, v8

    .line 391
    .local v0, asset:Ljava/lang/String;
    invoke-static {v0}, Landroid/content/pm/ThemeUtils;->isValidAudible(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    const/4 v8, 0x0

    goto :goto_0

    .line 393
    :cond_5
    const/4 v4, 0x0

    .line 394
    .local v4, is:Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 396
    .local v5, os:Ljava/io/OutputStream;
    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "file:///android_asset/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/content/pm/ThemeUtils;->getInputStreamFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 398
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    .local v6, outFile:Ljava/io/File;
    invoke-static {v4, v6}, Landroid/os/FileUtils;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z

    .line 400
    const/16 v8, 0x1e7

    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-static {v6, v8, v9, v10}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    .line 401
    iget-object v8, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    iget-object v9, p4, Landroid/content/pm/PackageInfo;->themeInfos:[Landroid/content/pm/ThemeInfo;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    iget-object v9, v9, Landroid/content/pm/ThemeInfo;->name:Ljava/lang/String;

    invoke-static {v8, v6, p3, v9}, Landroid/content/pm/ThemeUtils;->setAudible(Landroid/content/Context;Ljava/io/File;ILjava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 406
    invoke-static {v4}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 407
    invoke-static {v5}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 409
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 402
    .end local v6           #outFile:Ljava/io/File;
    :catch_1
    move-exception v3

    .line 403
    .restart local v3       #e:Ljava/lang/Exception;
    :try_start_2
    sget-object v8, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "There was an error installing the new audio file for pkg "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/ThemeService;->mPkgName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 404
    const/4 v8, 0x0

    .line 406
    invoke-static {v4}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 407
    invoke-static {v5}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/OutputStream;)V

    goto/16 :goto_0

    .line 406
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    invoke-static {v4}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 407
    invoke-static {v5}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 406
    throw v8
.end method

.method private updateBootAnim()V
    .locals 5

    .prologue
    .line 330
    invoke-direct {p0}, Lcom/android/server/ThemeService;->clearBootAnimation()V

    .line 331
    const-string v3, "holo"

    iget-object v4, p0, Lcom/android/server/ThemeService;->mPkgName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 340
    :goto_0
    return-void

    .line 333
    :cond_0
    iget-object v3, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 335
    .local v2, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/ThemeService;->mPkgName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 336
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/ThemeService;->applyBootAnimation(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 337
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 338
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    const-string v4, "Changing boot animation failed"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private updateConfiguration(Ljava/util/List;)Z
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 555
    .local p1, components:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 556
    .local v0, am:Landroid/app/IActivityManager;
    if-eqz v0, :cond_0

    .line 557
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 559
    .local v4, token:J
    :try_start_0
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 560
    .local v1, config:Landroid/content/res/Configuration;
    invoke-direct {p0, v1, p1}, Lcom/android/server/ThemeService;->createBuilderFrom(Landroid/content/res/Configuration;Ljava/util/List;)Landroid/content/res/CustomTheme$Builder;

    move-result-object v3

    .line 561
    .local v3, themeBuilder:Landroid/content/res/CustomTheme$Builder;
    invoke-virtual {v3}, Landroid/content/res/CustomTheme$Builder;->build()Landroid/content/res/CustomTheme;

    move-result-object v6

    iput-object v6, v1, Landroid/content/res/Configuration;->customTheme:Landroid/content/res/CustomTheme;

    .line 562
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 566
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 569
    .end local v1           #config:Landroid/content/res/Configuration;
    .end local v3           #themeBuilder:Landroid/content/res/CustomTheme$Builder;
    .end local v4           #token:J
    :cond_0
    const/4 v6, 0x1

    :goto_0
    return v6

    .line 563
    .restart local v4       #token:J
    :catch_0
    move-exception v2

    .line 564
    .local v2, e:Landroid/os/RemoteException;
    const/4 v6, 0x0

    .line 566
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v2           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method private updateFonts()Z
    .locals 15

    .prologue
    const/4 v11, 0x0

    .line 286
    sget-object v12, Landroid/content/pm/ThemeUtils;->SYSTEM_THEME_FONT_PATH:Ljava/lang/String;

    invoke-static {v12}, Landroid/content/pm/ThemeUtils;->deleteFilesInDir(Ljava/lang/String;)V

    .line 288
    iget-object v12, p0, Lcom/android/server/ThemeService;->mPkgName:Ljava/lang/String;

    const-string v13, "holo"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 293
    :try_start_0
    iget-object v12, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    iget-object v13, p0, Lcom/android/server/ThemeService;->mPkgName:Ljava/lang/String;

    const/4 v14, 0x2

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v10

    .line 294
    .local v10, themeCtx:Landroid/content/Context;
    invoke-virtual {v10}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    .line 295
    .local v3, assetManager:Landroid/content/res/AssetManager;
    const-string v12, "fonts"

    invoke-virtual {v3, v12}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 300
    .local v2, assetList:[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v12, v2

    if-nez v12, :cond_1

    .line 301
    :cond_0
    sget-object v12, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    const-string v13, "Could not find any font assets"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    .end local v2           #assetList:[Ljava/lang/String;
    .end local v3           #assetManager:Landroid/content/res/AssetManager;
    .end local v10           #themeCtx:Landroid/content/Context;
    :goto_0
    return v11

    .line 296
    :catch_0
    move-exception v4

    .line 297
    .local v4, e:Ljava/lang/Exception;
    sget-object v12, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "There was an error getting assets  for pkg "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/server/ThemeService;->mPkgName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 306
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v2       #assetList:[Ljava/lang/String;
    .restart local v3       #assetManager:Landroid/content/res/AssetManager;
    .restart local v10       #themeCtx:Landroid/content/Context;
    :cond_1
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v7, v0

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v7, :cond_2

    aget-object v1, v0, v5

    .line 307
    .local v1, asset:Ljava/lang/String;
    const/4 v6, 0x0

    .line 308
    .local v6, is:Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 310
    .local v8, os:Ljava/io/OutputStream;
    :try_start_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "file:///android_asset/fonts/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/content/pm/ThemeUtils;->getInputStreamFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 311
    new-instance v9, Ljava/io/File;

    sget-object v12, Landroid/content/pm/ThemeUtils;->SYSTEM_THEME_FONT_PATH:Ljava/lang/String;

    invoke-direct {v9, v12, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    .local v9, outFile:Ljava/io/File;
    invoke-static {v6, v9}, Landroid/os/FileUtils;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z

    .line 313
    const/16 v12, 0x1e7

    const/4 v13, -0x1

    const/4 v14, -0x1

    invoke-static {v9, v12, v13, v14}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 318
    invoke-static {v6}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 319
    invoke-static {v8}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 306
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 314
    .end local v9           #outFile:Ljava/io/File;
    :catch_1
    move-exception v4

    .line 315
    .restart local v4       #e:Ljava/lang/Exception;
    :try_start_2
    sget-object v12, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "There was an error installing the new fonts for pkg "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/server/ThemeService;->mPkgName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 318
    invoke-static {v6}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 319
    invoke-static {v8}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 318
    .end local v4           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    invoke-static {v6}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 319
    invoke-static {v8}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 318
    throw v11

    .line 325
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #asset:Ljava/lang/String;
    .end local v2           #assetList:[Ljava/lang/String;
    .end local v3           #assetManager:Landroid/content/res/AssetManager;
    .end local v5           #i$:I
    .end local v6           #is:Ljava/io/InputStream;
    .end local v7           #len$:I
    .end local v8           #os:Ljava/io/OutputStream;
    .end local v10           #themeCtx:Landroid/content/Context;
    :cond_2
    const-string v11, "sys.refresh_theme"

    const-string v12, "1"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const/4 v11, 0x1

    goto/16 :goto_0
.end method

.method private updateIcons()V
    .locals 3

    .prologue
    .line 276
    iget-object v1, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 277
    .local v0, pm:Landroid/content/pm/PackageManager;
    iget-object v1, p0, Lcom/android/server/ThemeService;->mPkgName:Ljava/lang/String;

    const-string v2, "holo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 278
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->updateIconMaps(Ljava/lang/String;)V

    .line 282
    :goto_0
    return-void

    .line 280
    :cond_0
    iget-object v1, p0, Lcom/android/server/ThemeService;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->updateIconMaps(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateLegacyAudible(Ljava/lang/String;ILandroid/content/pm/PackageInfo;)Z
    .locals 10
    .parameter "dirPath"
    .parameter "type"
    .parameter "pi"

    .prologue
    const/4 v6, 0x0

    .line 413
    iget-object v7, p3, Landroid/content/pm/PackageInfo;->legacyThemeInfos:[Landroid/content/pm/LegacyThemeInfo;

    if-eqz v7, :cond_0

    iget-object v7, p3, Landroid/content/pm/PackageInfo;->legacyThemeInfos:[Landroid/content/pm/LegacyThemeInfo;

    array-length v7, v7

    if-nez v7, :cond_1

    .line 455
    :cond_0
    :goto_0
    return v6

    .line 419
    :cond_1
    :try_start_0
    iget-object v7, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/ThemeService;->mPkgName:Ljava/lang/String;

    const/4 v9, 0x2

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 428
    .local v5, themeCtx:Landroid/content/Context;
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 433
    :pswitch_0
    iget-object v7, p3, Landroid/content/pm/PackageInfo;->legacyThemeInfos:[Landroid/content/pm/LegacyThemeInfo;

    aget-object v7, v7, v6

    iget-object v0, v7, Landroid/content/pm/LegacyThemeInfo;->ringtoneFileName:Ljava/lang/String;

    .line 438
    .local v0, asset:Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Landroid/content/pm/ThemeUtils;->isValidAudible(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 440
    const/4 v2, 0x0

    .line 441
    .local v2, is:Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 443
    .local v3, os:Ljava/io/OutputStream;
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file:///android_asset/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/content/pm/ThemeUtils;->getInputStreamFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 444
    new-instance v4, Ljava/io/File;

    const/16 v7, 0x2f

    invoke-virtual {v0, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, p1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    .local v4, outFile:Ljava/io/File;
    invoke-static {v2, v4}, Landroid/os/FileUtils;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z

    .line 446
    const/16 v7, 0x1e7

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-static {v4, v7, v8, v9}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    .line 447
    iget-object v7, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    iget-object v8, p3, Landroid/content/pm/PackageInfo;->legacyThemeInfos:[Landroid/content/pm/LegacyThemeInfo;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    iget-object v8, v8, Landroid/content/pm/LegacyThemeInfo;->name:Ljava/lang/String;

    invoke-static {v7, v4, p2, v8}, Landroid/content/pm/ThemeUtils;->setAudible(Landroid/content/Context;Ljava/io/File;ILjava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 452
    invoke-static {v2}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 453
    invoke-static {v3}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 455
    const/4 v6, 0x1

    goto :goto_0

    .line 420
    .end local v0           #asset:Ljava/lang/String;
    .end local v2           #is:Ljava/io/InputStream;
    .end local v3           #os:Ljava/io/OutputStream;
    .end local v4           #outFile:Ljava/io/File;
    .end local v5           #themeCtx:Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 421
    .local v1, e:Ljava/lang/Exception;
    sget-object v7, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "There was an error getting assets for pkg "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/ThemeService;->mPkgName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 430
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v5       #themeCtx:Landroid/content/Context;
    :pswitch_1
    iget-object v7, p3, Landroid/content/pm/PackageInfo;->legacyThemeInfos:[Landroid/content/pm/LegacyThemeInfo;

    aget-object v7, v7, v6

    iget-object v0, v7, Landroid/content/pm/LegacyThemeInfo;->notificationFileName:Ljava/lang/String;

    .line 431
    .restart local v0       #asset:Ljava/lang/String;
    goto :goto_1

    .line 448
    .restart local v2       #is:Ljava/io/InputStream;
    .restart local v3       #os:Ljava/io/OutputStream;
    :catch_1
    move-exception v1

    .line 449
    .restart local v1       #e:Ljava/lang/Exception;
    :try_start_2
    sget-object v7, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "There was an error installing the new audio file for pkg "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/ThemeService;->mPkgName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 452
    invoke-static {v2}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 453
    invoke-static {v3}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/OutputStream;)V

    goto/16 :goto_0

    .line 452
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    invoke-static {v2}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 453
    invoke-static {v3}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 452
    throw v6

    .line 428
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateLockscreen()Z
    .locals 4

    .prologue
    .line 459
    const/4 v0, 0x0

    .line 460
    .local v0, success:Z
    const-string v1, "holo"

    iget-object v2, p0, Lcom/android/server/ThemeService;->mPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 461
    iget-object v1, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->clearKeyguardWallpaper()V

    .line 462
    const/4 v0, 0x1

    .line 467
    :goto_0
    if-eqz v0, :cond_0

    .line 468
    iget-object v1, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.KEYGUARD_WALLPAPER_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 471
    :cond_0
    return v0

    .line 464
    :cond_1
    invoke-direct {p0}, Lcom/android/server/ThemeService;->setCustomLockScreenWallpaper()Z

    move-result v0

    goto :goto_0
.end method

.method private updateNotifications(Landroid/content/pm/PackageInfo;)Z
    .locals 3
    .parameter "pi"

    .prologue
    .line 348
    sget-object v0, Landroid/content/pm/ThemeUtils;->SYSTEM_THEME_NOTIFICATION_PATH:Ljava/lang/String;

    const-string v1, "notifications"

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/server/ThemeService;->updateAudible(Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/PackageInfo;)Z

    move-result v0

    return v0
.end method

.method private updateProvider(Ljava/util/List;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter "pkgName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, components:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 261
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 262
    .local v3, values:Landroid/content/ContentValues;
    const-string v5, "value"

    invoke-virtual {v3, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 265
    .local v0, component:Ljava/lang/String;
    const-string v4, "key=?"

    .line 266
    .local v4, where:Ljava/lang/String;
    const/4 v5, 0x1

    new-array v2, v5, [Ljava/lang/String;

    invoke-static {v0}, Landroid/provider/ThemesContract$MixnMatchColumns;->componentToMixNMatchKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v7

    .line 267
    .local v2, selectionArgs:[Ljava/lang/String;
    aget-object v5, v2, v7

    if-eqz v5, :cond_0

    .line 270
    iget-object v5, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/ThemesContract$MixnMatchColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v3, v4, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 273
    .end local v0           #component:Ljava/lang/String;
    .end local v2           #selectionArgs:[Ljava/lang/String;
    .end local v4           #where:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private updateRingtones(Landroid/content/pm/PackageInfo;)Z
    .locals 3
    .parameter "pi"

    .prologue
    .line 353
    sget-object v0, Landroid/content/pm/ThemeUtils;->SYSTEM_THEME_RINGTONE_PATH:Ljava/lang/String;

    const-string v1, "ringtones"

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/server/ThemeService;->updateAudible(Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/PackageInfo;)Z

    move-result v0

    return v0
.end method

.method private updateWallpaper()Z
    .locals 18

    .prologue
    .line 495
    const-string v4, "pkg_name= ?"

    .line 496
    .local v4, selection:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ThemeService;->mPkgName:Ljava/lang/String;

    aput-object v2, v5, v1

    .line 497
    .local v5, selectionArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ThemesContract$MixnMatchColumns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 499
    .local v8, c:Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 501
    const-string v1, "holo"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ThemeService;->mPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 503
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->clear()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 551
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 504
    :catch_0
    move-exception v9

    .line 505
    .local v9, e:Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_1

    .line 508
    .end local v9           #e:Ljava/io/IOException;
    :cond_0
    const/4 v10, 0x0

    .line 510
    .local v10, in:Ljava/io/InputStream;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ThemeService;->mPkgName:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v14

    .line 511
    .local v14, themeContext:Landroid/content/Context;
    const-string v1, "is_legacy_theme"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v11, 0x1

    .line 513
    .local v11, isLegacyTheme:Z
    :goto_2
    if-nez v11, :cond_5

    .line 514
    const-string v1, "wallpaper_uri"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 515
    .local v16, wallpaper:Ljava/lang/String;
    if-eqz v16, :cond_3

    .line 516
    invoke-static/range {v16 .. v16}, Landroid/webkit/URLUtil;->isAssetUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 517
    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/content/pm/ThemeUtils;->getInputStreamFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10

    .line 534
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 548
    .end local v16           #wallpaper:Ljava/lang/String;
    :goto_4
    invoke-static {v10}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_0

    .line 511
    .end local v11           #isLegacyTheme:Z
    :cond_1
    const/4 v11, 0x0

    goto :goto_2

    .line 519
    .restart local v11       #isLegacyTheme:Z
    .restart local v16       #wallpaper:Ljava/lang/String;
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v10

    goto :goto_3

    .line 523
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ThemeService;->mPkgName:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v15

    .line 525
    .local v15, themeCtx:Landroid/content/Context;
    invoke-virtual {v15}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    .line 526
    .local v7, assetManager:Landroid/content/res/AssetManager;
    invoke-static {v7}, Landroid/content/pm/ThemeUtils;->getWallpaperPath(Landroid/content/res/AssetManager;)Ljava/lang/String;

    move-result-object v17

    .line 527
    .local v17, wpPath:Ljava/lang/String;
    if-nez v17, :cond_4

    .line 528
    sget-object v1, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    const-string v2, "Not setting wp because wallpaper file was not found."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 529
    const/4 v1, 0x0

    .line 548
    .end local v7           #assetManager:Landroid/content/res/AssetManager;
    .end local v11           #isLegacyTheme:Z
    .end local v14           #themeContext:Landroid/content/Context;
    .end local v15           #themeCtx:Landroid/content/Context;
    .end local v16           #wallpaper:Ljava/lang/String;
    .end local v17           #wpPath:Ljava/lang/String;
    :goto_5
    invoke-static {v10}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_1

    .line 531
    .restart local v7       #assetManager:Landroid/content/res/AssetManager;
    .restart local v11       #isLegacyTheme:Z
    .restart local v14       #themeContext:Landroid/content/Context;
    .restart local v15       #themeCtx:Landroid/content/Context;
    .restart local v16       #wallpaper:Ljava/lang/String;
    .restart local v17       #wpPath:Ljava/lang/String;
    :cond_4
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file:///android_asset/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/content/pm/ThemeUtils;->getInputStreamFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10

    goto :goto_3

    .line 536
    .end local v7           #assetManager:Landroid/content/res/AssetManager;
    .end local v15           #themeCtx:Landroid/content/Context;
    .end local v16           #wallpaper:Ljava/lang/String;
    .end local v17           #wpPath:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 537
    .local v13, pm:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ThemeService;->mPkgName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v13, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v12

    .line 538
    .local v12, pi:Landroid/content/pm/PackageInfo;
    iget-object v1, v12, Landroid/content/pm/PackageInfo;->legacyThemeInfos:[Landroid/content/pm/LegacyThemeInfo;

    if-eqz v1, :cond_6

    iget-object v1, v12, Landroid/content/pm/PackageInfo;->legacyThemeInfos:[Landroid/content/pm/LegacyThemeInfo;

    array-length v1, v1

    if-lez v1, :cond_6

    .line 539
    invoke-static {v14}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    iget-object v2, v12, Landroid/content/pm/PackageInfo;->legacyThemeInfos:[Landroid/content/pm/LegacyThemeInfo;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget v2, v2, Landroid/content/pm/LegacyThemeInfo;->wallpaperResourceId:I

    invoke-virtual {v1, v2}, Landroid/app/WallpaperManager;->setResource(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    .line 545
    .end local v11           #isLegacyTheme:Z
    .end local v12           #pi:Landroid/content/pm/PackageInfo;
    .end local v13           #pm:Landroid/content/pm/PackageManager;
    .end local v14           #themeContext:Landroid/content/Context;
    :catch_1
    move-exception v9

    .line 546
    .local v9, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_5

    .line 542
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v11       #isLegacyTheme:Z
    .restart local v12       #pi:Landroid/content/pm/PackageInfo;
    .restart local v13       #pm:Landroid/content/pm/PackageManager;
    .restart local v14       #themeContext:Landroid/content/Context;
    :cond_6
    const/4 v1, 0x0

    goto :goto_5

    .line 548
    .end local v11           #isLegacyTheme:Z
    .end local v12           #pi:Landroid/content/pm/PackageInfo;
    .end local v13           #pm:Landroid/content/pm/PackageManager;
    .end local v14           #themeContext:Landroid/content/Context;
    :catchall_0
    move-exception v1

    invoke-static {v10}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v1
.end method


# virtual methods
.method public applyDefaultTheme()V
    .locals 4

    .prologue
    .line 692
    iget-object v1, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_THEME_MANAGER"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 695
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 696
    iget-object v1, p0, Lcom/android/server/ThemeService;->mHandler:Lcom/android/server/ThemeService$ThemeWorkerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/ThemeService$ThemeWorkerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 697
    return-void
.end method

.method public getProgress(Ljava/lang/String;)I
    .locals 3
    .parameter "pkgName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 711
    iget-object v0, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_THEME_MANAGER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    monitor-enter p0

    .line 714
    :try_start_0
    iget v0, p0, Lcom/android/server/ThemeService;->mProgress:I

    monitor-exit p0

    return v0

    .line 715
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isThemeApplying(Ljava/lang/String;)Z
    .locals 3
    .parameter "pkgName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 701
    iget-object v0, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_THEME_MANAGER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    if-nez p1, :cond_0

    .line 704
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Package name is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 706
    :cond_0
    iget-object v0, p0, Lcom/android/server/ThemeService;->mPkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeUpdates(Landroid/content/res/IThemeChangeListener;)V
    .locals 3
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 675
    iget-object v0, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_THEME_MANAGER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    iget-object v0, p0, Lcom/android/server/ThemeService;->mClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 678
    return-void
.end method

.method public requestThemeChange(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .parameter "pkgName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 682
    .local p2, components:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_THEME_MANAGER"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 685
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 686
    new-instance v1, Lcom/android/server/ThemeService$ThemeData;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/ThemeService$ThemeData;-><init>(Lcom/android/server/ThemeService;Ljava/lang/String;Ljava/util/List;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 687
    iget-object v1, p0, Lcom/android/server/ThemeService;->mHandler:Lcom/android/server/ThemeService$ThemeWorkerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/ThemeService$ThemeWorkerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 688
    return-void
.end method

.method public requestThemeChangeUpdates(Landroid/content/res/IThemeChangeListener;)V
    .locals 3
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 668
    iget-object v0, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_THEME_MANAGER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    iget-object v0, p0, Lcom/android/server/ThemeService;->mClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 671
    return-void
.end method

.method public systemRunning()V
    .locals 3

    .prologue
    .line 146
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.WALLPAPER_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 147
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ThemeService;->mWallpaperChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 148
    return-void
.end method
