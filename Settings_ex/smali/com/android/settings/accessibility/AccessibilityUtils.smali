.class Lcom/android/settings/accessibility/AccessibilityUtils;
.super Ljava/lang/Object;
.source "AccessibilityUtils.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;
    .locals 7
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "enabled_accessibility_services"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 42
    .local v4, enabledServicesSetting:Ljava/lang/String;
    if-nez v4, :cond_1

    .line 43
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    .line 59
    :cond_0
    return-object v3

    .line 46
    :cond_1
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 47
    .local v3, enabledServices:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    sget-object v0, Lcom/android/settings/accessibility/AccessibilitySettings;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 48
    .local v0, colonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v0, v4}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 50
    :cond_2
    :goto_0
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 51
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, componentNameString:Ljava/lang/String;
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 54
    .local v2, enabledService:Landroid/content/ComponentName;
    if-eqz v2, :cond_2

    .line 55
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static getTextForLocale(Landroid/content/Context;Ljava/util/Locale;I)Ljava/lang/CharSequence;
    .locals 5
    .parameter "context"
    .parameter "locale"
    .parameter "resId"

    .prologue
    const/4 v4, 0x0

    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 67
    .local v2, res:Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 68
    .local v0, config:Landroid/content/res/Configuration;
    iget-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 70
    .local v1, prevLocale:Ljava/util/Locale;
    :try_start_0
    iput-object p1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 71
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 72
    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 74
    iput-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 75
    invoke-virtual {v2, v0, v4}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    return-object v3

    .line 74
    :catchall_0
    move-exception v3

    iput-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 75
    invoke-virtual {v2, v0, v4}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    throw v3
.end method
