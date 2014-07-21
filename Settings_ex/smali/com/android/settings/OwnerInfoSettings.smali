.class public Lcom/android/settings/OwnerInfoSettings;
.super Landroid/app/Fragment;
.source "OwnerInfoSettings.java"


# instance fields
.field private mCheckbox:Landroid/widget/CheckBox;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNickname:Landroid/widget/EditText;

.field private mOwnerInfo:Landroid/widget/EditText;

.field private mShowNickname:Z

.field private mUserId:I

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/OwnerInfoSettings;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/OwnerInfoSettings;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->mOwnerInfo:Landroid/widget/EditText;

    return-object v0
.end method

.method private initView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/android/settings/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 69
    .local v2, res:Landroid/content/ContentResolver;
    iget-object v3, p0, Lcom/android/settings/OwnerInfoSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/android/settings/OwnerInfoSettings;->mUserId:I

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, info:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/OwnerInfoSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled()Z

    move-result v0

    .line 71
    .local v0, enabled:Z
    iget-object v3, p0, Lcom/android/settings/OwnerInfoSettings;->mView:Landroid/view/View;

    const v4, 0x7f0d0143

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/settings/OwnerInfoSettings;->mCheckbox:Landroid/widget/CheckBox;

    .line 72
    iget-object v3, p0, Lcom/android/settings/OwnerInfoSettings;->mView:Landroid/view/View;

    const v4, 0x7f0d0144

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/settings/OwnerInfoSettings;->mOwnerInfo:Landroid/widget/EditText;

    .line 73
    iget-object v3, p0, Lcom/android/settings/OwnerInfoSettings;->mOwnerInfo:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v3, p0, Lcom/android/settings/OwnerInfoSettings;->mOwnerInfo:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 75
    iget-object v3, p0, Lcom/android/settings/OwnerInfoSettings;->mView:Landroid/view/View;

    const v4, 0x7f0d0142

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/settings/OwnerInfoSettings;->mNickname:Landroid/widget/EditText;

    .line 76
    iget-boolean v3, p0, Lcom/android/settings/OwnerInfoSettings;->mShowNickname:Z

    if-nez v3, :cond_1

    .line 77
    iget-object v3, p0, Lcom/android/settings/OwnerInfoSettings;->mNickname:Landroid/widget/EditText;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 82
    :goto_0
    iget-object v3, p0, Lcom/android/settings/OwnerInfoSettings;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 83
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-eqz v3, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 85
    iget-object v3, p0, Lcom/android/settings/OwnerInfoSettings;->mCheckbox:Landroid/widget/CheckBox;

    const v4, 0x7f080528

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setText(I)V

    .line 90
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/android/settings/OwnerInfoSettings;->mCheckbox:Landroid/widget/CheckBox;

    new-instance v4, Lcom/android/settings/OwnerInfoSettings$1;

    invoke-direct {v4, p0}, Lcom/android/settings/OwnerInfoSettings$1;-><init>(Lcom/android/settings/OwnerInfoSettings;)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 96
    return-void

    .line 79
    :cond_1
    iget-object v3, p0, Lcom/android/settings/OwnerInfoSettings;->mNickname:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/settings/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserManager;->getUserName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v3, p0, Lcom/android/settings/OwnerInfoSettings;->mNickname:Landroid/widget/EditText;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelected(Z)V

    goto :goto_0

    .line 87
    :cond_2
    iget-object v3, p0, Lcom/android/settings/OwnerInfoSettings;->mCheckbox:Landroid/widget/CheckBox;

    const v4, 0x7f080526

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setText(I)V

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lcom/android/settings/OwnerInfoSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 52
    .local v0, args:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v1, "show_nickname"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    const-string v1, "show_nickname"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/OwnerInfoSettings;->mShowNickname:Z

    .line 55
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 60
    const v0, 0x7f04007a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->mView:Landroid/view/View;

    .line 61
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/OwnerInfoSettings;->mUserId:I

    .line 62
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 63
    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->mView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/settings/OwnerInfoSettings;->initView(Landroid/view/View;)V

    .line 64
    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 100
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/OwnerInfoSettings;->saveChanges()V

    .line 102
    return-void
.end method

.method saveChanges()V
    .locals 7

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/android/settings/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 106
    .local v3, res:Landroid/content/ContentResolver;
    iget-object v4, p0, Lcom/android/settings/OwnerInfoSettings;->mOwnerInfo:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, info:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/OwnerInfoSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, p0, Lcom/android/settings/OwnerInfoSettings;->mUserId:I

    invoke-virtual {v4, v0, v5}, Lcom/android/internal/widget/LockPatternUtils;->setOwnerInfo(Ljava/lang/String;I)V

    .line 108
    iget-boolean v4, p0, Lcom/android/settings/OwnerInfoSettings;->mShowNickname:Z

    if-eqz v4, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserManager;->getUserName()Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, oldName:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/OwnerInfoSettings;->mNickname:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 111
    .local v1, newName:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/UserManager;->setUserName(ILjava/lang/String;)V

    .line 116
    .end local v1           #newName:Ljava/lang/CharSequence;
    .end local v2           #oldName:Ljava/lang/String;
    :cond_0
    return-void
.end method
