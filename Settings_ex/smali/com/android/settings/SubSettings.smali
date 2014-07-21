.class public Lcom/android/settings/SubSettings;
.super Lcom/android/settings/Settings;
.source "SubSettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/settings/Settings;-><init>()V

    return-void
.end method

.method private popFragment()Z
    .locals 2

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/android/settings/SubSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 47
    .local v0, fm:Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 48
    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 49
    const/4 v1, 0x1

    .line 51
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 3
    .parameter "fragmentName"

    .prologue
    .line 41
    const-string v0, "SubSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launching fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const/4 v0, 0x1

    return v0
.end method

.method public onNavigateUp()Z
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/settings/SubSettings;->popFragment()Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/android/settings/SubSettings;->finish()V

    .line 36
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
