.class public Lcom/android/settings/applications/AppOpsSummary;
.super Landroid/app/Fragment;
.source "AppOpsSummary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/AppOpsSummary$MyPagerAdapter;
    }
.end annotation


# static fields
.field static sPageTemplates:[Lcom/android/settings/applications/AppOpsState$OpsTemplate;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAdapter:Lcom/android/settings/applications/AppOpsSummary$MyPagerAdapter;

.field private mContentContainer:Landroid/view/ViewGroup;

.field mCurPos:I

.field private mInflater:Landroid/view/LayoutInflater;

.field mPageNames:[Ljava/lang/CharSequence;

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mRootView:Landroid/view/View;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 55
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/settings/applications/AppOpsState;->LOCATION_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/android/settings/applications/AppOpsState;->PERSONAL_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/android/settings/applications/AppOpsState;->MESSAGING_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/android/settings/applications/AppOpsState;->MEDIA_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/android/settings/applications/AppOpsState;->DEVICE_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/android/settings/applications/AppOpsState;->BOOTUP_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/applications/AppOpsSummary;->sPageTemplates:[Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/AppOpsSummary;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/settings/applications/AppOpsSummary;->resetCounters()V

    return-void
.end method

.method private resetAdapter()V
    .locals 3

    .prologue
    .line 110
    iget-object v1, p0, Lcom/android/settings/applications/AppOpsSummary;->mAdapter:Lcom/android/settings/applications/AppOpsSummary$MyPagerAdapter;

    invoke-virtual {v1}, Lcom/android/settings/applications/AppOpsSummary$MyPagerAdapter;->getCurrentPage()I

    move-result v0

    .line 111
    .local v0, curPos:I
    iget-object v1, p0, Lcom/android/settings/applications/AppOpsSummary;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/android/settings/applications/AppOpsSummary;->mAdapter:Lcom/android/settings/applications/AppOpsSummary$MyPagerAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 112
    iget-object v1, p0, Lcom/android/settings/applications/AppOpsSummary;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/android/settings/applications/AppOpsSummary;->mAdapter:Lcom/android/settings/applications/AppOpsSummary$MyPagerAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 113
    iget-object v1, p0, Lcom/android/settings/applications/AppOpsSummary;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 114
    return-void
.end method

.method private resetCounters()V
    .locals 3

    .prologue
    .line 173
    iget-object v1, p0, Lcom/android/settings/applications/AppOpsSummary;->mActivity:Landroid/app/Activity;

    const-string v2, "appops"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 175
    .local v0, appOps:Landroid/app/AppOpsManager;
    if-nez v0, :cond_0

    .line 181
    :goto_0
    return-void

    .line 178
    :cond_0
    invoke-virtual {v0}, Landroid/app/AppOpsManager;->resetCounters()V

    .line 180
    invoke-direct {p0}, Lcom/android/settings/applications/AppOpsSummary;->resetAdapter()V

    goto :goto_0
.end method

.method private resetCountersConfirm()V
    .locals 3

    .prologue
    .line 184
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0803ea

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0803eb

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/applications/AppOpsSummary$1;

    invoke-direct {v2, p0}, Lcom/android/settings/applications/AppOpsSummary$1;-><init>(Lcom/android/settings/applications/AppOpsSummary;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 197
    return-void
.end method

.method private shouldShowSystemApps()Z
    .locals 3

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsSummary;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "show_system_apps"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private shouldShowUserApps()Z
    .locals 3

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsSummary;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "show_user_apps"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 156
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 159
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsSummary;->mActivity:Landroid/app/Activity;

    const-string v1, "appops_manager"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsSummary;->mPreferences:Landroid/content/SharedPreferences;

    .line 161
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppOpsSummary;->setHasOptionsMenu(Z)V

    .line 162
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 166
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 167
    const v0, 0x7f100001

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 168
    const v0, 0x7f0d02dd

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings/applications/AppOpsSummary;->shouldShowUserApps()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 169
    const v0, 0x7f0d02de

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings/applications/AppOpsSummary;->shouldShowSystemApps()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 170
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/settings/applications/AppOpsSummary;->mInflater:Landroid/view/LayoutInflater;

    .line 121
    iget-object v2, p0, Lcom/android/settings/applications/AppOpsSummary;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04000b

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 123
    .local v0, rootView:Landroid/view/View;
    iput-object p2, p0, Lcom/android/settings/applications/AppOpsSummary;->mContentContainer:Landroid/view/ViewGroup;

    .line 124
    iput-object v0, p0, Lcom/android/settings/applications/AppOpsSummary;->mRootView:Landroid/view/View;

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00ae

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/AppOpsSummary;->mPageNames:[Ljava/lang/CharSequence;

    .line 128
    const v2, 0x7f0d001b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    iput-object v2, p0, Lcom/android/settings/applications/AppOpsSummary;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 129
    new-instance v2, Lcom/android/settings/applications/AppOpsSummary$MyPagerAdapter;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsSummary;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/settings/applications/AppOpsSummary$MyPagerAdapter;-><init>(Lcom/android/settings/applications/AppOpsSummary;Landroid/app/FragmentManager;)V

    iput-object v2, p0, Lcom/android/settings/applications/AppOpsSummary;->mAdapter:Lcom/android/settings/applications/AppOpsSummary$MyPagerAdapter;

    .line 130
    iget-object v2, p0, Lcom/android/settings/applications/AppOpsSummary;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/android/settings/applications/AppOpsSummary;->mAdapter:Lcom/android/settings/applications/AppOpsSummary$MyPagerAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 131
    iget-object v2, p0, Lcom/android/settings/applications/AppOpsSummary;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/android/settings/applications/AppOpsSummary;->mAdapter:Lcom/android/settings/applications/AppOpsSummary$MyPagerAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 132
    const v2, 0x7f0d001c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/PagerTabStrip;

    .line 133
    .local v1, tabs:Landroid/support/v4/view/PagerTabStrip;
    const v2, 0x1060012

    invoke-virtual {v1, v2}, Landroid/support/v4/view/PagerTabStrip;->setTabIndicatorColorResource(I)V

    .line 137
    instance-of v2, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz v2, :cond_0

    .line 138
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/AppOpsSummary;->mActivity:Landroid/app/Activity;

    .line 143
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 201
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 222
    invoke-super {p0, p1}, Landroid/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    :goto_0
    return v3

    .line 203
    :pswitch_0
    const-string v1, "show_user_apps"

    .line 205
    .local v1, prefNameUserApps:Ljava/lang/String;
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    :cond_0
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 206
    iget-object v2, p0, Lcom/android/settings/applications/AppOpsSummary;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v4, "show_user_apps"

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v5

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 208
    invoke-direct {p0}, Lcom/android/settings/applications/AppOpsSummary;->resetAdapter()V

    goto :goto_0

    .line 211
    .end local v1           #prefNameUserApps:Ljava/lang/String;
    :pswitch_1
    const-string v0, "show_system_apps"

    .line 213
    .local v0, prefNameSysApps:Ljava/lang/String;
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v4

    if-nez v4, :cond_1

    move v2, v3

    :cond_1
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 214
    iget-object v2, p0, Lcom/android/settings/applications/AppOpsSummary;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v4, "show_system_apps"

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v5

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 216
    invoke-direct {p0}, Lcom/android/settings/applications/AppOpsSummary;->resetAdapter()V

    goto :goto_0

    .line 219
    .end local v0           #prefNameSysApps:Ljava/lang/String;
    :pswitch_2
    invoke-direct {p0}, Lcom/android/settings/applications/AppOpsSummary;->resetCountersConfirm()V

    goto :goto_0

    .line 201
    :pswitch_data_0
    .packed-switch 0x7f0d02dd
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
