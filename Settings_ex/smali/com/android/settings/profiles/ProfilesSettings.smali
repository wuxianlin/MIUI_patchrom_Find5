.class public Lcom/android/settings/profiles/ProfilesSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ProfilesSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/profiles/ProfilesSettings$ProfilesPagerAdapter;
    }
.end annotation


# instance fields
.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mAdapter:Lcom/android/settings/profiles/ProfilesSettings$ProfilesPagerAdapter;

.field mContainer:Landroid/view/ViewGroup;

.field private mEmptyText:Landroid/widget/TextView;

.field private mEnabled:Z

.field private final mFilter:Landroid/content/IntentFilter;

.field private mProfileEnabler:Lcom/android/settings/profiles/ProfileEnabler;

.field private mProfileManager:Landroid/app/ProfileManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 83
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/profiles/ProfilesSettings;->mFilter:Landroid/content/IntentFilter;

    .line 84
    iget-object v0, p0, Lcom/android/settings/profiles/ProfilesSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.app.profiles.PROFILES_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    new-instance v0, Lcom/android/settings/profiles/ProfilesSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/profiles/ProfilesSettings$1;-><init>(Lcom/android/settings/profiles/ProfilesSettings;)V

    iput-object v0, p0, Lcom/android/settings/profiles/ProfilesSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/profiles/ProfilesSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/settings/profiles/ProfilesSettings;->updateProfilesEnabledState()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/profiles/ProfilesSettings;)Landroid/app/ProfileManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/profiles/ProfilesSettings;->mProfileManager:Landroid/app/ProfileManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/profiles/ProfilesSettings;)Lcom/android/settings/profiles/ProfilesSettings$ProfilesPagerAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/profiles/ProfilesSettings;->mAdapter:Lcom/android/settings/profiles/ProfilesSettings$ProfilesPagerAdapter;

    return-object v0
.end method

