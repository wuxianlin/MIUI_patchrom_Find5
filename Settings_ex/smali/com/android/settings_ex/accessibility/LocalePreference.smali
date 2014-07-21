.class public Lcom/android/settings_ex/accessibility/LocalePreference;
.super Landroid/preference/ListPreference;
.source "LocalePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/accessibility/LocalePreference$LocaleInfo;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 42
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/accessibility/LocalePreference;->init(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/accessibility/LocalePreference;->init(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method private static getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "l"
    .parameter "specialLocaleCodes"
    .parameter "specialLocaleNames"

    .prologue
    .line 118
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, code:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 121
    aget-object v2, p1, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    aget-object v2, p2, v1

    .line 126
    :goto_1
    return-object v2

    .line 120
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 126
    :cond_1
    invoke-virtual {p0, p0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 24
    .parameter "context"

    .prologue
    .line 46
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v21

    .line 47
    .local v21, systemLocales:[Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 49
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    .line 50
    .local v18, resources:Landroid/content/res/Resources;
    const v22, 0x1070007

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v19

    .line 52
    .local v19, specialLocaleCodes:[Ljava/lang/String;
    const v22, 0x1070008

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v20

    .line 55
    .local v20, specialLocaleNames:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 57
    .local v7, finalSize:I
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v16, v0

    .line 58
    .local v16, origSize:I
    move/from16 v0, v16

    new-array v14, v0, [Lcom/android/settings_ex/accessibility/LocalePreference$LocaleInfo;

    .line 59
    .local v14, localeInfos:[Lcom/android/settings_ex/accessibility/LocalePreference$LocaleInfo;
    const/4 v9, 0x0

    .local v9, i:I
    move v8, v7

    .end local v7           #finalSize:I
    .local v8, finalSize:I
    :goto_0
    move/from16 v0, v16

    if-ge v9, v0, :cond_5

    .line 60
    aget-object v15, v21, v9

    .line 61
    .local v15, localeStr:Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v13

    .line 62
    .local v13, len:I
    const/16 v22, 0x5

    move/from16 v0, v22

    if-eq v13, v0, :cond_0

    move v7, v8

    .line 59
    .end local v8           #finalSize:I
    .restart local v7       #finalSize:I
    :goto_1
    add-int/lit8 v9, v9, 0x1

    move v8, v7

    .end local v7           #finalSize:I
    .restart local v8       #finalSize:I
    goto :goto_0

    .line 66
    :cond_0
    const/16 v22, 0x0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 67
    .local v12, language:Ljava/lang/String;
    const/16 v22, 0x3

    const/16 v23, 0x5

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 68
    .local v3, country:Ljava/lang/String;
    new-instance v11, Ljava/util/Locale;

    invoke-direct {v11, v12, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .local v11, l:Ljava/util/Locale;
    if-nez v8, :cond_1

    .line 71
    add-int/lit8 v7, v8, 0x1

    .end local v8           #finalSize:I
    .restart local v7       #finalSize:I
    new-instance v22, Lcom/android/settings_ex/accessibility/LocalePreference$LocaleInfo;

    invoke-virtual {v11, v11}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v11}, Lcom/android/settings_ex/accessibility/LocalePreference$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v22, v14, v8

    goto :goto_1

    .line 77
    .end local v7           #finalSize:I
    .restart local v8       #finalSize:I
    :cond_1
    add-int/lit8 v22, v8, -0x1

    aget-object v17, v14, v22

    .line 78
    .local v17, previous:Lcom/android/settings_ex/accessibility/LocalePreference$LocaleInfo;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings_ex/accessibility/LocalePreference$LocaleInfo;->locale:Ljava/util/Locale;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings_ex/accessibility/LocalePreference$LocaleInfo;->locale:Ljava/util/Locale;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v22

    const-string v23, "zz"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_2

    .line 80
    add-int/lit8 v22, v8, -0x1

    aget-object v22, v14, v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/settings_ex/accessibility/LocalePreference$LocaleInfo;->locale:Ljava/util/Locale;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/accessibility/LocalePreference;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/settings_ex/accessibility/LocalePreference$LocaleInfo;->label:Ljava/lang/String;

    .line 83
    add-int/lit8 v7, v8, 0x1

    .end local v8           #finalSize:I
    .restart local v7       #finalSize:I
    new-instance v22, Lcom/android/settings_ex/accessibility/LocalePreference$LocaleInfo;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v11, v0, v1}, Lcom/android/settings_ex/accessibility/LocalePreference;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v11}, Lcom/android/settings_ex/accessibility/LocalePreference$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v22, v14, v8

    goto/16 :goto_1

    .line 87
    .end local v7           #finalSize:I
    .restart local v8       #finalSize:I
    :cond_2
    const-string v22, "zz_ZZ"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 88
    const-string v4, "[Developer] Accented English"

    .line 94
    .local v4, displayName:Ljava/lang/String;
    :goto_2
    add-int/lit8 v7, v8, 0x1

    .end local v8           #finalSize:I
    .restart local v7       #finalSize:I
    new-instance v22, Lcom/android/settings_ex/accessibility/LocalePreference$LocaleInfo;

    move-object/from16 v0, v22

    invoke-direct {v0, v4, v11}, Lcom/android/settings_ex/accessibility/LocalePreference$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v22, v14, v8

    goto/16 :goto_1

    .line 89
    .end local v4           #displayName:Ljava/lang/String;
    .end local v7           #finalSize:I
    .restart local v8       #finalSize:I
    :cond_3
    const-string v22, "zz_ZY"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 90
    const-string v4, "[Developer] Fake Bi-Directional"

    .restart local v4       #displayName:Ljava/lang/String;
    goto :goto_2

    .line 92
    .end local v4           #displayName:Ljava/lang/String;
    :cond_4
    invoke-virtual {v11, v11}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #displayName:Ljava/lang/String;
    goto :goto_2

    .line 99
    .end local v3           #country:Ljava/lang/String;
    .end local v4           #displayName:Ljava/lang/String;
    .end local v11           #l:Ljava/util/Locale;
    .end local v12           #language:Ljava/lang/String;
    .end local v13           #len:I
    .end local v15           #localeStr:Ljava/lang/String;
    .end local v17           #previous:Lcom/android/settings_ex/accessibility/LocalePreference$LocaleInfo;
    :cond_5
    add-int/lit8 v22, v8, 0x1

    move/from16 v0, v22

    new-array v5, v0, [Ljava/lang/CharSequence;

    .line 100
    .local v5, entries:[Ljava/lang/CharSequence;
    add-int/lit8 v22, v8, 0x1

    move/from16 v0, v22

    new-array v6, v0, [Ljava/lang/CharSequence;

    .line 101
    .local v6, entryValues:[Ljava/lang/CharSequence;
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-static {v14, v0, v8}, Ljava/util/Arrays;->sort([Ljava/lang/Object;II)V

    .line 103
    const/16 v22, 0x0

    const v23, 0x7f080936

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v5, v22

    .line 104
    const/16 v22, 0x0

    const-string v23, ""

    aput-object v23, v6, v22

    .line 106
    const/4 v9, 0x0

    :goto_3
    if-ge v9, v8, :cond_6

    .line 107
    aget-object v10, v14, v9

    .line 108
    .local v10, info:Lcom/android/settings_ex/accessibility/LocalePreference$LocaleInfo;
    add-int/lit8 v22, v9, 0x1

    invoke-virtual {v10}, Lcom/android/settings_ex/accessibility/LocalePreference$LocaleInfo;->toString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v5, v22

    .line 109
    add-int/lit8 v22, v9, 0x1

    iget-object v0, v10, Lcom/android/settings_ex/accessibility/LocalePreference$LocaleInfo;->locale:Ljava/util/Locale;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v6, v22

    .line 106
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 112
    .end local v10           #info:Lcom/android/settings_ex/accessibility/LocalePreference$LocaleInfo;
    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/settings_ex/accessibility/LocalePreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 113
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/settings_ex/accessibility/LocalePreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 114
    return-void
.end method
