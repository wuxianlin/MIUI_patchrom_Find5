.class public Lcom/android/settings_ex/cyanogenmod/superuser/PolicyNativeFragment;
.super Lcom/koushikdutta/superuser/PolicyNativeFragment;
.source "PolicyNativeFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/koushikdutta/superuser/PolicyNativeFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/widget/ListView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 15
    invoke-static {p0}, Lcom/android/settings_ex/cyanogenmod/superuser/PolicyNativeFragment;->adjustListPadding(Landroid/widget/ListView;)V

    return-void
.end method

.method private static adjustListPadding(Landroid/widget/ListView;)V
    .locals 4
    .parameter "list"

    .prologue
    .line 55
    invoke-virtual {p0}, Landroid/widget/ListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 56
    .local v2, res:Landroid/content/res/Resources;
    const v3, 0x105002b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 58
    .local v1, paddingSide:I
    const v3, 0x105002a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 61
    .local v0, paddingBottom:I
    const/high16 v3, 0x200

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 62
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v1, v0}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 63
    return-void
.end method


# virtual methods
.method public createFragmentInterface()Lcom/koushikdutta/superuser/PolicyFragmentInternal;
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/android/settings_ex/cyanogenmod/superuser/PolicyNativeFragment$1;

    invoke-direct {v0, p0, p0}, Lcom/android/settings_ex/cyanogenmod/superuser/PolicyNativeFragment$1;-><init>(Lcom/android/settings_ex/cyanogenmod/superuser/PolicyNativeFragment;Lcom/koushikdutta/widgets/FragmentInterfaceWrapper;)V

    return-object v0
.end method

.method public bridge synthetic createFragmentInterface()Lcom/koushikdutta/widgets/FragmentInterface;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/android/settings_ex/cyanogenmod/superuser/PolicyNativeFragment;->createFragmentInterface()Lcom/koushikdutta/superuser/PolicyFragmentInternal;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 18
    invoke-super {p0, p1, p2, p3}, Lcom/koushikdutta/superuser/PolicyNativeFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 19
    .local v0, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings_ex/cyanogenmod/superuser/PolicyNativeFragment;->getInternal()Lcom/koushikdutta/widgets/FragmentInterface;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/superuser/PolicyFragmentInternal;

    invoke-virtual {v1}, Lcom/koushikdutta/superuser/PolicyFragmentInternal;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p2, v0, v1, v2}, Lcom/android/settings_ex/Utils;->forcePrepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/ListView;Z)V

    .line 20
    return-object v0
.end method
