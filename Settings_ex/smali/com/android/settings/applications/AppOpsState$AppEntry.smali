.class public Lcom/android/settings/applications/AppOpsState$AppEntry;
.super Ljava/lang/Object;
.source "AppOpsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/AppOpsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppEntry"
.end annotation


# instance fields
.field private final mApkFile:Ljava/io/File;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private final mInfo:Landroid/content/pm/ApplicationInfo;

.field private mLabel:Ljava/lang/String;

.field private mMounted:Z

.field private final mOpSwitches:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/applications/AppOpsState$AppOpEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mOps:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/AppOpsManager$OpEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mState:Lcom/android/settings/applications/AppOpsState;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/AppOpsState;Landroid/content/pm/ApplicationInfo;)V
    .locals 2
    .parameter "state"
    .parameter "info"

    .prologue
    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppEntry;->mOps:Landroid/util/SparseArray;

    .line 244
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppEntry;->mOpSwitches:Landroid/util/SparseArray;

    .line 251
    iput-object p1, p0, Lcom/android/settings/applications/AppOpsState$AppEntry;->mState:Lcom/android/settings/applications/AppOpsState;

    .line 252
    iput-object p2, p0, Lcom/android/settings/applications/AppOpsState$AppEntry;->mInfo:Landroid/content/pm/ApplicationInfo;

    .line 253
    new-instance v0, Ljava/io/File;

    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppEntry;->mApkFile:Ljava/io/File;

    .line 254
    return-void
.end method


# virtual methods
.method public addOp(Lcom/android/settings/applications/AppOpsState$AppOpEntry;Landroid/app/AppOpsManager$OpEntry;)V
    .locals 2
    .parameter "entry"
    .parameter "op"

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppEntry;->mOps:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 258
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppEntry;->mOpSwitches:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v1

    invoke-static {v1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 259
    return-void
.end method

.method public getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppEntry;->mInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    .line 279
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppEntry;->mApkFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppEntry;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/android/settings/applications/AppOpsState$AppEntry;->mState:Lcom/android/settings/applications/AppOpsState;

    iget-object v1, v1, Lcom/android/settings/applications/AppOpsState;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 281
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 297
    :goto_0
    return-object v0

    .line 283
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/AppOpsState$AppEntry;->mMounted:Z

    .line 297
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppEntry;->mState:Lcom/android/settings/applications/AppOpsState;

    iget-object v0, v0, Lcom/android/settings/applications/AppOpsState;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 285
    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/applications/AppOpsState$AppEntry;->mMounted:Z

    if-nez v0, :cond_3

    .line 288
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppEntry;->mApkFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/AppOpsState$AppEntry;->mMounted:Z

    .line 290
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppEntry;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/android/settings/applications/AppOpsState$AppEntry;->mState:Lcom/android/settings/applications/AppOpsState;

    iget-object v1, v1, Lcom/android/settings/applications/AppOpsState;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 291
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 294
    :cond_3
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppEntry;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getOpSwitch(I)Lcom/android/settings/applications/AppOpsState$AppOpEntry;
    .locals 2
    .parameter "op"

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppEntry;->mOpSwitches:Landroid/util/SparseArray;

    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/AppOpsState$AppOpEntry;

    return-object v0
.end method

.method public hasOp(I)Z
    .locals 1
    .parameter "op"

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppEntry;->mOps:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method loadLabel(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 306
    iget-object v1, p0, Lcom/android/settings/applications/AppOpsState$AppEntry;->mLabel:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/applications/AppOpsState$AppEntry;->mMounted:Z

    if-nez v1, :cond_1

    .line 307
    :cond_0
    iget-object v1, p0, Lcom/android/settings/applications/AppOpsState$AppEntry;->mApkFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 308
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/applications/AppOpsState$AppEntry;->mMounted:Z

    .line 309
    iget-object v1, p0, Lcom/android/settings/applications/AppOpsState$AppEntry;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/applications/AppOpsState$AppEntry;->mLabel:Ljava/lang/String;

    .line 316
    :cond_1
    :goto_0
    return-void

    .line 311
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/applications/AppOpsState$AppEntry;->mMounted:Z

    .line 312
    iget-object v1, p0, Lcom/android/settings/applications/AppOpsState$AppEntry;->mInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 313
    .local v0, label:Ljava/lang/CharSequence;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/android/settings/applications/AppOpsState$AppEntry;->mLabel:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/settings/applications/AppOpsState$AppEntry;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppEntry;->mLabel:Ljava/lang/String;

    return-object v0
.end method
