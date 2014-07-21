.class public Lcom/koushikdutta/superuser/NotifyActivity;
.super Landroid/app/Activity;
.source "NotifyActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 18
    .parameter "savedInstanceState"

    .prologue
    .line 34
    const v13, 0x7f090007

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/koushikdutta/superuser/util/Settings;->applyDarkThemeSetting(Landroid/app/Activity;I)V

    .line 35
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v13, 0x7f040079

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/koushikdutta/superuser/NotifyActivity;->setContentView(I)V

    .line 39
    invoke-virtual/range {p0 .. p0}, Lcom/koushikdutta/superuser/NotifyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 40
    .local v5, intent:Landroid/content/Intent;
    if-nez v5, :cond_0

    .line 41
    invoke-virtual/range {p0 .. p0}, Lcom/koushikdutta/superuser/NotifyActivity;->finish()V

    .line 84
    :goto_0
    return-void

    .line 44
    :cond_0
    const-string v13, "caller_uid"

    const/4 v14, -0x1

    invoke-virtual {v5, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 45
    .local v2, callerUid:I
    const/4 v13, -0x1

    if-ne v2, v13, :cond_1

    .line 46
    invoke-virtual/range {p0 .. p0}, Lcom/koushikdutta/superuser/NotifyActivity;->finish()V

    goto :goto_0

    .line 50
    :cond_1
    const v13, 0x7f0d0145

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/koushikdutta/superuser/NotifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 51
    .local v7, packageInfo:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/koushikdutta/superuser/NotifyActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 52
    .local v11, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v11, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v10

    .line 53
    .local v10, pkgs:[Ljava/lang/String;
    const v13, 0x7f0d0224

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/koushikdutta/superuser/NotifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 54
    .local v12, unknown:Landroid/widget/TextView;
    const v13, 0x7f080004

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/koushikdutta/superuser/NotifyActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    if-eqz v10, :cond_3

    array-length v13, v10

    if-lez v13, :cond_3

    .line 57
    move-object v1, v10

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v6, :cond_2

    aget-object v9, v1, v3

    .line 59
    .local v9, pkg:Ljava/lang/String;
    const/16 v13, 0x1000

    :try_start_0
    invoke-virtual {v11, v9, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    .line 60
    .local v8, pi:Landroid/content/pm/PackageInfo;
    const v13, 0x7f0d0140

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/koushikdutta/superuser/NotifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    const v14, 0x7f080005

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    iget-object v0, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/koushikdutta/superuser/NotifyActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    const v13, 0x7f0d0117

    invoke-virtual {v7, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 62
    .local v4, icon:Landroid/widget/ImageView;
    iget-object v13, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v13, v11}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v4, v13}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    const v13, 0x7f0d0039

    invoke-virtual {v7, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iget-object v14, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v14, v11}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    const v13, 0x7f0d000b

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/koushikdutta/superuser/NotifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iget-object v14, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v14, v11}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    const v13, 0x7f0d000c

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/koushikdutta/superuser/NotifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iget-object v14, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v4           #icon:Landroid/widget/ImageView;
    .end local v8           #pi:Landroid/content/pm/PackageInfo;
    .end local v9           #pkg:Ljava/lang/String;
    :cond_2
    const v13, 0x7f0d0224

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/koushikdutta/superuser/NotifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 78
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v6           #len$:I
    :cond_3
    const v13, 0x7f0d0141

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/koushikdutta/superuser/NotifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    new-instance v14, Lcom/koushikdutta/superuser/NotifyActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/koushikdutta/superuser/NotifyActivity$1;-><init>(Lcom/koushikdutta/superuser/NotifyActivity;)V

    invoke-virtual {v13, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 72
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v3       #i$:I
    .restart local v6       #len$:I
    .restart local v9       #pkg:Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 57
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1
.end method
