.class public Lcom/android/settings/applications/ProcessStatsDetail;
.super Landroid/app/Fragment;
.source "ProcessStatsDetail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field static final sServiceCompare:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings/applications/ProcStatsEntry$Service;",
            ">;"
        }
    .end annotation
.end field

.field static final sServicePkgCompare:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/ProcStatsEntry$Service;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

.field private mDetailsParent:Landroid/view/ViewGroup;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mEntry:Lcom/android/settings/applications/ProcStatsEntry;

.field private mForceStopButton:Landroid/widget/Button;

.field private mMaxWeight:J

.field private mPm:Landroid/content/pm/PackageManager;

.field private mReportButton:Landroid/widget/Button;

.field private mRootView:Landroid/view/View;

.field private mServicesParent:Landroid/view/ViewGroup;

.field private mTitleView:Landroid/widget/TextView;

.field private mTotalTime:J

.field private mTwoButtonsPanel:Landroid/view/ViewGroup;

.field private mUseUss:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 211
    new-instance v0, Lcom/android/settings/applications/ProcessStatsDetail$1;

    invoke-direct {v0}, Lcom/android/settings/applications/ProcessStatsDetail$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ProcessStatsDetail;->sServiceCompare:Ljava/util/Comparator;

    .line 224
    new-instance v0, Lcom/android/settings/applications/ProcessStatsDetail$2;

    invoke-direct {v0}, Lcom/android/settings/applications/ProcessStatsDetail$2;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ProcessStatsDetail;->sServicePkgCompare:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 286
    new-instance v0, Lcom/android/settings/applications/ProcessStatsDetail$3;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/ProcessStatsDetail$3;-><init>(Lcom/android/settings/applications/ProcessStatsDetail;)V

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/ProcessStatsDetail;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mForceStopButton:Landroid/widget/Button;

    return-object v0
.end method

