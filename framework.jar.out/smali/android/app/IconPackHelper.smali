.class public Landroid/app/IconPackHelper;
.super Ljava/lang/Object;
.source "IconPackHelper.java"


# static fields
.field private static final ICON_BACK_TAG:Ljava/lang/String; = "iconback"

.field private static final ICON_MASK_TAG:Ljava/lang/String; = "iconmask"

.field private static final ICON_SCALE_TAG:Ljava/lang/String; = "scale"

.field private static final ICON_UPON_TAG:Ljava/lang/String; = "iconupon"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIconPackResourceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIconScale:F

.field private mLoadedIconPackName:Ljava/lang/String;

.field private mLoadedIconPackResource:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Landroid/app/IconPackHelper;->mContext:Landroid/content/Context;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/IconPackHelper;->mIconPackResourceMap:Ljava/util/Map;

    .line 57
    return-void
.end method

.method public static createIconResource(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 11
    .parameter "context"
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 128
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v10, 0x0

    invoke-virtual {v5, p1, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    .line 129
    .local v8, info:Landroid/content/pm/PackageInfo;
    iget-object v5, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v5, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 134
    .local v1, themeApk:Ljava/lang/String;
    iget-boolean v5, v8, Landroid/content/pm/PackageInfo;->isLegacyIconPackApk:Z

    if-eqz v5, :cond_0

    .line 135
    const-string v2, ""

    .line 136
    .local v2, iconResPath:Ljava/lang/String;
    const-string v3, ""

    .line 137
    .local v3, iconApkPath:Ljava/lang/String;
    const-string v4, ""

    .line 144
    .local v4, prefixPath:Ljava/lang/String;
    :goto_0
    new-instance v0, Landroid/content/res/AssetManager;

    invoke-direct {v0}, Landroid/content/res/AssetManager;-><init>()V

    .line 145
    .local v0, assets:Landroid/content/res/AssetManager;
    const/16 v5, 0x62

    invoke-virtual/range {v0 .. v5}, Landroid/content/res/AssetManager;->addIconPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 148
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 149
    .local v7, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    .line 150
    .local v6, config:Landroid/content/res/Configuration;
    new-instance v9, Landroid/content/res/Resources;

    invoke-direct {v9, v0, v7, v6}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 151
    .local v9, res:Landroid/content/res/Resources;
    return-object v9

    .line 139
    .end local v0           #assets:Landroid/content/res/AssetManager;
    .end local v2           #iconResPath:Ljava/lang/String;
    .end local v3           #iconApkPath:Ljava/lang/String;
    .end local v4           #prefixPath:Ljava/lang/String;
    .end local v6           #config:Landroid/content/res/Configuration;
    .end local v7           #dm:Landroid/util/DisplayMetrics;
    .end local v9           #res:Landroid/content/res/Resources;
    :cond_0
    const-string v4, "assets/icons/"

    .line 140
    .restart local v4       #prefixPath:Ljava/lang/String;
    invoke-static {p1}, Landroid/content/pm/ThemeUtils;->getIconPackApkPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 141
    .restart local v3       #iconApkPath:Ljava/lang/String;
    invoke-static {p1}, Landroid/content/pm/ThemeUtils;->getIconPackResPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #iconResPath:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getIconResMapFromXml(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/util/Map;
    .locals 23
    .parameter "res"
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    const/16 v19, 0x0

    .line 156
    .local v19, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/16 v17, 0x0

    .line 157
    .local v17, inputStream:Ljava/io/InputStream;
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 160
    .local v15, iconPackResources:Ljava/util/Map;,"Ljava/util/Map<Landroid/content/ComponentName;Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v21

    const-string v22, "appfilter.xml"

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v17

    .line 161
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v10

    .line 162
    .local v10, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v10}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v19

    .line 163
    const-string v21, "UTF-8"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    .end local v10           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    :cond_0
    :goto_0
    if-eqz v19, :cond_3

    .line 175
    :try_start_1
    move-object/from16 v0, v19

    invoke-static {v0, v15}, Landroid/app/IconPackHelper;->loadResourcesFromXmlParser(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 183
    move-object/from16 v0, v19

    instance-of v0, v0, Landroid/content/res/XmlResourceParser;

    move/from16 v21, v0

    if-eqz v21, :cond_2

    .line 184
    check-cast v19, Landroid/content/res/XmlResourceParser;

    .end local v19           #parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface/range {v19 .. v19}, Landroid/content/res/XmlResourceParser;->close()V

    .line 239
    :cond_1
    :goto_1
    return-object v15

    .line 164
    .restart local v19       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v8

    .line 167
    .local v8, e:Ljava/lang/Exception;
    const-string v21, "appfilter"

    const-string/jumbo v22, "xml"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v20

    .line 168
    .local v20, resId:I
    if-eqz v20, :cond_0

    .line 169
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v19

    goto :goto_0

    .line 185
    .end local v8           #e:Ljava/lang/Exception;
    .end local v20           #resId:I
    :cond_2
    if-eqz v17, :cond_1

    .line 187
    :try_start_2
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 188
    :catch_1
    move-exception v21

    goto :goto_1

    .line 177
    :catch_2
    move-exception v8

    .line 178
    .local v8, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_3
    invoke-virtual {v8}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 183
    move-object/from16 v0, v19

    instance-of v0, v0, Landroid/content/res/XmlResourceParser;

    move/from16 v21, v0

    if-eqz v21, :cond_6

    .line 184
    check-cast v19, Landroid/content/res/XmlResourceParser;

    .end local v19           #parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface/range {v19 .. v19}, Landroid/content/res/XmlResourceParser;->close()V

    .line 195
    .end local v8           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_3
    :goto_2
    const-string/jumbo v21, "theme_iconpack"

    const-string v22, "array"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 196
    .local v6, arrayId:I
    if-nez v6, :cond_4

    .line 197
    const-string v21, "icon_pack"

    const-string v22, "array"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 200
    :cond_4
    if-eqz v6, :cond_1

    .line 201
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v14

    .line 202
    .local v14, iconPack:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 203
    .local v7, compName:Landroid/content/ComponentName;
    move-object v5, v14

    .local v5, arr$:[Ljava/lang/String;
    array-length v0, v5

    move/from16 v18, v0

    .local v18, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_3
    move/from16 v0, v18

    if-ge v11, v0, :cond_1

    aget-object v9, v5, v11

    .line 205
    .local v9, entry:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_a

    .line 203
    :cond_5
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 185
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v6           #arrayId:I
    .end local v7           #compName:Landroid/content/ComponentName;
    .end local v9           #entry:Ljava/lang/String;
    .end local v11           #i$:I
    .end local v14           #iconPack:[Ljava/lang/String;
    .end local v18           #len$:I
    .restart local v8       #e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v19       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_6
    if-eqz v17, :cond_3

    .line 187
    :try_start_4
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    .line 188
    :catch_3
    move-exception v21

    goto :goto_2

    .line 179
    .end local v8           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_4
    move-exception v8

    .line 180
    .local v8, e:Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 183
    move-object/from16 v0, v19

    instance-of v0, v0, Landroid/content/res/XmlResourceParser;

    move/from16 v21, v0

    if-eqz v21, :cond_7

    .line 184
    check-cast v19, Landroid/content/res/XmlResourceParser;

    .end local v19           #parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface/range {v19 .. v19}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_2

    .line 185
    .restart local v19       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_7
    if-eqz v17, :cond_3

    .line 187
    :try_start_6
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_2

    .line 188
    :catch_5
    move-exception v21

    goto :goto_2

    .line 183
    .end local v8           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v21

    move-object/from16 v0, v19

    instance-of v0, v0, Landroid/content/res/XmlResourceParser;

    move/from16 v22, v0

    if-eqz v22, :cond_9

    .line 184
    check-cast v19, Landroid/content/res/XmlResourceParser;

    .end local v19           #parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface/range {v19 .. v19}, Landroid/content/res/XmlResourceParser;->close()V

    .line 189
    :cond_8
    :goto_5
    throw v21

    .line 185
    .restart local v19       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_9
    if-eqz v17, :cond_8

    .line 187
    :try_start_7
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_5

    .line 188
    :catch_6
    move-exception v22

    goto :goto_5

    .line 209
    .end local v19           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5       #arr$:[Ljava/lang/String;
    .restart local v6       #arrayId:I
    .restart local v7       #compName:Landroid/content/ComponentName;
    .restart local v9       #entry:Ljava/lang/String;
    .restart local v11       #i$:I
    .restart local v14       #iconPack:[Ljava/lang/String;
    .restart local v18       #len$:I
    :cond_a
    move-object v12, v9

    .line 210
    .local v12, icon:Ljava/lang/String;
    const-string v21, "_"

    const-string v22, "."

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 212
    new-instance v7, Landroid/content/ComponentName;

    .end local v7           #compName:Landroid/content/ComponentName;
    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v21

    const-string v22, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v7, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .restart local v7       #compName:Landroid/content/ComponentName;
    invoke-interface {v15, v7, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    const-string v21, "."

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 216
    .local v4, activityIndex:I
    if-lez v4, :cond_5

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    if-eq v4, v0, :cond_5

    .line 220
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v9, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 221
    .local v16, iconPackage:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_5

    .line 225
    add-int/lit8 v21, v4, 0x1

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 226
    .local v13, iconActivity:Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_5

    .line 231
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v16

    .line 232
    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    .line 234
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 235
    new-instance v7, Landroid/content/ComponentName;

    .end local v7           #compName:Landroid/content/ComponentName;
    move-object/from16 v0, v16

    invoke-direct {v7, v0, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    .restart local v7       #compName:Landroid/content/ComponentName;
    invoke-interface {v15, v7, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4
.end method

.method private getResourceIdForDrawable(Ljava/lang/String;)I
    .locals 4
    .parameter "resource"

    .prologue
    .line 249
    iget-object v1, p0, Landroid/app/IconPackHelper;->mLoadedIconPackResource:Landroid/content/res/Resources;

    const-string v2, "drawable"

    iget-object v3, p0, Landroid/app/IconPackHelper;->mLoadedIconPackName:Ljava/lang/String;

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 250
    .local v0, resId:I
    return v0
.end method

.method private static loadResourcesFromXmlParser(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V
    .locals 7
    .parameter "parser"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, iconPackResources:Ljava/util/Map;,"Ljava/util/Map<Landroid/content/ComponentName;Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 61
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 64
    .local v2, eventType:I
    :cond_0
    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    .line 100
    :cond_1
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 101
    return-void

    .line 68
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "item"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 72
    const-string v4, "component"

    invoke-interface {p0, v6, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, component:Ljava/lang/String;
    const-string v4, "drawable"

    invoke-interface {p0, v6, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, drawable:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 81
    const-string v4, "ComponentInfo{"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "}"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x10

    if-lt v4, v5, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    .line 87
    const/16 v4, 0xe

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 89
    const/4 v3, 0x0

    .line 90
    .local v3, name:Landroid/content/ComponentName;
    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 92
    new-instance v3, Landroid/content/ComponentName;

    .end local v3           #name:Landroid/content/ComponentName;
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .restart local v3       #name:Landroid/content/ComponentName;
    :goto_1
    if-eqz v3, :cond_1

    .line 98
    invoke-interface {p1, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 94
    :cond_3
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    goto :goto_1
.end method


# virtual methods
.method public getDrawableForActivity(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "info"

    .prologue
    .line 278
    invoke-virtual {p0, p1}, Landroid/app/IconPackHelper;->getResourceIdForActivityIcon(Landroid/content/pm/ActivityInfo;)I

    move-result v0

    .line 279
    .local v0, id:I
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 280
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Landroid/app/IconPackHelper;->mLoadedIconPackResource:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public getDrawableForActivityWithDensity(Landroid/content/pm/ActivityInfo;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "info"
    .parameter "density"

    .prologue
    .line 284
    invoke-virtual {p0, p1}, Landroid/app/IconPackHelper;->getResourceIdForActivityIcon(Landroid/content/pm/ActivityInfo;)I

    move-result v0

    .line 285
    .local v0, id:I
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 286
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Landroid/app/IconPackHelper;->mLoadedIconPackResource:Landroid/content/res/Resources;

    invoke-virtual {v1, v0, p2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public getIconScale()F
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Landroid/app/IconPackHelper;->mIconScale:F

    return v0
.end method

.method public getResourceIdForActivityIcon(Landroid/content/pm/ActivityInfo;)I
    .locals 5
    .parameter "info"

    .prologue
    const/4 v2, 0x0

    .line 254
    invoke-virtual {p0}, Landroid/app/IconPackHelper;->isIconPackLoaded()Z

    move-result v3

    if-nez v3, :cond_1

    .line 267
    :cond_0
    :goto_0
    return v2

    .line 257
    :cond_1
    new-instance v0, Landroid/content/ComponentName;

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    .local v0, compName:Landroid/content/ComponentName;
    iget-object v3, p0, Landroid/app/IconPackHelper;->mIconPackResourceMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 259
    .local v1, drawable:Ljava/lang/String;
    if-nez v1, :cond_2

    .line 261
    new-instance v0, Landroid/content/ComponentName;

    .end local v0           #compName:Landroid/content/ComponentName;
    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    .restart local v0       #compName:Landroid/content/ComponentName;
    iget-object v3, p0, Landroid/app/IconPackHelper;->mIconPackResourceMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #drawable:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 263
    .restart local v1       #drawable:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 267
    :cond_2
    invoke-direct {p0, v1}, Landroid/app/IconPackHelper;->getResourceIdForDrawable(Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public getResourceIdForApp(Ljava/lang/String;)I
    .locals 2
    .parameter "pkgName"

    .prologue
    .line 271
    new-instance v0, Landroid/content/pm/ActivityInfo;

    invoke-direct {v0}, Landroid/content/pm/ActivityInfo;-><init>()V

    .line 272
    .local v0, info:Landroid/content/pm/ActivityInfo;
    iput-object p1, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 273
    const-string v1, ""

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 274
    invoke-virtual {p0, v0}, Landroid/app/IconPackHelper;->getResourceIdForActivityIcon(Landroid/content/pm/ActivityInfo;)I

    move-result v1

    return v1
.end method

.method isIconPackLoaded()Z
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Landroid/app/IconPackHelper;->mLoadedIconPackResource:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/IconPackHelper;->mLoadedIconPackName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/IconPackHelper;->mIconPackResourceMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadIconPack(Ljava/lang/String;)V
    .locals 4
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 104
    if-nez p1, :cond_1

    .line 105
    iput-object v2, p0, Landroid/app/IconPackHelper;->mLoadedIconPackResource:Landroid/content/res/Resources;

    .line 106
    iput-object v2, p0, Landroid/app/IconPackHelper;->mLoadedIconPackName:Ljava/lang/String;

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    iget-object v2, p0, Landroid/app/IconPackHelper;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Landroid/app/IconPackHelper;->createIconResource(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    .line 109
    .local v0, res:Landroid/content/res/Resources;
    invoke-static {v0, p1}, Landroid/app/IconPackHelper;->getIconResMapFromXml(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Landroid/app/IconPackHelper;->mIconPackResourceMap:Ljava/util/Map;

    .line 110
    iput-object v0, p0, Landroid/app/IconPackHelper;->mLoadedIconPackResource:Landroid/content/res/Resources;

    .line 111
    iput-object p1, p0, Landroid/app/IconPackHelper;->mLoadedIconPackName:Ljava/lang/String;

    .line 112
    iget-object v2, p0, Landroid/app/IconPackHelper;->mIconPackResourceMap:Ljava/util/Map;

    const-string/jumbo v3, "scale"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 113
    .local v1, scale:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 115
    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, p0, Landroid/app/IconPackHelper;->mIconScale:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 116
    :catch_0
    move-exception v2

    goto :goto_0
.end method
