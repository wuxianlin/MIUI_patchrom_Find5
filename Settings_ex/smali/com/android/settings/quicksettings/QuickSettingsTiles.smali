.class public Lcom/android/settings/quicksettings/QuickSettingsTiles;
.super Landroid/app/Fragment;
.source "QuickSettingsTiles.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/quicksettings/QuickSettingsTiles$TileAdapter;
    }
.end annotation


# instance fields
.field private mConfigRibbon:Z

.field private mContainer:Landroid/view/ViewGroup;

.field private mDragView:Lcom/android/settings/quicksettings/DraggableGridView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mSystemUiResources:Landroid/content/res/Resources;

.field private mTileAdapter:Lcom/android/settings/quicksettings/QuickSettingsTiles$TileAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 287
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/quicksettings/QuickSettingsTiles;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/settings/quicksettings/QuickSettingsTiles;->mConfigRibbon:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/quicksettings/QuickSettingsTiles;)Lcom/android/settings/quicksettings/DraggableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/quicksettings/QuickSettingsTiles;->mDragView:Lcom/android/settings/quicksettings/DraggableGridView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/quicksettings/QuickSettingsTiles;)Lcom/android/settings/quicksettings/QuickSettingsTiles$TileAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/quicksettings/QuickSettingsTiles;->mTileAdapter:Lcom/android/settings/quicksettings/QuickSettingsTiles$TileAdapter;

    return-object v0
.end method

