.class public Lcom/android/settings_ex/cyanogenmod/ContributorsCloud;
.super Landroid/app/Fragment;
.source "ContributorsCloud.java"


# instance fields
.field private mContainer:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 42
    iput-object p2, p0, Lcom/android/settings_ex/cyanogenmod/ContributorsCloud;->mContainer:Landroid/view/ViewGroup;

    .line 43
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/android/settings_ex/cyanogenmod/ContributorsCloud;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 44
    .local v0, view:Landroid/webkit/WebView;
    const v1, -0xbbbbbc

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 45
    const-string v1, "file:///android_asset/"

    const-string v2, "<html><body style=\'margin-top:%s\'><img style=\'width:100%;top:15%;position:absolute\' src=contributors_cloud.png></img></body></html>"

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-virtual {v0, v7}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 47
    invoke-virtual {v0, v7}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 48
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v6

    .line 49
    .local v6, settings:Landroid/webkit/WebSettings;
    invoke-virtual {v6, v8}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 50
    invoke-virtual {v6, v8}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 51
    invoke-virtual {v6, v8}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 52
    invoke-virtual {v6, v7}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 53
    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x0

    .line 58
    iget-object v0, p0, Lcom/android/settings_ex/cyanogenmod/ContributorsCloud;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 59
    return-void
.end method
