.class Lcom/android/settings_ex/location/SettingsInjector;
.super Ljava/lang/Object;
.source "SettingsInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/location/SettingsInjector$1;,
        Lcom/android/settings_ex/location/SettingsInjector$Setting;,
        Lcom/android/settings_ex/location/SettingsInjector$StatusLoadingHandler;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mSettings:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/settings_ex/location/SettingsInjector$Setting;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/android/settings_ex/location/SettingsInjector;->mContext:Landroid/content/Context;

    .line 97
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/location/SettingsInjector;->mSettings:Ljava/util/Set;

    .line 98
    new-instance v0, Lcom/android/settings_ex/location/SettingsInjector$StatusLoadingHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/location/SettingsInjector$StatusLoadingHandler;-><init>(Lcom/android/settings_ex/location/SettingsInjector;Lcom/android/settings_ex/location/SettingsInjector$1;)V

    iput-object v0, p0, Lcom/android/settings_ex/location/SettingsInjector;->mHandler:Landroid/os/Handler;

    .line 99
    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/location/SettingsInjector;)Ljava/util/Set;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings_ex/location/SettingsInjector;->mSettings:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/location/SettingsInjector;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings_ex/location/SettingsInjector;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/location/SettingsInjector;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings_ex/location/SettingsInjector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addServiceSetting(Ljava/util/List;Lcom/android/settings_ex/location/InjectedSetting;)Landroid/preference/Preference;
    .locals 7
    .parameter
    .parameter "info"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/Preference;",
            ">;",
            "Lcom/android/settings_ex/location/InjectedSetting;",
            ")",
            "Landroid/preference/Preference;"
        }
    .end annotation

    .prologue
    .line 250
    .local p1, prefs:Ljava/util/List;,"Ljava/util/List<Landroid/preference/Preference;>;"
    new-instance v2, Landroid/preference/Preference;

    iget-object v4, p0, Lcom/android/settings_ex/location/SettingsInjector;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 251
    .local v2, pref:Landroid/preference/Preference;
    iget-object v4, p2, Lcom/android/settings_ex/location/InjectedSetting;->title:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 252
    const v4, 0x7f0807b8

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 253
    iget-object v4, p0, Lcom/android/settings_ex/location/SettingsInjector;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 254
    .local v1, pm:Landroid/content/pm/PackageManager;
    iget-object v4, p2, Lcom/android/settings_ex/location/InjectedSetting;->packageName:Ljava/lang/String;

    iget v5, p2, Lcom/android/settings_ex/location/InjectedSetting;->iconId:I

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 255
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 257
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 258
    .local v3, settingIntent:Landroid/content/Intent;
    iget-object v4, p2, Lcom/android/settings_ex/location/InjectedSetting;->packageName:Ljava/lang/String;

    iget-object v5, p2, Lcom/android/settings_ex/location/InjectedSetting;->settingsActivity:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 261
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    return-object v2
.end method

