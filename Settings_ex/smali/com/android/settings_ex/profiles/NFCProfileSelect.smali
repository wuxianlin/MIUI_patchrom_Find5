.class public Lcom/android/settings_ex/profiles/NFCProfileSelect;
.super Landroid/app/Activity;
.source "NFCProfileSelect.java"


# instance fields
.field private currentChoice:I

.field private mProfileManager:Landroid/app/ProfileManager;

.field private mProfileUuid:Ljava/util/UUID;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/profiles/NFCProfileSelect;->currentChoice:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/profiles/NFCProfileSelect;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/android/settings_ex/profiles/NFCProfileSelect;->currentChoice:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings_ex/profiles/NFCProfileSelect;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput p1, p0, Lcom/android/settings_ex/profiles/NFCProfileSelect;->currentChoice:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings_ex/profiles/NFCProfileSelect;)Ljava/util/UUID;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings_ex/profiles/NFCProfileSelect;->mProfileUuid:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/profiles/NFCProfileSelect;)Landroid/app/ProfileManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings_ex/profiles/NFCProfileSelect;->mProfileManager:Landroid/app/ProfileManager;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const-string v0, "profile"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/profiles/NFCProfileSelect;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProfileManager;

    iput-object v0, p0, Lcom/android/settings_ex/profiles/NFCProfileSelect;->mProfileManager:Landroid/app/ProfileManager;

    .line 63
    const v0, 0x7f040072

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/profiles/NFCProfileSelect;->setContentView(I)V

    .line 64
    const v0, 0x7f0800cd

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/profiles/NFCProfileSelect;->setTitle(I)V

    .line 66
    const v0, 0x7f0d0137

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/profiles/NFCProfileSelect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/settings_ex/profiles/NFCProfileSelect$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/profiles/NFCProfileSelect$1;-><init>(Lcom/android/settings_ex/profiles/NFCProfileSelect;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 76
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 78
    invoke-virtual {p0}, Lcom/android/settings_ex/profiles/NFCProfileSelect;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "PROFILE_UUID"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, profileUuid:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 80
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/profiles/NFCProfileSelect;->mProfileUuid:Ljava/util/UUID;

    .line 84
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/profiles/NFCProfileSelect;->finish()V

    goto :goto_0
.end method

.method showProfileSelectionDialog()V
    .locals 6

    .prologue
    .line 87
    iget-object v4, p0, Lcom/android/settings_ex/profiles/NFCProfileSelect;->mProfileManager:Landroid/app/ProfileManager;

    invoke-virtual {v4}, Landroid/app/ProfileManager;->getProfiles()[Landroid/app/Profile;

    move-result-object v3

    .line 88
    .local v3, profiles:[Landroid/app/Profile;
    array-length v4, v3

    new-array v2, v4, [Ljava/lang/String;

    .line 89
    .local v2, profileNames:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 90
    aget-object v4, v3, v1

    invoke-virtual {v4}, Landroid/app/Profile;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 94
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0800c0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 95
    iget v4, p0, Lcom/android/settings_ex/profiles/NFCProfileSelect;->currentChoice:I

    new-instance v5, Lcom/android/settings_ex/profiles/NFCProfileSelect$2;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/profiles/NFCProfileSelect$2;-><init>(Lcom/android/settings_ex/profiles/NFCProfileSelect;)V

    invoke-virtual {v0, v2, v4, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 101
    const v4, 0x104000a

    new-instance v5, Lcom/android/settings_ex/profiles/NFCProfileSelect$3;

    invoke-direct {v5, p0, v3}, Lcom/android/settings_ex/profiles/NFCProfileSelect$3;-><init>(Lcom/android/settings_ex/profiles/NFCProfileSelect;[Landroid/app/Profile;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 113
    const/high16 v4, 0x104

    new-instance v5, Lcom/android/settings_ex/profiles/NFCProfileSelect$4;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/profiles/NFCProfileSelect$4;-><init>(Lcom/android/settings_ex/profiles/NFCProfileSelect;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 119
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 120
    return-void
.end method
