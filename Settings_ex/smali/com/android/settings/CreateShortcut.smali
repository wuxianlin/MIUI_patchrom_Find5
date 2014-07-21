.class public Lcom/android/settings/CreateShortcut;
.super Landroid/app/LauncherActivity;
.source "CreateShortcut.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/LauncherActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTargetIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 36
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 37
    .local v0, targetIntent:Landroid/content/Intent;
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    const-string v1, "codeaurora.intent.filter.settings.multisim.SHORTCUT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    :goto_0
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 43
    return-object v0

    .line 40
    :cond_0
    const-string v1, "com.android.settings.SHORTCUT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method protected onEvaluateShowIcons()Z
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 48
    invoke-virtual {p0, p3}, Lcom/android/settings/CreateShortcut;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v1

    .line 49
    .local v1, shortcutIntent:Landroid/content/Intent;
    const/high16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 50
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 51
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.intent.extra.shortcut.ICON_RESOURCE"

    const/high16 v3, 0x7f03

    invoke-static {p0, v3}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 53
    const-string v2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 54
    const-string v2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p0, p3}, Lcom/android/settings/CreateShortcut;->itemForPosition(I)Landroid/app/LauncherActivity$ListItem;

    move-result-object v3

    iget-object v3, v3, Landroid/app/LauncherActivity$ListItem;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 55
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/android/settings/CreateShortcut;->setResult(ILandroid/content/Intent;)V

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/CreateShortcut;->finish()V

    .line 57
    return-void
.end method

.method protected onQueryPackageManager(Landroid/content/Intent;)Ljava/util/List;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/app/LauncherActivity;->onQueryPackageManager(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v1

    .line 70
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 79
    :goto_0
    return-object v0

    .line 71
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_1
    if-ltz v2, :cond_2

    .line 72
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 73
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-class v3, Lcom/android/settings/Settings$TetherSettingsActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    invoke-static {p0}, Lcom/android/settings/TetherSettings;->showInShortcuts(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 75
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 71
    :cond_1
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 79
    goto :goto_0
.end method