.method private getSettings()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/location/InjectedSetting;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x3

    .line 111
    iget-object v8, p0, Lcom/android/settings_ex/location/SettingsInjector;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 112
    .local v3, pm:Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string v8, "android.location.SettingInjectorService"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 114
    .local v2, intent:Landroid/content/Intent;
    const/16 v8, 0x80

    invoke-virtual {v3, v2, v8}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 116
    .local v5, resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v8, "SettingsInjector"

    invoke-static {v8, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 117
    const-string v8, "SettingsInjector"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Found services: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 120
    .local v7, settings:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings_ex/location/InjectedSetting;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 122
    .local v4, resolveInfo:Landroid/content/pm/ResolveInfo;
    :try_start_0
    invoke-static {v4, v3}, Lcom/android/settings_ex/location/SettingsInjector;->parseServiceInfo(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Lcom/android/settings_ex/location/InjectedSetting;

    move-result-object v6

    .line 123
    .local v6, setting:Lcom/android/settings_ex/location/InjectedSetting;
    if-nez v6, :cond_1

    .line 124
    const-string v8, "SettingsInjector"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to load service info "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 128
    .end local v6           #setting:Lcom/android/settings_ex/location/InjectedSetting;
    :catch_0
    move-exception v0

    .line 129
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v8, "SettingsInjector"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to load service info "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 126
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v6       #setting:Lcom/android/settings_ex/location/InjectedSetting;
    :cond_1
    :try_start_1
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 130
    .end local v6           #setting:Lcom/android/settings_ex/location/InjectedSetting;
    :catch_1
    move-exception v0

    .line 131
    .local v0, e:Ljava/io/IOException;
    const-string v8, "SettingsInjector"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to load service info "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 134
    .end local v0           #e:Ljava/io/IOException;
    .end local v4           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_2
    const-string v8, "SettingsInjector"

    invoke-static {v8, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 135
    const-string v8, "SettingsInjector"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Loaded settings: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_3
    return-object v7
.end method

.method private static parseAttributes(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;Landroid/util/AttributeSet;)Lcom/android/settings_ex/location/InjectedSetting;
    .locals 7
    .parameter "packageName"
    .parameter "className"
    .parameter "res"
    .parameter "attrs"

    .prologue
    .line 200
    sget-object v4, Landroid/R$styleable;->SettingInjectorService:[I

    invoke-virtual {p2, p3, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 204
    .local v1, sa:Landroid/content/res/TypedArray;
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 205
    .local v3, title:Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 207
    .local v0, iconId:I
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 209
    .local v2, settingsActivity:Ljava/lang/String;
    const-string v4, "SettingsInjector"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 210
    const-string v4, "SettingsInjector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parsed title: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", iconId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", settingsActivity: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_0
    invoke-static {p0, p1, v3, v0, v2}, Lcom/android/settings_ex/location/InjectedSetting;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings_ex/location/InjectedSetting;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 216
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v4

    .end local v0           #iconId:I
    .end local v2           #settingsActivity:Ljava/lang/String;
    .end local v3           #title:Ljava/lang/String;
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v4
.end method

.method private static parseServiceInfo(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Lcom/android/settings_ex/location/InjectedSetting;
    .locals 11
    .parameter "service"
    .parameter "pm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    iget-object v6, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 151
    .local v6, si:Landroid/content/pm/ServiceInfo;
    iget-object v0, v6, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 153
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    iget v8, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_1

    .line 154
    const-string v8, "SettingsInjector"

    const/4 v9, 0x5

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 155
    const-string v8, "SettingsInjector"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Ignoring attempt to inject setting from app not in system image: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const/4 v8, 0x0

    .line 189
    :cond_0
    :goto_0
    return-object v8

    .line 161
    :cond_1
    const/4 v4, 0x0

    .line 163
    .local v4, parser:Landroid/content/res/XmlResourceParser;
    :try_start_0
    const-string v8, "android.location.SettingInjectorService"

    invoke-virtual {v6, p1, v8}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 164
    if-nez v4, :cond_3

    .line 165
    new-instance v8, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No android.location.SettingInjectorService meta-data for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :catch_0
    move-exception v2

    .line 185
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    new-instance v8, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to load resources for package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v8

    if-eqz v4, :cond_2

    .line 189
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_2
    throw v8

    .line 169
    :cond_3
    :try_start_2
    invoke-static {v4}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 173
    .local v1, attrs:Landroid/util/AttributeSet;
    :cond_4
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v7

    .local v7, type:I
    const/4 v8, 0x1

    if-eq v7, v8, :cond_5

    const/4 v8, 0x2

    if-ne v7, v8, :cond_4

    .line 176
    :cond_5
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 177
    .local v3, nodeName:Ljava/lang/String;
    const-string v8, "injected-location-setting"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 178
    new-instance v8, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v9, "Meta-data does not start with injected-location-setting tag"

    invoke-direct {v8, v9}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 182
    :cond_6
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v5

    .line 183
    .local v5, res:Landroid/content/res/Resources;
    iget-object v8, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v9, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-static {v8, v9, v5, v1}, Lcom/android/settings_ex/location/SettingsInjector;->parseAttributes(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;Landroid/util/AttributeSet;)Lcom/android/settings_ex/location/InjectedSetting;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v8

    .line 188
    if-eqz v4, :cond_0

    .line 189
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_0
.end method


# virtual methods
.method public getInjectedSettings()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/android/settings_ex/location/SettingsInjector;->getSettings()Ljava/util/List;

    move-result-object v4

    .line 225
    .local v4, settings:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Lcom/android/settings_ex/location/InjectedSetting;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 226
    .local v2, prefs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/location/InjectedSetting;

    .line 227
    .local v3, setting:Lcom/android/settings_ex/location/InjectedSetting;
    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/location/SettingsInjector;->addServiceSetting(Ljava/util/List;Lcom/android/settings_ex/location/InjectedSetting;)Landroid/preference/Preference;

    move-result-object v1

    .line 228
    .local v1, pref:Landroid/preference/Preference;
    iget-object v5, p0, Lcom/android/settings_ex/location/SettingsInjector;->mSettings:Ljava/util/Set;

    new-instance v6, Lcom/android/settings_ex/location/SettingsInjector$Setting;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v3, v1, v7}, Lcom/android/settings_ex/location/SettingsInjector$Setting;-><init>(Lcom/android/settings_ex/location/SettingsInjector;Lcom/android/settings_ex/location/InjectedSetting;Landroid/preference/Preference;Lcom/android/settings_ex/location/SettingsInjector$1;)V

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 231
    .end local v1           #pref:Landroid/preference/Preference;
    .end local v3           #setting:Lcom/android/settings_ex/location/InjectedSetting;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/location/SettingsInjector;->reloadStatusMessages()V

    .line 233
    return-object v2
.end method

.method public reloadStatusMessages()V
    .locals 3

    .prologue
    .line 240
    const-string v0, "SettingsInjector"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    const-string v0, "SettingsInjector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reloadingStatusMessages: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/location/SettingsInjector;->mSettings:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/location/SettingsInjector;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings_ex/location/SettingsInjector;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 244
    return-void
.end method
