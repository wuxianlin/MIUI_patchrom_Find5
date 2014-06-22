.class Landroid/app/WallpaperManager$Globals;
.super Landroid/app/IWallpaperManagerCallback$Stub;
.source "WallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/WallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Globals"
.end annotation


# static fields
.field private static final MSG_CLEAR_KEYGUARD_WALLPAPER:I = 0x2

.field private static final MSG_CLEAR_WALLPAPER:I = 0x1


# instance fields
.field private mDefaultWallpaper:Landroid/graphics/Bitmap;

.field private final mHandler:Landroid/os/Handler;

.field private mKeyguardwallpaper:Landroid/graphics/Bitmap;

.field private mService:Landroid/app/IWallpaperManager;

.field private mWallpaper:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 2
    .parameter "looper"

    .prologue
    .line 231
    invoke-direct {p0}, Landroid/app/IWallpaperManagerCallback$Stub;-><init>()V

    .line 232
    const-string/jumbo v1, "wallpaper"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 233
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/IWallpaperManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;

    move-result-object v1

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    .line 234
    new-instance v1, Landroid/app/WallpaperManager$Globals$1;

    invoke-direct {v1, p0, p1}, Landroid/app/WallpaperManager$Globals$1;-><init>(Landroid/app/WallpaperManager$Globals;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mHandler:Landroid/os/Handler;

    .line 252
    return-void
.end method

.method static synthetic access$002(Landroid/app/WallpaperManager$Globals;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 220
    iput-object p1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$102(Landroid/app/WallpaperManager$Globals;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 220
    iput-object p1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$202(Landroid/app/WallpaperManager$Globals;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 220
    iput-object p1, p0, Landroid/app/WallpaperManager$Globals;->mKeyguardwallpaper:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$400(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 220
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    return-object v0
.end method

.method private getCurrentKeyguardWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 349
    :try_start_0
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 350
    .local v4, params:Landroid/os/Bundle;
    iget-object v6, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v6, p0, v4}, Landroid/app/IWallpaperManager;->getKeyguardWallpaper(Landroid/app/IWallpaperManagerCallback;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 351
    .local v2, fd:Landroid/os/ParcelFileDescriptor;
    if-eqz v2, :cond_0

    .line 353
    :try_start_1
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 354
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7, v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 361
    .local v0, bm:Landroid/graphics/Bitmap;
    :try_start_2
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 370
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v2           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v3           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v4           #params:Landroid/os/Bundle;
    :goto_0
    return-object v0

    .line 357
    .restart local v2       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v4       #params:Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 358
    .local v1, e:Ljava/lang/OutOfMemoryError;
    :try_start_3
    invoke-static {}, Landroid/app/WallpaperManager;->access$300()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Can\'t decode file"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 361
    :try_start_4
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    .end local v2           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v4           #params:Landroid/os/Bundle;
    :cond_0
    :goto_1
    move-object v0, v5

    .line 370
    goto :goto_0

    .line 360
    .restart local v2       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v4       #params:Landroid/os/Bundle;
    :catchall_0
    move-exception v6

    .line 361
    :try_start_5
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 364
    :goto_2
    :try_start_6
    throw v6
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    .line 367
    .end local v2           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v4           #params:Landroid/os/Bundle;
    :catch_1
    move-exception v6

    goto :goto_1

    .line 362
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    .restart local v2       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v3       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v4       #params:Landroid/os/Bundle;
    :catch_2
    move-exception v5

    goto :goto_0

    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v3           #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v1       #e:Ljava/lang/OutOfMemoryError;
    :catch_3
    move-exception v6

    goto :goto_1

    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :catch_4
    move-exception v7

    goto :goto_2
.end method

.method private getCurrentWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "context"

    .prologue
    const/4 v8, 0x0

    .line 320
    :try_start_0
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 321
    .local v5, params:Landroid/os/Bundle;
    iget-object v7, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v7, p0, v5}, Landroid/app/IWallpaperManager;->getWallpaper(Landroid/app/IWallpaperManagerCallback;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 322
    .local v2, fd:Landroid/os/ParcelFileDescriptor;
    if-eqz v2, :cond_0

    .line 323
    const-string/jumbo v7, "width"

    const/4 v9, 0x0

    invoke-virtual {v5, v7, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 324
    .local v6, width:I
    const-string v7, "height"

    const/4 v9, 0x0

    invoke-virtual {v5, v7, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 327
    .local v3, height:I
    :try_start_1
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 328
    .local v4, options:Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    const/4 v9, 0x0

    invoke-static {v7, v9, v4}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 330
    .local v0, bm:Landroid/graphics/Bitmap;
    invoke-static {p1, v0, v6, v3}, Landroid/app/WallpaperManager;->generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    .line 335
    :try_start_2
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 344
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v2           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v3           #height:I
    .end local v4           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v5           #params:Landroid/os/Bundle;
    .end local v6           #width:I
    :goto_0
    return-object v7

    .line 331
    .restart local v2       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v3       #height:I
    .restart local v5       #params:Landroid/os/Bundle;
    .restart local v6       #width:I
    :catch_0
    move-exception v1

    .line 332
    .local v1, e:Ljava/lang/OutOfMemoryError;
    :try_start_3
    invoke-static {}, Landroid/app/WallpaperManager;->access$300()Ljava/lang/String;

    move-result-object v7

    const-string v9, "Can\'t decode file"

    invoke-static {v7, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 335
    :try_start_4
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    .end local v2           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v3           #height:I
    .end local v5           #params:Landroid/os/Bundle;
    .end local v6           #width:I
    :cond_0
    :goto_1
    move-object v7, v8

    .line 344
    goto :goto_0

    .line 334
    .restart local v2       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v3       #height:I
    .restart local v5       #params:Landroid/os/Bundle;
    .restart local v6       #width:I
    :catchall_0
    move-exception v7

    .line 335
    :try_start_5
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 338
    :goto_2
    :try_start_6
    throw v7
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    .line 341
    .end local v2           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v3           #height:I
    .end local v5           #params:Landroid/os/Bundle;
    .end local v6           #width:I
    :catch_1
    move-exception v7

    goto :goto_1

    .line 336
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    .restart local v2       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v3       #height:I
    .restart local v4       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v5       #params:Landroid/os/Bundle;
    .restart local v6       #width:I
    :catch_2
    move-exception v8

    goto :goto_0

    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v4           #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v1       #e:Ljava/lang/OutOfMemoryError;
    :catch_3
    move-exception v7

    goto :goto_1

    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :catch_4
    move-exception v9

    goto :goto_2
.end method

.method private getDefaultWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    .line 375
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x1080223

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 377
    .local v3, is:Ljava/io/InputStream;
    if-eqz v3, :cond_0

    .line 378
    iget-object v6, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v6}, Landroid/app/IWallpaperManager;->getWidthHint()I

    move-result v5

    .line 379
    .local v5, width:I
    iget-object v6, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v6}, Landroid/app/IWallpaperManager;->getHeightHint()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 382
    .local v2, height:I
    :try_start_1
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 383
    .local v4, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x0

    invoke-static {v3, v6, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 384
    .local v0, bm:Landroid/graphics/Bitmap;
    invoke-static {p1, v0, v5, v2}, Landroid/app/WallpaperManager;->generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    .line 389
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 398
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v2           #height:I
    .end local v3           #is:Ljava/io/InputStream;
    .end local v4           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v5           #width:I
    :goto_0
    return-object v6

    .line 385
    .restart local v2       #height:I
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v5       #width:I
    :catch_0
    move-exception v1

    .line 386
    .local v1, e:Ljava/lang/OutOfMemoryError;
    :try_start_3
    invoke-static {}, Landroid/app/WallpaperManager;->access$300()Ljava/lang/String;

    move-result-object v6

    const-string v8, "Can\'t decode stream"

    invoke-static {v6, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 389
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    .end local v2           #height:I
    .end local v3           #is:Ljava/io/InputStream;
    .end local v5           #width:I
    :cond_0
    :goto_1
    move-object v6, v7

    .line 398
    goto :goto_0

    .line 388
    .restart local v2       #height:I
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v5       #width:I
    :catchall_0
    move-exception v6

    .line 389
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 392
    :goto_2
    :try_start_6
    throw v6
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    .line 395
    .end local v2           #height:I
    .end local v3           #is:Ljava/io/InputStream;
    .end local v5           #width:I
    :catch_1
    move-exception v6

    goto :goto_1

    .line 390
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    .restart local v2       #height:I
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v4       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v5       #width:I
    :catch_2
    move-exception v7

    goto :goto_0

    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v4           #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v1       #e:Ljava/lang/OutOfMemoryError;
    :catch_3
    move-exception v6

    goto :goto_1

    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :catch_4
    move-exception v8

    goto :goto_2
.end method


# virtual methods
.method public clearKeyguardWallpaper()V
    .locals 2

    .prologue
    .line 402
    monitor-enter p0

    .line 404
    :try_start_0
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v0}, Landroid/app/IWallpaperManager;->clearKeyguardWallpaper()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    :goto_0
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mKeyguardwallpaper:Landroid/graphics/Bitmap;

    .line 409
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 410
    monitor-exit p0

    .line 411
    return-void

    .line 410
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 405
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public forgetLoadedWallpaper()V
    .locals 2

    .prologue
    .line 311
    monitor-enter p0

    .line 312
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    .line 313
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 314
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 315
    monitor-exit p0

    .line 316
    return-void

    .line 315
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onKeyguardWallpaperChanged()V
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 265
    return-void
.end method

.method public onWallpaperChanged()V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 261
    return-void
.end method

.method public peekKeyguardWallpaperBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "context"

    .prologue
    .line 297
    monitor-enter p0

    .line 298
    :try_start_0
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mKeyguardwallpaper:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 299
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mKeyguardwallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    :goto_0
    return-object v1

    .line 302
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->getCurrentKeyguardWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mKeyguardwallpaper:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    .line 306
    :goto_1
    :try_start_2
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mKeyguardwallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    goto :goto_0

    .line 307
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 303
    :catch_0
    move-exception v0

    .line 304
    .local v0, e:Ljava/lang/OutOfMemoryError;
    :try_start_3
    invoke-static {}, Landroid/app/WallpaperManager;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No memory load current keyguard wallpaper"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public peekWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "context"
    .parameter "returnDefault"

    .prologue
    .line 268
    monitor-enter p0

    .line 269
    :try_start_0
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 270
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    .line 289
    :goto_0
    return-object v1

    .line 272
    :cond_0
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 273
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    goto :goto_0

    .line 290
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 275
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 277
    :try_start_2
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->getCurrentWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    .line 281
    :goto_1
    if-eqz p2, :cond_3

    .line 282
    :try_start_3
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    .line 283
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->getDefaultWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 284
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    goto :goto_0

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, e:Ljava/lang/OutOfMemoryError;
    invoke-static {}, Landroid/app/WallpaperManager;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No memory load current wallpaper"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 286
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 289
    :cond_3
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
