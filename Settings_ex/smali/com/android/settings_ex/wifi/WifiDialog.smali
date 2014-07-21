.class Lcom/android/settings_ex/wifi/WifiDialog;
.super Landroid/app/AlertDialog;
.source "WifiDialog.java"

# interfaces
.implements Lcom/android/settings_ex/wifi/WifiConfigUiBase;


# instance fields
.field private final mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

.field private mController:Lcom/android/settings_ex/wifi/WifiConfigController;

.field private final mEdit:Z

.field private final mIbssSupported:Z

.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mSupportedChannels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiChannel;",
            ">;"
        }
    .end annotation
.end field

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings_ex/wifi/AccessPoint;ZZLjava/util/List;)V
    .locals 0
    .parameter "context"
    .parameter "listener"
    .parameter "accessPoint"
    .parameter "edit"
    .parameter "ibssSupported"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/DialogInterface$OnClickListener;",
            "Lcom/android/settings_ex/wifi/AccessPoint;",
            "ZZ",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiChannel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p6, chan:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiChannel;>;"
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 47
    iput-boolean p4, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mEdit:Z

    .line 48
    iput-boolean p5, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mIbssSupported:Z

    .line 49
    iput-object p6, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mSupportedChannels:Ljava/util/List;

    .line 50
    iput-object p2, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 51
    iput-object p3, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    .line 52
    return-void
.end method


# virtual methods
.method public getController()Lcom/android/settings_ex/wifi/WifiConfigController;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mController:Lcom/android/settings_ex/wifi/WifiConfigController;

    return-object v0
.end method

.method public getSubmitButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 78
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400e7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mView:Landroid/view/View;

    .line 62
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiDialog;->setView(Landroid/view/View;)V

    .line 63
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiDialog;->setInverseBackgroundForced(Z)V

    .line 64
    new-instance v0, Lcom/android/settings_ex/wifi/WifiConfigController;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget-boolean v4, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mEdit:Z

    iget-boolean v5, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mIbssSupported:Z

    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mSupportedChannels:Ljava/util/List;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings_ex/wifi/WifiConfigController;-><init>(Lcom/android/settings_ex/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/settings_ex/wifi/AccessPoint;ZZLjava/util/List;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mController:Lcom/android/settings_ex/wifi/WifiConfigController;

    .line 65
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 68
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mController:Lcom/android/settings_ex/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 69
    return-void
.end method

.method public setCancelButton(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 103
    const/4 v0, -0x2

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/settings_ex/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 104
    return-void
.end method

.method public setForgetButton(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 98
    const/4 v0, -0x3

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/settings_ex/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 99
    return-void
.end method

.method public setSubmitButton(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 93
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/settings_ex/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 94
    return-void
.end method
