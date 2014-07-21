.class public Lcom/android/settings/cyanogenmod/LockscreenTargets;
.super Landroid/app/Fragment;
.source "LockscreenTargets.java"

# interfaces
.implements Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;
.implements Lcom/android/settings/cyanogenmod/IconPicker$OnIconPickListener;
.implements Lcom/android/settings/cyanogenmod/ShortcutPickHelper$OnPickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;
    }
.end annotation


# static fields
.field private static mEmptyLabel:Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mContainer:Landroid/view/ViewGroup;

.field private mDialogIcon:Landroid/widget/ImageButton;

.field private mDialogLabel:Landroid/widget/Button;

.field private mIconPicker:Lcom/android/settings/cyanogenmod/IconPicker;

.field private mMaxTargets:I

.field private mPicker:Lcom/android/settings/cyanogenmod/ShortcutPickHelper;

.field private mResources:Landroid/content/res/Resources;

.field private mTargetIndex:I

.field private mTargetOffset:I

.field private mTargetStore:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTemporaryImage:Ljava/io/File;

.field private mWaveView:Lcom/android/internal/widget/multiwaveview/GlowPadView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mTargetStore:Ljava/util/ArrayList;

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mTargetIndex:I

    .line 82
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/cyanogenmod/LockscreenTargets;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/settings/cyanogenmod/LockscreenTargets;->initializeView(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/cyanogenmod/LockscreenTargets;)Lcom/android/settings/cyanogenmod/IconPicker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mIconPicker:Lcom/android/settings/cyanogenmod/IconPicker;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/cyanogenmod/LockscreenTargets;)Lcom/android/settings/cyanogenmod/ShortcutPickHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mPicker:Lcom/android/settings/cyanogenmod/ShortcutPickHelper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/cyanogenmod/LockscreenTargets;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/cyanogenmod/LockscreenTargets;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mDialogIcon:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/cyanogenmod/LockscreenTargets;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/LockscreenTargets;->getPickedIconFromDialog()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/cyanogenmod/LockscreenTargets;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mTargetIndex:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/settings/cyanogenmod/LockscreenTargets;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mDialogLabel:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/cyanogenmod/LockscreenTargets;ILjava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 56
    invoke-direct/range {p0 .. p6}, Lcom/android/settings/cyanogenmod/LockscreenTargets;->setTarget(ILjava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mEmptyLabel:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/cyanogenmod/LockscreenTargets;)Ljava/io/File;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mTemporaryImage:Ljava/io/File;

    return-object v0
.end method

