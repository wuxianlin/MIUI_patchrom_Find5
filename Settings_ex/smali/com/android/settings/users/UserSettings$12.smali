.class Lcom/android/settings/users/UserSettings$12;
.super Landroid/os/AsyncTask;
.source "UserSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/users/UserSettings;->loadIconsAsync(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/users/UserSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/users/UserSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 669
    iput-object p1, p0, Lcom/android/settings/users/UserSettings$12;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 669
    check-cast p1, [Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/users/UserSettings$12;->doInBackground([Ljava/util/List;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/util/List;)Ljava/lang/Void;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 677
    .local p1, values:[Ljava/util/List;,"[Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 678
    .local v2, userId:I
    iget-object v3, p0, Lcom/android/settings/users/UserSettings$12;->this$0:Lcom/android/settings/users/UserSettings;

    #getter for: Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;
    invoke-static {v3}, Lcom/android/settings/users/UserSettings;->access$700(Lcom/android/settings/users/UserSettings;)Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 679
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/android/settings/users/UserSettings$12;->this$0:Lcom/android/settings/users/UserSettings;

    #getter for: Lcom/android/settings/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;
    invoke-static {v3}, Lcom/android/settings/users/UserSettings;->access$400(Lcom/android/settings/users/UserSettings;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_0

    .line 681
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #userId:I
    :cond_0
    const/4 v3, 0x0

    return-object v3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 669
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/users/UserSettings$12;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 672
    iget-object v0, p0, Lcom/android/settings/users/UserSettings$12;->this$0:Lcom/android/settings/users/UserSettings;

    #calls: Lcom/android/settings/users/UserSettings;->updateUserList()V
    invoke-static {v0}, Lcom/android/settings/users/UserSettings;->access$000(Lcom/android/settings/users/UserSettings;)V

    .line 673
    return-void
.end method
