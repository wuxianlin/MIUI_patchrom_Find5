.class public Lcom/koushikdutta/widgets/BetterListActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "BetterListActivity.java"

# interfaces
.implements Lcom/koushikdutta/widgets/BetterListFragmentInternal$ActivityBaseFragmentListener;


# instance fields
.field clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/koushikdutta/widgets/BetterListFragment;",
            ">;"
        }
    .end annotation
.end field

.field fragment:Lcom/koushikdutta/widgets/BetterListFragment;

.field private mDestroyed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/koushikdutta/widgets/BetterListActivity;->mDestroyed:Z

    .line 36
    const-class v0, Lcom/koushikdutta/widgets/BetterListFragment;

    iput-object v0, p0, Lcom/koushikdutta/widgets/BetterListActivity;->clazz:Ljava/lang/Class;

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/koushikdutta/widgets/BetterListFragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/koushikdutta/widgets/BetterListFragment;>;"
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/koushikdutta/widgets/BetterListActivity;->mDestroyed:Z

    .line 31
    iput-object p1, p0, Lcom/koushikdutta/widgets/BetterListActivity;->clazz:Ljava/lang/Class;

    .line 32
    return-void
.end method


# virtual methods
.method protected getContentView()I
    .locals 1

    .prologue
    .line 52
    const v0, 0x7f040024

    return v0
.end method

.method public getFragment()Lcom/koushikdutta/widgets/BetterListFragmentInternal;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/koushikdutta/widgets/BetterListActivity;->fragment:Lcom/koushikdutta/widgets/BetterListFragment;

    invoke-virtual {v0}, Lcom/koushikdutta/widgets/BetterListFragment;->getInternal()Lcom/koushikdutta/widgets/FragmentInterface;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/widgets/BetterListFragmentInternal;

    return-object v0
.end method

.method protected getListContainerId()I
    .locals 1

    .prologue
    .line 48
    const v0, 0x7f0d0056

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lcom/koushikdutta/widgets/BetterListActivity;->getContentView()I

    move-result v0

    .line 60
    .local v0, cv:I
    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0, v0}, Lcom/koushikdutta/widgets/BetterListActivity;->setContentView(I)V

    .line 64
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/koushikdutta/widgets/BetterListActivity;->clazz:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/koushikdutta/widgets/BetterListFragment;

    iput-object v2, p0, Lcom/koushikdutta/widgets/BetterListActivity;->fragment:Lcom/koushikdutta/widgets/BetterListFragment;

    .line 65
    iget-object v2, p0, Lcom/koushikdutta/widgets/BetterListActivity;->fragment:Lcom/koushikdutta/widgets/BetterListFragment;

    invoke-virtual {p0}, Lcom/koushikdutta/widgets/BetterListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/koushikdutta/widgets/BetterListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 66
    iget-object v2, p0, Lcom/koushikdutta/widgets/BetterListActivity;->fragment:Lcom/koushikdutta/widgets/BetterListFragment;

    invoke-virtual {v2}, Lcom/koushikdutta/widgets/BetterListFragment;->getInternal()Lcom/koushikdutta/widgets/FragmentInterface;

    move-result-object v2

    check-cast v2, Lcom/koushikdutta/widgets/BetterListFragmentInternal;

    invoke-virtual {v2, p0}, Lcom/koushikdutta/widgets/BetterListFragmentInternal;->setListener(Lcom/koushikdutta/widgets/BetterListFragmentInternal$ActivityBaseFragmentListener;)V

    .line 67
    invoke-virtual {p0}, Lcom/koushikdutta/widgets/BetterListActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {p0}, Lcom/koushikdutta/widgets/BetterListActivity;->getListContainerId()I

    move-result v3

    iget-object v4, p0, Lcom/koushikdutta/widgets/BetterListActivity;->fragment:Lcom/koushikdutta/widgets/BetterListFragment;

    const-string v5, "betterlist"

    invoke-virtual {v2, v3, v4, v5}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v1

    .line 70
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/view/View;)V
    .locals 0
    .parameter "savedInstanceState"
    .parameter "view"

    .prologue
    .line 76
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/widgets/BetterListActivity;->mDestroyed:Z

    .line 103
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 104
    return-void
.end method
