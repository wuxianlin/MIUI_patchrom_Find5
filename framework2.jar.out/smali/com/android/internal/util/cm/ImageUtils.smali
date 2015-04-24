.class public Lcom/android/internal/util/cm/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# static fields
.field private static final ASSET_URI_PREFIX:Ljava/lang/String; = "file:///android_asset/"

.field private static final DEFAULT_IMG_QUALITY:I = 0x64

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/android/internal/util/cm/ImageUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/cm/ImageUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cropImage(Ljava/io/InputStream;IIII)Ljava/io/InputStream;
    .locals 19
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "imageWidth"    # I
    .param p2, "imageHeight"    # I
    .param p3, "outWidth"    # I
    .param p4, "outHeight"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 79
    if-nez p0, :cond_0

    .line 80
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string v15, "inputStream cannot be null"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 83
    :cond_0
    if-lez p1, :cond_1

    if-gtz p2, :cond_2

    .line 84
    :cond_1
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string v15, "imageWidth and imageHeight must be > 0: imageWidth=%d imageHeight=%d"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 89
    :cond_2
    if-lez p3, :cond_3

    if-gtz p4, :cond_4

    .line 90
    :cond_3
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string v15, "outWidth and outHeight must be > 0: outWidth=%d outHeight=%d"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 95
    :cond_4
    div-int v14, p1, p3

    div-int v15, p2, p4

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 96
    .local v11, "scaleDownSampleSize":I
    if-lez v11, :cond_6

    .line 97
    div-int p1, p1, v11

    .line 98
    div-int p2, p2, v11

    .line 109
    :goto_0
    sub-int v14, p1, p3

    div-int/lit8 v7, v14, 0x2

    .line 110
    .local v7, "left":I
    sub-int v14, p2, p4

    div-int/lit8 v13, v14, 0x2

    .line 111
    .local v13, "top":I
    const/4 v3, 0x0

    .line 113
    .local v3, "compressed":Ljava/io/InputStream;
    :try_start_0
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 114
    .local v8, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v14, 0x1

    if-le v11, v14, :cond_5

    .line 115
    iput v11, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 117
    :cond_5
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v14, v8}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 118
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    if-nez v2, :cond_8

    .line 119
    const/4 v14, 0x0

    .line 130
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v8    # "options":Landroid/graphics/BitmapFactory$Options;
    :goto_1
    return-object v14

    .line 100
    .end local v3    # "compressed":Ljava/io/InputStream;
    .end local v7    # "left":I
    .end local v13    # "top":I
    :cond_6
    move/from16 v0, p3

    int-to-float v14, v0

    move/from16 v0, p4

    int-to-float v15, v0

    div-float v10, v14, v15

    .line 101
    .local v10, "ratio":F
    move/from16 v0, p1

    int-to-float v14, v0

    move/from16 v0, p2

    int-to-float v15, v0

    mul-float/2addr v15, v10

    cmpg-float v14, v14, v15

    if-gez v14, :cond_7

    .line 102
    move/from16 p3, p1

    .line 103
    move/from16 v0, p3

    int-to-float v14, v0

    div-float/2addr v14, v10

    float-to-int v0, v14

    move/from16 p4, v0

    goto :goto_0

    .line 105
    :cond_7
    move/from16 p4, p2

    .line 106
    move/from16 v0, p4

    int-to-float v14, v0

    mul-float/2addr v14, v10

    float-to-int v0, v14

    move/from16 p3, v0

    goto :goto_0

    .line 121
    .end local v10    # "ratio":F
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v3    # "compressed":Ljava/io/InputStream;
    .restart local v7    # "left":I
    .restart local v8    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v13    # "top":I
    :cond_8
    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v2, v7, v13, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 122
    .local v5, "cropped":Landroid/graphics/Bitmap;
    new-instance v12, Ljava/io/ByteArrayOutputStream;

    const/16 v14, 0x800

    invoke-direct {v12, v14}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 123
    .local v12, "tmpOut":Ljava/io/ByteArrayOutputStream;
    sget-object v14, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v15, 0x64

    invoke-virtual {v5, v14, v15, v12}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 124
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    .line 125
    .local v9, "outByteArray":[B
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "compressed":Ljava/io/InputStream;
    .local v4, "compressed":Ljava/io/InputStream;
    move-object v3, v4

    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "compressed":Ljava/io/InputStream;
    .end local v5    # "cropped":Landroid/graphics/Bitmap;
    .end local v8    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v9    # "outByteArray":[B
    .end local v12    # "tmpOut":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "compressed":Ljava/io/InputStream;
    :cond_9
    :goto_2
    move-object v14, v3

    .line 130
    goto :goto_1

    .line 127
    :catch_0
    move-exception v6

    .line 128
    .local v6, "e":Ljava/lang/Exception;
    sget-object v14, Lcom/android/internal/util/cm/ImageUtils;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Exception "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static getCroppedKeyguardStream(Ljava/lang/String;Landroid/content/Context;)Ljava/io/InputStream;
    .locals 12
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 143
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 144
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "\'pkgName\' cannot be null or empty!"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 146
    :cond_0
    if-nez p1, :cond_1

    .line 147
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "\'context\' cannot be null!"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 150
    :cond_1
    const/4 v0, 0x0

    .line 151
    .local v0, "cropped":Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 153
    .local v7, "stream":Ljava/io/InputStream;
    :try_start_0
    invoke-static {p0, p1}, Lcom/android/internal/util/cm/ImageUtils;->getOriginalKeyguardStream(Ljava/lang/String;Landroid/content/Context;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 154
    if-nez v7, :cond_2

    .line 177
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 179
    :goto_0
    return-object v9

    .line 157
    :cond_2
    :try_start_1
    invoke-static {v7}, Lcom/android/internal/util/cm/ImageUtils;->getImageDimension(Ljava/io/InputStream;)Landroid/graphics/Point;

    move-result-object v4

    .line 158
    .local v4, "point":Landroid/graphics/Point;
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 159
    if-eqz v4, :cond_3

    iget v10, v4, Landroid/graphics/Point;->x:I

    if-eqz v10, :cond_3

    iget v10, v4, Landroid/graphics/Point;->y:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v10, :cond_4

    .line 177
    :cond_3
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    .line 162
    :cond_4
    :try_start_2
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v8

    .line 163
    .local v8, "wm":Landroid/app/WallpaperManager;
    const-string v10, "window"

    invoke-virtual {p1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .line 165
    .local v5, "service":Landroid/view/WindowManager;
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 166
    .local v6, "size":Landroid/graphics/Point;
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 167
    iget v3, v6, Landroid/graphics/Point;->x:I

    .line 168
    .local v3, "outWidth":I
    iget v2, v6, Landroid/graphics/Point;->y:I

    .line 169
    .local v2, "outHeight":I
    invoke-static {p0, p1}, Lcom/android/internal/util/cm/ImageUtils;->getOriginalKeyguardStream(Ljava/lang/String;Landroid/content/Context;)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v7

    .line 170
    if-nez v7, :cond_5

    .line 177
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    .line 173
    :cond_5
    :try_start_3
    iget v9, v4, Landroid/graphics/Point;->x:I

    iget v10, v4, Landroid/graphics/Point;->y:I

    invoke-static {v7, v9, v10, v3, v2}, Lcom/android/internal/util/cm/ImageUtils;->cropImage(Ljava/io/InputStream;IIII)Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 177
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .end local v2    # "outHeight":I
    .end local v3    # "outWidth":I
    .end local v4    # "point":Landroid/graphics/Point;
    .end local v5    # "service":Landroid/view/WindowManager;
    .end local v6    # "size":Landroid/graphics/Point;
    .end local v8    # "wm":Landroid/app/WallpaperManager;
    :goto_1
    move-object v9, v0

    .line 179
    goto :goto_0

    .line 174
    :catch_0
    move-exception v1

    .line 175
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    sget-object v9, Lcom/android/internal/util/cm/ImageUtils;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 177
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v9
.end method

.method public static getCroppedWallpaperStream(Ljava/lang/String;Landroid/content/Context;)Ljava/io/InputStream;
    .locals 10
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 191
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 192
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "\'pkgName\' cannot be null or empty!"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 194
    :cond_0
    if-nez p1, :cond_1

    .line 195
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "\'context\' cannot be null!"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 198
    :cond_1
    const/4 v0, 0x0

    .line 199
    .local v0, "cropped":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 201
    .local v5, "stream":Ljava/io/InputStream;
    :try_start_0
    invoke-static {p0, p1}, Lcom/android/internal/util/cm/ImageUtils;->getOriginalWallpaperStream(Ljava/lang/String;Landroid/content/Context;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 202
    if-nez v5, :cond_2

    .line 221
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 223
    :goto_0
    return-object v7

    .line 205
    :cond_2
    :try_start_1
    invoke-static {v5}, Lcom/android/internal/util/cm/ImageUtils;->getImageDimension(Ljava/io/InputStream;)Landroid/graphics/Point;

    move-result-object v4

    .line 206
    .local v4, "point":Landroid/graphics/Point;
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 207
    if-eqz v4, :cond_3

    iget v8, v4, Landroid/graphics/Point;->x:I

    if-eqz v8, :cond_3

    iget v8, v4, Landroid/graphics/Point;->y:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v8, :cond_4

    .line 221
    :cond_3
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    .line 210
    :cond_4
    :try_start_2
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v6

    .line 211
    .local v6, "wm":Landroid/app/WallpaperManager;
    invoke-virtual {v6}, Landroid/app/WallpaperManager;->getDesiredMinimumWidth()I

    move-result v3

    .line 212
    .local v3, "outWidth":I
    invoke-virtual {v6}, Landroid/app/WallpaperManager;->getDesiredMinimumHeight()I

    move-result v2

    .line 213
    .local v2, "outHeight":I
    invoke-static {p0, p1}, Lcom/android/internal/util/cm/ImageUtils;->getOriginalWallpaperStream(Ljava/lang/String;Landroid/content/Context;)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    .line 214
    if-nez v5, :cond_5

    .line 221
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    .line 217
    :cond_5
    :try_start_3
    iget v7, v4, Landroid/graphics/Point;->x:I

    iget v8, v4, Landroid/graphics/Point;->y:I

    invoke-static {v5, v7, v8, v3, v2}, Lcom/android/internal/util/cm/ImageUtils;->cropImage(Ljava/io/InputStream;IIII)Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 221
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .end local v2    # "outHeight":I
    .end local v3    # "outWidth":I
    .end local v4    # "point":Landroid/graphics/Point;
    .end local v6    # "wm":Landroid/app/WallpaperManager;
    :goto_1
    move-object v7, v0

    .line 223
    goto :goto_0

    .line 218
    :catch_0
    move-exception v1

    .line 219
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    sget-object v7, Lcom/android/internal/util/cm/ImageUtils;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 221
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v7
.end method

.method public static getImageDimension(Ljava/io/InputStream;)Landroid/graphics/Point;
    .locals 4
    .param p0, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 56
    if-nez p0, :cond_0

    .line 57
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "\'inputStream\' cannot be null!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 59
    :cond_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 60
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 61
    const/4 v2, 0x0

    invoke-static {p0, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 62
    new-instance v1, Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 63
    .local v1, "point":Landroid/graphics/Point;
    return-object v1
.end method

.method private static getOriginalKeyguardStream(Ljava/lang/String;Landroid/content/Context;)Ljava/io/InputStream;
    .locals 8
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 227
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    if-nez p1, :cond_1

    .line 228
    :cond_0
    const/4 v2, 0x0

    .line 247
    :goto_0
    return-object v2

    .line 231
    :cond_1
    const/4 v2, 0x0

    .line 234
    .local v2, "inputStream":Ljava/io/InputStream;
    const/4 v5, 0x2

    :try_start_0
    invoke-virtual {p1, p0, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    .line 236
    .local v3, "themeCtx":Landroid/content/Context;
    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 237
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    invoke-static {v0}, Landroid/content/pm/ThemeUtils;->getLockscreenWallpaperPath(Landroid/content/res/AssetManager;)Ljava/lang/String;

    move-result-object v4

    .line 238
    .local v4, "wpPath":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 239
    sget-object v5, Lcom/android/internal/util/cm/ImageUtils;->TAG:Ljava/lang/String;

    const-string v6, "Not setting lockscreen wp because wallpaper file was not found."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 244
    .end local v0    # "assetManager":Landroid/content/res/AssetManager;
    .end local v3    # "themeCtx":Landroid/content/Context;
    .end local v4    # "wpPath":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 245
    .local v1, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/internal/util/cm/ImageUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "There was an error setting lockscreen wp for pkg "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 241
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "assetManager":Landroid/content/res/AssetManager;
    .restart local v3    # "themeCtx":Landroid/content/Context;
    .restart local v4    # "wpPath":Ljava/lang/String;
    :cond_2
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file:///android_asset/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/content/pm/ThemeUtils;->getInputStreamFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_0
.end method

.method private static getOriginalWallpaperStream(Ljava/lang/String;Landroid/content/Context;)Ljava/io/InputStream;
    .locals 19
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 251
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez p1, :cond_1

    .line 252
    :cond_0
    const/4 v11, 0x0

    .line 311
    :goto_0
    return-object v11

    .line 255
    :cond_1
    const/4 v11, 0x0

    .line 256
    .local v11, "inputStream":Ljava/io/InputStream;
    const-string v5, "pkg_name= ?"

    .line 257
    .local v5, "selection":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v6, v2

    .line 258
    .local v6, "selectionArgs":[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ThemesContract$ThemesColumns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 261
    .local v9, "c":Landroid/database/Cursor;
    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_4

    .line 262
    :cond_2
    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 263
    :cond_3
    const/4 v11, 0x0

    goto :goto_0

    .line 265
    :cond_4
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 269
    const/4 v2, 0x2

    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v15

    .line 271
    .local v15, "themeContext":Landroid/content/Context;
    const-string v2, "is_legacy_theme"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    const/4 v12, 0x1

    .line 273
    .local v12, "isLegacyTheme":Z
    :goto_1
    if-nez v12, :cond_a

    .line 274
    const-string v2, "wallpaper_uri"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 276
    .local v17, "wallpaper":Ljava/lang/String;
    if-eqz v17, :cond_8

    .line 277
    invoke-static/range {v17 .. v17}, Landroid/webkit/URLUtil;->isAssetUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 278
    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/content/pm/ThemeUtils;->getInputStreamFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    .line 308
    .end local v17    # "wallpaper":Ljava/lang/String;
    :cond_5
    :goto_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 271
    .end local v12    # "isLegacyTheme":Z
    :cond_6
    const/4 v12, 0x0

    goto :goto_1

    .line 280
    .restart local v12    # "isLegacyTheme":Z
    .restart local v17    # "wallpaper":Ljava/lang/String;
    :cond_7
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v11

    goto :goto_2

    .line 285
    :cond_8
    const/4 v2, 0x2

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v16

    .line 287
    .local v16, "themeCtx":Landroid/content/Context;
    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    .line 288
    .local v8, "assetManager":Landroid/content/res/AssetManager;
    invoke-static {v8}, Landroid/content/pm/ThemeUtils;->getWallpaperPath(Landroid/content/res/AssetManager;)Ljava/lang/String;

    move-result-object v18

    .line 289
    .local v18, "wpPath":Ljava/lang/String;
    if-nez v18, :cond_9

    .line 290
    sget-object v2, Lcom/android/internal/util/cm/ImageUtils;->TAG:Ljava/lang/String;

    const-string v3, "Not setting wp because wallpaper file was not found."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 305
    .end local v8    # "assetManager":Landroid/content/res/AssetManager;
    .end local v12    # "isLegacyTheme":Z
    .end local v15    # "themeContext":Landroid/content/Context;
    .end local v16    # "themeCtx":Landroid/content/Context;
    .end local v17    # "wallpaper":Ljava/lang/String;
    .end local v18    # "wpPath":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 306
    .local v10, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v2, Lcom/android/internal/util/cm/ImageUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWallpaperStream: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 308
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 292
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v8    # "assetManager":Landroid/content/res/AssetManager;
    .restart local v12    # "isLegacyTheme":Z
    .restart local v15    # "themeContext":Landroid/content/Context;
    .restart local v16    # "themeCtx":Landroid/content/Context;
    .restart local v17    # "wallpaper":Ljava/lang/String;
    .restart local v18    # "wpPath":Ljava/lang/String;
    :cond_9
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file:///android_asset/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Landroid/content/pm/ThemeUtils;->getInputStreamFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v11

    goto :goto_2

    .line 297
    .end local v8    # "assetManager":Landroid/content/res/AssetManager;
    .end local v16    # "themeCtx":Landroid/content/Context;
    .end local v17    # "wallpaper":Ljava/lang/String;
    .end local v18    # "wpPath":Ljava/lang/String;
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 298
    .local v14, "resources":Landroid/content/res/Resources;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v13

    .line 300
    .local v13, "pi":Landroid/content/pm/PackageInfo;
    iget-object v2, v13, Landroid/content/pm/PackageInfo;->legacyThemeInfos:[Landroid/content/pm/LegacyThemeInfo;

    if-eqz v2, :cond_5

    iget-object v2, v13, Landroid/content/pm/PackageInfo;->legacyThemeInfos:[Landroid/content/pm/LegacyThemeInfo;

    array-length v2, v2

    if-lez v2, :cond_5

    .line 301
    iget-object v2, v13, Landroid/content/pm/PackageInfo;->legacyThemeInfos:[Landroid/content/pm/LegacyThemeInfo;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget v2, v2, Landroid/content/pm/LegacyThemeInfo;->wallpaperResourceId:I

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v11

    goto/16 :goto_2

    .line 308
    .end local v12    # "isLegacyTheme":Z
    .end local v13    # "pi":Landroid/content/pm/PackageInfo;
    .end local v14    # "resources":Landroid/content/res/Resources;
    .end local v15    # "themeContext":Landroid/content/Context;
    :catchall_0
    move-exception v2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v2
.end method
