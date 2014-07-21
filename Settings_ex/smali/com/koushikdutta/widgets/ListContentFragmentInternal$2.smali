.class Lcom/koushikdutta/widgets/ListContentFragmentInternal$2;
.super Ljava/lang/Object;
.source "ListContentFragmentInternal.java"

# interfaces
.implements Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/widgets/ListContentFragmentInternal;->setContent(Lcom/koushikdutta/widgets/FragmentInterfaceWrapper;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/widgets/ListContentFragmentInternal;

.field final synthetic val$fm:Landroid/support/v4/app/FragmentManager;


# direct methods
.method constructor <init>(Lcom/koushikdutta/widgets/ListContentFragmentInternal;Landroid/support/v4/app/FragmentManager;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/koushikdutta/widgets/ListContentFragmentInternal$2;->this$0:Lcom/koushikdutta/widgets/ListContentFragmentInternal;

    iput-object p2, p0, Lcom/koushikdutta/widgets/ListContentFragmentInternal$2;->val$fm:Landroid/support/v4/app/FragmentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iget-object v0, p0, Lcom/koushikdutta/widgets/ListContentFragmentInternal$2;->this$0:Lcom/koushikdutta/widgets/ListContentFragmentInternal;

    iput-object p0, v0, Lcom/koushikdutta/widgets/ListContentFragmentInternal;->listener:Ljava/lang/Object;

    .line 164
    return-void
.end method


# virtual methods
.method public onBackStackChanged()V
    .locals 6

    .prologue
    .line 167
    iget-object v3, p0, Lcom/koushikdutta/widgets/ListContentFragmentInternal$2;->this$0:Lcom/koushikdutta/widgets/ListContentFragmentInternal;

    invoke-virtual {v3}, Lcom/koushikdutta/widgets/ListContentFragmentInternal;->getFragment()Lcom/koushikdutta/widgets/FragmentInterfaceWrapper;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 168
    .local v0, f:Landroid/support/v4/app/Fragment;
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isDetached()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isRemoving()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 169
    :cond_0
    iget-object v3, p0, Lcom/koushikdutta/widgets/ListContentFragmentInternal$2;->val$fm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v3, p0}, Landroid/support/v4/app/FragmentManager;->removeOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V

    .line 184
    :cond_1
    :goto_0
    return-void

    .line 172
    :cond_2
    iget-object v3, p0, Lcom/koushikdutta/widgets/ListContentFragmentInternal$2;->this$0:Lcom/koushikdutta/widgets/ListContentFragmentInternal;

    invoke-virtual {v3}, Lcom/koushikdutta/widgets/ListContentFragmentInternal;->getFragment()Lcom/koushikdutta/widgets/FragmentInterfaceWrapper;

    move-result-object v3

    invoke-interface {v3}, Lcom/koushikdutta/widgets/FragmentInterfaceWrapper;->getView()Landroid/view/View;

    move-result-object v2

    .line 173
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 175
    const v3, 0x7f0d0116

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 176
    .local v1, l:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 178
    iget-object v3, p0, Lcom/koushikdutta/widgets/ListContentFragmentInternal$2;->val$fm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v3

    if-lez v3, :cond_3

    const-string v3, "content"

    iget-object v4, p0, Lcom/koushikdutta/widgets/ListContentFragmentInternal$2;->val$fm:Landroid/support/v4/app/FragmentManager;

    iget-object v5, p0, Lcom/koushikdutta/widgets/ListContentFragmentInternal$2;->val$fm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryAt(I)Landroid/support/v4/app/FragmentManager$BackStackEntry;

    move-result-object v4

    invoke-interface {v4}, Landroid/support/v4/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 179
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 182
    :cond_3
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
