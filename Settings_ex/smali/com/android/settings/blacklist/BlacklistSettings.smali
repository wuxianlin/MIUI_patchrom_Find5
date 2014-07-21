.class public Lcom/android/settings/blacklist/BlacklistSettings;
.super Landroid/app/ListFragment;
.source "BlacklistSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/blacklist/BlacklistSettings$1;,
        Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter;
    }
.end annotation


# static fields
.field private static final BLACKLIST_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter;

.field private mCursor:Landroid/database/Cursor;

.field private mEmptyView:Landroid/widget/TextView;

.field private mEnabledSwitch:Landroid/widget/Switch;

.field private mLastEnabledState:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 67
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "phone"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "message"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/blacklist/BlacklistSettings;->BLACKLIST_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 209
    return-void
.end method

.method private showEntryEditDialog(J)V
    .locals 3
    .parameter "id"

    .prologue
    .line 185
    invoke-static {p1, p2}, Lcom/android/settings/blacklist/EntryEditDialogFragment;->newInstance(J)Lcom/android/settings/blacklist/EntryEditDialogFragment;

    move-result-object v0

    .line 186
    .local v0, fragment:Lcom/android/settings/blacklist/EntryEditDialogFragment;
    invoke-virtual {p0}, Lcom/android/settings/blacklist/BlacklistSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "blacklist_edit"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/blacklist/EntryEditDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method private updateEnabledState()V
    .locals 2

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/android/settings/blacklist/BlacklistSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/blacklist/BlacklistSettings;->mLastEnabledState:Z

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/blacklist/BlacklistSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 193
    iget-object v1, p0, Lcom/android/settings/blacklist/BlacklistSettings;->mEmptyView:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/android/settings/blacklist/BlacklistSettings;->mLastEnabledState:Z

    if-eqz v0, :cond_0

    const v0, 0x7f080266

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 196
    iget-object v1, p0, Lcom/android/settings/blacklist/BlacklistSettings;->mAdapter:Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter;

    iget-boolean v0, p0, Lcom/android/settings/blacklist/BlacklistSettings;->mLastEnabledState:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/blacklist/BlacklistSettings;->mCursor:Landroid/database/Cursor;

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 197
    return-void

    .line 193
    :cond_0
    const v0, 0x7f080267

    goto :goto_0

    .line 196
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 9
    .parameter "icicle"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 94
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 96
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/blacklist/BlacklistSettings;->setHasOptionsMenu(Z)V

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/blacklist/BlacklistSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 99
    .local v6, activity:Landroid/app/Activity;
    new-instance v0, Landroid/widget/Switch;

    invoke-direct {v0, v6}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/blacklist/BlacklistSettings;->mEnabledSwitch:Landroid/widget/Switch;

    .line 101
    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 103
    .local v8, padding:I
    iget-object v0, p0, Lcom/android/settings/blacklist/BlacklistSettings;->mEnabledSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2, v2, v8, v2}, Landroid/widget/Switch;->setPaddingRelative(IIII)V

    .line 104
    iget-object v0, p0, Lcom/android/settings/blacklist/BlacklistSettings;->mEnabledSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/blacklist/BlacklistSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Blacklist;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/settings/blacklist/BlacklistSettings;->BLACKLIST_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/blacklist/BlacklistSettings;->mCursor:Landroid/database/Cursor;

    .line 108
    new-instance v0, Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter;

    invoke-virtual {p0}, Lcom/android/settings/blacklist/BlacklistSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/settings/blacklist/BlacklistSettings;->mAdapter:Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter;

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/blacklist/BlacklistSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/blacklist/BlacklistSettings;->mEmptyView:Landroid/widget/TextView;

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/blacklist/BlacklistSettings;->getListView()Landroid/widget/ListView;

    move-result-object v7

    .line 113
    .local v7, listView:Landroid/widget/ListView;
    iget-object v0, p0, Lcom/android/settings/blacklist/BlacklistSettings;->mAdapter:Lcom/android/settings/blacklist/BlacklistSettings$BlacklistAdapter;

    invoke-virtual {v7, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 114
    iget-object v0, p0, Lcom/android/settings/blacklist/BlacklistSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 115
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/settings/blacklist/BlacklistSettings;->mEnabledSwitch:Landroid/widget/Switch;

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/blacklist/BlacklistSettings;->mLastEnabledState:Z

    if-eq p2, v0, :cond_0

    .line 202
    invoke-virtual {p0}, Lcom/android/settings/blacklist/BlacklistSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "phone_blacklist_enabled"

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 204
    iput-boolean p2, p0, Lcom/android/settings/blacklist/BlacklistSettings;->mLastEnabledState:Z

    .line 205
    invoke-direct {p0}, Lcom/android/settings/blacklist/BlacklistSettings;->updateEnabledState()V

    .line 207
    :cond_0
    return-void

    .line 202
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 119
    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 120
    const v0, 0x7f100003

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 121
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 88
    const v0, 0x109007f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 181
    invoke-direct {p0, p4, p5}, Lcom/android/settings/blacklist/BlacklistSettings;->showEntryEditDialog(J)V

    .line 182
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 132
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 146
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    .line 134
    :pswitch_0
    const-wide/16 v3, -0x1

    invoke-direct {p0, v3, v4}, Lcom/android/settings/blacklist/BlacklistSettings;->showEntryEditDialog(J)V

    goto :goto_0

    .line 137
    :pswitch_1
    new-instance v1, Lcom/android/settings/blacklist/PreferenceFragment;

    invoke-direct {v1}, Lcom/android/settings/blacklist/PreferenceFragment;-><init>()V

    .line 138
    .local v1, prefs:Lcom/android/settings/blacklist/PreferenceFragment;
    invoke-virtual {p0}, Lcom/android/settings/blacklist/BlacklistSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 139
    .local v0, ft:Landroid/app/FragmentTransaction;
    const/16 v3, 0x1003

    invoke-virtual {v0, v3}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 140
    const v3, 0x10202fb

    invoke-virtual {v0, v3, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 141
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 142
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d02e2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 125
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 126
    const v0, 0x7f0d02e2

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/blacklist/BlacklistSettings;->mLastEnabledState:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 127
    const v0, 0x7f0d02e3

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/blacklist/BlacklistSettings;->mLastEnabledState:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 128
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 171
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 173
    invoke-virtual {p0}, Lcom/android/settings/blacklist/BlacklistSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 174
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/telephony/util/BlacklistUtils;->isBlacklistEnabled(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/blacklist/BlacklistSettings;->mLastEnabledState:Z

    .line 175
    iget-object v1, p0, Lcom/android/settings/blacklist/BlacklistSettings;->mEnabledSwitch:Landroid/widget/Switch;

    iget-boolean v2, p0, Lcom/android/settings/blacklist/BlacklistSettings;->mLastEnabledState:Z

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 176
    invoke-direct {p0}, Lcom/android/settings/blacklist/BlacklistSettings;->updateEnabledState()V

    .line 177
    return-void
.end method

.method public onStart()V
    .locals 6

    .prologue
    const/16 v2, 0x10

    const/4 v5, -0x2

    .line 151
    invoke-super {p0}, Landroid/app/ListFragment;->onStart()V

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/blacklist/BlacklistSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 153
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 155
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/blacklist/BlacklistSettings;->mEnabledSwitch:Landroid/widget/Switch;

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const v4, 0x800015

    invoke-direct {v3, v5, v5, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 159
    return-void
.end method

.method public onStop()V
    .locals 4

    .prologue
    .line 163
    invoke-super {p0}, Landroid/app/ListFragment;->onStop()V

    .line 164
    invoke-virtual {p0}, Lcom/android/settings/blacklist/BlacklistSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 165
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 166
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 167
    return-void
.end method
