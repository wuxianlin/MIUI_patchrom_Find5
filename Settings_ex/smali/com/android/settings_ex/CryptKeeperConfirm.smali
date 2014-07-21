.class public Lcom/android/settings_ex/CryptKeeperConfirm;
.super Landroid/app/Fragment;
.source "CryptKeeperConfirm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/CryptKeeperConfirm$Blank;
    }
.end annotation


# instance fields
.field private mContentView:Landroid/view/View;

.field private mFinalButton:Landroid/widget/Button;

.field private mFinalClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 86
    new-instance v0, Lcom/android/settings_ex/CryptKeeperConfirm$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/CryptKeeperConfirm$1;-><init>(Lcom/android/settings_ex/CryptKeeperConfirm;)V

    iput-object v0, p0, Lcom/android/settings_ex/CryptKeeperConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private establishFinalConfirmationState()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/settings_ex/CryptKeeperConfirm;->mContentView:Landroid/view/View;

    const v1, 0x7f0d005b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings_ex/CryptKeeperConfirm;->mFinalButton:Landroid/widget/Button;

    .line 102
    iget-object v0, p0, Lcom/android/settings_ex/CryptKeeperConfirm;->mFinalButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings_ex/CryptKeeperConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 108
    const v0, 0x7f040027

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/CryptKeeperConfirm;->mContentView:Landroid/view/View;

    .line 109
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeperConfirm;->establishFinalConfirmationState()V

    .line 110
    iget-object v0, p0, Lcom/android/settings_ex/CryptKeeperConfirm;->mContentView:Landroid/view/View;

    return-object v0
.end method