.method private createShortcutDialogView(I)Landroid/view/View;
    .locals 8
    .parameter "target"

    .prologue
    const/4 v7, 0x0

    const v6, 0x7f0d010d

    const v5, 0x7f0d0038

    .line 458
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mActivity:Landroid/app/Activity;

    const v4, 0x7f04005f

    invoke-static {v3, v4, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 459
    .local v2, view:Landroid/view/View;
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/android/settings/cyanogenmod/LockscreenTargets$3;

    invoke-direct {v4, p0}, Lcom/android/settings/cyanogenmod/LockscreenTargets$3;-><init>(Lcom/android/settings/cyanogenmod/LockscreenTargets;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 473
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/android/settings/cyanogenmod/LockscreenTargets$4;

    invoke-direct {v4, p0}, Lcom/android/settings/cyanogenmod/LockscreenTargets$4;-><init>(Lcom/android/settings/cyanogenmod/LockscreenTargets;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 484
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mDialogIcon:Landroid/widget/ImageButton;

    .line 485
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mDialogLabel:Landroid/widget/Button;

    .line 487
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mTargetStore:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;

    .line 488
    .local v1, item:Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;
    iget-object v3, v1, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->defaultIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v3}, Lcom/android/settings/cyanogenmod/LockscreenTargets;->setIconForDialog(Landroid/graphics/drawable/Drawable;)V

    .line 490
    new-instance v0, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;

    invoke-direct {v0, v7}, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;-><init>(Lcom/android/settings/cyanogenmod/LockscreenTargets$1;)V

    .line 491
    .local v0, icon:Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;
    iget-object v3, v1, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->iconType:Ljava/lang/String;

    iput-object v3, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->iconType:Ljava/lang/String;

    .line 492
    iget-object v3, v1, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->iconSource:Ljava/lang/String;

    iput-object v3, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->iconSource:Ljava/lang/String;

    .line 493
    iget-object v3, v1, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->packageName:Ljava/lang/String;

    iput-object v3, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->packageName:Ljava/lang/String;

    .line 494
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mDialogIcon:Landroid/widget/ImageButton;

    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 496
    iget-object v3, v1, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->uri:Ljava/lang/String;

    const-string v4, "empty"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 497
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mDialogLabel:Landroid/widget/Button;

    sget-object v4, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mEmptyLabel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 501
    :goto_0
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mDialogLabel:Landroid/widget/Button;

    iget-object v4, v1, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->uri:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 503
    return-object v2

    .line 499
    :cond_0
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mDialogLabel:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mPicker:Lcom/android/settings/cyanogenmod/ShortcutPickHelper;

    iget-object v5, v1, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->uri:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->getFriendlyNameForUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private getPickedIconFromDialog()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mDialogIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private initializeView(Ljava/lang/String;)V
    .locals 24
    .parameter "input"

    .prologue
    .line 156
    if-nez p1, :cond_0

    .line 157
    const-string p1, "empty"

    .line 160
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mTargetStore:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->clear()V

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mActivity:Landroid/app/Activity;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "ic_lockscreen_target_activated"

    const/16 v23, 0x0

    invoke-static/range {v20 .. v23}, Lcom/android/internal/util/cm/LockscreenTargetUtils;->getDrawableFromResources(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 164
    .local v5, activeBack:Landroid/graphics/drawable/Drawable;
    const-string v20, "\\|"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 166
    .local v16, targetStore:[Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mTargetOffset:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v10, v0, :cond_1

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mTargetStore:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    new-instance v21, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;

    const/16 v22, 0x0

    invoke-direct/range {v21 .. v22}, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;-><init>(Lcom/android/settings/cyanogenmod/LockscreenTargets$1;)V

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 171
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mActivity:Landroid/app/Activity;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "ic_lockscreen_unlock_normal"

    const/16 v23, 0x0

    invoke-static/range {v20 .. v23}, Lcom/android/internal/util/cm/LockscreenTargetUtils;->getDrawableFromResources(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    .line 173
    .local v18, unlockFront:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mActivity:Landroid/app/Activity;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "ic_lockscreen_unlock_activated"

    const/16 v23, 0x0

    invoke-static/range {v20 .. v23}, Lcom/android/internal/util/cm/LockscreenTargetUtils;->getDrawableFromResources(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    .line 175
    .local v17, unlockBack:Landroid/graphics/drawable/Drawable;
    new-instance v19, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;

    const/16 v20, 0x0

    invoke-direct/range {v19 .. v20}, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;-><init>(Lcom/android/settings/cyanogenmod/LockscreenTargets$1;)V

    .line 176
    .local v19, unlockTarget:Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mActivity:Landroid/app/Activity;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/util/cm/LockscreenTargetUtils;->getLayeredDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IZ)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->icon:Landroid/graphics/drawable/StateListDrawable;

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mTargetStore:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    const/4 v10, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mTargetOffset:I

    move/from16 v20, v0

    rsub-int/lit8 v20, v20, 0x8

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    if-ge v10, v0, :cond_9

    .line 181
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mMaxTargets:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v10, v0, :cond_2

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mTargetStore:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    new-instance v21, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;

    const/16 v22, 0x0

    invoke-direct/range {v21 .. v22}, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;-><init>(Lcom/android/settings/cyanogenmod/LockscreenTargets$1;)V

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 186
    :cond_2
    const/4 v8, 0x0

    .line 187
    .local v8, front:Landroid/graphics/drawable/Drawable;
    move-object v6, v5

    .line 188
    .local v6, back:Landroid/graphics/drawable/Drawable;
    const/4 v9, 0x0

    .line 189
    .local v9, frontBlank:Z
    new-instance v12, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;

    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-direct {v12, v0}, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;-><init>(Lcom/android/settings/cyanogenmod/LockscreenTargets$1;)V

    .line 190
    .local v12, info:Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v10, v0, :cond_7

    aget-object v20, v16, v10

    :goto_3
    move-object/from16 v0, v20

    iput-object v0, v12, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->uri:Ljava/lang/String;

    .line 192
    iget-object v0, v12, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->uri:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "empty"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_4

    .line 194
    :try_start_0
    iget-object v0, v12, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->uri:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v14

    .line 195
    .local v14, intent:Landroid/content/Intent;
    const-string v20, "icon_file"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 196
    const-string v20, "icon_file"

    move-object/from16 v0, v20

    iput-object v0, v12, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->iconType:Ljava/lang/String;

    .line 197
    const-string v20, "icon_file"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v12, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->iconSource:Ljava/lang/String;

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mActivity:Landroid/app/Activity;

    move-object/from16 v20, v0

    iget-object v0, v12, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->iconSource:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v20 .. v21}, Lcom/android/internal/util/cm/LockscreenTargetUtils;->getDrawableFromFile(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 213
    :cond_3
    :goto_4
    if-nez v8, :cond_4

    .line 214
    const/16 v20, 0x0

    move-object/from16 v0, v20

    iput-object v0, v12, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->iconType:Ljava/lang/String;

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mActivity:Landroid/app/Activity;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v14}, Lcom/android/internal/util/cm/LockscreenTargetUtils;->getDrawableFromIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 222
    .end local v14           #intent:Landroid/content/Intent;
    :cond_4
    :goto_5
    if-nez v8, :cond_5

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mResources:Landroid/content/res/Resources;

    move-object/from16 v20, v0

    const v21, 0x7f020072

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 225
    :cond_5
    if-nez v6, :cond_6

    .line 226
    move-object v6, v5

    .line 229
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mActivity:Landroid/app/Activity;

    move-object/from16 v20, v0

    iget-object v0, v12, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->iconType:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v20 .. v21}, Lcom/android/internal/util/cm/LockscreenTargetUtils;->getInsetForIconType(Landroid/content/Context;Ljava/lang/String;)I

    move-result v13

    .line 230
    .local v13, inset:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mActivity:Landroid/app/Activity;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v6, v8, v13, v9}, Lcom/android/internal/util/cm/LockscreenTargetUtils;->getLayeredDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IZ)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v12, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->icon:Landroid/graphics/drawable/StateListDrawable;

    .line 232
    iput-object v8, v12, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->defaultIcon:Landroid/graphics/drawable/Drawable;

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mTargetStore:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 190
    .end local v13           #inset:I
    :cond_7
    const-string v20, "empty"

    goto/16 :goto_3

    .line 200
    .restart local v14       #intent:Landroid/content/Intent;
    :cond_8
    :try_start_1
    const-string v20, "icon_resource"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 201
    const-string v20, "icon_resource"

    move-object/from16 v0, v20

    iput-object v0, v12, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->iconType:Ljava/lang/String;

    .line 202
    const-string v20, "icon_resource"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v12, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->iconSource:Ljava/lang/String;

    .line 203
    const-string v20, "icon_package"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v12, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->packageName:Ljava/lang/String;

    .line 205
    iget-object v0, v12, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->iconSource:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mActivity:Landroid/app/Activity;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    iget-object v0, v12, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->iconSource:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static/range {v20 .. v23}, Lcom/android/internal/util/cm/LockscreenTargetUtils;->getDrawableFromResources(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mActivity:Landroid/app/Activity;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    iget-object v0, v12, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->iconSource:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-static/range {v20 .. v23}, Lcom/android/internal/util/cm/LockscreenTargetUtils;->getDrawableFromResources(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    .line 210
    const/4 v9, 0x1

    goto/16 :goto_4

    .line 217
    .end local v14           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v7

    .line 218
    .local v7, e:Ljava/net/URISyntaxException;
    const-string v20, "LockscreenTargets"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Invalid lockscreen target "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-object v0, v12, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->uri:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 237
    .end local v6           #back:Landroid/graphics/drawable/Drawable;
    .end local v7           #e:Ljava/net/URISyntaxException;
    .end local v8           #front:Landroid/graphics/drawable/Drawable;
    .end local v9           #frontBlank:Z
    .end local v12           #info:Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;
    :cond_9
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 238
    .local v15, targetDrawables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/multiwaveview/TargetDrawable;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mTargetStore:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .end local v10           #i:I
    .local v11, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;

    .line 239
    .local v10, i:Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;
    new-instance v21, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mResources:Landroid/content/res/Resources;

    move-object/from16 v22, v0

    if-eqz v10, :cond_a

    iget-object v0, v10, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->icon:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v20, v0

    :goto_7
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_a
    const/16 v20, 0x0

    goto :goto_7

    .line 241
    .end local v10           #i:Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mWaveView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setTargetResources(Ljava/util/ArrayList;)V

    .line 242
    return-void
.end method

.method private resetAll()V
    .locals 3

    .prologue
    .line 248
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0802bc

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0802bd

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0801f0

    new-instance v2, Lcom/android/settings/cyanogenmod/LockscreenTargets$1;

    invoke-direct {v2, p0}, Lcom/android/settings/cyanogenmod/LockscreenTargets$1;-><init>(Lcom/android/settings/cyanogenmod/LockscreenTargets;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0804f7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 264
    return-void
.end method

.method private saveAll()V
    .locals 17

    .prologue
    .line 270
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 271
    .local v11, targetLayout:Ljava/lang/StringBuilder;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 272
    .local v3, existingImages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 274
    .local v4, hasValidTargets:Z
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mTargetOffset:I

    add-int/lit8 v5, v14, 0x1

    .local v5, i:I
    :goto_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mTargetOffset:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mMaxTargets:I

    add-int/2addr v14, v15

    if-gt v5, v14, :cond_5

    .line 275
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mTargetStore:Ljava/util/ArrayList;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;

    .line 276
    .local v8, info:Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;
    iget-object v13, v8, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->uri:Ljava/lang/String;

    .line 278
    .local v13, uri:Ljava/lang/String;
    iget-object v14, v8, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->iconSource:Ljava/lang/String;

    if-eqz v14, :cond_0

    .line 279
    iget-object v14, v8, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->iconSource:Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    :cond_0
    const-string v14, "empty"

    invoke-static {v13, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 284
    :try_start_0
    iget-object v14, v8, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->uri:Ljava/lang/String;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v9

    .line 286
    .local v9, intent:Landroid/content/Intent;
    const-string v14, "icon_resource"

    invoke-virtual {v9, v14}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 287
    const-string v14, "icon_file"

    invoke-virtual {v9, v14}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 288
    iget-object v14, v8, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->iconType:Ljava/lang/String;

    if-eqz v14, :cond_1

    .line 289
    iget-object v14, v8, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->iconType:Ljava/lang/String;

    iget-object v15, v8, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->iconSource:Ljava/lang/String;

    invoke-virtual {v9, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    :cond_1
    const-string v14, "icon_resource"

    iget-object v15, v8, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->iconType:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    iget-object v14, v8, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->packageName:Ljava/lang/String;

    if-eqz v14, :cond_4

    .line 293
    const-string v14, "icon_package"

    iget-object v15, v8, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    :goto_1
    const/4 v14, 0x0

    invoke-virtual {v9, v14}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 299
    const/4 v4, 0x1

    .line 306
    .end local v9           #intent:Landroid/content/Intent;
    :cond_2
    :goto_2
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    if-lez v14, :cond_3

    .line 307
    const-string v14, "|"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    :cond_3
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 295
    .restart local v9       #intent:Landroid/content/Intent;
    :cond_4
    :try_start_1
    const-string v14, "icon_package"

    invoke-virtual {v9, v14}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 300
    .end local v9           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 301
    .local v2, e:Ljava/net/URISyntaxException;
    const-string v14, "LockscreenTargets"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Invalid uri "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v8, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->uri:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " on save, ignoring"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const-string v13, "empty"

    goto :goto_2

    .line 312
    .end local v2           #e:Ljava/net/URISyntaxException;
    .end local v8           #info:Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;
    .end local v13           #uri:Ljava/lang/String;
    :cond_5
    if-eqz v4, :cond_7

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 313
    .local v12, targets:Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mActivity:Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "lockscreen_targets"

    invoke-static {v14, v15, v12}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 316
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mActivity:Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .local v1, arr$:[Ljava/io/File;
    array-length v10, v1

    .local v10, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_4
    if-ge v6, v10, :cond_8

    aget-object v7, v1, v6

    .line 317
    .local v7, image:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "lockscreen_"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_6

    .line 319
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 316
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 312
    .end local v1           #arr$:[Ljava/io/File;
    .end local v6           #i$:I
    .end local v7           #image:Ljava/io/File;
    .end local v10           #len$:I
    .end local v12           #targets:Ljava/lang/String;
    :cond_7
    const/4 v12, 0x0

    goto :goto_3

    .line 322
    .restart local v1       #arr$:[Ljava/io/File;
    .restart local v6       #i$:I
    .restart local v10       #len$:I
    .restart local v12       #targets:Ljava/lang/String;
    :cond_8
    return-void
.end method

.method private setIconForDialog(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "icon"

    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mDialogIcon:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 373
    return-void
.end method

.method private setTarget(ILjava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .parameter "position"
    .parameter "uri"
    .parameter "drawable"
    .parameter "iconType"
    .parameter "iconSource"
    .parameter "packageName"

    .prologue
    .line 329
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mTargetStore:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;

    .line 330
    .local v13, item:Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;
    iget-object v14, v13, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->icon:Landroid/graphics/drawable/StateListDrawable;

    .line 331
    .local v14, state:Landroid/graphics/drawable/StateListDrawable;
    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    check-cast v12, Landroid/graphics/drawable/LayerDrawable;

    .line 332
    .local v12, inactiveLayer:Landroid/graphics/drawable/LayerDrawable;
    const/4 v3, 0x1

    invoke-virtual {v14, v3}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    check-cast v9, Landroid/graphics/drawable/LayerDrawable;

    .line 333
    .local v9, activeLayer:Landroid/graphics/drawable/LayerDrawable;
    const/4 v11, 0x0

    .line 335
    .local v11, hasBackground:Z
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v12, v3, v0}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 337
    const-string v3, "icon_resource"

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz p5, :cond_2

    .line 338
    new-instance v2, Landroid/graphics/drawable/InsetDrawable;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mResources:Landroid/content/res/Resources;

    const v5, 0x106000d

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 340
    .local v2, empty:Landroid/graphics/drawable/InsetDrawable;
    const/4 v3, 0x1

    invoke-virtual {v9, v3, v2}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 341
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mActivity:Landroid/app/Activity;

    const/4 v5, 0x1

    move-object/from16 v0, p6

    move-object/from16 v1, p5

    invoke-static {v3, v0, v1, v5}, Lcom/android/internal/util/cm/LockscreenTargetUtils;->getDrawableFromResources(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 343
    .local v10, back:Landroid/graphics/drawable/Drawable;
    if-eqz v10, :cond_0

    .line 344
    const/4 v3, 0x0

    invoke-virtual {v9, v3, v10}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 345
    const/4 v11, 0x1

    .line 351
    .end local v2           #empty:Landroid/graphics/drawable/InsetDrawable;
    .end local v10           #back:Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    if-nez v11, :cond_1

    .line 352
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mActivity:Landroid/app/Activity;

    const/4 v5, 0x0

    const-string v6, "ic_lockscreen_target_activated"

    const/4 v7, 0x0

    invoke-static {v3, v5, v6, v7}, Lcom/android/internal/util/cm/LockscreenTargetUtils;->getDrawableFromResources(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 354
    .local v4, activeBack:Landroid/graphics/drawable/Drawable;
    const/4 v15, 0x0

    new-instance v3, Landroid/graphics/drawable/InsetDrawable;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    invoke-virtual {v9, v15, v3}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 357
    .end local v4           #activeBack:Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/cyanogenmod/LockscreenTargets;->getPickedIconFromDialog()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v13, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->defaultIcon:Landroid/graphics/drawable/Drawable;

    .line 358
    move-object/from16 v0, p2

    iput-object v0, v13, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->uri:Ljava/lang/String;

    .line 359
    move-object/from16 v0, p4

    iput-object v0, v13, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->iconType:Ljava/lang/String;

    .line 360
    move-object/from16 v0, p5

    iput-object v0, v13, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->iconSource:Ljava/lang/String;

    .line 361
    move-object/from16 v0, p6

    iput-object v0, v13, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->packageName:Ljava/lang/String;

    .line 363
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/cyanogenmod/LockscreenTargets;->saveAll()V

    .line 364
    return-void

    .line 348
    :cond_2
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v9, v3, v0}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    goto :goto_0
.end method


# virtual methods
.method public iconPicked(IILandroid/content/Intent;)V
    .locals 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, -0x1

    .line 512
    new-instance v0, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;

    invoke-direct {v0, v5}, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;-><init>(Lcom/android/settings/cyanogenmod/LockscreenTargets$1;)V

    .line 513
    .local v0, icon:Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;
    const/4 v1, 0x0

    .line 515
    .local v1, iconDrawable:Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x2

    if-ne p1, v3, :cond_3

    .line 516
    if-ne p2, v4, :cond_2

    .line 517
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/lockscreen_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 519
    .local v2, imageFile:Ljava/io/File;
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mTemporaryImage:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 520
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mTemporaryImage:Ljava/io/File;

    invoke-virtual {v3, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 522
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->setReadOnly()Z

    .line 524
    const-string v3, "icon_file"

    iput-object v3, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->iconType:Ljava/lang/String;

    .line 525
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->iconSource:Ljava/lang/String;

    .line 526
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mActivity:Landroid/app/Activity;

    iget-object v4, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->iconSource:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/internal/util/cm/LockscreenTargetUtils;->getDrawableFromFile(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 550
    .end local v2           #imageFile:Ljava/io/File;
    :goto_0
    if-eqz v1, :cond_5

    .line 551
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mDialogIcon:Landroid/widget/ImageButton;

    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 552
    invoke-direct {p0, v1}, Lcom/android/settings/cyanogenmod/LockscreenTargets;->setIconForDialog(Landroid/graphics/drawable/Drawable;)V

    .line 557
    :cond_1
    :goto_1
    return-void

    .line 529
    :cond_2
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mTemporaryImage:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 530
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mTemporaryImage:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 534
    :cond_3
    if-nez p1, :cond_4

    .line 535
    const-string v3, "icon_resource"

    iput-object v3, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->iconType:Ljava/lang/String;

    .line 536
    const-string v3, "resource_name"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->iconSource:Ljava/lang/String;

    .line 537
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mActivity:Landroid/app/Activity;

    iget-object v4, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->iconSource:Ljava/lang/String;

    invoke-static {v3, v5, v4, v6}, Lcom/android/internal/util/cm/LockscreenTargetUtils;->getDrawableFromResources(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 539
    :cond_4
    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    if-ne p2, v4, :cond_1

    .line 541
    const-string v3, "package_name"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->packageName:Ljava/lang/String;

    .line 542
    const-string v3, "icon_resource"

    iput-object v3, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->iconType:Ljava/lang/String;

    .line 543
    const-string v3, "resource_name"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->iconSource:Ljava/lang/String;

    .line 544
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mActivity:Landroid/app/Activity;

    iget-object v4, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->packageName:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->iconSource:Ljava/lang/String;

    invoke-static {v3, v4, v5, v6}, Lcom/android/internal/util/cm/LockscreenTargetUtils;->getDrawableFromResources(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 554
    :cond_5
    const-string v3, "LockscreenTargets"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not fetch icon, keeping old one (type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->iconType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", source="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->iconSource:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", package= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 115
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 117
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0d0119

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/multiwaveview/GlowPadView;

    iput-object v1, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mWaveView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    .line 118
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    const-string v3, "ic_lockscreen_handle"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/util/cm/LockscreenTargetUtils;->getDrawableFromResources(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 119
    .local v0, handle:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mWaveView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setHandleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 120
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mWaveView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v1, p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setOnTriggerListener(Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;)V

    .line 122
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_targets"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/cyanogenmod/LockscreenTargets;->initializeView(Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 397
    const/4 v0, 0x0

    .line 398
    .local v0, shortcutName:Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 399
    const-string v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 402
    :cond_0
    sget-object v1, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mEmptyLabel:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 403
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mDialogLabel:Landroid/widget/Button;

    sget-object v2, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mEmptyLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 404
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mDialogLabel:Landroid/widget/Button;

    const-string v2, "empty"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 405
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mDialogIcon:Landroid/widget/ImageButton;

    const v2, 0x7f020072

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 406
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mDialogIcon:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 415
    :cond_1
    :goto_0
    return-void

    .line 407
    :cond_2
    if-eqz p1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x1

    if-ne p1, v1, :cond_4

    .line 410
    :cond_3
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mIconPicker:Lcom/android/settings/cyanogenmod/IconPicker;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/settings/cyanogenmod/IconPicker;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 411
    :cond_4
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 413
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mPicker:Lcom/android/settings/cyanogenmod/ShortcutPickHelper;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v2, 0x0

    .line 137
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

    .line 142
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 94
    iput-object p2, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mContainer:Landroid/view/ViewGroup;

    .line 96
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/cyanogenmod/LockscreenTargets;->setHasOptionsMenu(Z)V

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/LockscreenTargets;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mActivity:Landroid/app/Activity;

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/LockscreenTargets;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mResources:Landroid/content/res/Resources;

    .line 101
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/internal/util/cm/LockscreenTargetUtils;->getTargetOffset(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mTargetOffset:I

    .line 102
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/internal/util/cm/LockscreenTargetUtils;->getMaxTargets(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mMaxTargets:I

    .line 104
    new-instance v0, Lcom/android/settings/cyanogenmod/IconPicker;

    iget-object v1, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lcom/android/settings/cyanogenmod/IconPicker;-><init>(Landroid/app/Activity;Lcom/android/settings/cyanogenmod/IconPicker$OnIconPickListener;)V

    iput-object v0, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mIconPicker:Lcom/android/settings/cyanogenmod/IconPicker;

    .line 105
    new-instance v0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;

    iget-object v1, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;-><init>(Landroid/app/Activity;Lcom/android/settings/cyanogenmod/ShortcutPickHelper$OnPickListener;)V

    iput-object v0, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mPicker:Lcom/android/settings/cyanogenmod/ShortcutPickHelper;

    .line 107
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/target.tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mTemporaryImage:Ljava/io/File;

    .line 108
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0802be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mEmptyLabel:Ljava/lang/String;

    .line 110
    const v0, 0x7f040060

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onFinishFinalAnimation()V
    .locals 0

    .prologue
    .line 561
    return-void
.end method

.method public onGrabbed(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 419
    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 508
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 146
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 151
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 148
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/LockscreenTargets;->resetAll()V

    .line 149
    const/4 v0, 0x1

    goto :goto_0

    .line 146
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onReleased(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 423
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 128
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 130
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/internal/util/cm/LockscreenTargetUtils;->isScreenLarge(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 133
    :cond_0
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 3
    .parameter "v"
    .parameter "target"

    .prologue
    .line 427
    iput p2, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mTargetIndex:I

    .line 429
    iget v0, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mTargetOffset:I

    if-ne p2, v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mWaveView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->reset(Z)V

    .line 455
    :goto_0
    return-void

    .line 434
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0802bf

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/android/settings/cyanogenmod/LockscreenTargets;->createShortcutDialogView(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0801f0

    new-instance v2, Lcom/android/settings/cyanogenmod/LockscreenTargets$2;

    invoke-direct {v2, p0}, Lcom/android/settings/cyanogenmod/LockscreenTargets$2;-><init>(Lcom/android/settings/cyanogenmod/LockscreenTargets;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0804f7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public shortcutPicked(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .parameter "uri"
    .parameter "friendlyName"
    .parameter "isApplication"

    .prologue
    .line 377
    if-nez p1, :cond_0

    .line 393
    :goto_0
    return-void

    .line 382
    :cond_0
    const/4 v3, 0x0

    :try_start_0
    invoke-static {p1, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    .line 383
    .local v2, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mActivity:Landroid/app/Activity;

    invoke-static {v3, v2}, Lcom/android/internal/util/cm/LockscreenTargetUtils;->getDrawableFromIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 385
    .local v1, icon:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mDialogLabel:Landroid/widget/Button;

    invoke-virtual {v3, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 386
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mDialogLabel:Landroid/widget/Button;

    invoke-virtual {v3, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 388
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mDialogIcon:Landroid/widget/ImageButton;

    invoke-virtual {v3, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 389
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mDialogIcon:Landroid/widget/ImageButton;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 390
    .end local v1           #icon:Landroid/graphics/drawable/Drawable;
    .end local v2           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 391
    .local v0, e:Ljava/net/URISyntaxException;
    const-string v3, "LockscreenTargets"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid uri "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " on pick"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
