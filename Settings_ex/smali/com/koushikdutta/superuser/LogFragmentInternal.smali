.class public Lcom/koushikdutta/superuser/LogFragmentInternal;
.super Lcom/koushikdutta/widgets/BetterListFragmentInternal;
.source "LogFragmentInternal.java"


# instance fields
.field mListContentId:I

.field up:Lcom/koushikdutta/superuser/db/UidPolicy;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/widgets/FragmentInterfaceWrapper;)V
    .locals 0
    .parameter "fragment"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/koushikdutta/widgets/BetterListFragmentInternal;-><init>(Lcom/koushikdutta/widgets/FragmentInterfaceWrapper;)V

    .line 47
    return-void
.end method


# virtual methods
.method public getListContentId()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/koushikdutta/superuser/LogFragmentInternal;->mListContentId:I

    return v0
.end method

.method protected getListItemResource()I
    .locals 1

    .prologue
    .line 87
    const v0, 0x7f040061

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/view/View;)V
    .locals 25
    .parameter "savedInstanceState"
    .parameter "view"

    .prologue
    .line 92
    invoke-super/range {p0 .. p2}, Lcom/koushikdutta/widgets/BetterListFragmentInternal;->onCreate(Landroid/os/Bundle;Landroid/view/View;)V

    .line 94
    invoke-virtual/range {p0 .. p0}, Lcom/koushikdutta/superuser/LogFragmentInternal;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 95
    .local v16, inflater:Landroid/view/LayoutInflater;
    invoke-virtual/range {p0 .. p0}, Lcom/koushikdutta/superuser/LogFragmentInternal;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const v3, 0x7f04007e

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 97
    invoke-virtual/range {p0 .. p0}, Lcom/koushikdutta/superuser/LogFragmentInternal;->getFragment()Lcom/koushikdutta/widgets/FragmentInterfaceWrapper;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/koushikdutta/widgets/FragmentInterfaceWrapper;->setHasOptionsMenu(Z)V

    .line 99
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/koushikdutta/superuser/LogFragmentInternal;->up:Lcom/koushikdutta/superuser/db/UidPolicy;

    if-nez v2, :cond_0

    .line 100
    invoke-virtual/range {p0 .. p0}, Lcom/koushikdutta/superuser/LogFragmentInternal;->getFragment()Lcom/koushikdutta/widgets/FragmentInterfaceWrapper;

    move-result-object v2

    invoke-interface {v2}, Lcom/koushikdutta/widgets/FragmentInterfaceWrapper;->getArguments()Landroid/os/Bundle;

    move-result-object v10

    .line 101
    .local v10, bundle:Landroid/os/Bundle;
    if-eqz v10, :cond_0

    .line 102
    const-string v2, "command"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 103
    .local v11, command:Ljava/lang/String;
    const-string v2, "uid"

    const/4 v3, -0x1

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v23

    .line 104
    .local v23, uid:I
    const-string v2, "desiredUid"

    const/4 v3, -0x1

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 105
    .local v13, desiredUid:I
    const/4 v2, -0x1

    move/from16 v0, v23

    if-eq v0, v2, :cond_0

    const/4 v2, -0x1

    if-eq v13, v2, :cond_0

    .line 106
    invoke-virtual/range {p0 .. p0}, Lcom/koushikdutta/superuser/LogFragmentInternal;->getContext()Landroid/content/Context;

    move-result-object v2

    move/from16 v0, v23

    invoke-static {v2, v0, v13, v11}, Lcom/koushikdutta/superuser/db/SuDatabaseHelper;->get(Landroid/content/Context;IILjava/lang/String;)Lcom/koushikdutta/superuser/db/UidPolicy;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/koushikdutta/superuser/LogFragmentInternal;->up:Lcom/koushikdutta/superuser/db/UidPolicy;

    .line 112
    .end local v10           #bundle:Landroid/os/Bundle;
    .end local v11           #command:Ljava/lang/String;
    .end local v13           #desiredUid:I
    .end local v23           #uid:I
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/koushikdutta/superuser/LogFragmentInternal;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v12

    .line 113
    .local v12, day:Ljava/text/DateFormat;
    invoke-virtual/range {p0 .. p0}, Lcom/koushikdutta/superuser/LogFragmentInternal;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v22

    .line 114
    .local v22, time:Ljava/text/DateFormat;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/koushikdutta/superuser/LogFragmentInternal;->up:Lcom/koushikdutta/superuser/db/UidPolicy;

    if-eqz v2, :cond_5

    .line 115
    const v2, 0x7f0d0117

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    .line 116
    .local v15, icon:Landroid/widget/ImageView;
    invoke-virtual/range {p0 .. p0}, Lcom/koushikdutta/superuser/LogFragmentInternal;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/koushikdutta/superuser/LogFragmentInternal;->up:Lcom/koushikdutta/superuser/db/UidPolicy;

    iget-object v3, v3, Lcom/koushikdutta/superuser/db/UidPolicy;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/koushikdutta/superuser/Helper;->loadPackageIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 117
    const v2, 0x7f0d002f

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 118
    .local v20, name:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/koushikdutta/superuser/LogFragmentInternal;->up:Lcom/koushikdutta/superuser/db/UidPolicy;

    iget-object v2, v2, Lcom/koushikdutta/superuser/db/UidPolicy;->name:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    const v2, 0x7f0d000d

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/koushikdutta/superuser/LogFragmentInternal;->up:Lcom/koushikdutta/superuser/db/UidPolicy;

    iget v3, v3, Lcom/koushikdutta/superuser/db/UidPolicy;->desiredUid:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    const v2, 0x7f0d000e

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/koushikdutta/superuser/LogFragmentInternal;->up:Lcom/koushikdutta/superuser/db/UidPolicy;

    iget-object v3, v3, Lcom/koushikdutta/superuser/db/UidPolicy;->command:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    const v3, 0x7f08003e

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/koushikdutta/superuser/LogFragmentInternal;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/koushikdutta/superuser/LogFragmentInternal;->up:Lcom/koushikdutta/superuser/db/UidPolicy;

    iget-object v9, v2, Lcom/koushikdutta/superuser/db/UidPolicy;->username:Ljava/lang/String;

    .line 123
    .local v9, app:Ljava/lang/String;
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 124
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/koushikdutta/superuser/LogFragmentInternal;->up:Lcom/koushikdutta/superuser/db/UidPolicy;

    iget v2, v2, Lcom/koushikdutta/superuser/db/UidPolicy;->uid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 125
    :cond_2
    const v2, 0x7f0d000b

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    const v2, 0x7f0d000c

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/koushikdutta/superuser/LogFragmentInternal;->up:Lcom/koushikdutta/superuser/db/UidPolicy;

    iget-object v3, v3, Lcom/koushikdutta/superuser/db/UidPolicy;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/koushikdutta/superuser/LogFragmentInternal;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelector(I)V

    .line 130
    invoke-virtual/range {p0 .. p0}, Lcom/koushikdutta/superuser/LogFragmentInternal;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/koushikdutta/superuser/LogFragmentInternal;->up:Lcom/koushikdutta/superuser/db/UidPolicy;

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Lcom/koushikdutta/superuser/db/SuperuserDatabaseHelper;->getLogs(Landroid/content/Context;Lcom/koushikdutta/superuser/db/UidPolicy;I)Ljava/util/ArrayList;

    move-result-object v19

    .line 138
    .end local v9           #app:Ljava/lang/String;
    .end local v15           #icon:Landroid/widget/ImageView;
    .end local v20           #name:Landroid/widget/TextView;
    .local v19, logs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/koushikdutta/superuser/db/LogEntry;>;"
    :goto_1
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/koushikdutta/superuser/db/LogEntry;

    .line 139
    .local v17, log:Lcom/koushikdutta/superuser/db/LogEntry;
    invoke-virtual/range {v17 .. v17}, Lcom/koushikdutta/superuser/db/LogEntry;->getDate()Ljava/util/Date;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    .line 140
    .local v8, date:Ljava/lang/String;
    move-object v5, v8

    .line 141
    .local v5, title:Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Lcom/koushikdutta/superuser/db/LogEntry;->getActionResource()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/koushikdutta/superuser/LogFragmentInternal;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 142
    .local v6, summary:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/koushikdutta/superuser/LogFragmentInternal;->up:Lcom/koushikdutta/superuser/db/UidPolicy;

    if-nez v2, :cond_3

    .line 143
    invoke-virtual/range {v17 .. v17}, Lcom/koushikdutta/superuser/db/LogEntry;->getName()Ljava/lang/String;

    move-result-object v5

    .line 145
    :cond_3
    invoke-virtual/range {v17 .. v17}, Lcom/koushikdutta/superuser/db/LogEntry;->getDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v24

    new-instance v2, Lcom/koushikdutta/superuser/LogFragmentInternal$2;

    const/4 v7, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    invoke-direct/range {v2 .. v8}, Lcom/koushikdutta/superuser/LogFragmentInternal$2;-><init>(Lcom/koushikdutta/superuser/LogFragmentInternal;Lcom/koushikdutta/widgets/BetterListFragmentInternal;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/superuser/LogFragmentInternal;->addItem(Ljava/lang/String;Lcom/koushikdutta/widgets/ListItem;)Lcom/koushikdutta/widgets/ListItem;

    goto :goto_2

    .line 121
    .end local v5           #title:Ljava/lang/String;
    .end local v6           #summary:Ljava/lang/String;
    .end local v8           #date:Ljava/lang/String;
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v17           #log:Lcom/koushikdutta/superuser/db/LogEntry;
    .end local v19           #logs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/koushikdutta/superuser/db/LogEntry;>;"
    .restart local v15       #icon:Landroid/widget/ImageView;
    .restart local v20       #name:Landroid/widget/TextView;
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/koushikdutta/superuser/LogFragmentInternal;->up:Lcom/koushikdutta/superuser/db/UidPolicy;

    iget-object v3, v3, Lcom/koushikdutta/superuser/db/UidPolicy;->command:Ljava/lang/String;

    goto/16 :goto_0

    .line 133
    .end local v15           #icon:Landroid/widget/ImageView;
    .end local v20           #name:Landroid/widget/TextView;
    :cond_5
    const v2, 0x7f080013

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/koushikdutta/superuser/LogFragmentInternal;->setEmpty(I)V

    .line 134
    const v2, 0x7f0d0152

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 135
    invoke-virtual/range {p0 .. p0}, Lcom/koushikdutta/superuser/LogFragmentInternal;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/koushikdutta/superuser/db/SuperuserDatabaseHelper;->getLogs(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v19

    .restart local v19       #logs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/koushikdutta/superuser/db/LogEntry;>;"
    goto :goto_1

    .line 157
    .restart local v14       #i$:Ljava/util/Iterator;
    :cond_6
    const v2, 0x7f0d011b

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/CompoundButton;

    .line 158
    .local v18, logging:Landroid/widget/CompoundButton;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/koushikdutta/superuser/LogFragmentInternal;->up:Lcom/koushikdutta/superuser/db/UidPolicy;

    if-nez v2, :cond_7

    .line 159
    invoke-virtual/range {p0 .. p0}, Lcom/koushikdutta/superuser/LogFragmentInternal;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/koushikdutta/superuser/util/Settings;->getLogging(Landroid/content/Context;)Z

    move-result v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 164
    :goto_3
    new-instance v2, Lcom/koushikdutta/superuser/LogFragmentInternal$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/koushikdutta/superuser/LogFragmentInternal$3;-><init>(Lcom/koushikdutta/superuser/LogFragmentInternal;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 177
    const v2, 0x7f0d013d

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/CompoundButton;

    .line 178
    .local v21, notification:Landroid/widget/CompoundButton;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/koushikdutta/superuser/LogFragmentInternal;->up:Lcom/koushikdutta/superuser/db/UidPolicy;

    if-nez v2, :cond_8

    .line 179
    const v2, 0x7f0d0153

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 184
    :goto_4
    new-instance v2, Lcom/koushikdutta/superuser/LogFragmentInternal$4;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/koushikdutta/superuser/LogFragmentInternal$4;-><init>(Lcom/koushikdutta/superuser/LogFragmentInternal;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 195
    return-void

    .line 162
    .end local v21           #notification:Landroid/widget/CompoundButton;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/koushikdutta/superuser/LogFragmentInternal;->up:Lcom/koushikdutta/superuser/db/UidPolicy;

    iget-boolean v2, v2, Lcom/koushikdutta/superuser/db/UidPolicy;->logging:Z

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_3

    .line 182
    .restart local v21       #notification:Landroid/widget/CompoundButton;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/koushikdutta/superuser/LogFragmentInternal;->up:Lcom/koushikdutta/superuser/db/UidPolicy;

    iget-boolean v2, v2, Lcom/koushikdutta/superuser/db/UidPolicy;->notification:Z

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_4
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 70
    const v1, 0x7f100007

    invoke-virtual {p2, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 71
    const v1, 0x7f0d02f0

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 72
    .local v0, delete:Landroid/view/MenuItem;
    new-instance v1, Lcom/koushikdutta/superuser/LogFragmentInternal$1;

    invoke-direct {v1, p0}, Lcom/koushikdutta/superuser/LogFragmentInternal$1;-><init>(Lcom/koushikdutta/superuser/LogFragmentInternal;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 83
    return-void
.end method

.method onDelete()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public setListContentId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 57
    iput p1, p0, Lcom/koushikdutta/superuser/LogFragmentInternal;->mListContentId:I

    .line 58
    return-void
.end method

.method public setUidPolicy(Lcom/koushikdutta/superuser/db/UidPolicy;)Lcom/koushikdutta/superuser/LogFragmentInternal;
    .locals 0
    .parameter "up"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/koushikdutta/superuser/LogFragmentInternal;->up:Lcom/koushikdutta/superuser/db/UidPolicy;

    .line 52
    return-object p0
.end method
