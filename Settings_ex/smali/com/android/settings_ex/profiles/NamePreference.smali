.class public Lcom/android/settings_ex/profiles/NamePreference;
.super Landroid/preference/Preference;
.source "NamePreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mName:Ljava/lang/String;

.field private mNameView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/android/settings_ex/profiles/NamePreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/profiles/NamePreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 53
    invoke-direct {p0}, Lcom/android/settings_ex/profiles/NamePreference;->init()V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "name"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 44
    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/profiles/NamePreference;->mName:Ljava/lang/String;

    .line 45
    invoke-direct {p0}, Lcom/android/settings_ex/profiles/NamePreference;->init()V

    .line 46
    return-void
.end method

.method static synthetic access$002(Lcom/android/settings_ex/profiles/NamePreference;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/settings_ex/profiles/NamePreference;->mName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings_ex/profiles/NamePreference;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/settings_ex/profiles/NamePreference;->mNameView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/profiles/NamePreference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/profiles/NamePreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 71
    const v0, 0x7f04009a

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/profiles/NamePreference;->setLayoutResource(I)V

    .line 72
    return-void
.end method

.method private updatePreferenceViews()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/settings_ex/profiles/NamePreference;->mNameView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/settings_ex/profiles/NamePreference;->mNameView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/profiles/NamePreference;->mName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    :cond_0
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings_ex/profiles/NamePreference;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 60
    const v1, 0x7f0d018e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 61
    .local v0, namePref:Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 62
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    :cond_0
    const v1, 0x7f0d0039

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings_ex/profiles/NamePreference;->mNameView:Landroid/widget/TextView;

    .line 67
    invoke-direct {p0}, Lcom/android/settings_ex/profiles/NamePreference;->updatePreferenceViews()V

    .line 68
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/16 v2, 0x22

    const/16 v3, 0x10

    .line 91
    if-eqz p1, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/android/settings_ex/profiles/NamePreference;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 93
    .local v6, context:Landroid/content/Context;
    if-eqz v6, :cond_0

    .line 94
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, v6}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 95
    .local v1, entry:Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->setSingleLine()V

    .line 96
    iget-object v4, p0, Lcom/android/settings_ex/profiles/NamePreference;->mName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 98
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 99
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0800d5

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 100
    const v4, 0x7f0800d6

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move v4, v2

    move v5, v3

    .line 101
    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;IIII)Landroid/app/AlertDialog$Builder;

    .line 102
    const v2, 0x104000a

    new-instance v3, Lcom/android/settings_ex/profiles/NamePreference$1;

    invoke-direct {v3, p0, v1}, Lcom/android/settings_ex/profiles/NamePreference$1;-><init>(Lcom/android/settings_ex/profiles/NamePreference;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 112
    const/high16 v2, 0x104

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 113
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    .line 114
    .local v7, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    .line 115
    const v2, 0x102000b

    invoke-virtual {v7, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x10301b3

    invoke-virtual {v2, v6, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 119
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #entry:Landroid/widget/EditText;
    .end local v6           #context:Landroid/content/Context;
    .end local v7           #dialog:Landroid/app/AlertDialog;
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 123
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/profiles/NamePreference;->callChangeListener(Ljava/lang/Object;)Z

    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 75
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/profiles/NamePreference;->mName:Ljava/lang/String;

    .line 76
    invoke-direct {p0}, Lcom/android/settings_ex/profiles/NamePreference;->updatePreferenceViews()V

    .line 77
    return-void
.end method
