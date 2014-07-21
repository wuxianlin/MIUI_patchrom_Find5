.class public Lcom/android/settings_ex/profiles/ProfileRingModePreference;
.super Landroid/preference/Preference;
.source "ProfileRingModePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private currentChoice:I

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mProtectFromCheckedChange:Z

.field private mRingModeItem:Lcom/android/settings_ex/profiles/ProfileConfig$RingModeItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/profiles/ProfileRingModePreference;->mProtectFromCheckedChange:Z

    .line 72
    invoke-direct {p0}, Lcom/android/settings_ex/profiles/ProfileRingModePreference;->init()V

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

    iput-boolean v0, p0, Lcom/android/settings_ex/profiles/ProfileRingModePreference;->mProtectFromCheckedChange:Z

    .line 64
    invoke-direct {p0}, Lcom/android/settings_ex/profiles/ProfileRingModePreference;->init()V

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

    iput-boolean v0, p0, Lcom/android/settings_ex/profiles/ProfileRingModePreference;->mProtectFromCheckedChange:Z

    .line 55
    invoke-direct {p0}, Lcom/android/settings_ex/profiles/ProfileRingModePreference;->init()V

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/profiles/ProfileRingModePreference;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/android/settings_ex/profiles/ProfileRingModePreference;->currentChoice:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings_ex/profiles/ProfileRingModePreference;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput p1, p0, Lcom/android/settings_ex/profiles/ProfileRingModePreference;->currentChoice:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings_ex/profiles/ProfileRingModePreference;)Lcom/android/settings_ex/profiles/ProfileConfig$RingModeItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings_ex/profiles/ProfileRingModePreference;->mRingModeItem:Lcom/android/settings_ex/profiles/ProfileConfig$RingModeItem;

    return-object v0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 98
    const v0, 0x7f0400a1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/profiles/ProfileRingModePreference;->setLayoutResource(I)V

    .line 99
    return-void
.end method


