.class Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController$1;
.super Ljava/lang/Object;
.source "RestrictedProfileSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;-><init>(Landroid/app/Fragment;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;


# direct methods
.method constructor <init>(Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;)V
    .locals 0
    .parameter

    .prologue
    .line 300
    iput-object p1, p0, Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController$1;->this$0:Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController$1;->this$0:Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;

    #calls: Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;->showUpdatePhotoPopup()V
    invoke-static {v0}, Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;->access$600(Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;)V

    .line 304
    return-void
.end method
