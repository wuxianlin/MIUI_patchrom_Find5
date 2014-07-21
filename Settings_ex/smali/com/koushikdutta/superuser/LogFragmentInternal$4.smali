.class Lcom/koushikdutta/superuser/LogFragmentInternal$4;
.super Ljava/lang/Object;
.source "LogFragmentInternal.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/superuser/LogFragmentInternal;->onCreate(Landroid/os/Bundle;Landroid/view/View;)V
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
    .line 184
    iput-object p1, p0, Lcom/koushikdutta/superuser/LogFragmentInternal$4;->this$0:Lcom/koushikdutta/superuser/LogFragmentInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "button"
    .parameter "isChecked"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/koushikdutta/superuser/LogFragmentInternal$4;->this$0:Lcom/koushikdutta/superuser/LogFragmentInternal;

    iget-object v0, v0, Lcom/koushikdutta/superuser/LogFragmentInternal;->up:Lcom/koushikdutta/superuser/db/UidPolicy;

    if-nez v0, :cond_0

    .line 193
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/superuser/LogFragmentInternal$4;->this$0:Lcom/koushikdutta/superuser/LogFragmentInternal;

    iget-object v0, v0, Lcom/koushikdutta/superuser/LogFragmentInternal;->up:Lcom/koushikdutta/superuser/db/UidPolicy;

    iput-boolean p2, v0, Lcom/koushikdutta/superuser/db/UidPolicy;->notification:Z

    .line 191
    iget-object v0, p0, Lcom/koushikdutta/superuser/LogFragmentInternal$4;->this$0:Lcom/koushikdutta/superuser/LogFragmentInternal;

    invoke-virtual {v0}, Lcom/koushikdutta/superuser/LogFragmentInternal;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/koushikdutta/superuser/LogFragmentInternal$4;->this$0:Lcom/koushikdutta/superuser/LogFragmentInternal;

    iget-object v1, v1, Lcom/koushikdutta/superuser/LogFragmentInternal;->up:Lcom/koushikdutta/superuser/db/UidPolicy;

    invoke-static {v0, v1}, Lcom/koushikdutta/superuser/db/SuDatabaseHelper;->setPolicy(Landroid/content/Context;Lcom/koushikdutta/superuser/db/UidPolicy;)V

    goto :goto_0
.end method