.method private addDetailsItem(Landroid/view/ViewGroup;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 6
    .parameter "parent"
    .parameter "label"
    .parameter "value"

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 191
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f040082

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 193
    .local v1, item:Landroid/view/ViewGroup;
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 194
    const v4, 0x7f0d010d

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 195
    .local v2, labelView:Landroid/widget/TextView;
    const v4, 0x7f0d003e

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 196
    .local v3, valueView:Landroid/widget/TextView;
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    return-void
.end method

.method private addPackageHeaderItem(Landroid/view/ViewGroup;Ljava/lang/String;)V
    .locals 8
    .parameter "parent"
    .parameter "packageName"

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 174
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f0400bd

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 176
    .local v4, item:Landroid/view/ViewGroup;
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 177
    const v6, 0x7f0d0038

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 178
    .local v2, icon:Landroid/widget/ImageView;
    const v6, 0x7f0d002f

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 179
    .local v5, nameView:Landroid/widget/TextView;
    const v6, 0x7f0d00b7

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 181
    .local v1, descriptionView:Landroid/widget/TextView;
    :try_start_0
    iget-object v6, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mPm:Landroid/content/pm/PackageManager;

    const/4 v7, 0x0

    invoke-virtual {v6, p2, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 182
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    iget-object v6, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v6}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 183
    iget-object v6, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    :goto_0
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    return-void

    .line 184
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method private checkForceStop()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 294
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ProcStatsEntry;->mUiPackage:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    iget v0, v0, Lcom/android/settings/applications/ProcStatsEntry;->mUid:I

    const/16 v3, 0x2710

    if-ge v0, v3, :cond_1

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 316
    :goto_0
    return-void

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ProcStatsEntry;->mUiPackage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 299
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 303
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ProcStatsEntry;->mUiPackage:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 304
    .local v8, info:Landroid/content/pm/ApplicationInfo;
    iget v0, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x20

    and-int/2addr v0, v3

    if-nez v0, :cond_3

    .line 305
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mForceStopButton:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    .end local v8           #info:Landroid/content/pm/ApplicationInfo;
    :cond_3
    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.QUERY_PACKAGE_RESTART"

    const-string v3, "package"

    iget-object v4, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v4, v4, Lcom/android/settings/applications/ProcStatsEntry;->mUiPackage:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 311
    .local v1, intent:Landroid/content/Intent;
    const-string v0, "android.intent.extra.PACKAGES"

    new-array v3, v6, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v4, v4, Lcom/android/settings/applications/ProcStatsEntry;->mUiPackage:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    const-string v0, "android.intent.extra.UID"

    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    iget v3, v3, Lcom/android/settings/applications/ProcStatsEntry;->mUid:I

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 313
    const-string v0, "android.intent.extra.user_handle"

    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    iget v3, v3, Lcom/android/settings/applications/ProcStatsEntry;->mUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 314
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 307
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private createDetails()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 117
    iget-object v8, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    iget-wide v8, v8, Lcom/android/settings/applications/ProcStatsEntry;->mWeight:J

    long-to-double v8, v8

    iget-wide v10, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mMaxWeight:J

    long-to-double v10, v10

    div-double/2addr v8, v10

    const-wide/high16 v10, 0x4059

    mul-double v3, v8, v10

    .line 119
    .local v3, percentOfWeight:D
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v0, v8

    .line 120
    .local v0, appLevel:I
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    iget-wide v9, v9, Lcom/android/settings/applications/ProcStatsEntry;->mDuration:J

    iget-wide v11, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mTotalTime:J

    invoke-static {v8, v9, v10, v11, v12}, Lcom/android/settings/applications/ProcessStatsDetail;->makePercentString(Landroid/content/res/Resources;JJ)Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, appLevelText:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mRootView:Landroid/view/View;

    const v9, 0x1020010

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 124
    .local v6, summary:Landroid/widget/TextView;
    iget-object v8, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v8, v8, Lcom/android/settings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    iget-object v8, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mRootView:Landroid/view/View;

    const v9, 0x1020016

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mTitleView:Landroid/widget/TextView;

    .line 127
    iget-object v8, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mTitleView:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v9, v9, Lcom/android/settings/applications/ProcStatsEntry;->mUiBaseLabel:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v8, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mRootView:Landroid/view/View;

    const v9, 0x1020014

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 129
    .local v7, text1:Landroid/widget/TextView;
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v8, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mRootView:Landroid/view/View;

    const v9, 0x102000d

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    .line 131
    .local v5, progress:Landroid/widget/ProgressBar;
    invoke-virtual {v5, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 132
    iget-object v8, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mRootView:Landroid/view/View;

    const v9, 0x1020006

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 133
    .local v2, icon:Landroid/widget/ImageView;
    iget-object v8, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v8, v8, Lcom/android/settings/applications/ProcStatsEntry;->mUiTargetApp:Landroid/content/pm/ApplicationInfo;

    if-eqz v8, :cond_0

    .line 134
    iget-object v8, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v8, v8, Lcom/android/settings/applications/ProcStatsEntry;->mUiTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v9, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v9}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 137
    :cond_0
    iget-object v8, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mRootView:Landroid/view/View;

    const v9, 0x7f0d0155

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iput-object v8, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mTwoButtonsPanel:Landroid/view/ViewGroup;

    .line 138
    iget-object v8, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mRootView:Landroid/view/View;

    const v9, 0x7f0d0223

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mForceStopButton:Landroid/widget/Button;

    .line 139
    iget-object v8, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mRootView:Landroid/view/View;

    const v9, 0x7f0d0222

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mReportButton:Landroid/widget/Button;

    .line 140
    iget-object v8, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v8, v13}, Landroid/widget/Button;->setEnabled(Z)V

    .line 141
    iget-object v8, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mReportButton:Landroid/widget/Button;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 143
    iget-object v8, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mRootView:Landroid/view/View;

    const v9, 0x7f0d0156

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iput-object v8, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mDetailsParent:Landroid/view/ViewGroup;

    .line 144
    iget-object v8, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mRootView:Landroid/view/View;

    const v9, 0x7f0d01af

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iput-object v8, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mServicesParent:Landroid/view/ViewGroup;

    .line 146
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->fillDetailsSection()V

    .line 147
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->fillServicesSection()V

    .line 149
    iget-object v8, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    iget v8, v8, Lcom/android/settings/applications/ProcStatsEntry;->mUid:I

    const/16 v9, 0x2710

    if-lt v8, v9, :cond_1

    .line 150
    iget-object v8, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mForceStopButton:Landroid/widget/Button;

    const v9, 0x7f080815

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(I)V

    .line 151
    iget-object v8, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mForceStopButton:Landroid/widget/Button;

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 152
    iget-object v8, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v8, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v8, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mTwoButtonsPanel:Landroid/view/ViewGroup;

    invoke-virtual {v8, v13}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 157
    :goto_0
    return-void

    .line 155
    :cond_1
    iget-object v8, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mTwoButtonsPanel:Landroid/view/ViewGroup;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private doAction(I)V
    .locals 1
    .parameter "action"

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 165
    .local v0, pa:Landroid/preference/PreferenceActivity;
    packed-switch p1, :pswitch_data_0

    .line 170
    :goto_0
    return-void

    .line 167
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->killProcesses()V

    goto :goto_0

    .line 165
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private fillDetailsSection()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x400

    .line 201
    iget-object v2, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mDetailsParent:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0809b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-boolean v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mUseUss:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    iget-wide v0, v0, Lcom/android/settings/applications/ProcStatsEntry;->mAvgUss:J

    :goto_0
    mul-long/2addr v0, v5

    invoke-static {v4, v0, v1}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v3, v0}, Lcom/android/settings/applications/ProcessStatsDetail;->addDetailsItem(Landroid/view/ViewGroup;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 204
    iget-object v2, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mDetailsParent:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0809b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-boolean v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mUseUss:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    iget-wide v0, v0, Lcom/android/settings/applications/ProcStatsEntry;->mMaxUss:J

    :goto_1
    mul-long/2addr v0, v5

    invoke-static {v4, v0, v1}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v3, v0}, Lcom/android/settings/applications/ProcessStatsDetail;->addDetailsItem(Landroid/view/ViewGroup;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 207
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mDetailsParent:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0809b9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    iget-wide v3, v3, Lcom/android/settings/applications/ProcStatsEntry;->mDuration:J

    iget-wide v5, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mTotalTime:J

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/settings/applications/ProcessStatsDetail;->makePercentString(Landroid/content/res/Resources;JJ)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/applications/ProcessStatsDetail;->addDetailsItem(Landroid/view/ViewGroup;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 209
    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    iget-wide v0, v0, Lcom/android/settings/applications/ProcStatsEntry;->mAvgPss:J

    goto :goto_0

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    iget-wide v0, v0, Lcom/android/settings/applications/ProcStatsEntry;->mMaxPss:J

    goto :goto_1
.end method

.method private fillServicesSection()V
    .locals 21

    .prologue
    .line 241
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v14, v14, Lcom/android/settings/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v14

    if-lez v14, :cond_6

    .line 242
    const/4 v2, 0x0

    .line 244
    .local v2, addPackageSections:Z
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 246
    .local v11, servicePkgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/settings/applications/ProcStatsEntry$Service;>;>;"
    const/4 v5, 0x0

    .local v5, ip:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v14, v14, Lcom/android/settings/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v14

    if-ge v5, v14, :cond_0

    .line 247
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v14, v14, Lcom/android/settings/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v14, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    .line 249
    .local v12, services:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/ProcStatsEntry$Service;>;"
    sget-object v14, Lcom/android/settings/applications/ProcessStatsDetail;->sServiceCompare:Ljava/util/Comparator;

    invoke-static {v12, v14}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 250
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 252
    .end local v12           #services:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/ProcStatsEntry$Service;>;"
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v14, v14, Lcom/android/settings/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v14

    const/4 v15, 0x1

    if-gt v14, v15, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v14, v14, Lcom/android/settings/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/settings/applications/ProcStatsEntry$Service;

    iget-object v14, v14, Lcom/android/settings/applications/ProcStatsEntry$Service;->mPackage:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v15, v15, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 254
    :cond_1
    const/4 v2, 0x1

    .line 256
    sget-object v14, Lcom/android/settings/applications/ProcessStatsDetail;->sServicePkgCompare:Ljava/util/Comparator;

    invoke-static {v11, v14}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 258
    :cond_2
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v5, v14, :cond_6

    .line 259
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    .line 260
    .restart local v12       #services:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/ProcStatsEntry$Service;>;"
    if-eqz v2, :cond_3

    .line 261
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/applications/ProcessStatsDetail;->mServicesParent:Landroid/view/ViewGroup;

    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/settings/applications/ProcStatsEntry$Service;

    iget-object v14, v14, Lcom/android/settings/applications/ProcStatsEntry$Service;->mPackage:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v14}, Lcom/android/settings/applications/ProcessStatsDetail;->addPackageHeaderItem(Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 263
    :cond_3
    const/4 v6, 0x0

    .local v6, is:I
    :goto_2
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v6, v14, :cond_5

    .line 264
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings/applications/ProcStatsEntry$Service;

    .line 265
    .local v10, service:Lcom/android/settings/applications/ProcStatsEntry$Service;
    iget-object v7, v10, Lcom/android/settings/applications/ProcStatsEntry$Service;->mName:Ljava/lang/String;

    .line 266
    .local v7, label:Ljava/lang/String;
    const/16 v14, 0x2e

    invoke-virtual {v7, v14}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v13

    .line 267
    .local v13, tail:I
    if-ltz v13, :cond_4

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    if-ge v13, v14, :cond_4

    .line 268
    add-int/lit8 v14, v13, 0x1

    invoke-virtual {v7, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 270
    :cond_4
    iget-wide v3, v10, Lcom/android/settings/applications/ProcStatsEntry$Service;->mDuration:J

    .line 271
    .local v3, duration:J
    long-to-double v14, v3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/applications/ProcessStatsDetail;->mTotalTime:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    const-wide/high16 v16, 0x4059

    mul-double v8, v14, v16

    .line 272
    .local v8, percentOfTime:D
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/applications/ProcessStatsDetail;->mServicesParent:Landroid/view/ViewGroup;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f080b3e

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-int v0, v0

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-virtual/range {v15 .. v17}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v7, v15}, Lcom/android/settings/applications/ProcessStatsDetail;->addDetailsItem(Landroid/view/ViewGroup;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 263
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 258
    .end local v3           #duration:J
    .end local v7           #label:Ljava/lang/String;
    .end local v8           #percentOfTime:D
    .end local v10           #service:Lcom/android/settings/applications/ProcStatsEntry$Service;
    .end local v13           #tail:I
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 277
    .end local v2           #addPackageSections:Z
    .end local v5           #ip:I
    .end local v6           #is:I
    .end local v11           #servicePkgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/settings/applications/ProcStatsEntry$Service;>;>;"
    .end local v12           #services:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/ProcStatsEntry$Service;>;"
    :cond_6
    return-void
.end method

.method private killProcesses()V
    .locals 3

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 282
    .local v0, am:Landroid/app/ActivityManager;
    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ProcStatsEntry;->mUiPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 283
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->checkForceStop()V

    .line 284
    return-void
.end method

.method public static makePercentString(Landroid/content/res/Resources;JJ)Ljava/lang/String;
    .locals 7
    .parameter "res"
    .parameter "amount"
    .parameter "total"

    .prologue
    .line 77
    long-to-double v2, p1

    long-to-double v4, p3

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4059

    mul-double v0, v2, v4

    .line 78
    .local v0, percent:D
    const v2, 0x7f080b3e

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    long-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 160
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/applications/ProcessStatsDetail;->doAction(I)V

    .line 161
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mPm:Landroid/content/pm/PackageManager;

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 87
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "entry"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/ProcStatsEntry;

    iput-object v1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    .line 88
    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v2, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/ProcStatsEntry;->retrieveUiData(Landroid/content/pm/PackageManager;)V

    .line 89
    const-string v1, "use_uss"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mUseUss:Z

    .line 90
    const-string v1, "max_weight"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mMaxWeight:J

    .line 91
    const-string v1, "total_time"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mTotalTime:J

    .line 92
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 97
    const v1, 0x7f0400ae

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 98
    .local v0, view:Landroid/view/View;
    invoke-static {p2, v0, v0, v2}, Lcom/android/settings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 100
    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mRootView:Landroid/view/View;

    .line 101
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->createDetails()V

    .line 102
    return-object v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 113
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 114
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 107
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 108
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->checkForceStop()V

    .line 109
    return-void
.end method
