.class public Lcom/android/settings_ex/users/UserPreference;
.super Landroid/preference/Preference;
.source "UserPreference.java"


# instance fields
.field private mDeleteClickListener:Landroid/view/View$OnClickListener;

.field private mSerialNumber:I

.field private mSettingsClickListener:Landroid/view/View$OnClickListener;

.field private mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    .line 44
    const/16 v3, -0xa

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/users/UserPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 45
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "userId"
    .parameter "settingsListener"
    .parameter "deleteListener"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/users/UserPreference;->mSerialNumber:I

    .line 37
    const/16 v0, -0xa

    iput v0, p0, Lcom/android/settings_ex/users/UserPreference;->mUserId:I

    .line 51
    if-nez p5, :cond_0

    if-eqz p4, :cond_1

    .line 52
    :cond_0
    const v0, 0x7f0400a4

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/users/UserPreference;->setWidgetLayoutResource(I)V

    .line 54
    :cond_1
    iput-object p5, p0, Lcom/android/settings_ex/users/UserPreference;->mDeleteClickListener:Landroid/view/View$OnClickListener;

    .line 55
    iput-object p4, p0, Lcom/android/settings_ex/users/UserPreference;->mSettingsClickListener:Landroid/view/View$OnClickListener;

    .line 56
    iput p3, p0, Lcom/android/settings_ex/users/UserPreference;->mUserId:I

    .line 57
    return-void
.end method

.method private getSerialNumber()I
    .locals 2

    .prologue
    .line 90
    iget v0, p0, Lcom/android/settings_ex/users/UserPreference;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/high16 v0, -0x8000

    .line 98
    :goto_0
    return v0

    .line 91
    :cond_0
    iget v0, p0, Lcom/android/settings_ex/users/UserPreference;->mSerialNumber:I

    if-gez v0, :cond_2

    .line 93
    iget v0, p0, Lcom/android/settings_ex/users/UserPreference;->mUserId:I

    const/16 v1, -0xa

    if-ne v0, v1, :cond_1

    const v0, 0x7fffffff

    goto :goto_0

    .line 94
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/users/UserPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iget v1, p0, Lcom/android/settings_ex/users/UserPreference;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/users/UserPreference;->mSerialNumber:I

    .line 96
    iget v0, p0, Lcom/android/settings_ex/users/UserPreference;->mSerialNumber:I

    if-gez v0, :cond_2

    iget v0, p0, Lcom/android/settings_ex/users/UserPreference;->mUserId:I

    goto :goto_0

    .line 98
    :cond_2
    iget v0, p0, Lcom/android/settings_ex/users/UserPreference;->mSerialNumber:I

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 3
    .parameter "another"

    .prologue
    const/4 v0, 0x1

    .line 106
    instance-of v1, p1, Lcom/android/settings_ex/users/UserPreference;

    if-eqz v1, :cond_0

    .line 107
    invoke-direct {p0}, Lcom/android/settings_ex/users/UserPreference;->getSerialNumber()I

    move-result v1

    check-cast p1, Lcom/android/settings_ex/users/UserPreference;

    .end local p1
    invoke-direct {p1}, Lcom/android/settings_ex/users/UserPreference;->getSerialNumber()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 109
    :cond_0
    :goto_0
    return v0

    .line 107
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    check-cast p1, Landroid/preference/Preference;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/users/UserPreference;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method public getUserId()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/android/settings_ex/users/UserPreference;->mUserId:I

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    const/16 v5, 0x8

    .line 61
    const v4, 0x7f0d01a4

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 62
    .local v0, deleteDividerView:Landroid/view/View;
    const v4, 0x7f0d01a2

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 63
    .local v2, manageDividerView:Landroid/view/View;
    const v4, 0x7f0d01a5

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 64
    .local v1, deleteView:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 65
    iget-object v4, p0, Lcom/android/settings_ex/users/UserPreference;->mDeleteClickListener:Landroid/view/View$OnClickListener;

    if-eqz v4, :cond_2

    .line 66
    iget-object v4, p0, Lcom/android/settings_ex/users/UserPreference;->mDeleteClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    invoke-virtual {v1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 73
    :cond_0
    :goto_0
    const v4, 0x7f0d01a3

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 74
    .local v3, manageView:Landroid/view/View;
    if-eqz v3, :cond_1

    .line 75
    iget-object v4, p0, Lcom/android/settings_ex/users/UserPreference;->mSettingsClickListener:Landroid/view/View$OnClickListener;

    if-eqz v4, :cond_3

    .line 76
    iget-object v4, p0, Lcom/android/settings_ex/users/UserPreference;->mSettingsClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    invoke-virtual {v3, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 78
    iget-object v4, p0, Lcom/android/settings_ex/users/UserPreference;->mDeleteClickListener:Landroid/view/View$OnClickListener;

    if-eqz v4, :cond_1

    .line 79
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 86
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 87
    return-void

    .line 69
    .end local v3           #manageView:Landroid/view/View;
    :cond_2
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 70
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 82
    .restart local v3       #manageView:Landroid/view/View;
    :cond_3
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 83
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method
