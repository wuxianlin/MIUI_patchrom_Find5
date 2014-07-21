.class public Lcom/koushikdutta/superuser/SettingsFragmentInternal;
.super Lcom/koushikdutta/widgets/BetterListFragmentInternal;
.source "SettingsFragmentInternal.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment"
    }
.end annotation


# instance fields
.field pinItem:Lcom/koushikdutta/widgets/ListItem;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/widgets/FragmentInterfaceWrapper;)V
    .locals 0
    .parameter "fragment"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/koushikdutta/widgets/BetterListFragmentInternal;-><init>(Lcom/koushikdutta/widgets/FragmentInterfaceWrapper;)V

    .line 42
    return-void
.end method


# virtual methods
.method checkPin()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v6, -0x1

    .line 94
    invoke-virtual {p0}, Lcom/koushikdutta/superuser/SettingsFragmentInternal;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/koushikdutta/superuser/util/Settings;->isPinProtected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    new-instance v5, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/koushikdutta/superuser/SettingsFragmentInternal;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 96
    .local v5, d:Landroid/app/Dialog;
    const v0, 0x7f08001e

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(I)V

    .line 97
    new-instance v0, Lcom/koushikdutta/superuser/SettingsFragmentInternal$3;

    invoke-virtual {p0}, Lcom/koushikdutta/superuser/SettingsFragmentInternal;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    move-object v1, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/superuser/SettingsFragmentInternal$3;-><init>(Lcom/koushikdutta/superuser/SettingsFragmentInternal;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;Landroid/app/Dialog;)V

    invoke-virtual {v0}, Lcom/koushikdutta/superuser/SettingsFragmentInternal$3;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 121
    .end local v5           #d:Landroid/app/Dialog;
    :goto_0
    return-void

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcom/koushikdutta/superuser/SettingsFragmentInternal;->setPin()V

    goto :goto_0
.end method

.method confirmPin(Ljava/lang/String;)V
    .locals 8
    .parameter "pin"

    .prologue
    const/4 v3, 0x0

    const/4 v7, -0x1

    .line 51
    new-instance v6, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/koushikdutta/superuser/SettingsFragmentInternal;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 52
    .local v6, d:Landroid/app/Dialog;
    const v0, 0x7f080021

    invoke-virtual {v6, v0}, Landroid/app/Dialog;->setTitle(I)V

    .line 53
    new-instance v0, Lcom/koushikdutta/superuser/SettingsFragmentInternal$1;

    invoke-virtual {p0}, Lcom/koushikdutta/superuser/SettingsFragmentInternal;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    move-object v1, p0

    move-object v4, v3

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/koushikdutta/superuser/SettingsFragmentInternal$1;-><init>(Lcom/koushikdutta/superuser/SettingsFragmentInternal;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;Ljava/lang/String;Landroid/app/Dialog;)V

    invoke-virtual {v0}, Lcom/koushikdutta/superuser/SettingsFragmentInternal$1;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    .line 73
    return-void
.end method

