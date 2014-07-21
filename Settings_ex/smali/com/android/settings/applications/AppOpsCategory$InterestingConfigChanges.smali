.class public Lcom/android/settings/applications/AppOpsCategory$InterestingConfigChanges;
.super Ljava/lang/Object;
.source "AppOpsCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/AppOpsCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InterestingConfigChanges"
.end annotation


# instance fields
.field final mLastConfiguration:Landroid/content/res/Configuration;

.field mLastDensity:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsCategory$InterestingConfigChanges;->mLastConfiguration:Landroid/content/res/Configuration;

    return-void
.end method


# virtual methods
.method applyNewConfig(Landroid/content/res/Resources;)Z
    .locals 6
    .parameter "res"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 75
    iget-object v4, p0, Lcom/android/settings/applications/AppOpsCategory$InterestingConfigChanges;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v0

    .line 76
    .local v0, configChanges:I
    iget v4, p0, Lcom/android/settings/applications/AppOpsCategory$InterestingConfigChanges;->mLastDensity:I

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    if-eq v4, v5, :cond_2

    move v1, v3

    .line 77
    .local v1, densityChanged:Z
    :goto_0
    if-nez v1, :cond_0

    and-int/lit16 v4, v0, 0x304

    if-eqz v4, :cond_1

    .line 79
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v2, p0, Lcom/android/settings/applications/AppOpsCategory$InterestingConfigChanges;->mLastDensity:I

    move v2, v3

    .line 82
    :cond_1
    return v2

    .end local v1           #densityChanged:Z
    :cond_2
    move v1, v2

    .line 76
    goto :goto_0
.end method
