.class public Lcom/android/settings/print/PrintServiceSettingsFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PrintServiceSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersLoader;,
        Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;,
        Lcom/android/settings/print/PrintServiceSettingsFragment$AnnounceFilterResult;,
        Lcom/android/settings/print/PrintServiceSettingsFragment$SettingsContentObserver;
    }
.end annotation


# instance fields
.field private mAddPrintersIntent:Landroid/content/Intent;

.field private mAddPrintersTitle:Ljava/lang/CharSequence;

.field private mAnnounceFilterResult:Lcom/android/settings/print/PrintServiceSettingsFragment$AnnounceFilterResult;

.field private mComponentName:Landroid/content/ComponentName;

.field private final mDataObserver:Landroid/database/DataSetObserver;

.field private mEnableWarningMessage:Ljava/lang/CharSequence;

.field private mEnableWarningTitle:Ljava/lang/CharSequence;

.field private mLastUnfilteredItemCount:I

.field private mPreferenceKey:Ljava/lang/String;

.field private mPrintersAdapter:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

.field private mServiceEnabled:Z

.field private final mSettingsContentObserver:Lcom/android/settings/print/PrintServiceSettingsFragment$SettingsContentObserver;

.field private mSettingsIntent:Landroid/content/Intent;

.field private mSettingsTitle:Ljava/lang/CharSequence;

.field private mToggleSwitch:Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 86
    new-instance v0, Lcom/android/settings/print/PrintServiceSettingsFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/print/PrintServiceSettingsFragment$1;-><init>(Lcom/android/settings/print/PrintServiceSettingsFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mSettingsContentObserver:Lcom/android/settings/print/PrintServiceSettingsFragment$SettingsContentObserver;

    .line 94
    new-instance v0, Lcom/android/settings/print/PrintServiceSettingsFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/print/PrintServiceSettingsFragment$2;-><init>(Lcom/android/settings/print/PrintServiceSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mDataObserver:Landroid/database/DataSetObserver;

    .line 694
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/print/PrintServiceSettingsFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->updateUiForServiceState()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/print/PrintServiceSettingsFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->updateEmptyView()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings/print/PrintServiceSettingsFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->announceSearchResult()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings/print/PrintServiceSettingsFragment;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/print/PrintServiceSettingsFragment;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings/print/PrintServiceSettingsFragment;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings/print/PrintServiceSettingsFragment;)Landroid/content/ComponentName;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/print/PrintServiceSettingsFragment;)Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/print/PrintServiceSettingsFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mLastUnfilteredItemCount:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/settings/print/PrintServiceSettingsFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput p1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mLastUnfilteredItemCount:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/settings/print/PrintServiceSettingsFragment;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mEnableWarningMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/print/PrintServiceSettingsFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lcom/android/settings/print/PrintServiceSettingsFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/print/PrintServiceSettingsFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mPreferenceKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/print/PrintServiceSettingsFragment;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/android/settings/print/PrintServiceSettingsFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    return-void
.end method

.method private announceSearchResult()V
    .locals 2

    .prologue
    .line 509
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mAnnounceFilterResult:Lcom/android/settings/print/PrintServiceSettingsFragment$AnnounceFilterResult;

    if-nez v0, :cond_0

    .line 510
    new-instance v0, Lcom/android/settings/print/PrintServiceSettingsFragment$AnnounceFilterResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/print/PrintServiceSettingsFragment$AnnounceFilterResult;-><init>(Lcom/android/settings/print/PrintServiceSettingsFragment;Lcom/android/settings/print/PrintServiceSettingsFragment$1;)V

    iput-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mAnnounceFilterResult:Lcom/android/settings/print/PrintServiceSettingsFragment$AnnounceFilterResult;

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mAnnounceFilterResult:Lcom/android/settings/print/PrintServiceSettingsFragment$AnnounceFilterResult;

    invoke-virtual {v0}, Lcom/android/settings/print/PrintServiceSettingsFragment$AnnounceFilterResult;->post()V

    .line 513
    return-void
.end method