.method private getItemFromSystemUi(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "name"
    .parameter "type"

    .prologue
    .line 120
    iget-object v1, p0, Lcom/android/settings/quicksettings/QuickSettingsTiles;->mSystemUiResources:Landroid/content/res/Resources;

    if-eqz v1, :cond_1

    .line 121
    iget-object v1, p0, Lcom/android/settings/quicksettings/QuickSettingsTiles;->mSystemUiResources:Landroid/content/res/Resources;

    const-string v2, "com.android.systemui"

    invoke-virtual {v1, p1, p2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 122
    .local v0, resId:I
    if-lez v0, :cond_1

    .line 124
    :try_start_0
    const-string v1, "dimen"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/android/settings/quicksettings/QuickSettingsTiles;->mSystemUiResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 133
    .end local v0           #resId:I
    :goto_0
    return v1

    .line 127
    .restart local v0       #resId:I
    :cond_0
    iget-object v1, p0, Lcom/android/settings/quicksettings/QuickSettingsTiles;->mSystemUiResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 129
    :catch_0
    move-exception v1

    .line 133
    .end local v0           #resId:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private resetTiles()V
    .locals 3

    .prologue
    .line 274
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/quicksettings/QuickSettingsTiles;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 275
    .local v0, alert:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0801b9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 276
    const v1, 0x7f0801ba

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 277
    const v1, 0x7f0801f0

    new-instance v2, Lcom/android/settings/quicksettings/QuickSettingsTiles$3;

    invoke-direct {v2, p0}, Lcom/android/settings/quicksettings/QuickSettingsTiles$3;-><init>(Lcom/android/settings/quicksettings/QuickSettingsTiles;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 283
    const v1, 0x7f0804f7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 284
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 285
    return-void
.end method


# virtual methods
.method addTile(ILjava/lang/String;IZ)V
    .locals 12
    .parameter "titleId"
    .parameter "iconSysId"
    .parameter "iconRegId"
    .parameter "newTile"

    .prologue
    .line 157
    const/4 v6, 0x0

    .line 158
    .local v6, tileView:Landroid/view/View;
    if-eqz p3, :cond_1

    .line 159
    iget-object v8, p0, Lcom/android/settings/quicksettings/QuickSettingsTiles;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f0400b4

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 160
    const v8, 0x7f0d01b8

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 161
    .local v4, name:Landroid/widget/TextView;
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(I)V

    .line 162
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v4, v8, p3, v9, v10}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 189
    .end local v4           #name:Landroid/widget/TextView;
    :cond_0
    :goto_0
    iget-object v9, p0, Lcom/android/settings/quicksettings/QuickSettingsTiles;->mDragView:Lcom/android/settings/quicksettings/DraggableGridView;

    if-eqz p4, :cond_4

    iget-object v8, p0, Lcom/android/settings/quicksettings/QuickSettingsTiles;->mDragView:Lcom/android/settings/quicksettings/DraggableGridView;

    invoke-virtual {v8}, Lcom/android/settings/quicksettings/DraggableGridView;->getChildCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    :goto_1
    invoke-virtual {v9, v6, v8}, Lcom/android/settings/quicksettings/DraggableGridView;->addView(Landroid/view/View;I)V

    .line 190
    return-void

    .line 164
    :cond_1
    sget-object v8, Lcom/android/settings/quicksettings/QuickSettingsUtil;->TILES:Ljava/util/Map;

    const-string v9, "toggleUser"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;

    invoke-virtual {v8}, Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;->getTitleResId()I

    move-result v8

    if-ne p1, v8, :cond_2

    const/4 v2, 0x1

    .line 165
    .local v2, isUserTile:Z
    :goto_2
    iget-object v8, p0, Lcom/android/settings/quicksettings/QuickSettingsTiles;->mSystemUiResources:Landroid/content/res/Resources;

    if-eqz v8, :cond_0

    if-eqz p2, :cond_0

    .line 166
    iget-object v8, p0, Lcom/android/settings/quicksettings/QuickSettingsTiles;->mSystemUiResources:Landroid/content/res/Resources;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, p2, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 167
    .local v5, resId:I
    if-lez v5, :cond_0

    .line 169
    :try_start_0
    iget-object v8, p0, Lcom/android/settings/quicksettings/QuickSettingsTiles;->mSystemUiResources:Landroid/content/res/Resources;

    invoke-virtual {v8, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 170
    .local v0, d:Landroid/graphics/drawable/Drawable;
    const/4 v6, 0x0

    .line 171
    if-eqz v2, :cond_3

    .line 172
    iget-object v8, p0, Lcom/android/settings/quicksettings/QuickSettingsTiles;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f0400b5

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 173
    const v8, 0x7f0d01b9

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 174
    .local v3, iv:Landroid/widget/ImageView;
    const v8, 0x7f0d01b8

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 175
    .local v7, tv:Landroid/widget/TextView;
    invoke-virtual {v7, p1}, Landroid/widget/TextView;->setText(I)V

    .line 176
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 183
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    .end local v3           #iv:Landroid/widget/ImageView;
    .end local v7           #tv:Landroid/widget/TextView;
    :catch_0
    move-exception v1

    .line 184
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 164
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #isUserTile:Z
    .end local v5           #resId:I
    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 178
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    .restart local v2       #isUserTile:Z
    .restart local v5       #resId:I
    :cond_3
    :try_start_1
    iget-object v8, p0, Lcom/android/settings/quicksettings/QuickSettingsTiles;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f0400b4

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 179
    const v8, 0x7f0d01b8

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 180
    .restart local v4       #name:Landroid/widget/TextView;
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(I)V

    .line 181
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v4, v8, v0, v9, v10}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 189
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    .end local v2           #isUserTile:Z
    .end local v4           #name:Landroid/widget/TextView;
    .end local v5           #resId:I
    :cond_4
    iget-object v8, p0, Lcom/android/settings/quicksettings/QuickSettingsTiles;->mDragView:Lcom/android/settings/quicksettings/DraggableGridView;

    invoke-virtual {v8}, Lcom/android/settings/quicksettings/DraggableGridView;->getChildCount()I

    move-result v8

    goto :goto_1
.end method

.method genTiles()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 137
    iget-object v4, p0, Lcom/android/settings/quicksettings/QuickSettingsTiles;->mDragView:Lcom/android/settings/quicksettings/DraggableGridView;

    invoke-virtual {v4}, Lcom/android/settings/quicksettings/DraggableGridView;->removeAllViews()V

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/quicksettings/QuickSettingsTiles;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings/quicksettings/QuickSettingsTiles;->mConfigRibbon:Z

    invoke-static {v4, v5}, Lcom/android/settings/quicksettings/QuickSettingsUtil;->getCurrentTiles(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/quicksettings/QuickSettingsUtil;->getTileListFromString(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 140
    .local v3, tiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 141
    .local v2, tileindex:Ljava/lang/String;
    sget-object v4, Lcom/android/settings/quicksettings/QuickSettingsUtil;->TILES:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;

    .line 142
    .local v1, tile:Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;
    if-eqz v1, :cond_0

    .line 143
    invoke-virtual {v1}, Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;->getTitleResId()I

    move-result v4

    invoke-virtual {v1}, Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;->getIcon()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5, v7, v7}, Lcom/android/settings/quicksettings/QuickSettingsTiles;->addTile(ILjava/lang/String;IZ)V

    goto :goto_0

    .line 146
    .end local v1           #tile:Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;
    .end local v2           #tileindex:Ljava/lang/String;
    :cond_1
    const v4, 0x7f0800be

    const/4 v5, 0x0

    const v6, 0x7f02007e

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/android/settings/quicksettings/QuickSettingsTiles;->addTile(ILjava/lang/String;IZ)V

    .line 147
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 194
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/quicksettings/QuickSettingsTiles;->genTiles()V

    .line 196
    iget-object v0, p0, Lcom/android/settings/quicksettings/QuickSettingsTiles;->mDragView:Lcom/android/settings/quicksettings/DraggableGridView;

    new-instance v1, Lcom/android/settings/quicksettings/QuickSettingsTiles$1;

    invoke-direct {v1, p0}, Lcom/android/settings/quicksettings/QuickSettingsTiles$1;-><init>(Lcom/android/settings/quicksettings/QuickSettingsTiles;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/quicksettings/DraggableGridView;->setOnRearrangeListener(Lcom/android/settings/quicksettings/DraggableGridView$OnRearrangeListener;)V

    .line 215
    iget-object v0, p0, Lcom/android/settings/quicksettings/QuickSettingsTiles;->mDragView:Lcom/android/settings/quicksettings/DraggableGridView;

    new-instance v1, Lcom/android/settings/quicksettings/QuickSettingsTiles$2;

    invoke-direct {v1, p0}, Lcom/android/settings/quicksettings/QuickSettingsTiles$2;-><init>(Lcom/android/settings/quicksettings/QuickSettingsTiles;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/quicksettings/DraggableGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 241
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/quicksettings/QuickSettingsTiles;->setHasOptionsMenu(Z)V

    .line 242
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v2, 0x0

    .line 255
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

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 260
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 13
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 69
    new-instance v10, Lcom/android/settings/quicksettings/DraggableGridView;

    invoke-virtual {p0}, Lcom/android/settings/quicksettings/QuickSettingsTiles;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/settings/quicksettings/DraggableGridView;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/android/settings/quicksettings/QuickSettingsTiles;->mDragView:Lcom/android/settings/quicksettings/DraggableGridView;

    .line 70
    iput-object p2, p0, Lcom/android/settings/quicksettings/QuickSettingsTiles;->mContainer:Landroid/view/ViewGroup;

    .line 71
    iget-object v10, p0, Lcom/android/settings/quicksettings/QuickSettingsTiles;->mContainer:Landroid/view/ViewGroup;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 72
    iget-object v10, p0, Lcom/android/settings/quicksettings/QuickSettingsTiles;->mContainer:Landroid/view/ViewGroup;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 73
    iput-object p1, p0, Lcom/android/settings/quicksettings/QuickSettingsTiles;->mInflater:Landroid/view/LayoutInflater;

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/quicksettings/QuickSettingsTiles;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/quicksettings/QuickSettingsUtil;->removeUnsupportedTiles(Landroid/content/Context;)V

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/quicksettings/QuickSettingsTiles;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 79
    .local v0, args:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 80
    const-string v10, "config_ribbon"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/settings/quicksettings/QuickSettingsTiles;->mConfigRibbon:Z

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/quicksettings/QuickSettingsTiles;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 84
    .local v8, pm:Landroid/content/pm/PackageManager;
    if-eqz v8, :cond_1

    .line 86
    :try_start_0
    const-string v10, "com.android.systemui"

    invoke-virtual {v8, v10}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/quicksettings/QuickSettingsTiles;->mSystemUiResources:Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :cond_1
    :goto_0
    const-string v10, "notification_panel_width"

    const-string v11, "dimen"

    invoke-direct {p0, v10, v11}, Lcom/android/settings/quicksettings/QuickSettingsTiles;->getItemFromSystemUi(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 92
    .local v6, panelWidth:I
    if-lez v6, :cond_2

    .line 93
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, 0x1

    invoke-direct {v7, v6, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 95
    .local v7, params:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v10, p0, Lcom/android/settings/quicksettings/QuickSettingsTiles;->mDragView:Lcom/android/settings/quicksettings/DraggableGridView;

    invoke-virtual {v10, v7}, Lcom/android/settings/quicksettings/DraggableGridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    .end local v7           #params:Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    const-string v10, "quick_settings_cell_height"

    const-string v11, "dimen"

    invoke-direct {p0, v10, v11}, Lcom/android/settings/quicksettings/QuickSettingsTiles;->getItemFromSystemUi(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 98
    .local v2, cellHeight:I
    if-eqz v2, :cond_3

    .line 99
    iget-object v10, p0, Lcom/android/settings/quicksettings/QuickSettingsTiles;->mDragView:Lcom/android/settings/quicksettings/DraggableGridView;

    invoke-virtual {v10, v2}, Lcom/android/settings/quicksettings/DraggableGridView;->setCellHeight(I)V

    .line 101
    :cond_3
    const-string v10, "quick_settings_cell_gap"

    const-string v11, "dimen"

    invoke-direct {p0, v10, v11}, Lcom/android/settings/quicksettings/QuickSettingsTiles;->getItemFromSystemUi(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 102
    .local v1, cellGap:I
    if-eqz v1, :cond_4

    .line 103
    iget-object v10, p0, Lcom/android/settings/quicksettings/QuickSettingsTiles;->mDragView:Lcom/android/settings/quicksettings/DraggableGridView;

    invoke-virtual {v10, v1}, Lcom/android/settings/quicksettings/DraggableGridView;->setCellGap(I)V

    .line 105
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/quicksettings/QuickSettingsTiles;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 106
    .local v9, resolver:Landroid/content/ContentResolver;
    const-string v10, "qs_small_icons"

    const/4 v11, 0x0

    const/4 v12, -0x2

    invoke-static {v9, v10, v11, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_7

    const/4 v5, 0x1

    .line 108
    .local v5, mSmallIcons:Z
    :goto_1
    const-string v10, "quick_settings_num_columns"

    const-string v11, "integer"

    invoke-direct {p0, v10, v11}, Lcom/android/settings/quicksettings/QuickSettingsTiles;->getItemFromSystemUi(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 109
    .local v3, columnCount:I
    if-eqz v5, :cond_5

    .line 110
    const-string v10, "quick_settings_num_columns_small"

    const-string v11, "integer"

    invoke-direct {p0, v10, v11}, Lcom/android/settings/quicksettings/QuickSettingsTiles;->getItemFromSystemUi(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 112
    :cond_5
    if-eqz v3, :cond_6

    .line 113
    iget-object v10, p0, Lcom/android/settings/quicksettings/QuickSettingsTiles;->mDragView:Lcom/android/settings/quicksettings/DraggableGridView;

    invoke-virtual {v10, v3}, Lcom/android/settings/quicksettings/DraggableGridView;->setColumnCount(I)V

    .line 115
    :cond_6
    new-instance v10, Lcom/android/settings/quicksettings/QuickSettingsTiles$TileAdapter;

    invoke-virtual {p0}, Lcom/android/settings/quicksettings/QuickSettingsTiles;->getActivity()Landroid/app/Activity;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/settings/quicksettings/QuickSettingsTiles;->mConfigRibbon:Z

    invoke-direct {v10, v11, v12}, Lcom/android/settings/quicksettings/QuickSettingsTiles$TileAdapter;-><init>(Landroid/content/Context;Z)V

    iput-object v10, p0, Lcom/android/settings/quicksettings/QuickSettingsTiles;->mTileAdapter:Lcom/android/settings/quicksettings/QuickSettingsTiles$TileAdapter;

    .line 116
    iget-object v10, p0, Lcom/android/settings/quicksettings/QuickSettingsTiles;->mDragView:Lcom/android/settings/quicksettings/DraggableGridView;

    return-object v10

    .line 87
    .end local v1           #cellGap:I
    .end local v2           #cellHeight:I
    .end local v3           #columnCount:I
    .end local v5           #mSmallIcons:Z
    .end local v6           #panelWidth:I
    .end local v9           #resolver:Landroid/content/ContentResolver;
    :catch_0
    move-exception v4

    .line 88
    .local v4, e:Ljava/lang/Exception;
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/settings/quicksettings/QuickSettingsTiles;->mSystemUiResources:Landroid/content/res/Resources;

    goto :goto_0

    .line 106
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v1       #cellGap:I
    .restart local v2       #cellHeight:I
    .restart local v6       #panelWidth:I
    .restart local v9       #resolver:Landroid/content/ContentResolver;
    :cond_7
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 264
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 269
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 266
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/quicksettings/QuickSettingsTiles;->resetTiles()V

    .line 267
    const/4 v0, 0x1

    goto :goto_0

    .line 264
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/16 v2, 0x14

    const/4 v1, 0x0

    .line 246
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 247
    invoke-virtual {p0}, Lcom/android/settings/quicksettings/QuickSettingsTiles;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isPhone(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/settings/quicksettings/QuickSettingsTiles;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v1, v2, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 250
    :cond_0
    return-void
.end method
