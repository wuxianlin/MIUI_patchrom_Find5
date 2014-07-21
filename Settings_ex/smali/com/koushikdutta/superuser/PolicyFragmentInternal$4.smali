.class Lcom/koushikdutta/superuser/PolicyFragmentInternal$4;
.super Ljava/lang/Object;
.source "PolicyFragmentInternal.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/superuser/PolicyFragmentInternal;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/superuser/PolicyFragmentInternal;


# direct methods
.method constructor <init>(Lcom/koushikdutta/superuser/PolicyFragmentInternal;)V
    .locals 0
    .parameter

    .prologue
    .line 285
    iput-object p1, p0, Lcom/koushikdutta/superuser/PolicyFragmentInternal$4;->this$0:Lcom/koushikdutta/superuser/PolicyFragmentInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 288
    iget-object v0, p0, Lcom/koushikdutta/superuser/PolicyFragmentInternal$4;->this$0:Lcom/koushikdutta/superuser/PolicyFragmentInternal;

    invoke-virtual {v0}, Lcom/koushikdutta/superuser/PolicyFragmentInternal;->showAllLogs()V

    .line 289
    const/4 v0, 0x1

    return v0
.end method
