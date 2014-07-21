.class public Lcom/android/settings/print/SettingsUtils;
.super Ljava/lang/Object;
.source "SettingsUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static readEnabledPrintServices(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .local v3, enabledServices:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "enabled_print_services"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 42
    .local v4, enabledServicesSetting:Ljava/lang/String;
    if-nez v4, :cond_1

    .line 57
    :cond_0
    return-object v3

    .line 46
    :cond_1
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v5, 0x3a

    invoke-direct {v0, v5}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 48
    .local v0, colonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v0, v4}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 50
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
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static writeEnabledPrintServices(Landroid/content/Context;Ljava/util/List;)V
    .locals 7
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, services:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 64
    .local v3, serviceCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 65
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 66
    .local v2, service:Landroid/content/ComponentName;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 67
    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 69
    :cond_0
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    .end local v2           #service:Landroid/content/ComponentName;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enabled_print_services"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 74
    return-void
.end method
