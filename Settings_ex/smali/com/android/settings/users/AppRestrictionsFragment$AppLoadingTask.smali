.class Lcom/android/settings/users/AppRestrictionsFragment$AppLoadingTask;
.super Landroid/os/AsyncTask;
.source "AppRestrictionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/users/AppRestrictionsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppLoadingTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/users/AppRestrictionsFragment;


# direct methods
.method private constructor <init>(Lcom/android/settings/users/AppRestrictionsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 526
    iput-object p1, p0, Lcom/android/settings/users/AppRestrictionsFragment$AppLoadingTask;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/users/AppRestrictionsFragment;Lcom/android/settings/users/AppRestrictionsFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 526
    invoke-direct {p0, p1}, Lcom/android/settings/users/AppRestrictionsFragment$AppLoadingTask;-><init>(Lcom/android/settings/users/AppRestrictionsFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 526
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/users/AppRestrictionsFragment$AppLoadingTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .parameter "params"

    .prologue
    .line 530
    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment$AppLoadingTask;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    #calls: Lcom/android/settings/users/AppRestrictionsFragment;->fetchAndMergeApps()V
    invoke-static {v0}, Lcom/android/settings/users/AppRestrictionsFragment;->access$500(Lcom/android/settings/users/AppRestrictionsFragment;)V

    .line 531
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 526
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/users/AppRestrictionsFragment$AppLoadingTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 536
    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment$AppLoadingTask;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    #calls: Lcom/android/settings/users/AppRestrictionsFragment;->populateApps()V
    invoke-static {v0}, Lcom/android/settings/users/AppRestrictionsFragment;->access$600(Lcom/android/settings/users/AppRestrictionsFragment;)V

    .line 537
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 541
    return-void
.end method
