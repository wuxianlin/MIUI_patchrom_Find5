.class public Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
.super Lcom/android/settings_ex/applications/ApplicationsState$SizeInfo;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppEntry"
.end annotation


# instance fields
.field final apkFile:Ljava/io/File;

.field externalSize:J

.field externalSizeStr:Ljava/lang/String;

.field icon:Landroid/graphics/drawable/Drawable;

.field final id:J

.field info:Landroid/content/pm/ApplicationInfo;

.field internalSize:J

.field internalSizeStr:Ljava/lang/String;

.field label:Ljava/lang/String;

.field mounted:Z

.field normalizedLabel:Ljava/lang/String;

.field size:J

.field sizeLoadStart:J

.field sizeStale:Z

.field sizeStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;J)V
    .locals 2
    .parameter "context"
    .parameter "info"
    .parameter "id"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/settings_ex/applications/ApplicationsState$SizeInfo;-><init>()V

    .line 119
    new-instance v0, Ljava/io/File;

    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->apkFile:Ljava/io/File;

    .line 120
    iput-wide p3, p0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->id:J

    .line 121
    iput-object p2, p0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    .line 122
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->size:J

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->sizeStale:Z

    .line 124
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->ensureLabel(Landroid/content/Context;)V

    .line 125
    return-void
.end method


# virtual methods
.method ensureIconLocked(Landroid/content/Context;Landroid/content/pm/PackageManager;)Z
    .locals 3
    .parameter "context"
    .parameter "pm"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 141
    iget-object v2, p0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_2

    .line 142
    iget-object v2, p0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->apkFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 143
    iget-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, p2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    .line 159
    :goto_0
    return v0

    .line 146
    :cond_0
    iput-boolean v1, p0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->mounted:Z

    .line 147
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1080621

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    :cond_1
    move v0, v1

    .line 159
    goto :goto_0

    .line 150
    :cond_2
    iget-boolean v2, p0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->mounted:Z

    if-nez v2, :cond_1

    .line 153
    iget-object v2, p0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->apkFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 154
    iput-boolean v0, p0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->mounted:Z

    .line 155
    iget-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, p2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method ensureLabel(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 128
    iget-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->mounted:Z

    if-nez v1, :cond_1

    .line 129
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->apkFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 130
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->mounted:Z

    .line 131
    iget-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    .line 138
    :cond_1
    :goto_0
    return-void

    .line 133
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->mounted:Z

    .line 134
    iget-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 135
    .local v0, label:Ljava/lang/CharSequence;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_1
.end method

.method getNormalizedLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->normalizedLabel:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->normalizedLabel:Ljava/lang/String;

    .line 104
    :goto_0
    return-object v0

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings_ex/applications/ApplicationsState;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->normalizedLabel:Ljava/lang/String;

    .line 104
    iget-object v0, p0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->normalizedLabel:Ljava/lang/String;

    goto :goto_0
.end method