.method protected getListFragmentResource()I
    .locals 1

    .prologue
    .line 46
    const v0, 0x7f0400c7

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/view/View;)V
    .locals 9
    .parameter "savedInstanceState"
    .parameter "view"

    .prologue
    const v8, 0x7f080011

    const/4 v7, 0x1

    const v6, 0x7f080034

    const/4 v4, 0x0

    .line 125
    invoke-super {p0, p1, p2}, Lcom/koushikdutta/widgets/BetterListFragmentInternal;->onCreate(Landroid/os/Bundle;Landroid/view/View;)V

    .line 130
    new-instance v0, Lcom/koushikdutta/superuser/SettingsFragmentInternal$4;

    const v3, 0x7f08004b

    move-object v1, p0

    move-object v2, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/superuser/SettingsFragmentInternal$4;-><init>(Lcom/koushikdutta/superuser/SettingsFragmentInternal;Lcom/koushikdutta/widgets/BetterListFragmentInternal;III)V

    invoke-virtual {p0, v6, v0}, Lcom/koushikdutta/superuser/SettingsFragmentInternal;->addItem(ILcom/koushikdutta/widgets/ListItem;)Lcom/koushikdutta/widgets/ListItem;

    move-result-object v0

    const v1, 0x7f010002

    invoke-virtual {v0, v1}, Lcom/koushikdutta/widgets/ListItem;->setAttrDrawable(I)Lcom/koushikdutta/widgets/ListItem;

    .line 185
    invoke-virtual {p0}, Lcom/koushikdutta/superuser/SettingsFragmentInternal;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/koushikdutta/superuser/util/Settings;->getMultiuserMode(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 186
    new-instance v0, Lcom/koushikdutta/superuser/SettingsFragmentInternal$5;

    const v1, 0x7f080035

    invoke-direct {v0, p0, p0, v1, v4}, Lcom/koushikdutta/superuser/SettingsFragmentInternal$5;-><init>(Lcom/koushikdutta/superuser/SettingsFragmentInternal;Lcom/koushikdutta/widgets/BetterListFragmentInternal;II)V

    invoke-virtual {p0, v6, v0}, Lcom/koushikdutta/superuser/SettingsFragmentInternal;->addItem(ILcom/koushikdutta/widgets/ListItem;)Lcom/koushikdutta/widgets/ListItem;

    move-result-object v0

    const v1, 0x7f010003

    invoke-virtual {v0, v1}, Lcom/koushikdutta/widgets/ListItem;->setAttrDrawable(I)Lcom/koushikdutta/widgets/ListItem;

    .line 247
    :cond_0
    new-instance v0, Lcom/koushikdutta/superuser/SettingsFragmentInternal$6;

    const v1, 0x7f08002d

    const v2, 0x7f08002e

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/koushikdutta/superuser/SettingsFragmentInternal$6;-><init>(Lcom/koushikdutta/superuser/SettingsFragmentInternal;Lcom/koushikdutta/widgets/BetterListFragmentInternal;II)V

    invoke-virtual {p0, v6, v0}, Lcom/koushikdutta/superuser/SettingsFragmentInternal;->addItem(ILcom/koushikdutta/widgets/ListItem;)Lcom/koushikdutta/widgets/ListItem;

    move-result-object v0

    const v1, 0x7f010004

    invoke-virtual {v0, v1}, Lcom/koushikdutta/widgets/ListItem;->setAttrDrawable(I)Lcom/koushikdutta/widgets/ListItem;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/koushikdutta/widgets/ListItem;->setCheckboxVisible(Z)Lcom/koushikdutta/widgets/ListItem;

    move-result-object v0

    invoke-virtual {p0}, Lcom/koushikdutta/superuser/SettingsFragmentInternal;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/koushikdutta/superuser/util/Settings;->getRequirePermission(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/koushikdutta/widgets/ListItem;->setChecked(Z)Lcom/koushikdutta/widgets/ListItem;

    .line 258
    new-instance v0, Lcom/koushikdutta/superuser/SettingsFragmentInternal$7;

    const v1, 0x7f08002f

    invoke-direct {v0, p0, p0, v1, v4}, Lcom/koushikdutta/superuser/SettingsFragmentInternal$7;-><init>(Lcom/koushikdutta/superuser/SettingsFragmentInternal;Lcom/koushikdutta/widgets/BetterListFragmentInternal;II)V

    invoke-virtual {p0, v6, v0}, Lcom/koushikdutta/superuser/SettingsFragmentInternal;->addItem(ILcom/koushikdutta/widgets/ListItem;)Lcom/koushikdutta/widgets/ListItem;

    move-result-object v0

    const v1, 0x7f010005

    invoke-virtual {v0, v1}, Lcom/koushikdutta/widgets/ListItem;->setAttrDrawable(I)Lcom/koushikdutta/widgets/ListItem;

    .line 305
    new-instance v1, Lcom/koushikdutta/superuser/SettingsFragmentInternal$8;

    const v2, 0x7f080017

    invoke-virtual {p0}, Lcom/koushikdutta/superuser/SettingsFragmentInternal;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/koushikdutta/superuser/util/Settings;->isPinProtected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f080023

    :goto_0
    invoke-direct {v1, p0, p0, v2, v0}, Lcom/koushikdutta/superuser/SettingsFragmentInternal$8;-><init>(Lcom/koushikdutta/superuser/SettingsFragmentInternal;Lcom/koushikdutta/widgets/BetterListFragmentInternal;II)V

    invoke-virtual {p0, v6, v1}, Lcom/koushikdutta/superuser/SettingsFragmentInternal;->addItem(ILcom/koushikdutta/widgets/ListItem;)Lcom/koushikdutta/widgets/ListItem;

    move-result-object v0

    const v1, 0x7f010006

    invoke-virtual {v0, v1}, Lcom/koushikdutta/widgets/ListItem;->setAttrDrawable(I)Lcom/koushikdutta/widgets/ListItem;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/superuser/SettingsFragmentInternal;->pinItem:Lcom/koushikdutta/widgets/ListItem;

    .line 314
    new-instance v0, Lcom/koushikdutta/superuser/SettingsFragmentInternal$9;

    const v1, 0x7f080019

    invoke-virtual {p0, v1}, Lcom/koushikdutta/superuser/SettingsFragmentInternal;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f08001a

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/koushikdutta/superuser/SettingsFragmentInternal;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/koushikdutta/superuser/util/Settings;->getRequestTimeout(Landroid/content/Context;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/koushikdutta/superuser/SettingsFragmentInternal;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/koushikdutta/superuser/SettingsFragmentInternal$9;-><init>(Lcom/koushikdutta/superuser/SettingsFragmentInternal;Lcom/koushikdutta/widgets/BetterListFragmentInternal;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v6, v0}, Lcom/koushikdutta/superuser/SettingsFragmentInternal;->addItem(ILcom/koushikdutta/widgets/ListItem;)Lcom/koushikdutta/widgets/ListItem;

    move-result-object v0

    const v1, 0x7f010007

    invoke-virtual {v0, v1}, Lcom/koushikdutta/widgets/ListItem;->setAttrDrawable(I)Lcom/koushikdutta/widgets/ListItem;

    .line 336
    new-instance v0, Lcom/koushikdutta/superuser/SettingsFragmentInternal$10;

    const v1, 0x7f080015

    const v2, 0x7f080016

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/koushikdutta/superuser/SettingsFragmentInternal$10;-><init>(Lcom/koushikdutta/superuser/SettingsFragmentInternal;Lcom/koushikdutta/widgets/BetterListFragmentInternal;II)V

    invoke-virtual {p0, v8, v0}, Lcom/koushikdutta/superuser/SettingsFragmentInternal;->addItem(ILcom/koushikdutta/widgets/ListItem;)Lcom/koushikdutta/widgets/ListItem;

    move-result-object v0

    const v1, 0x7f010008

    invoke-virtual {v0, v1}, Lcom/koushikdutta/widgets/ListItem;->setAttrDrawable(I)Lcom/koushikdutta/widgets/ListItem;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/koushikdutta/widgets/ListItem;->setCheckboxVisible(Z)Lcom/koushikdutta/widgets/ListItem;

    move-result-object v0

    invoke-virtual {p0}, Lcom/koushikdutta/superuser/SettingsFragmentInternal;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/koushikdutta/superuser/util/Settings;->getLogging(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/koushikdutta/widgets/ListItem;->setChecked(Z)Lcom/koushikdutta/widgets/ListItem;

    .line 347
    new-instance v0, Lcom/koushikdutta/superuser/SettingsFragmentInternal$11;

    const v1, 0x7f08001b

    invoke-direct {v0, p0, p0, v1, v4}, Lcom/koushikdutta/superuser/SettingsFragmentInternal$11;-><init>(Lcom/koushikdutta/superuser/SettingsFragmentInternal;Lcom/koushikdutta/widgets/BetterListFragmentInternal;II)V

    invoke-virtual {p0, v8, v0}, Lcom/koushikdutta/superuser/SettingsFragmentInternal;->addItem(ILcom/koushikdutta/widgets/ListItem;)Lcom/koushikdutta/widgets/ListItem;

    move-result-object v0

    const v1, 0x7f010009

    invoke-virtual {v0, v1}, Lcom/koushikdutta/widgets/ListItem;->setAttrDrawable(I)Lcom/koushikdutta/widgets/ListItem;

    .line 394
    const-string v0, "com.koushikdutta.superuser"

    invoke-virtual {p0}, Lcom/koushikdutta/superuser/SettingsFragmentInternal;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 395
    new-instance v0, Lcom/koushikdutta/superuser/SettingsFragmentInternal$12;

    const v1, 0x7f080052

    invoke-direct {v0, p0, p0, v1, v4}, Lcom/koushikdutta/superuser/SettingsFragmentInternal$12;-><init>(Lcom/koushikdutta/superuser/SettingsFragmentInternal;Lcom/koushikdutta/widgets/BetterListFragmentInternal;II)V

    invoke-virtual {p0, v8, v0}, Lcom/koushikdutta/superuser/SettingsFragmentInternal;->addItem(ILcom/koushikdutta/widgets/ListItem;)Lcom/koushikdutta/widgets/ListItem;

    move-result-object v0

    const v1, 0x7f01000a

    invoke-virtual {v0, v1}, Lcom/koushikdutta/widgets/ListItem;->setAttrDrawable(I)Lcom/koushikdutta/widgets/ListItem;

    .line 438
    :cond_1
    return-void

    .line 305
    :cond_2
    const v0, 0x7f080018

    goto/16 :goto_0
.end method

.method setPin()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 76
    new-instance v5, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/koushikdutta/superuser/SettingsFragmentInternal;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 77
    .local v5, d:Landroid/app/Dialog;
    const v0, 0x7f08001f

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(I)V

    .line 78
    new-instance v0, Lcom/koushikdutta/superuser/SettingsFragmentInternal$2;

    invoke-virtual {p0}, Lcom/koushikdutta/superuser/SettingsFragmentInternal;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    move-object v1, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/superuser/SettingsFragmentInternal$2;-><init>(Lcom/koushikdutta/superuser/SettingsFragmentInternal;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;Landroid/app/Dialog;)V

    invoke-virtual {v0}, Lcom/koushikdutta/superuser/SettingsFragmentInternal$2;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 90
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 91
    return-void
.end method
