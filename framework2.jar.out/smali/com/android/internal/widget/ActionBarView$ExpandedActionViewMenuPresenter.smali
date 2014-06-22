.class Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;
.super Ljava/lang/Object;
.source "ActionBarView.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuPresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpandedActionViewMenuPresenter"
.end annotation


# instance fields
.field mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

.field mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field final synthetic this$0:Lcom/android/internal/widget/ActionBarView;


# direct methods
.method private constructor <init>(Lcom/android/internal/widget/ActionBarView;)V
    .locals 0
    .parameter

    .prologue
    .line 1566
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/widget/ActionBarView;Lcom/android/internal/widget/ActionBarView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1566
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;-><init>(Lcom/android/internal/widget/ActionBarView;)V

    return-void
.end method


# virtual methods
.method public collapseItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 8
    .parameter "menu"
    .parameter "item"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1657
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-static {v3}, Lcom/android/internal/transition/ActionBarTransition;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 1661
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    iget-object v3, v3, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    instance-of v3, v3, Landroid/view/CollapsibleActionView;

    if-eqz v3, :cond_0

    .line 1662
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    iget-object v3, v3, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    check-cast v3, Landroid/view/CollapsibleActionView;

    invoke-interface {v3}, Landroid/view/CollapsibleActionView;->onActionViewCollapsed()V

    .line 1665
    :cond_0
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    iget-object v6, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    iget-object v6, v6, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v3, v6}, Lcom/android/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 1666
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    #getter for: Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/android/internal/widget/ActionBarView;->access$800(Lcom/android/internal/widget/ActionBarView;)Landroid/view/ViewGroup;

    move-result-object v3

    iget-object v6, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    #getter for: Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;
    invoke-static {v6}, Lcom/android/internal/widget/ActionBarView;->access$700(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ActionBarView$HomeView;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1667
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    iput-object v7, v3, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    .line 1669
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    #getter for: Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I
    invoke-static {v3}, Lcom/android/internal/widget/ActionBarView;->access$1500(Lcom/android/internal/widget/ActionBarView;)I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_6

    move v2, v4

    .line 1670
    .local v2, showHome:Z
    :goto_0
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    #getter for: Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I
    invoke-static {v3}, Lcom/android/internal/widget/ActionBarView;->access$1500(Lcom/android/internal/widget/ActionBarView;)I

    move-result v3

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_7

    move v0, v4

    .line 1671
    .local v0, homeAsUp:Z
    :goto_1
    if-nez v2, :cond_1

    if-nez v2, :cond_8

    if-eqz v0, :cond_8

    :cond_1
    move v1, v5

    .line 1672
    .local v1, homeVis:I
    :goto_2
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    #getter for: Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;
    invoke-static {v3}, Lcom/android/internal/widget/ActionBarView;->access$900(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ActionBarView$HomeView;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setVisibility(I)V

    .line 1674
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    #getter for: Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I
    invoke-static {v3}, Lcom/android/internal/widget/ActionBarView;->access$1500(Lcom/android/internal/widget/ActionBarView;)I

    move-result v3

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_2

    .line 1675
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    #getter for: Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/android/internal/widget/ActionBarView;->access$1000(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;

    move-result-object v3

    if-nez v3, :cond_9

    .line 1676
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    #calls: Lcom/android/internal/widget/ActionBarView;->initTitle()V
    invoke-static {v3}, Lcom/android/internal/widget/ActionBarView;->access$1600(Lcom/android/internal/widget/ActionBarView;)V

    .line 1681
    :cond_2
    :goto_3
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    #getter for: Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;
    invoke-static {v3}, Lcom/android/internal/widget/ActionBarView;->access$1100(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ScrollingTabContainerView;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    #getter for: Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;
    invoke-static {v3}, Lcom/android/internal/widget/ActionBarView;->access$1100(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ScrollingTabContainerView;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 1682
    :cond_3
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    #getter for: Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;
    invoke-static {v3}, Lcom/android/internal/widget/ActionBarView;->access$1200(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/Spinner;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    #getter for: Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;
    invoke-static {v3}, Lcom/android/internal/widget/ActionBarView;->access$1200(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/Spinner;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 1683
    :cond_4
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    #getter for: Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;
    invoke-static {v3}, Lcom/android/internal/widget/ActionBarView;->access$1300(Lcom/android/internal/widget/ActionBarView;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    #getter for: Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;
    invoke-static {v3}, Lcom/android/internal/widget/ActionBarView;->access$1300(Lcom/android/internal/widget/ActionBarView;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1685
    :cond_5
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    #getter for: Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;
    invoke-static {v3}, Lcom/android/internal/widget/ActionBarView;->access$700(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ActionBarView$HomeView;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/android/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1686
    iput-object v7, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    .line 1687
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    iget-object v6, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    #getter for: Lcom/android/internal/widget/ActionBarView;->mWasHomeEnabled:Z
    invoke-static {v6}, Lcom/android/internal/widget/ActionBarView;->access$1700(Lcom/android/internal/widget/ActionBarView;)Z

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/internal/widget/ActionBarView;->setHomeButtonEnabled(Z)V

    .line 1688
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v3}, Lcom/android/internal/widget/ActionBarView;->requestLayout()V

    .line 1689
    invoke-virtual {p2, v5}, Lcom/android/internal/view/menu/MenuItemImpl;->setActionViewExpanded(Z)V

    .line 1691
    return v4

    .end local v0           #homeAsUp:Z
    .end local v1           #homeVis:I
    .end local v2           #showHome:Z
    :cond_6
    move v2, v5

    .line 1669
    goto/16 :goto_0

    .restart local v2       #showHome:Z
    :cond_7
    move v0, v5

    .line 1670
    goto :goto_1

    .line 1671
    .restart local v0       #homeAsUp:Z
    :cond_8
    const/16 v1, 0x8

    goto :goto_2

    .line 1678
    .restart local v1       #homeVis:I
    :cond_9
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    #getter for: Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/android/internal/widget/ActionBarView;->access$1000(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3
.end method

.method public expandItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 6
    .parameter "menu"
    .parameter "item"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 1628
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-static {v0}, Lcom/android/internal/transition/ActionBarTransition;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 1630
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {p2}, Lcom/android/internal/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    .line 1631
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    #getter for: Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView;->access$700(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ActionBarView$HomeView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    #getter for: Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/android/internal/widget/ActionBarView;->access$600(Lcom/android/internal/widget/ActionBarView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v2}, Lcom/android/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1632
    iput-object p2, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    .line 1633
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    if-eq v0, v1, :cond_0

    .line 1634
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    iget-object v1, v1, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 1636
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    #getter for: Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView;->access$700(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ActionBarView$HomeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView$HomeView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    #getter for: Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/internal/widget/ActionBarView;->access$800(Lcom/android/internal/widget/ActionBarView;)Landroid/view/ViewGroup;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 1637
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    #getter for: Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView;->access$800(Lcom/android/internal/widget/ActionBarView;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    #getter for: Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;
    invoke-static {v1}, Lcom/android/internal/widget/ActionBarView;->access$700(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ActionBarView$HomeView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1639
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    #getter for: Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView;->access$900(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ActionBarView$HomeView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/ActionBarView$HomeView;->setVisibility(I)V

    .line 1640
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    #getter for: Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView;->access$1000(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    #getter for: Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView;->access$1000(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1641
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    #getter for: Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView;->access$1100(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    #getter for: Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView;->access$1100(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 1642
    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    #getter for: Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView;->access$1200(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/Spinner;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    #getter for: Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView;->access$1200(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 1643
    :cond_4
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    #getter for: Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView;->access$1300(Lcom/android/internal/widget/ActionBarView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    #getter for: Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView;->access$1300(Lcom/android/internal/widget/ActionBarView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1644
    :cond_5
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    #calls: Lcom/android/internal/widget/ActionBarView;->setHomeButtonEnabled(ZZ)V
    invoke-static {v0, v4, v4}, Lcom/android/internal/widget/ActionBarView;->access$1400(Lcom/android/internal/widget/ActionBarView;ZZ)V

    .line 1645
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->requestLayout()V

    .line 1646
    invoke-virtual {p2, v5}, Lcom/android/internal/view/menu/MenuItemImpl;->setActionViewExpanded(Z)V

    .line 1648
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/CollapsibleActionView;

    if-eqz v0, :cond_6

    .line 1649
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    check-cast v0, Landroid/view/CollapsibleActionView;

    invoke-interface {v0}, Landroid/view/CollapsibleActionView;->onActionViewExpanded()V

    .line 1652
    :cond_6
    return v5
.end method

.method public flagActionItems()Z
    .locals 1

    .prologue
    .line 1623
    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 1696
    const/4 v0, 0x0

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;
    .locals 1
    .parameter "root"

    .prologue
    .line 1581
    const/4 v0, 0x0

    return-object v0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 2
    .parameter "context"
    .parameter "menu"

    .prologue
    .line 1573
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    .line 1574
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->collapseItemActionView(Lcom/android/internal/view/menu/MenuItemImpl;)Z

    .line 1576
    :cond_0
    iput-object p2, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 1577
    return-void
.end method

.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .locals 0
    .parameter "menu"
    .parameter "allMenusAreClosing"

    .prologue
    .line 1619
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 1706
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 1701
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z
    .locals 1
    .parameter "subMenu"

    .prologue
    .line 1614
    const/4 v0, 0x0

    return v0
.end method

.method public setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 1610
    return-void
.end method

.method public updateMenuView(Z)V
    .locals 6
    .parameter "cleared"

    .prologue
    .line 1587
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v4, :cond_1

    .line 1588
    const/4 v1, 0x0

    .line 1590
    .local v1, found:Z
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v4, :cond_0

    .line 1591
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuBuilder;->size()I

    move-result v0

    .line 1592
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1593
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v4, v2}, Lcom/android/internal/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1594
    .local v3, item:Landroid/view/MenuItem;
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    if-ne v3, v4, :cond_2

    .line 1595
    const/4 v1, 0x1

    .line 1601
    .end local v0           #count:I
    .end local v2           #i:I
    .end local v3           #item:Landroid/view/MenuItem;
    :cond_0
    if-nez v1, :cond_1

    .line 1603
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v5, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->collapseItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z

    .line 1606
    .end local v1           #found:Z
    :cond_1
    return-void

    .line 1592
    .restart local v0       #count:I
    .restart local v1       #found:Z
    .restart local v2       #i:I
    .restart local v3       #item:Landroid/view/MenuItem;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