# virtual methods
.method protected createRingModeDialog()Landroid/app/Dialog;
    .locals 7

    .prologue
    .line 124
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/profiles/ProfileRingModePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 125
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/settings_ex/profiles/ProfileRingModePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0069

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 126
    .local v3, ringModeValues:[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings_ex/profiles/ProfileRingModePreference;->mRingModeItem:Lcom/android/settings_ex/profiles/ProfileConfig$RingModeItem;

    iget-object v4, v4, Lcom/android/settings_ex/profiles/ProfileConfig$RingModeItem;->mSettings:Landroid/app/RingModeSettings;

    invoke-virtual {v4}, Landroid/app/RingModeSettings;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, currentValue:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 128
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 129
    aget-object v4, v3, v2

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 130
    iput v2, p0, Lcom/android/settings_ex/profiles/ProfileRingModePreference;->currentChoice:I

    .line 136
    .end local v2           #i:I
    :cond_0
    const v4, 0x7f080113

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 137
    const v4, 0x7f0c0068

    iget v5, p0, Lcom/android/settings_ex/profiles/ProfileRingModePreference;->currentChoice:I

    new-instance v6, Lcom/android/settings_ex/profiles/ProfileRingModePreference$1;

    invoke-direct {v6, p0}, Lcom/android/settings_ex/profiles/ProfileRingModePreference$1;-><init>(Lcom/android/settings_ex/profiles/ProfileRingModePreference;)V

    invoke-virtual {v0, v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 144
    const v4, 0x104000a

    new-instance v5, Lcom/android/settings_ex/profiles/ProfileRingModePreference$2;

    invoke-direct {v5, p0, v3}, Lcom/android/settings_ex/profiles/ProfileRingModePreference$2;-><init>(Lcom/android/settings_ex/profiles/ProfileRingModePreference;[Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 155
    const/high16 v4, 0x104

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 156
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    .line 128
    .restart local v2       #i:I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
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
    iput-object v2, p0, Lcom/android/settings_ex/profiles/ProfileRingModePreference;->mCheckBox:Landroid/widget/CheckBox;

    .line 82
    iget-object v3, p0, Lcom/android/settings_ex/profiles/ProfileRingModePreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 84
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/settings_ex/profiles/ProfileRingModePreference;->mProtectFromCheckedChange:Z

    .line 85
    iget-object v3, p0, Lcom/android/settings_ex/profiles/ProfileRingModePreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/android/settings_ex/profiles/ProfileRingModePreference;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 86
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/settings_ex/profiles/ProfileRingModePreference;->mProtectFromCheckedChange:Z

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
    iget-object v0, p0, Lcom/android/settings_ex/profiles/ProfileRingModePreference;->mRingModeItem:Lcom/android/settings_ex/profiles/ProfileConfig$RingModeItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/profiles/ProfileRingModePreference;->mRingModeItem:Lcom/android/settings_ex/profiles/ProfileConfig$RingModeItem;

    iget-object v0, v0, Lcom/android/settings_ex/profiles/ProfileConfig$RingModeItem;->mSettings:Landroid/app/RingModeSettings;

    invoke-virtual {v0}, Landroid/app/RingModeSettings;->isOverride()Z

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
    iget-boolean v0, p0, Lcom/android/settings_ex/profiles/ProfileRingModePreference;->mProtectFromCheckedChange:Z

    if-eqz v0, :cond_0

    .line 121
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/profiles/ProfileRingModePreference;->mRingModeItem:Lcom/android/settings_ex/profiles/ProfileConfig$RingModeItem;

    iget-object v0, v0, Lcom/android/settings_ex/profiles/ProfileConfig$RingModeItem;->mSettings:Landroid/app/RingModeSettings;

    invoke-virtual {v0, p2}, Landroid/app/RingModeSettings;->setOverride(Z)V

    .line 120
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/profiles/ProfileRingModePreference;->callChangeListener(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 165
    if-eqz p1, :cond_0

    const v0, 0x7f0d0008

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/android/settings_ex/profiles/ProfileRingModePreference;->createRingModeDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 168
    :cond_0
    return-void
.end method

.method public setRingModeItem(Lcom/android/settings_ex/profiles/ProfileConfig$RingModeItem;)V
    .locals 2
    .parameter "ringModeItem"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/settings_ex/profiles/ProfileRingModePreference;->mRingModeItem:Lcom/android/settings_ex/profiles/ProfileConfig$RingModeItem;

    .line 108
    iget-object v0, p0, Lcom/android/settings_ex/profiles/ProfileRingModePreference;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/settings_ex/profiles/ProfileRingModePreference;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/android/settings_ex/profiles/ProfileRingModePreference;->mRingModeItem:Lcom/android/settings_ex/profiles/ProfileConfig$RingModeItem;

    iget-object v1, v1, Lcom/android/settings_ex/profiles/ProfileConfig$RingModeItem;->mSettings:Landroid/app/RingModeSettings;

    invoke-virtual {v1}, Landroid/app/RingModeSettings;->isOverride()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 111
    :cond_0
    return-void
.end method

.method public setSummary(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 171
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0068

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, entries:[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0069

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 173
    .local v4, values:[Ljava/lang/String;
    array-length v2, v0

    .line 174
    .local v2, l:I
    iget-object v5, p0, Lcom/android/settings_ex/profiles/ProfileRingModePreference;->mRingModeItem:Lcom/android/settings_ex/profiles/ProfileConfig$RingModeItem;

    iget-object v5, v5, Lcom/android/settings_ex/profiles/ProfileConfig$RingModeItem;->mSettings:Landroid/app/RingModeSettings;

    invoke-virtual {v5}, Landroid/app/RingModeSettings;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 175
    .local v3, value:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 176
    aget-object v5, v4, v1

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 177
    aget-object v5, v0, v1

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/profiles/ProfileRingModePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 181
    :cond_0
    return-void

    .line 175
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
