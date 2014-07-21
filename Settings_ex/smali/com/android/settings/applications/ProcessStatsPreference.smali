.class public Lcom/android/settings/applications/ProcessStatsPreference;
.super Landroid/preference/Preference;
.source "ProcessStatsPreference.java"


# instance fields
.field private final mEntry:Lcom/android/settings/applications/ProcStatsEntry;

.field private mProgress:I

.field private mProgressText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Lcom/android/settings/applications/ProcStatsEntry;)V
    .locals 1
    .parameter "context"
    .parameter "icon"
    .parameter "entry"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 36
    iput-object p3, p0, Lcom/android/settings/applications/ProcessStatsPreference;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    .line 37
    const v0, 0x7f04000c

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ProcessStatsPreference;->setLayoutResource(I)V

    .line 38
    if-eqz p2, :cond_0

    .end local p2
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/settings/applications/ProcessStatsPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 39
    return-void

    .line 38
    .restart local p2
    :cond_0
    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    .end local p2
    const/4 v0, 0x0

    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_0
.end method


# virtual methods
.method public getEntry()Lcom/android/settings/applications/ProcStatsEntry;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsPreference;->mEntry:Lcom/android/settings/applications/ProcStatsEntry;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 56
    const v2, 0x102000d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 57
    .local v0, progress:Landroid/widget/ProgressBar;
    iget v2, p0, Lcom/android/settings/applications/ProcessStatsPreference;->mProgress:I

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 59
    const v2, 0x1020014

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 60
    .local v1, text1:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/settings/applications/ProcessStatsPreference;->mProgressText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    return-void
.end method

.method public setPercent(DD)V
    .locals 6
    .parameter "percentOfWeight"
    .parameter "percentOfTime"

    .prologue
    .line 46
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/android/settings/applications/ProcessStatsPreference;->mProgress:I

    .line 47
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080b3e

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p3, p4}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsPreference;->mProgressText:Ljava/lang/CharSequence;

    .line 49
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsPreference;->notifyChanged()V

    .line 50
    return-void
.end method
