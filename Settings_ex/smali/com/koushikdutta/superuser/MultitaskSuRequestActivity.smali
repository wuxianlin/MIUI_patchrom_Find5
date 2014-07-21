.class public Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "MultitaskSuRequestActivity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment"
    }
.end annotation


# static fields
.field private static final SU_PROTOCOL_VALUE_MAX:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAllow:Landroid/widget/Button;

.field mCallerUid:I

.field mDeny:Landroid/widget/Button;

.field mDesiredCmd:Ljava/lang/String;

.field mDesiredUid:I

.field mHandled:Z

.field mHandler:Landroid/os/Handler;

.field mPid:I

.field mRemember:Landroid/widget/RadioGroup;

.field mRequestReady:Z

.field mSocket:Landroid/net/LocalSocket;

.field mSocketPath:Ljava/lang/String;

.field mSpinner:Landroid/widget/Spinner;

.field mSpinnerAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mSpinnerIds:[I

.field mTimeLeft:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 287
    new-instance v0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$7;

    invoke-direct {v0}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$7;-><init>()V

    sput-object v0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->SU_PROTOCOL_VALUE_MAX:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 55
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 64
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mHandler:Landroid/os/Handler;

    .line 66
    iput v1, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mTimeLeft:I

    .line 433
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mSpinnerIds:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0xct 0x0t 0x8t 0x7ft
        0xdt 0x0t 0x8t 0x7ft
        0xet 0x0t 0x8t 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Ljava/lang/String;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-static {p0}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->getValueMax(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static getValueMax(Ljava/lang/String;)I
    .locals 2
    .parameter "name"

    .prologue
    .line 299
    sget-object v1, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->SU_PROTOCOL_VALUE_MAX:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 300
    .local v0, max:Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 301
    const/16 v1, 0x100

    .line 302
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method approve()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 440
    iget-object v0, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mAllow:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 441
    iget-object v0, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mDeny:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 442
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->handleAction(ZLjava/lang/Integer;)V

    .line 443
    return-void
.end method

.method deny()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 446
    iget-object v0, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mAllow:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 447
    iget-object v0, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mDeny:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 448
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->handleAction(ZLjava/lang/Integer;)V

    .line 449
    return-void
.end method

.method public getGracePeriod()I
    .locals 1

    .prologue
    .line 74
    const/16 v0, 0xa

    return v0
.end method

.method getUntil()I
    .locals 7

    .prologue
    const-wide/16 v5, 0x3e8

    .line 78
    const/4 v2, -0x1

    .line 79
    .local v2, until:I
    iget-object v3, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->isShown()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 80
    iget-object v3, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    .line 81
    .local v1, pos:I
    iget-object v3, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mSpinnerIds:[I

    aget v0, v3, v1

    .line 82
    .local v0, id:I
    const v3, 0x7f08000d

    if-ne v0, v3, :cond_1

    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    div-long/2addr v3, v5

    long-to-int v3, v3

    invoke-virtual {p0}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->getGracePeriod()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3c

    add-int v2, v3, v4

    .line 97
    .end local v0           #id:I
    .end local v1           #pos:I
    :cond_0
    :goto_0
    return v2

    .line 85
    .restart local v0       #id:I
    .restart local v1       #pos:I
    :cond_1
    const v3, 0x7f08000e

    if-ne v0, v3, :cond_0

    .line 86
    const/4 v2, 0x0

    goto :goto_0

    .line 89
    .end local v0           #id:I
    .end local v1           #pos:I
    :cond_2
    iget-object v3, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mRemember:Landroid/widget/RadioGroup;

    invoke-virtual {v3}, Landroid/widget/RadioGroup;->isShown()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 90
    iget-object v3, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mRemember:Landroid/widget/RadioGroup;

    invoke-virtual {v3}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v3

    const v4, 0x7f0d01e5

    if-ne v3, v4, :cond_3

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    div-long/2addr v3, v5

    long-to-int v3, v3

    invoke-virtual {p0}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->getGracePeriod()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3c

    add-int v2, v3, v4

    goto :goto_0

    .line 93
    :cond_3
    iget-object v3, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mRemember:Landroid/widget/RadioGroup;

    invoke-virtual {v3}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v3

    const v4, 0x7f0d01e6

    if-ne v3, v4, :cond_0

    .line 94
    const/4 v2, 0x0

    goto :goto_0
.end method

.method handleAction(ZLjava/lang/Integer;)V
    .locals 3
    .parameter "action"
    .parameter "until"

    .prologue
    const/4 v2, 0x1

    .line 101
    iget-boolean v1, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mHandled:Z

    if-nez v1, :cond_2

    move v1, v2

    :goto_0
    invoke-static {v1}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 102
    iput-boolean v2, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mHandled:Z

    .line 104
    :try_start_0
    iget-object v1, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    if-eqz p1, :cond_3

    const-string v1, "socket:ALLOW"

    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 109
    :goto_2
    if-nez p2, :cond_0

    .line 110
    :try_start_1
    invoke-virtual {p0}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->getUntil()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 113
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 114
    new-instance v0, Lcom/koushikdutta/superuser/db/UidPolicy;

    invoke-direct {v0}, Lcom/koushikdutta/superuser/db/UidPolicy;-><init>()V

    .line 115
    .local v0, policy:Lcom/koushikdutta/superuser/db/UidPolicy;
    if-eqz p1, :cond_4

    const-string v1, "allow"

    :goto_3
    iput-object v1, v0, Lcom/koushikdutta/superuser/db/UidPolicy;->policy:Ljava/lang/String;

    .line 116
    iget v1, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mCallerUid:I

    iput v1, v0, Lcom/koushikdutta/superuser/db/UidPolicy;->uid:I

    .line 119
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/koushikdutta/superuser/db/UidPolicy;->command:Ljava/lang/String;

    .line 120
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/koushikdutta/superuser/db/UidPolicy;->until:I

    .line 121
    iget v1, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mDesiredUid:I

    iput v1, v0, Lcom/koushikdutta/superuser/db/UidPolicy;->desiredUid:I

    .line 122
    invoke-static {p0, v0}, Lcom/koushikdutta/superuser/db/SuDatabaseHelper;->setPolicy(Landroid/content/Context;Lcom/koushikdutta/superuser/db/UidPolicy;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 129
    .end local v0           #policy:Lcom/koushikdutta/superuser/db/UidPolicy;
    :cond_1
    :goto_4
    invoke-virtual {p0}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->finish()V

    .line 130
    return-void

    .line 101
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 104
    :cond_3
    :try_start_2
    const-string v1, "socket:DENY"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 115
    .restart local v0       #policy:Lcom/koushikdutta/superuser/db/UidPolicy;
    :cond_4
    :try_start_3
    const-string v1, "deny"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 127
    .end local v0           #policy:Lcom/koushikdutta/superuser/db/UidPolicy;
    :catch_0
    move-exception v1

    goto :goto_4

    .line 106
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method manageSocket()V
    .locals 1

    .prologue
    .line 306
    new-instance v0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$8;

    invoke-direct {v0, p0}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$8;-><init>(Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;)V

    invoke-virtual {v0}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$8;->start()V

    .line 373
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 428
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 430
    invoke-virtual {p0}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->setContentView()V

    .line 431
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 381
    const v1, 0x7f090007

    invoke-static {p0, v1}, Lcom/koushikdutta/superuser/util/Settings;->applyDarkThemeSetting(Landroid/app/Activity;I)V

    .line 382
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 384
    invoke-virtual {p0}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 385
    .local v0, intent:Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 386
    invoke-virtual {p0}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->finish()V

    .line 424
    :goto_0
    return-void

    .line 390
    :cond_0
    const-string v1, "socket"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mSocketPath:Ljava/lang/String;

    .line 391
    iget-object v1, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mSocketPath:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 392
    invoke-virtual {p0}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->finish()V

    goto :goto_0

    .line 396
    :cond_1
    invoke-virtual {p0}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->setContentView()V

    .line 398
    invoke-virtual {p0}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->manageSocket()V

    .line 402
    new-instance v1, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$9;

    invoke-direct {v1, p0}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$9;-><init>(Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;)V

    invoke-virtual {v1}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$9;->run()V

    .line 415
    iget-object v1, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$10;

    invoke-direct {v2, p0}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$10;-><init>(Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;)V

    invoke-static {p0}, Lcom/koushikdutta/superuser/util/Settings;->getRequestTimeout(Landroid/content/Context;)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 134
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 135
    iget-boolean v0, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mHandled:Z

    if-nez v0, :cond_0

    .line 136
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->handleAction(ZLjava/lang/Integer;)V

    .line 138
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mSocket:Landroid/net/LocalSocket;

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :cond_1
    :goto_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mSocketPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 144
    return-void

    .line 141
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method requestReady()V
    .locals 26

    .prologue
    .line 150
    const v21, 0x7f0d01e1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    .line 151
    const v21, 0x7f0d013f

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    .line 153
    const v21, 0x7f0d0145

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 154
    .local v13, packageInfo:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    .line 155
    .local v18, pm:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mCallerUid:I

    move/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v17

    .line 156
    .local v17, pkgs:[Ljava/lang/String;
    const v21, 0x7f0d0224

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 157
    .local v20, unknown:Landroid/widget/TextView;
    const v21, 0x7f080004

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mCallerUid:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    const v21, 0x7f0d000a

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 160
    .local v4, appInfo:Landroid/view/View;
    new-instance v21, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$1;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13, v4}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$1;-><init>(Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;Landroid/view/View;Landroid/view/View;)V

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    new-instance v21, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$2;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4, v13}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$2;-><init>(Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;Landroid/view/View;Landroid/view/View;)V

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    const v21, 0x7f0d000d

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mDesiredUid:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    const v21, 0x7f0d000e

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mDesiredCmd:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    const/16 v19, 0x0

    .line 184
    .local v19, superuserDeclared:Z
    const/4 v7, 0x0

    .line 185
    .local v7, granted:Z
    if-eqz v17, :cond_2

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v21, v0

    if-lez v21, :cond_2

    .line 186
    move-object/from16 v5, v17

    .local v5, arr$:[Ljava/lang/String;
    array-length v11, v5

    .local v11, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    move v9, v8

    .end local v5           #arr$:[Ljava/lang/String;
    .end local v8           #i$:I
    .end local v11           #len$:I
    .local v9, i$:I
    :goto_0
    if-ge v9, v11, :cond_1

    aget-object v16, v5, v9

    .line 188
    .local v16, pkg:Ljava/lang/String;
    const/16 v21, 0x1000

    :try_start_0
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v15

    .line 189
    .local v15, pi:Landroid/content/pm/PackageInfo;
    const v21, 0x7f0d0140

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    const v22, 0x7f080005

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    iget-object v0, v15, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v25

    aput-object v25, v23, v24

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    const v21, 0x7f0d0117

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 191
    .local v10, icon:Landroid/widget/ImageView;
    iget-object v0, v15, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 192
    const v21, 0x7f0d0039

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    iget-object v0, v15, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    const v21, 0x7f0d000b

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    iget-object v0, v15, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    const v21, 0x7f0d000c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    iget-object v0, v15, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v0, v15, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 198
    iget-object v6, v15, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .local v6, arr$:[Ljava/lang/String;
    array-length v12, v6

    .local v12, len$:I
    const/4 v8, 0x0

    .end local v9           #i$:I
    .restart local v8       #i$:I
    :goto_1
    if-ge v8, v12, :cond_0

    aget-object v14, v6, v8

    .line 199
    .local v14, perm:Ljava/lang/String;
    const-string v21, "android.permission.ACCESS_SUPERUSER"

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 200
    const/16 v19, 0x1

    .line 206
    .end local v6           #arr$:[Ljava/lang/String;
    .end local v8           #i$:I
    .end local v12           #len$:I
    .end local v14           #perm:Ljava/lang/String;
    :cond_0
    const-string v21, "android.permission.ACCESS_SUPERUSER"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mPid:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mCallerUid:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->checkPermission(Ljava/lang/String;II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v21

    if-nez v21, :cond_5

    const/16 v21, 0x1

    :goto_2
    or-int v7, v7, v21

    .line 215
    .end local v10           #icon:Landroid/widget/ImageView;
    .end local v15           #pi:Landroid/content/pm/PackageInfo;
    .end local v16           #pkg:Ljava/lang/String;
    :cond_1
    const v21, 0x7f0d0224

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    .line 218
    :cond_2
    if-nez v19, :cond_3

    .line 219
    const v21, 0x7f0d000f

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    .line 228
    :cond_3
    invoke-static/range {p0 .. p0}, Lcom/koushikdutta/superuser/util/Settings;->getRequirePermission(Landroid/content/Context;)Z

    move-result v21

    if-eqz v21, :cond_6

    if-nez v19, :cond_6

    .line 229
    const-string v21, "Superuser"

    const-string v22, "Automatically denying due to missing permission"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    new-instance v22, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$3;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$3;-><init>(Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;)V

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 282
    :goto_3
    return-void

    .line 198
    .restart local v6       #arr$:[Ljava/lang/String;
    .restart local v8       #i$:I
    .restart local v10       #icon:Landroid/widget/ImageView;
    .restart local v12       #len$:I
    .restart local v14       #perm:Ljava/lang/String;
    .restart local v15       #pi:Landroid/content/pm/PackageInfo;
    .restart local v16       #pkg:Ljava/lang/String;
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 206
    .end local v6           #arr$:[Ljava/lang/String;
    .end local v8           #i$:I
    .end local v12           #len$:I
    .end local v14           #perm:Ljava/lang/String;
    :cond_5
    const/16 v21, 0x0

    goto :goto_2

    .line 212
    .end local v10           #icon:Landroid/widget/ImageView;
    .end local v15           #pi:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v21

    .line 186
    add-int/lit8 v8, v9, 0x1

    .restart local v8       #i$:I
    move v9, v8

    .end local v8           #i$:I
    .restart local v9       #i$:I
    goto/16 :goto_0

    .line 241
    .end local v9           #i$:I
    .end local v16           #pkg:Ljava/lang/String;
    :cond_6
    invoke-static/range {p0 .. p0}, Lcom/koushikdutta/superuser/util/Settings;->getAutomaticResponse(Landroid/content/Context;)I

    move-result v21

    packed-switch v21, :pswitch_data_0

    .line 270
    :cond_7
    new-instance v21, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$6;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$6;-><init>(Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;)V

    invoke-virtual/range {v21 .. v21}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$6;->run()V

    goto :goto_3

    .line 247
    :pswitch_0
    invoke-static/range {p0 .. p0}, Lcom/koushikdutta/superuser/util/Settings;->getRequirePermission(Landroid/content/Context;)Z

    move-result v21

    if-eqz v21, :cond_8

    if-eqz v7, :cond_7

    .line 249
    :cond_8
    const-string v21, "Superuser"

    const-string v22, "Automatically allowing due to user preference"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    new-instance v22, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$4;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$4;-><init>(Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;)V

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 259
    :pswitch_1
    const-string v21, "Superuser"

    const-string v22, "Automatically denying due to user preference"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    new-instance v22, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$5;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$5;-><init>(Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;)V

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 241
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method setContentView()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 454
    const v5, 0x7f0400b9

    invoke-virtual {p0, v5}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->setContentView(I)V

    .line 456
    const v5, 0x7f0d01e7

    invoke-virtual {p0, v5}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    iput-object v5, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mSpinner:Landroid/widget/Spinner;

    .line 457
    iget-object v5, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mSpinner:Landroid/widget/Spinner;

    new-instance v6, Landroid/widget/ArrayAdapter;

    const v7, 0x7f0400bc

    const v8, 0x7f0d01e8

    invoke-direct {v6, p0, v7, v8}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    iput-object v6, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mSpinnerAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 458
    iget-object v0, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mSpinnerIds:[I

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget v2, v0, v1

    .line 459
    .local v2, id:I
    iget-object v5, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mSpinnerAdapter:Landroid/widget/ArrayAdapter;

    new-array v6, v10, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->getGracePeriod()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {p0, v2, v6}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 458
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 462
    .end local v2           #id:I
    :cond_0
    const v5, 0x7f0d01e0

    invoke-virtual {p0, v5}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioGroup;

    iput-object v5, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mRemember:Landroid/widget/RadioGroup;

    .line 463
    const v5, 0x7f0d01e5

    invoke-virtual {p0, v5}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    .line 464
    .local v4, rememberFor:Landroid/widget/RadioButton;
    const v5, 0x7f08000d

    new-array v6, v10, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->getGracePeriod()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {p0, v5, v6}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 466
    const v5, 0x7f0d01e3

    invoke-virtual {p0, v5}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mAllow:Landroid/widget/Button;

    .line 467
    const v5, 0x7f0d01e2

    invoke-virtual {p0, v5}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mDeny:Landroid/widget/Button;

    .line 469
    iget-object v5, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mAllow:Landroid/widget/Button;

    new-instance v6, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$11;

    invoke-direct {v6, p0}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$11;-><init>(Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 504
    iget-object v5, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mDeny:Landroid/widget/Button;

    new-instance v6, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$12;

    invoke-direct {v6, p0}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$12;-><init>(Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 511
    iget-boolean v5, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mRequestReady:Z

    if-eqz v5, :cond_1

    .line 512
    invoke-virtual {p0}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->requestReady()V

    .line 513
    :cond_1
    return-void
.end method
