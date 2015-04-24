.class Lcom/android/internal/view/menu/ActionMenuPresenter$2;
.super Ljava/lang/Object;
.source "ActionMenuPresenter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/view/menu/ActionMenuPresenter;->flagActionItems()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/internal/view/menu/MenuItemImpl;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;


# direct methods
.method constructor <init>(Lcom/android/internal/view/menu/ActionMenuPresenter;)V
    .locals 0

    .prologue
    .line 399
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$2;->this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/internal/view/menu/MenuItemImpl;Lcom/android/internal/view/menu/MenuItemImpl;)I
    .locals 7
    .param p1, "lhs"    # Lcom/android/internal/view/menu/MenuItemImpl;
    .param p2, "rhs"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 402
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v1

    .line 403
    .local v1, "lhsRequires":Z
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v0

    .line 404
    .local v0, "lhsRequest":Z
    invoke-virtual {p2}, Lcom/android/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v3

    .line 405
    .local v3, "rhsRequires":Z
    invoke-virtual {p2}, Lcom/android/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v2

    .line 406
    .local v2, "rhsRequest":Z
    if-eqz v1, :cond_1

    if-eqz v3, :cond_1

    .line 411
    :cond_0
    :goto_0
    return v4

    .line 407
    :cond_1
    if-eqz v1, :cond_2

    move v4, v5

    goto :goto_0

    .line 408
    :cond_2
    if-eqz v3, :cond_3

    move v4, v6

    goto :goto_0

    .line 409
    :cond_3
    if-eqz v0, :cond_4

    if-nez v2, :cond_0

    .line 410
    :cond_4
    if-eqz v0, :cond_5

    move v4, v5

    goto :goto_0

    :cond_5
    move v4, v6

    .line 411
    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 399
    check-cast p1, Lcom/android/internal/view/menu/MenuItemImpl;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/internal/view/menu/MenuItemImpl;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/view/menu/ActionMenuPresenter$2;->compare(Lcom/android/internal/view/menu/MenuItemImpl;Lcom/android/internal/view/menu/MenuItemImpl;)I

    move-result v0

    return v0
.end method
