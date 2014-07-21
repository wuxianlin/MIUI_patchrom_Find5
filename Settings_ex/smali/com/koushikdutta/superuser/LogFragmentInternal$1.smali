.class Lcom/koushikdutta/superuser/LogFragmentInternal$1;
.super Ljava/lang/Object;
.source "LogFragmentInternal.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/superuser/LogFragmentInternal;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/superuser/LogFragmentInternal;


# direct methods
.method constructor <init>(Lcom/koushikdutta/superuser/LogFragmentInternal;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/koushikdutta/superuser/LogFragmentInternal$1;->this$0:Lcom/koushikdutta/superuser/LogFragmentInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/koushikdutta/superuser/LogFragmentInternal$1;->this$0:Lcom/koushikdutta/superuser/LogFragmentInternal;

    iget-object v0, v0, Lcom/koushikdutta/superuser/LogFragmentInternal;->up:Lcom/koushikdutta/superuser/db/UidPolicy;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/koushikdutta/superuser/LogFragmentInternal$1;->this$0:Lcom/koushikdutta/superuser/LogFragmentInternal;

    invoke-virtual {v0}, Lcom/koushikdutta/superuser/LogFragmentInternal;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/koushikdutta/superuser/LogFragmentInternal$1;->this$0:Lcom/koushikdutta/superuser/LogFragmentInternal;

    iget-object v1, v1, Lcom/koushikdutta/superuser/LogFragmentInternal;->up:Lcom/koushikdutta/superuser/db/UidPolicy;

    invoke-static {v0, v1}, Lcom/koushikdutta/superuser/db/SuDatabaseHelper;->delete(Landroid/content/Context;Lcom/koushikdutta/superuser/db/UidPolicy;)Z

    .line 79
    :goto_0
    iget-object v0, p0, Lcom/koushikdutta/superuser/LogFragmentInternal$1;->this$0:Lcom/koushikdutta/superuser/LogFragmentInternal;

    invoke-virtual {v0}, Lcom/koushikdutta/superuser/LogFragmentInternal;->onDelete()V

    .line 80
    const/4 v0, 0x1

    return v0

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/superuser/LogFragmentInternal$1;->this$0:Lcom/koushikdutta/superuser/LogFragmentInternal;

    invoke-virtual {v0}, Lcom/koushikdutta/superuser/LogFragmentInternal;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/koushikdutta/superuser/db/SuperuserDatabaseHelper;->deleteLogs(Landroid/content/Context;)V

    goto :goto_0
.end method
