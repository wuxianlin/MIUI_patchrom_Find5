.class Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController$3;
.super Landroid/os/AsyncTask;
.source "RestrictedProfileSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;->onPhotoCropped(Landroid/net/Uri;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;

.field final synthetic val$cropped:Z

.field final synthetic val$data:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;ZLandroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 450
    iput-object p1, p0, Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController$3;->this$0:Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;

    iput-boolean p2, p0, Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController$3;->val$cropped:Z

    iput-object p3, p0, Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController$3;->val$data:Landroid/net/Uri;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 15
    .parameter "params"

    .prologue
    .line 453
    iget-boolean v11, p0, Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController$3;->val$cropped:Z

    if-eqz v11, :cond_0

    .line 455
    :try_start_0
    iget-object v11, p0, Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController$3;->this$0:Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;

    #getter for: Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;->access$900(Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController$3;->val$data:Landroid/net/Uri;

    invoke-virtual {v11, v12}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    .line 457
    .local v4, imageStream:Ljava/io/InputStream;
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 487
    .end local v4           #imageStream:Ljava/io/InputStream;
    :goto_0
    return-object v1

    .line 458
    :catch_0
    move-exception v2

    .line 459
    .local v2, fe:Ljava/io/FileNotFoundException;
    const/4 v1, 0x0

    goto :goto_0

    .line 463
    .end local v2           #fe:Ljava/io/FileNotFoundException;
    :cond_0
    iget-object v11, p0, Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController$3;->this$0:Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;

    #getter for: Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;->mPhotoSize:I
    invoke-static {v11}, Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;->access$1000(Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;)I

    move-result v11

    iget-object v12, p0, Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController$3;->this$0:Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;

    #getter for: Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;->mPhotoSize:I
    invoke-static {v12}, Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;->access$1000(Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;)I

    move-result v12

    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 465
    .local v1, croppedImage:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 466
    .local v0, canvas:Landroid/graphics/Canvas;
    const/4 v3, 0x0

    .line 468
    .local v3, fullImage:Landroid/graphics/Bitmap;
    :try_start_1
    iget-object v11, p0, Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController$3;->this$0:Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;

    #getter for: Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;->access$900(Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController$3;->val$data:Landroid/net/Uri;

    invoke-virtual {v11, v12}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    .line 470
    .restart local v4       #imageStream:Ljava/io/InputStream;
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 474
    if-eqz v3, :cond_1

    .line 475
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 477
    .local v9, squareSize:I
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    sub-int/2addr v11, v9

    div-int/lit8 v5, v11, 0x2

    .line 478
    .local v5, left:I
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    sub-int/2addr v11, v9

    div-int/lit8 v10, v11, 0x2

    .line 479
    .local v10, top:I
    new-instance v8, Landroid/graphics/Rect;

    add-int v11, v5, v9

    add-int v12, v10, v9

    invoke-direct {v8, v5, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 481
    .local v8, rectSource:Landroid/graphics/Rect;
    new-instance v7, Landroid/graphics/Rect;

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController$3;->this$0:Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;

    #getter for: Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;->mPhotoSize:I
    invoke-static {v13}, Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;->access$1000(Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;)I

    move-result v13

    iget-object v14, p0, Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController$3;->this$0:Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;

    #getter for: Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;->mPhotoSize:I
    invoke-static {v14}, Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;->access$1000(Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;)I

    move-result v14

    invoke-direct {v7, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 482
    .local v7, rectDest:Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 483
    .local v6, paint:Landroid/graphics/Paint;
    invoke-virtual {v0, v3, v8, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 471
    .end local v4           #imageStream:Ljava/io/InputStream;
    .end local v5           #left:I
    .end local v6           #paint:Landroid/graphics/Paint;
    .end local v7           #rectDest:Landroid/graphics/Rect;
    .end local v8           #rectSource:Landroid/graphics/Rect;
    .end local v9           #squareSize:I
    .end local v10           #top:I
    :catch_1
    move-exception v2

    .line 472
    .restart local v2       #fe:Ljava/io/FileNotFoundException;
    const/4 v1, 0x0

    goto :goto_0

    .line 487
    .end local v2           #fe:Ljava/io/FileNotFoundException;
    .restart local v4       #imageStream:Ljava/io/InputStream;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 450
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController$3;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "bitmap"

    .prologue
    .line 494
    if-eqz p1, :cond_0

    .line 495
    iget-object v0, p0, Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController$3;->this$0:Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;

    #setter for: Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;->mNewUserPhotoBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, p1}, Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;->access$1102(Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 496
    iget-object v0, p0, Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController$3;->this$0:Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;

    iget-object v1, p0, Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController$3;->this$0:Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;

    #getter for: Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;->mImageView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;->access$1300(Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController$3;->this$0:Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;

    #getter for: Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;->mNewUserPhotoBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;->access$1100(Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/users/CircleFramedDrawable;->getInstance(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/android/settings/users/CircleFramedDrawable;

    move-result-object v1

    #setter for: Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;->mNewUserPhotoDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1}, Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;->access$1202(Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 498
    iget-object v0, p0, Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController$3;->this$0:Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;

    #getter for: Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;->mImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;->access$1300(Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController$3;->this$0:Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;

    #getter for: Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;->mNewUserPhotoDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;->access$1200(Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 500
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController$3;->this$0:Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;

    #getter for: Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;->access$900(Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "TakeEditUserPhoto2.jpg"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 501
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController$3;->this$0:Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;

    #getter for: Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;->access$900(Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "CropEditUserPhoto.jpg"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 502
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 450
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController$3;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
