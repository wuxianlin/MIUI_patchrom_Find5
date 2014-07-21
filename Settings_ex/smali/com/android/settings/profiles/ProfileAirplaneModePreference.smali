.class public Lcom/android/settings/profiles/ProfileAirplaneModePreference;
.super Landroid/preference/Preference;
.source "ProfileAirplaneModePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private currentChoice:I

.field private mAirplaneModeItem:Lcom/android/settings/profiles/ProfileConfig$AirplaneModeItem;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mProtectFromCheckedChange:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/profiles/ProfileAirplaneModePreference;->mProtectFromCheckedChange:Z

    .line 72
    invoke-direct {p0}, Lcom/android/settings/profiles/ProfileAirplaneModePreference;->init()V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/profiles/ProfileAirplaneModePreference;->mProtectFromCheckedChange:Z

    .line 64
    invoke-direct {p0}, Lcom/android/settings/profiles/ProfileAirplaneModePreference;->init()V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/profiles/ProfileAirplaneModePreference;->mProtectFromCheckedChange:Z

    .line 55
    invoke-direct {p0}, Lcom/android/settings/profiles/ProfileAirplaneModePreference;->init()V

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/profiles/ProfileAirplaneModePreference;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/android/settings/profiles/ProfileAirplaneModePreference;->currentChoice:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/profiles/ProfileAirplaneModePreference;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput p1, p0, Lcom/android/settings/profiles/ProfileAirplaneModePreference;->currentChoice:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/profiles/ProfileAirplaneModePreference;)Lcom/android/settings/profiles/ProfileConfig$AirplaneModeItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings/profiles/ProfileAirplaneModePreference;->mAirplaneModeItem:Lcom/android/settings/profiles/ProfileConfig$AirplaneModeItem;

    return-object v0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 98
    const v0, 0x7f0400a1

    invoke-virtual {p0, v0}, Lcom/android/settings/profiles/ProfileAirplaneModePreference;->setLayoutResource(I)V

    .line 99
    return-void
.end method


