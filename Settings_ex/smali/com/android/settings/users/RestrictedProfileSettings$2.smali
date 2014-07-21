.class Lcom/android/settings/users/RestrictedProfileSettings$2;
.super Ljava/lang/Object;
.source "RestrictedProfileSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/users/RestrictedProfileSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/users/RestrictedProfileSettings;

.field final synthetic val$userNameView:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/settings/users/RestrictedProfileSettings;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/settings/users/RestrictedProfileSettings$2;->this$0:Lcom/android/settings/users/RestrictedProfileSettings;

    iput-object p2, p0, Lcom/android/settings/users/RestrictedProfileSettings$2;->val$userNameView:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 211
    const/4 v4, -0x1

    if-ne p2, v4, :cond_3

    .line 213
    iget-object v4, p0, Lcom/android/settings/users/RestrictedProfileSettings$2;->val$userNameView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 214
    .local v3, userName:Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 215
    iget-object v4, p0, Lcom/android/settings/users/RestrictedProfileSettings$2;->this$0:Lcom/android/settings/users/RestrictedProfileSettings;

    #getter for: Lcom/android/settings/users/RestrictedProfileSettings;->mUserNameView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/settings/users/RestrictedProfileSettings;->access$100(Lcom/android/settings/users/RestrictedProfileSettings;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 216
    .local v2, oldUserName:Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 218
    :cond_0
    iget-object v4, p0, Lcom/android/settings/users/RestrictedProfileSettings$2;->this$0:Lcom/android/settings/users/RestrictedProfileSettings;

    #getter for: Lcom/android/settings/users/RestrictedProfileSettings;->mHeaderView:Landroid/view/View;
    invoke-static {v4}, Lcom/android/settings/users/RestrictedProfileSettings;->access$200(Lcom/android/settings/users/RestrictedProfileSettings;)Landroid/view/View;

    move-result-object v4

    const v5, 0x1020016

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v4, p0, Lcom/android/settings/users/RestrictedProfileSettings$2;->this$0:Lcom/android/settings/users/RestrictedProfileSettings;

    iget-object v4, v4, Lcom/android/settings/users/RestrictedProfileSettings;->mUserManager:Landroid/os/UserManager;

    iget-object v5, p0, Lcom/android/settings/users/RestrictedProfileSettings$2;->this$0:Lcom/android/settings/users/RestrictedProfileSettings;

    iget-object v5, v5, Lcom/android/settings/users/RestrictedProfileSettings;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/UserManager;->setUserName(ILjava/lang/String;)V

    .line 225
    .end local v2           #oldUserName:Ljava/lang/CharSequence;
    :cond_1
    iget-object v4, p0, Lcom/android/settings/users/RestrictedProfileSettings$2;->this$0:Lcom/android/settings/users/RestrictedProfileSettings;

    #getter for: Lcom/android/settings/users/RestrictedProfileSettings;->mEditUserPhotoController:Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;
    invoke-static {v4}, Lcom/android/settings/users/RestrictedProfileSettings;->access$300(Lcom/android/settings/users/RestrictedProfileSettings;)Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;->getNewUserPhotoDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 226
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/android/settings/users/RestrictedProfileSettings$2;->this$0:Lcom/android/settings/users/RestrictedProfileSettings;

    #getter for: Lcom/android/settings/users/RestrictedProfileSettings;->mEditUserPhotoController:Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;
    invoke-static {v4}, Lcom/android/settings/users/RestrictedProfileSettings;->access$300(Lcom/android/settings/users/RestrictedProfileSettings;)Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;->getNewUserPhotoBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 227
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/android/settings/users/RestrictedProfileSettings$2;->this$0:Lcom/android/settings/users/RestrictedProfileSettings;

    #getter for: Lcom/android/settings/users/RestrictedProfileSettings;->mUserIconView:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/settings/users/RestrictedProfileSettings;->access$400(Lcom/android/settings/users/RestrictedProfileSettings;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 229
    iget-object v4, p0, Lcom/android/settings/users/RestrictedProfileSettings$2;->this$0:Lcom/android/settings/users/RestrictedProfileSettings;

    #getter for: Lcom/android/settings/users/RestrictedProfileSettings;->mUserIconView:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/settings/users/RestrictedProfileSettings;->access$400(Lcom/android/settings/users/RestrictedProfileSettings;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 230
    new-instance v5, Lcom/android/settings/users/RestrictedProfileSettings$2$1;

    invoke-direct {v5, p0}, Lcom/android/settings/users/RestrictedProfileSettings$2$1;-><init>(Lcom/android/settings/users/RestrictedProfileSettings$2;)V

    sget-object v6, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Void;

    invoke-virtual {v5, v6, v4}, Lcom/android/settings/users/RestrictedProfileSettings$2$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 239
    :cond_2
    iget-object v4, p0, Lcom/android/settings/users/RestrictedProfileSettings$2;->this$0:Lcom/android/settings/users/RestrictedProfileSettings;

    const/4 v5, 0x1

    #calls: Lcom/android/settings/users/RestrictedProfileSettings;->removeDialog(I)V
    invoke-static {v4, v5}, Lcom/android/settings/users/RestrictedProfileSettings;->access$500(Lcom/android/settings/users/RestrictedProfileSettings;I)V

    .line 241
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v3           #userName:Ljava/lang/CharSequence;
    :cond_3
    iget-object v4, p0, Lcom/android/settings/users/RestrictedProfileSettings$2;->this$0:Lcom/android/settings/users/RestrictedProfileSettings;

    #calls: Lcom/android/settings/users/RestrictedProfileSettings;->clearEditUserInfoDialog()V
    invoke-static {v4}, Lcom/android/settings/users/RestrictedProfileSettings;->access$000(Lcom/android/settings/users/RestrictedProfileSettings;)V

    .line 242
    return-void
.end method
