.class Lcom/android/settings/cyanogenmod/superuser/PolicyNativeFragment$1$2;
.super Lcom/koushikdutta/superuser/SettingsNativeFragment;
.source "PolicyNativeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/cyanogenmod/superuser/PolicyNativeFragment$1;->createSettingsNativeFragment()Lcom/koushikdutta/superuser/SettingsNativeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/cyanogenmod/superuser/PolicyNativeFragment$1;


# direct methods
.method constructor <init>(Lcom/android/settings/cyanogenmod/superuser/PolicyNativeFragment$1;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/settings/cyanogenmod/superuser/PolicyNativeFragment$1$2;->this$1:Lcom/android/settings/cyanogenmod/superuser/PolicyNativeFragment$1;

    invoke-direct {p0}, Lcom/koushikdutta/superuser/SettingsNativeFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 45
    invoke-super {p0, p1, p2, p3}, Lcom/koushikdutta/superuser/SettingsNativeFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 46
    .local v0, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/superuser/PolicyNativeFragment$1$2;->getInternal()Lcom/koushikdutta/widgets/FragmentInterface;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/superuser/SettingsFragmentInternal;

    invoke-virtual {v1}, Lcom/koushikdutta/superuser/SettingsFragmentInternal;->getListView()Landroid/widget/ListView;

    move-result-object v1

    #calls: Lcom/android/settings/cyanogenmod/superuser/PolicyNativeFragment;->adjustListPadding(Landroid/widget/ListView;)V
    invoke-static {v1}, Lcom/android/settings/cyanogenmod/superuser/PolicyNativeFragment;->access$000(Landroid/widget/ListView;)V

    .line 47
    return-object v0
.end method
