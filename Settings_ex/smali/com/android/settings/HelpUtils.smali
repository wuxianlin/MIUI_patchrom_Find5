.class public Lcom/android/settings/HelpUtils;
.super Ljava/lang/Object;
.source "HelpUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sCachedVersionCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/android/settings/HelpUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/HelpUtils;->TAG:Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/HelpUtils;->sCachedVersionCode:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static prepareHelpMenuItem(Landroid/content/Context;Landroid/view/MenuItem;Ljava/lang/String;)Z
    .locals 6
    .parameter "context"
    .parameter "helpMenuItem"
    .parameter "helpUrlString"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 81
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 83
    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 110
    :goto_0
    return v3

    .line 89
    :cond_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/settings/HelpUtils;->uriWithAddedParameters(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 93
    .local v1, fullUri:Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v2, v5, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 94
    .local v2, intent:Landroid/content/Intent;
    const/high16 v5, 0x1080

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 99
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    .line 100
    .local v0, component:Landroid/content/ComponentName;
    if-eqz v0, :cond_1

    .line 101
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 102
    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 103
    invoke-interface {p1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move v3, v4

    .line 110
    goto :goto_0

    .line 105
    :cond_1
    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public static uriWithAddedParameters(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 6
    .parameter "context"
    .parameter "baseUri"

    .prologue
    .line 120
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 123
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v3, "hl"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 126
    sget-object v3, Lcom/android/settings/HelpUtils;->sCachedVersionCode:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 130
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 132
    .local v2, info:Landroid/content/pm/PackageInfo;
    iget v3, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/settings/HelpUtils;->sCachedVersionCode:Ljava/lang/String;

    .line 135
    const-string v3, "version"

    sget-object v4, Lcom/android/settings/HelpUtils;->sCachedVersionCode:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .end local v2           #info:Landroid/content/pm/PackageInfo;
    :goto_0
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    return-object v3

    .line 136
    :catch_0
    move-exception v1

    .line 139
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Lcom/android/settings/HelpUtils;->TAG:Ljava/lang/String;

    const-string v4, "Invalid package name for context"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 142
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    const-string v3, "version"

    sget-object v4, Lcom/android/settings/HelpUtils;->sCachedVersionCode:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0
.end method