.method private addAppGroup()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 263
    invoke-virtual {p0}, Lcom/android/settings/profiles/ProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    .line 264
    .local v4, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f0400b0

    invoke-virtual {v4, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 265
    .local v1, content:Landroid/view/View;
    const v6, 0x7f0d01b0

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 266
    .local v5, prompt:Landroid/widget/TextView;
    const v6, 0x7f0d002f

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 268
    .local v3, entry:Landroid/widget/EditText;
    const v6, 0x7f0800fa

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 270
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/profiles/ProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 271
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v6, 0x7f0800f8

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 272
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 274
    const v6, 0x104000a

    new-instance v7, Lcom/android/settings/profiles/ProfilesSettings$4;

    invoke-direct {v7, p0, v3}, Lcom/android/settings/profiles/ProfilesSettings$4;-><init>(Lcom/android/settings/profiles/ProfilesSettings;Landroid/widget/EditText;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 288
    const/high16 v6, 0x104

    invoke-virtual {v0, v6, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 290
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 291
    .local v2, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 292
    return-void
.end method

.method private addProfile()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 215
    invoke-virtual {p0}, Lcom/android/settings/profiles/ProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    .line 216
    .local v4, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f0400b0

    invoke-virtual {v4, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 217
    .local v1, content:Landroid/view/View;
    const v6, 0x7f0d01b0

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 218
    .local v5, prompt:Landroid/widget/TextView;
    const v6, 0x7f0d002f

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 220
    .local v3, entry:Landroid/widget/EditText;
    const v6, 0x7f0800d2

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 222
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/profiles/ProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 223
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v6, 0x7f0800d3

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 224
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 226
    const v6, 0x104000a

    new-instance v7, Lcom/android/settings/profiles/ProfilesSettings$2;

    invoke-direct {v7, p0, v3}, Lcom/android/settings/profiles/ProfilesSettings$2;-><init>(Lcom/android/settings/profiles/ProfilesSettings;Landroid/widget/EditText;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 240
    const/high16 v6, 0x104

    invoke-virtual {v0, v6, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 242
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 243
    .local v2, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 244
    return-void
.end method

.method private resetAll()V
    .locals 3

    .prologue
    .line 247
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/profiles/ProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 248
    .local v0, alert:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0800d9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 249
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 250
    const v1, 0x7f0800da

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 251
    const v1, 0x7f0801f0

    new-instance v2, Lcom/android/settings/profiles/ProfilesSettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings/profiles/ProfilesSettings$3;-><init>(Lcom/android/settings/profiles/ProfilesSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 258
    const v1, 0x7f0804f7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 259
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 260
    return-void
.end method

.method private updateProfilesEnabledState()V
    .locals 6

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 295
    invoke-virtual {p0}, Lcom/android/settings/profiles/ProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 297
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "system_profiles_enabled"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/profiles/ProfilesSettings;->mEnabled:Z

    .line 299
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 301
    iget-object v4, p0, Lcom/android/settings/profiles/ProfilesSettings;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-boolean v1, p0, Lcom/android/settings/profiles/ProfilesSettings;->mEnabled:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 302
    iget-object v1, p0, Lcom/android/settings/profiles/ProfilesSettings;->mEmptyText:Landroid/widget/TextView;

    iget-boolean v4, p0, Lcom/android/settings/profiles/ProfilesSettings;->mEnabled:Z

    if-eqz v4, :cond_2

    :goto_2
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 303
    return-void

    :cond_0
    move v1, v2

    .line 297
    goto :goto_0

    :cond_1
    move v1, v3

    .line 301
    goto :goto_1

    :cond_2
    move v3, v2

    .line 302
    goto :goto_2
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/16 v6, 0x10

    const/4 v7, -0x2

    const/4 v5, 0x0

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/profiles/ProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 127
    .local v0, activity:Landroid/app/Activity;
    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/profiles/ProfilesSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 129
    instance-of v3, v0, Landroid/preference/PreferenceActivity;

    if-eqz v3, :cond_1

    move-object v2, v0

    .line 130
    check-cast v2, Landroid/preference/PreferenceActivity;

    .line 131
    .local v2, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v3

    if-nez v3, :cond_1

    .line 132
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070014

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 134
    .local v1, padding:I
    iget-object v3, p0, Lcom/android/settings/profiles/ProfilesSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5, v5, v1, v5}, Landroid/widget/Switch;->setPaddingRelative(IIII)V

    .line 135
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 137
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/profiles/ProfilesSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const v6, 0x800015

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 144
    .end local v1           #padding:I
    .end local v2           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_1
    new-instance v3, Lcom/android/settings/profiles/ProfileEnabler;

    iget-object v4, p0, Lcom/android/settings/profiles/ProfilesSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-direct {v3, v0, v4}, Lcom/android/settings/profiles/ProfileEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v3, p0, Lcom/android/settings/profiles/ProfilesSettings;->mProfileEnabler:Lcom/android/settings/profiles/ProfileEnabler;

    .line 147
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 148
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x0

    .line 178
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

    iget-boolean v1, p0, Lcom/android/settings/profiles/ProfilesSettings;->mEnabled:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 185
    const/4 v0, 0x2

    const v1, 0x7f0800be

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02007e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x61

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/profiles/ProfilesSettings;->mEnabled:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 191
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 100
    iput-object p2, p0, Lcom/android/settings/profiles/ProfilesSettings;->mContainer:Landroid/view/ViewGroup;

    .line 102
    const v2, 0x7f0400b1

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 103
    .local v1, view:Landroid/view/View;
    const v2, 0x7f0d001b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    iput-object v2, p0, Lcom/android/settings/profiles/ProfilesSettings;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 104
    const v2, 0x7f0d0113

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/profiles/ProfilesSettings;->mEmptyText:Landroid/widget/TextView;

    .line 106
    new-instance v2, Lcom/android/settings/profiles/ProfilesSettings$ProfilesPagerAdapter;

    invoke-virtual {p0}, Lcom/android/settings/profiles/ProfilesSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/settings/profiles/ProfilesSettings$ProfilesPagerAdapter;-><init>(Lcom/android/settings/profiles/ProfilesSettings;Landroid/app/FragmentManager;)V

    iput-object v2, p0, Lcom/android/settings/profiles/ProfilesSettings;->mAdapter:Lcom/android/settings/profiles/ProfilesSettings$ProfilesPagerAdapter;

    .line 107
    iget-object v2, p0, Lcom/android/settings/profiles/ProfilesSettings;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/android/settings/profiles/ProfilesSettings;->mAdapter:Lcom/android/settings/profiles/ProfilesSettings$ProfilesPagerAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 109
    const v2, 0x7f0d001c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/PagerTabStrip;

    .line 110
    .local v0, tabs:Landroid/support/v4/view/PagerTabStrip;
    const v2, 0x1060012

    invoke-virtual {v0, v2}, Landroid/support/v4/view/PagerTabStrip;->setTabIndicatorColorResource(I)V

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/profiles/ProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "profile"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ProfileManager;

    iput-object v2, p0, Lcom/android/settings/profiles/ProfilesSettings;->mProfileManager:Landroid/app/ProfileManager;

    .line 114
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/settings/profiles/ProfilesSettings;->setHasOptionsMenu(Z)V

    .line 116
    return-object v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 195
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 210
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 197
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/profiles/ProfilesSettings;->resetAll()V

    goto :goto_0

    .line 202
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/profiles/ProfilesSettings;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    if-nez v1, :cond_0

    .line 203
    invoke-direct {p0}, Lcom/android/settings/profiles/ProfilesSettings;->addProfile()V

    goto :goto_0

    .line 205
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/profiles/ProfilesSettings;->addAppGroup()V

    goto :goto_0

    .line 195
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 169
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 170
    iget-object v0, p0, Lcom/android/settings/profiles/ProfilesSettings;->mProfileEnabler:Lcom/android/settings/profiles/ProfileEnabler;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/settings/profiles/ProfilesSettings;->mProfileEnabler:Lcom/android/settings/profiles/ProfileEnabler;

    invoke-virtual {v0}, Lcom/android/settings/profiles/ProfileEnabler;->pause()V

    .line 173
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/profiles/ProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/profiles/ProfilesSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 174
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 152
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 153
    iget-object v0, p0, Lcom/android/settings/profiles/ProfilesSettings;->mProfileEnabler:Lcom/android/settings/profiles/ProfileEnabler;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/settings/profiles/ProfilesSettings;->mProfileEnabler:Lcom/android/settings/profiles/ProfileEnabler;

    invoke-virtual {v0}, Lcom/android/settings/profiles/ProfileEnabler;->resume()V

    .line 156
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/profiles/ProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/profiles/ProfilesSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/profiles/ProfilesSettings;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 159
    invoke-direct {p0}, Lcom/android/settings/profiles/ProfilesSettings;->updateProfilesEnabledState()V

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/profiles/ProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/android/settings/profiles/ProfilesSettings;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 165
    :cond_1
    return-void
.end method
