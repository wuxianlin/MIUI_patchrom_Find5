.class public Lcom/android/settings/profiles/ProfilesPreference;
.super Landroid/preference/CheckBoxPreference;
.source "ProfilesPreference.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mFragment:Lcom/android/settings/SettingsPreferenceFragment;

.field private final mPrefOnclickListener:Landroid/view/View$OnClickListener;

.field private mProfilesPref:Landroid/view/View;

.field private mProfilesSettingsButton:Landroid/widget/ImageView;

.field private final mSettingsBundle:Landroid/os/Bundle;

.field private mSummaryText:Landroid/widget/TextView;

.field private mTitleText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/android/settings/profiles/ProfilesPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/profiles/ProfilesPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/SettingsPreferenceFragment;Landroid/os/Bundle;)V
    .locals 3
    .parameter "fragment"
    .parameter "settingsBundle"

    .prologue
    .line 57
    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f090041

    invoke-direct {p0, v0, v1, v2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    new-instance v0, Lcom/android/settings/profiles/ProfilesPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/profiles/ProfilesPreference$1;-><init>(Lcom/android/settings/profiles/ProfilesPreference;)V

    iput-object v0, p0, Lcom/android/settings/profiles/ProfilesPreference;->mPrefOnclickListener:Landroid/view/View$OnClickListener;

    .line 58
    const v0, 0x7f04009b

    invoke-virtual {p0, v0}, Lcom/android/settings/profiles/ProfilesPreference;->setLayoutResource(I)V

    .line 59
    const v0, 0x7f04009c

    invoke-virtual {p0, v0}, Lcom/android/settings/profiles/ProfilesPreference;->setWidgetLayoutResource(I)V

    .line 60
    iput-object p1, p0, Lcom/android/settings/profiles/ProfilesPreference;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    .line 61
    iput-object p2, p0, Lcom/android/settings/profiles/ProfilesPreference;->mSettingsBundle:Landroid/os/Bundle;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/profiles/ProfilesPreference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/android/settings/profiles/ProfilesPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/profiles/ProfilesPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/settings/profiles/ProfilesPreference;->startProfileConfigActivity()V

    return-void
.end method

.method private disablePreferenceViews()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 105
    iget-object v0, p0, Lcom/android/settings/profiles/ProfilesPreference;->mProfilesSettingsButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/settings/profiles/ProfilesPreference;->mProfilesSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 107
    iget-object v0, p0, Lcom/android/settings/profiles/ProfilesPreference;->mProfilesSettingsButton:Landroid/widget/ImageView;

    const v1, 0x3ecccccd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/android/settings/profiles/ProfilesPreference;->mProfilesPref:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/android/settings/profiles/ProfilesPreference;->mProfilesPref:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 111
    iget-object v0, p0, Lcom/android/settings/profiles/ProfilesPreference;->mProfilesPref:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 113
    :cond_1
    return-void
.end method

.method private startProfileConfigActivity()V
    .locals 7

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/settings/profiles/ProfilesPreference;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 142
    const-class v1, Lcom/android/settings/profiles/ProfileConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/profiles/ProfilesPreference;->mSettingsBundle:Landroid/os/Bundle;

    const v3, 0x7f0800e7

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/profiles/ProfilesPreference;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 144
    return-void
.end method

.method private updatePreferenceViews()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/profiles/ProfilesPreference;->isChecked()Z

    move-result v0

    .line 117
    .local v0, checked:Z
    iget-object v2, p0, Lcom/android/settings/profiles/ProfilesPreference;->mProfilesSettingsButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 118
    iget-object v2, p0, Lcom/android/settings/profiles/ProfilesPreference;->mProfilesSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 119
    iget-object v2, p0, Lcom/android/settings/profiles/ProfilesPreference;->mProfilesSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 120
    iget-object v2, p0, Lcom/android/settings/profiles/ProfilesPreference;->mProfilesSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 122
    :cond_0
    iget-object v2, p0, Lcom/android/settings/profiles/ProfilesPreference;->mTitleText:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 123
    iget-object v2, p0, Lcom/android/settings/profiles/ProfilesPreference;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 125
    :cond_1
    iget-object v2, p0, Lcom/android/settings/profiles/ProfilesPreference;->mSummaryText:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 126
    iget-object v2, p0, Lcom/android/settings/profiles/ProfilesPreference;->mSummaryText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 128
    :cond_2
    iget-object v2, p0, Lcom/android/settings/profiles/ProfilesPreference;->mProfilesPref:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 129
    iget-object v2, p0, Lcom/android/settings/profiles/ProfilesPreference;->mProfilesPref:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 130
    iget-object v2, p0, Lcom/android/settings/profiles/ProfilesPreference;->mProfilesPref:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/profiles/ProfilesPreference;->isEnabled()Z

    move-result v1

    .line 132
    .local v1, enabled:Z
    iget-object v3, p0, Lcom/android/settings/profiles/ProfilesPreference;->mProfilesPref:Landroid/view/View;

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/android/settings/profiles/ProfilesPreference;->mPrefOnclickListener:Landroid/view/View$OnClickListener;

    :goto_0
    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    if-nez v1, :cond_3

    .line 134
    iget-object v2, p0, Lcom/android/settings/profiles/ProfilesPreference;->mProfilesPref:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 137
    .end local v1           #enabled:Z
    :cond_3
    return-void

    .line 132
    .restart local v1       #enabled:Z
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 67
    const v0, 0x7f0d018f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/profiles/ProfilesPreference;->mProfilesPref:Landroid/view/View;

    .line 68
    iget-object v0, p0, Lcom/android/settings/profiles/ProfilesPreference;->mProfilesPref:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/profiles/ProfilesPreference;->mPrefOnclickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    const v0, 0x7f0d0190

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/profiles/ProfilesPreference;->mProfilesSettingsButton:Landroid/widget/ImageView;

    .line 70
    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/profiles/ProfilesPreference;->mTitleText:Landroid/widget/TextView;

    .line 71
    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/profiles/ProfilesPreference;->mSummaryText:Landroid/widget/TextView;

    .line 73
    iget-object v0, p0, Lcom/android/settings/profiles/ProfilesPreference;->mSettingsBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/settings/profiles/ProfilesPreference;->mProfilesSettingsButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/settings/profiles/ProfilesPreference$2;

    invoke-direct {v1, p0}, Lcom/android/settings/profiles/ProfilesPreference$2;-><init>(Lcom/android/settings/profiles/ProfilesPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/android/settings/profiles/ProfilesPreference;->mSettingsBundle:Landroid/os/Bundle;

    if-nez v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/android/settings/profiles/ProfilesPreference;->mProfilesSettingsButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 92
    :goto_0
    return-void

    .line 90
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/profiles/ProfilesPreference;->updatePreferenceViews()V

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 0
    .parameter "checked"

    .prologue
    .line 148
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 149
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 96
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 97
    if-eqz p1, :cond_0

    .line 98
    invoke-direct {p0}, Lcom/android/settings/profiles/ProfilesPreference;->updatePreferenceViews()V

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/profiles/ProfilesPreference;->disablePreferenceViews()V

    goto :goto_0
.end method
