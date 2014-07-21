.class Lcom/koushikdutta/superuser/PolicyFragmentInternal$2;
.super Ljava/lang/Object;
.source "PolicyFragmentInternal.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/superuser/PolicyFragmentInternal;->showExtraActions(Lcom/koushikdutta/superuser/db/UidPolicy;Lcom/koushikdutta/widgets/ListItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/superuser/PolicyFragmentInternal;

.field final synthetic val$item:Lcom/koushikdutta/widgets/ListItem;

.field final synthetic val$permissionChange:Ljava/lang/String;

.field final synthetic val$up:Lcom/koushikdutta/superuser/db/UidPolicy;


# direct methods
.method constructor <init>(Lcom/koushikdutta/superuser/PolicyFragmentInternal;Ljava/lang/String;Lcom/koushikdutta/superuser/db/UidPolicy;Lcom/koushikdutta/widgets/ListItem;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/koushikdutta/superuser/PolicyFragmentInternal$2;->this$0:Lcom/koushikdutta/superuser/PolicyFragmentInternal;

    iput-object p2, p0, Lcom/koushikdutta/superuser/PolicyFragmentInternal$2;->val$permissionChange:Ljava/lang/String;

    iput-object p3, p0, Lcom/koushikdutta/superuser/PolicyFragmentInternal$2;->val$up:Lcom/koushikdutta/superuser/db/UidPolicy;

    iput-object p4, p0, Lcom/koushikdutta/superuser/PolicyFragmentInternal$2;->val$item:Lcom/koushikdutta/widgets/ListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    .prologue
    .line 168
    packed-switch p2, :pswitch_data_0

    .line 210
    :goto_0
    return-void

    .line 170
    :pswitch_0
    iget-object v1, p0, Lcom/koushikdutta/superuser/PolicyFragmentInternal$2;->val$permissionChange:Ljava/lang/String;

    iget-object v2, p0, Lcom/koushikdutta/superuser/PolicyFragmentInternal$2;->this$0:Lcom/koushikdutta/superuser/PolicyFragmentInternal;

    invoke-virtual {v2}, Lcom/koushikdutta/superuser/PolicyFragmentInternal;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/koushikdutta/superuser/PolicyFragmentInternal$2;->val$up:Lcom/koushikdutta/superuser/db/UidPolicy;

    const-string v2, "allow"

    invoke-virtual {v1, v2}, Lcom/koushikdutta/superuser/db/UidPolicy;->setPolicy(Ljava/lang/String;)V

    .line 177
    :goto_1
    iget-object v1, p0, Lcom/koushikdutta/superuser/PolicyFragmentInternal$2;->this$0:Lcom/koushikdutta/superuser/PolicyFragmentInternal;

    invoke-virtual {v1}, Lcom/koushikdutta/superuser/PolicyFragmentInternal;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/koushikdutta/superuser/PolicyFragmentInternal$2;->val$up:Lcom/koushikdutta/superuser/db/UidPolicy;

    invoke-static {v1, v2}, Lcom/koushikdutta/superuser/db/SuDatabaseHelper;->setPolicy(Landroid/content/Context;Lcom/koushikdutta/superuser/db/UidPolicy;)V

    .line 179
    iget-object v1, p0, Lcom/koushikdutta/superuser/PolicyFragmentInternal$2;->this$0:Lcom/koushikdutta/superuser/PolicyFragmentInternal;

    invoke-virtual {v1}, Lcom/koushikdutta/superuser/PolicyFragmentInternal;->load()V

    goto :goto_0

    .line 175
    :cond_0
    iget-object v1, p0, Lcom/koushikdutta/superuser/PolicyFragmentInternal$2;->val$up:Lcom/koushikdutta/superuser/db/UidPolicy;

    const-string v2, "deny"

    invoke-virtual {v1, v2}, Lcom/koushikdutta/superuser/db/UidPolicy;->setPolicy(Ljava/lang/String;)V

    goto :goto_1

    .line 182
    :pswitch_1
    new-instance v0, Lcom/koushikdutta/superuser/PolicyFragmentInternal$2$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/superuser/PolicyFragmentInternal$2$1;-><init>(Lcom/koushikdutta/superuser/PolicyFragmentInternal$2;)V

    .line 192
    .local v0, handler:Landroid/os/Handler;
    new-instance v1, Lcom/koushikdutta/superuser/PolicyFragmentInternal$2$2;

    invoke-direct {v1, p0, v0}, Lcom/koushikdutta/superuser/PolicyFragmentInternal$2$2;-><init>(Lcom/koushikdutta/superuser/PolicyFragmentInternal$2;Landroid/os/Handler;)V

    invoke-virtual {v1}, Lcom/koushikdutta/superuser/PolicyFragmentInternal$2$2;->start()V

    .line 203
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 206
    .end local v0           #handler:Landroid/os/Handler;
    :pswitch_2
    iget-object v1, p0, Lcom/koushikdutta/superuser/PolicyFragmentInternal$2;->this$0:Lcom/koushikdutta/superuser/PolicyFragmentInternal;

    iget-object v2, p0, Lcom/koushikdutta/superuser/PolicyFragmentInternal$2;->val$item:Lcom/koushikdutta/widgets/ListItem;

    iget-object v3, p0, Lcom/koushikdutta/superuser/PolicyFragmentInternal$2;->val$up:Lcom/koushikdutta/superuser/db/UidPolicy;

    invoke-virtual {v1, v2, v3}, Lcom/koushikdutta/superuser/PolicyFragmentInternal;->setContent(Lcom/koushikdutta/widgets/ListItem;Lcom/koushikdutta/superuser/db/UidPolicy;)V

    .line 207
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 168
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