# virtual methods
.method protected createAirplaneModeDialog()Landroid/app/Dialog;
    .locals 5

    .prologue
    .line 124
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/profiles/ProfileAirplaneModePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 125
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/settings/profiles/ProfileAirplaneModePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0076

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, AirplaneModeValues:[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/profiles/ProfileAirplaneModePreference;->mAirplaneModeItem:Lcom/android/settings/profiles/ProfileConfig$AirplaneModeItem;

    iget-object v2, v2, Lcom/android/settings/profiles/ProfileConfig$AirplaneModeItem;->mSettings:Landroid/app/AirplaneModeSettings;

    invoke-virtual {v2}, Landroid/app/AirplaneModeSettings;->getValue()I

    move-result v2

    iput v2, p0, Lcom/android/settings/profiles/ProfileAirplaneModePreference;->currentChoice:I

    .line 130
    const v2, 0x7f080105

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 131
    const v2, 0x7f0c0074

    iget v3, p0, Lcom/android/settings/profiles/ProfileAirplaneModePreference;->currentChoice:I

    new-instance v4, Lcom/android/settings/profiles/ProfileAirplaneModePreference$1;

    invoke-direct {v4, p0}, Lcom/android/settings/profiles/ProfileAirplaneModePreference$1;-><init>(Lcom/android/settings/profiles/ProfileAirplaneModePreference;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 139
    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/profiles/ProfileAirplaneModePreference$2;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/profiles/ProfileAirplaneModePreference$2;-><init>(Lcom/android/settings/profiles/ProfileAirplaneModePreference;[Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 151
    const/high16 v2, 0x104

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 152
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 77
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 79
    .local v1, view:Landroid/view/View;
    const v3, 0x7f0d0199

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 80
    .local v2, widget:Landroid/view/View;
    if-eqz v2, :cond_0

    instance-of v3, v2, Landroid/widget/CheckBox;

    if-eqz v3, :cond_0

    .line 81
    check-cast v2, Landroid/widget/CheckBox;

    .end local v2           #widget:Landroid/view/View;
    iput-object v2, p0, Lcom/android/settings/profiles/ProfileAirplaneModePreference;->mCheckBox:Landroid/widget/CheckBox;

    .line 82
    iget-object v3, p0, Lcom/android/settings/profiles/ProfileAirplaneModePreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 84
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/settings/profiles/ProfileAirplaneModePreference;->mProtectFromCheckedChange:Z

    .line 85
    iget-object v3, p0, Lcom/android/settings/profiles/ProfileAirplaneModePreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/android/settings/profiles/ProfileAirplaneModePreference;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 86
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/settings/profiles/ProfileAirplaneModePreference;->mProtectFromCheckedChange:Z

    .line 89
    :cond_0
    const v3, 0x7f0d0008

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 90
    .local v0, textLayout:Landroid/view/View;
    if-eqz v0, :cond_1

    instance-of v3, v0, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_1

    .line 91
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    :cond_1
    return-object v1
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/settings/profiles/ProfileAirplaneModePreference;->mAirplaneModeItem:Lcom/android/settings/profiles/ProfileConfig$AirplaneModeItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/profiles/ProfileAirplaneModePreference;->mAirplaneModeItem:Lcom/android/settings/profiles/ProfileConfig$AirplaneModeItem;

    iget-object v0, v0, Lcom/android/settings/profiles/ProfileConfig$AirplaneModeItem;->mSettings:Landroid/app/AirplaneModeSettings;

    invoke-virtual {v0}, Landroid/app/AirplaneModeSettings;->isOverride()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/android/settings/profiles/ProfileAirplaneModePreference;->mProtectFromCheckedChange:Z

    if-eqz v0, :cond_0

    .line 121
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/android/settings/profiles/ProfileAirplaneModePreference;->mAirplaneModeItem:Lcom/android/settings/profiles/ProfileConfig$AirplaneModeItem;

    iget-object v0, v0, Lcom/android/settings/profiles/ProfileConfig$AirplaneModeItem;->mSettings:Landroid/app/AirplaneModeSettings;

    invoke-virtual {v0, p2}, Landroid/app/AirplaneModeSettings;->setOverride(Z)V

    .line 120
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/profiles/ProfileAirplaneModePreference;->callChangeListener(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 161
    if-eqz p1, :cond_0

    const v0, 0x7f0d0008

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/profiles/ProfileAirplaneModePreference;->createAirplaneModeDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 164
    :cond_0
    return-void
.end method

.method public setAirplaneModeItem(Lcom/android/settings/profiles/ProfileConfig$AirplaneModeItem;)V
    .locals 2
    .parameter "airplaneModeItem"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/settings/profiles/ProfileAirplaneModePreference;->mAirplaneModeItem:Lcom/android/settings/profiles/ProfileConfig$AirplaneModeItem;

    .line 108
    iget-object v0, p0, Lcom/android/settings/profiles/ProfileAirplaneModePreference;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/settings/profiles/ProfileAirplaneModePreference;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/android/settings/profiles/ProfileAirplaneModePreference;->mAirplaneModeItem:Lcom/android/settings/profiles/ProfileConfig$AirplaneModeItem;

    iget-object v1, v1, Lcom/android/settings/profiles/ProfileConfig$AirplaneModeItem;->mSettings:Landroid/app/AirplaneModeSettings;

    invoke-virtual {v1}, Landroid/app/AirplaneModeSettings;->isOverride()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 111
    :cond_0
    return-void
.end method

.method public setSummary(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 167
    iget-object v1, p0, Lcom/android/settings/profiles/ProfileAirplaneModePreference;->mAirplaneModeItem:Lcom/android/settings/profiles/ProfileConfig$AirplaneModeItem;

    iget-object v1, v1, Lcom/android/settings/profiles/ProfileConfig$AirplaneModeItem;->mSettings:Landroid/app/AirplaneModeSettings;

    invoke-virtual {v1}, Landroid/app/AirplaneModeSettings;->getValue()I

    move-result v0

    .line 168
    .local v0, value:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/profiles/ProfileAirplaneModePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0800e4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/settings/profiles/ProfileAirplaneModePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 170
    return-void

    .line 168
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/profiles/ProfileAirplaneModePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0800e3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
