.class public Lcom/android/settings/cyanogenmod/NavBar;
.super Landroid/app/Fragment;
.source "NavBar.java"


# static fields
.field private static final mIntent:Landroid/content/Intent;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mContainer:Landroid/view/ViewGroup;

.field private mEditMenu:Landroid/view/MenuItem;

.field private mEditMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.NAVBAR_EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/cyanogenmod/NavBar;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/cyanogenmod/NavBar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/android/settings/cyanogenmod/NavBar;->mEditMode:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/cyanogenmod/NavBar;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/android/settings/cyanogenmod/NavBar;->mEditMode:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/cyanogenmod/NavBar;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/settings/cyanogenmod/NavBar;->toggleEditMode(ZZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/cyanogenmod/NavBar;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/NavBar;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private toggleEditMode(ZZ)V
    .locals 2
    .parameter "on"
    .parameter "save"

    .prologue
    .line 143
    sget-object v0, Lcom/android/settings/cyanogenmod/NavBar;->mIntent:Landroid/content/Intent;

    const-string v1, "edit"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 144
    sget-object v0, Lcom/android/settings/cyanogenmod/NavBar;->mIntent:Landroid/content/Intent;

    const-string v1, "save"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 145
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/NavBar;->mActivity:Landroid/app/Activity;

    sget-object v1, Lcom/android/settings/cyanogenmod/NavBar;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 146
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/NavBar;->mEditMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 147
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/NavBar;->mEditMenu:Landroid/view/MenuItem;

    if-eqz p1, :cond_1

    const v0, 0x7f0802f3

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz p1, :cond_2

    const v0, 0x7f02012f

    :goto_1
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 150
    :cond_0
    if-eqz p1, :cond_3

    .line 151
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/NavBar;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/settings/Utils;->lockCurrentOrientation(Landroid/app/Activity;)V

    .line 155
    :goto_2
    return-void

    .line 147
    :cond_1
    const v0, 0x7f0802f4

    goto :goto_0

    :cond_2
    const v0, 0x7f02012e

    goto :goto_1

    .line 153
    :cond_3
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/NavBar;->mActivity:Landroid/app/Activity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_2
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 52
    iput-object p1, p0, Lcom/android/settings/cyanogenmod/NavBar;->mActivity:Landroid/app/Activity;

    .line 53
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x0

    .line 90
    const/4 v0, 0x1

    const v1, 0x7f0800d9

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200a2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x72

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 95
    const/4 v0, 0x2

    const v1, 0x7f0802f4

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/cyanogenmod/NavBar;->mEditMenu:Landroid/view/MenuItem;

    .line 96
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/NavBar;->mEditMenu:Landroid/view/MenuItem;

    const v1, 0x7f02012e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x73

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 100
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 58
    const v1, 0x7f04006e

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 60
    .local v0, view:Landroid/view/View;
    iput-object p2, p0, Lcom/android/settings/cyanogenmod/NavBar;->mContainer:Landroid/view/ViewGroup;

    .line 61
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/cyanogenmod/NavBar;->setHasOptionsMenu(Z)V

    .line 63
    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/cyanogenmod/NavBar;->mActivity:Landroid/app/Activity;

    .line 79
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 80
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 104
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v1, v0

    .line 133
    :cond_0
    :goto_0
    return v1

    .line 106
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/cyanogenmod/NavBar;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0802bc

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x1080027

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0802f0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0801f0

    new-instance v3, Lcom/android/settings/cyanogenmod/NavBar$1;

    invoke-direct {v3, p0}, Lcom/android/settings/cyanogenmod/NavBar$1;-><init>(Lcom/android/settings/cyanogenmod/NavBar;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0804f7

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 126
    :pswitch_1
    iget-boolean v2, p0, Lcom/android/settings/cyanogenmod/NavBar;->mEditMode:Z

    if-nez v2, :cond_1

    move v0, v1

    :cond_1
    iput-boolean v0, p0, Lcom/android/settings/cyanogenmod/NavBar;->mEditMode:Z

    .line 127
    iget-boolean v0, p0, Lcom/android/settings/cyanogenmod/NavBar;->mEditMode:Z

    invoke-direct {p0, v0, v1}, Lcom/android/settings/cyanogenmod/NavBar;->toggleEditMode(ZZ)V

    .line 128
    iget-boolean v0, p0, Lcom/android/settings/cyanogenmod/NavBar;->mEditMode:Z

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/NavBar;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0802f1

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 104
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 85
    invoke-direct {p0, v0, v0}, Lcom/android/settings/cyanogenmod/NavBar;->toggleEditMode(ZZ)V

    .line 86
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x0

    .line 68
    const v0, 0x8000

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 71
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/NavBar;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/settings/Utils;->isPhone(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/NavBar;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 74
    :cond_0
    return-void
.end method
