.class public Lcom/android/settings/users/UserUtils;
.super Ljava/lang/Object;
.source "UserUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUserIcon(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "context"
    .parameter "um"
    .parameter "user"
    .parameter "res"

    .prologue
    const/4 v1, 0x0

    .line 29
    iget-object v2, p2, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 32
    :cond_0
    :goto_0
    return-object v1

    .line 30
    :cond_1
    iget v2, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1, v2}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 31
    .local v0, icon:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 32
    invoke-static {p0, v0}, Lcom/android/settings/users/CircleFramedDrawable;->getInstance(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/android/settings/users/CircleFramedDrawable;

    move-result-object v1

    goto :goto_0
.end method
