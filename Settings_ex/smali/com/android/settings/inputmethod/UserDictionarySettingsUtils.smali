.class public Lcom/android/settings/inputmethod/UserDictionarySettingsUtils;
.super Ljava/lang/Object;
.source "UserDictionarySettingsUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLocaleDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "localeStr"

    .prologue
    .line 32
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0808bf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 39
    :goto_0
    return-object v2

    .line 37
    :cond_0
    invoke-static {p1}, Lcom/android/settings/Utils;->createLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    .line 38
    .local v0, locale:Ljava/util/Locale;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v1, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 39
    .local v1, systemLocale:Ljava/util/Locale;
    invoke-virtual {v0, v1}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