.method private createAndAddActionBarToggleSwitch(Landroid/app/Activity;)Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;
    .locals 7
    .parameter "activity"

    .prologue
    const/16 v6, 0x10

    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 450
    new-instance v1, Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;

    invoke-direct {v1, p1}, Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;-><init>(Landroid/content/Context;)V

    .line 451
    .local v1, toggleSwitch:Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 453
    .local v0, padding:I
    invoke-virtual {v1, v4, v4, v0, v4}, Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;->setPaddingRelative(IIII)V

    .line 454
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 456
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const v4, 0x800015

    invoke-direct {v3, v5, v5, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v1, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 460
    return-object v1
.end method

.method private initComponents()V
    .locals 3

    .prologue
    .line 285
    new-instance v0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;-><init>(Lcom/android/settings/print/PrintServiceSettingsFragment;Lcom/android/settings/print/PrintServiceSettingsFragment$1;)V

    iput-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

    .line 286
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mDataObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 288
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->createAndAddActionBarToggleSwitch(Landroid/app/Activity;)Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mToggleSwitch:Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;

    .line 289
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mToggleSwitch:Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;

    new-instance v1, Lcom/android/settings/print/PrintServiceSettingsFragment$3;

    invoke-direct {v1, p0}, Lcom/android/settings/print/PrintServiceSettingsFragment$3;-><init>(Lcom/android/settings/print/PrintServiceSettingsFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 306
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mToggleSwitch:Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;

    new-instance v1, Lcom/android/settings/print/PrintServiceSettingsFragment$4;

    invoke-direct {v1, p0}, Lcom/android/settings/print/PrintServiceSettingsFragment$4;-><init>(Lcom/android/settings/print/PrintServiceSettingsFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 313
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 314
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 315
    return-void
.end method

.method private onPreferenceToggled(Ljava/lang/String;Z)V
    .locals 3
    .parameter "preferenceKey"
    .parameter "enabled"

    .prologue
    .line 171
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 172
    .local v0, service:Landroid/content/ComponentName;
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/print/SettingsUtils;->readEnabledPrintServices(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 173
    .local v1, services:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz p2, :cond_0

    .line 174
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/settings/print/SettingsUtils;->writeEnabledPrintServices(Landroid/content/Context;Ljava/util/List;)V

    .line 179
    return-void

    .line 176
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private updateEmptyView()V
    .locals 11

    .prologue
    const v10, 0x7f0d0032

    const v9, 0x7f08095b

    const v8, 0x7f080952

    const v7, 0x7f04004b

    const/4 v6, 0x0

    .line 225
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 226
    .local v2, listView:Landroid/widget/ListView;
    invoke-virtual {v2}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 227
    .local v0, contentRoot:Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object v1

    .line 228
    .local v1, emptyView:Landroid/view/View;
    iget-object v4, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mToggleSwitch:Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;

    invoke-virtual {v4}, Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;->isChecked()Z

    move-result v4

    if-nez v4, :cond_2

    .line 229
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f0d00e0

    if-eq v4, v5, :cond_0

    .line 230
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 231
    const/4 v1, 0x0

    .line 233
    :cond_0
    if-nez v1, :cond_1

    .line 234
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {v4, v7, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 236
    invoke-virtual {p0, v9}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 237
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 238
    .local v3, textView:Landroid/widget/TextView;
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(I)V

    .line 239
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 240
    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 269
    .end local v3           #textView:Landroid/widget/TextView;
    :cond_1
    :goto_0
    return-void

    .line 242
    :cond_2
    iget-object v4, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

    invoke-virtual {v4}, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->getUnfilteredCount()I

    move-result v4

    if-gtz v4, :cond_4

    .line 243
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f0d00e1

    if-eq v4, v5, :cond_3

    .line 245
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 246
    const/4 v1, 0x0

    .line 248
    :cond_3
    if-nez v1, :cond_1

    .line 249
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f04004c

    invoke-virtual {v4, v5, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 251
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 252
    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_0

    .line 254
    :cond_4
    iget-object v4, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

    invoke-virtual {v4}, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->getCount()I

    move-result v4

    if-gtz v4, :cond_1

    .line 255
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f0d00e0

    if-eq v4, v5, :cond_5

    .line 256
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 257
    const/4 v1, 0x0

    .line 259
    :cond_5
    if-nez v1, :cond_1

    .line 260
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {v4, v7, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 262
    invoke-virtual {p0, v8}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 263
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 264
    .restart local v3       #textView:Landroid/widget/TextView;
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(I)V

    .line 265
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 266
    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private updateUiForArguments()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 318
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    .line 321
    .local v4, arguments:Landroid/os/Bundle;
    const-string v11, "EXTRA_PREFERENCE_KEY"

    invoke-virtual {v4, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mPreferenceKey:Ljava/lang/String;

    .line 324
    const-string v11, "EXTRA_CHECKED"

    invoke-virtual {v4, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 325
    .local v5, enabled:Z
    iget-object v11, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mToggleSwitch:Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;

    invoke-virtual {v11, v5}, Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;->setCheckedInternal(Z)V

    .line 328
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 329
    .local v0, activity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 333
    :cond_0
    const-string v11, "EXTRA_TITLE"

    invoke-virtual {v4, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 334
    .local v10, title:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11, v10}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 338
    .end local v10           #title:Ljava/lang/String;
    :cond_1
    const-string v11, "EXTRA_SETTINGS_TITLE"

    invoke-virtual {v4, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 339
    .local v9, settingsTitle:Ljava/lang/String;
    const-string v11, "EXTRA_SETTINGS_COMPONENT_NAME"

    invoke-virtual {v4, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 341
    .local v7, settingsComponentName:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 342
    new-instance v11, Landroid/content/Intent;

    const-string v12, "android.intent.action.MAIN"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v8

    .line 344
    .local v8, settingsIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v11, v8, v13}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 346
    .local v6, resolvedActivities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_2

    .line 348
    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    iget-object v11, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v11, v11, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v11, :cond_2

    .line 349
    iput-object v9, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mSettingsTitle:Ljava/lang/CharSequence;

    .line 350
    iput-object v8, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mSettingsIntent:Landroid/content/Intent;

    .line 356
    .end local v6           #resolvedActivities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v8           #settingsIntent:Landroid/content/Intent;
    :cond_2
    const-string v11, "EXTRA_ADD_PRINTERS_TITLE"

    invoke-virtual {v4, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 358
    .local v2, addPrintersTitle:Ljava/lang/String;
    const-string v11, "EXTRA_ADD_PRINTERS_COMPONENT_NAME"

    invoke-virtual {v4, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 360
    .local v1, addPrintersComponentName:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 362
    new-instance v11, Landroid/content/Intent;

    const-string v12, "android.intent.action.MAIN"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    .line 364
    .local v3, addPritnersIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v11, v3, v13}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 366
    .restart local v6       #resolvedActivities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_3

    .line 368
    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    iget-object v11, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v11, v11, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v11, :cond_3

    .line 369
    iput-object v2, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mAddPrintersTitle:Ljava/lang/CharSequence;

    .line 370
    iput-object v3, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mAddPrintersIntent:Landroid/content/Intent;

    .line 376
    .end local v3           #addPritnersIntent:Landroid/content/Intent;
    .end local v6           #resolvedActivities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_3
    const-string v11, "EXTRA_ENABLE_WARNING_TITLE"

    invoke-virtual {v4, v11}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mEnableWarningTitle:Ljava/lang/CharSequence;

    .line 380
    const-string v11, "EXTRA_ENABLE_WARNING_MESSAGE"

    invoke-virtual {v4, v11}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mEnableWarningMessage:Ljava/lang/CharSequence;

    .line 384
    const-string v11, "EXTRA_SERVICE_COMPONENT_NAME"

    invoke-virtual {v4, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mComponentName:Landroid/content/ComponentName;

    .line 387
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcom/android/settings/print/PrintServiceSettingsFragment;->setHasOptionsMenu(Z)V

    .line 388
    return-void
.end method

.method private updateUiForServiceState()V
    .locals 3

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/print/SettingsUtils;->readEnabledPrintServices(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 273
    .local v0, services:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mServiceEnabled:Z

    .line 274
    iget-boolean v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mServiceEnabled:Z

    if-eqz v1, :cond_0

    .line 275
    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mToggleSwitch:Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;->setCheckedInternal(Z)V

    .line 276
    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

    invoke-virtual {v1}, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->enable()V

    .line 281
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 282
    return-void

    .line 278
    :cond_0
    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mToggleSwitch:Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;->setCheckedInternal(Z)V

    .line 279
    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

    invoke-virtual {v1}, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->disable()V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 206
    packed-switch p2, :pswitch_data_0

    .line 220
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 208
    :pswitch_0
    const/4 v0, 0x1

    .line 209
    .local v0, checked:Z
    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mToggleSwitch:Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;

    invoke-virtual {v1, v0}, Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;->setCheckedInternal(Z)V

    .line 210
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "EXTRA_CHECKED"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 211
    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    .line 222
    :goto_0
    return-void

    .line 214
    .end local v0           #checked:Z
    :pswitch_1
    const/4 v0, 0x0

    .line 215
    .restart local v0       #checked:Z
    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mToggleSwitch:Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;

    invoke-virtual {v1, v0}, Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;->setCheckedInternal(Z)V

    .line 216
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "EXTRA_CHECKED"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 217
    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    goto :goto_0

    .line 206
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "dialogId"

    .prologue
    .line 183
    const/4 v1, 0x0

    .line 184
    .local v1, title:Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 185
    .local v0, message:Ljava/lang/CharSequence;
    packed-switch p1, :pswitch_data_0

    .line 191
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 187
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mEnableWarningTitle:Ljava/lang/CharSequence;

    .line 188
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mEnableWarningMessage:Ljava/lang/CharSequence;

    .line 193
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1010355

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    .line 185
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 8
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const v7, 0x7f0d02f3

    const v6, 0x7f0d02f2

    const v5, 0x7f0d02f1

    .line 392
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 393
    const v4, 0x7f100008

    invoke-virtual {p2, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 395
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 396
    .local v0, addPrinters:Landroid/view/MenuItem;
    iget-boolean v4, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mServiceEnabled:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mAddPrintersTitle:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mAddPrintersIntent:Landroid/content/Intent;

    if-eqz v4, :cond_0

    .line 398
    iget-object v4, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mAddPrintersIntent:Landroid/content/Intent;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 403
    :goto_0
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 404
    .local v3, settings:Landroid/view/MenuItem;
    iget-boolean v4, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mServiceEnabled:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mSettingsTitle:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mSettingsIntent:Landroid/content/Intent;

    if-eqz v4, :cond_1

    .line 406
    iget-object v4, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mSettingsIntent:Landroid/content/Intent;

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 411
    :goto_1
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 412
    .local v1, searchItem:Landroid/view/MenuItem;
    iget-boolean v4, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mServiceEnabled:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

    invoke-virtual {v4}, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->getUnfilteredCount()I

    move-result v4

    if-lez v4, :cond_2

    .line 413
    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SearchView;

    .line 414
    .local v2, searchView:Landroid/widget/SearchView;
    new-instance v4, Lcom/android/settings/print/PrintServiceSettingsFragment$5;

    invoke-direct {v4, p0}, Lcom/android/settings/print/PrintServiceSettingsFragment$5;-><init>(Lcom/android/settings/print/PrintServiceSettingsFragment;)V

    invoke-virtual {v2, v4}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 426
    new-instance v4, Lcom/android/settings/print/PrintServiceSettingsFragment$6;

    invoke-direct {v4, p0}, Lcom/android/settings/print/PrintServiceSettingsFragment$6;-><init>(Lcom/android/settings/print/PrintServiceSettingsFragment;)V

    invoke-virtual {v2, v4}, Landroid/widget/SearchView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 447
    .end local v2           #searchView:Landroid/widget/SearchView;
    :goto_2
    return-void

    .line 400
    .end local v1           #searchItem:Landroid/view/MenuItem;
    .end local v3           #settings:Landroid/view/MenuItem;
    :cond_0
    invoke-interface {p1, v6}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_0

    .line 408
    .restart local v3       #settings:Landroid/view/MenuItem;
    :cond_1
    invoke-interface {p1, v7}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_1

    .line 445
    .restart local v1       #searchItem:Landroid/view/MenuItem;
    :cond_2
    invoke-interface {p1, v5}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_2
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 166
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mToggleSwitch:Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;

    invoke-virtual {v0, v1}, Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 167
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 168
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mSettingsContentObserver:Lcom/android/settings/print/PrintServiceSettingsFragment$SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/print/PrintServiceSettingsFragment$SettingsContentObserver;->unregister(Landroid/content/ContentResolver;)V

    .line 150
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mAnnounceFilterResult:Lcom/android/settings/print/PrintServiceSettingsFragment$AnnounceFilterResult;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mAnnounceFilterResult:Lcom/android/settings/print/PrintServiceSettingsFragment$AnnounceFilterResult;

    invoke-virtual {v0}, Lcom/android/settings/print/PrintServiceSettingsFragment$AnnounceFilterResult;->remove()V

    .line 153
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 154
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 141
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 142
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment;->mSettingsContentObserver:Lcom/android/settings/print/PrintServiceSettingsFragment$SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/print/PrintServiceSettingsFragment$SettingsContentObserver;->register(Landroid/content/ContentResolver;)V

    .line 143
    invoke-direct {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->updateEmptyView()V

    .line 144
    invoke-direct {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->updateUiForServiceState()V

    .line 145
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 158
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 159
    invoke-direct {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->initComponents()V

    .line 160
    invoke-direct {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->updateUiForArguments()V

    .line 161
    return-void
.end method
