.class Lcom/koushikdutta/superuser/PolicyFragmentInternal$1;
.super Lcom/koushikdutta/widgets/ListItem;
.source "PolicyFragmentInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/superuser/PolicyFragmentInternal;->addPolicy(Lcom/koushikdutta/superuser/db/UidPolicy;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/superuser/PolicyFragmentInternal;

.field final synthetic val$up:Lcom/koushikdutta/superuser/db/UidPolicy;


# direct methods
.method constructor <init>(Lcom/koushikdutta/superuser/PolicyFragmentInternal;Lcom/koushikdutta/widgets/BetterListFragmentInternal;Ljava/lang/String;Ljava/lang/String;Lcom/koushikdutta/superuser/db/UidPolicy;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/koushikdutta/superuser/PolicyFragmentInternal$1;->this$0:Lcom/koushikdutta/superuser/PolicyFragmentInternal;

    iput-object p5, p0, Lcom/koushikdutta/superuser/PolicyFragmentInternal$1;->val$up:Lcom/koushikdutta/superuser/db/UidPolicy;

    invoke-direct {p0, p2, p3, p4}, Lcom/koushikdutta/widgets/ListItem;-><init>(Lcom/koushikdutta/widgets/BetterListFragmentInternal;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 137
    invoke-super {p0, p1}, Lcom/koushikdutta/widgets/ListItem;->onClick(Landroid/view/View;)V

    .line 139
    iget-object v0, p0, Lcom/koushikdutta/superuser/PolicyFragmentInternal$1;->this$0:Lcom/koushikdutta/superuser/PolicyFragmentInternal;

    iget-object v1, p0, Lcom/koushikdutta/superuser/PolicyFragmentInternal$1;->val$up:Lcom/koushikdutta/superuser/db/UidPolicy;

    invoke-virtual {v0, p0, v1}, Lcom/koushikdutta/superuser/PolicyFragmentInternal;->setContent(Lcom/koushikdutta/widgets/ListItem;Lcom/koushikdutta/superuser/db/UidPolicy;)V

    .line 140
    return-void
.end method

.method public onLongClick()Z
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/koushikdutta/superuser/PolicyFragmentInternal$1;->this$0:Lcom/koushikdutta/superuser/PolicyFragmentInternal;

    iget-object v1, p0, Lcom/koushikdutta/superuser/PolicyFragmentInternal$1;->val$up:Lcom/koushikdutta/superuser/db/UidPolicy;

    invoke-virtual {v0, v1, p0}, Lcom/koushikdutta/superuser/PolicyFragmentInternal;->showExtraActions(Lcom/koushikdutta/superuser/db/UidPolicy;Lcom/koushikdutta/widgets/ListItem;)V

    .line 144
    const/4 v0, 0x1

    return v0
.end method
