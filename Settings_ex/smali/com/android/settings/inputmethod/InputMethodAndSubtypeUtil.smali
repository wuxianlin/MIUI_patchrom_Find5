.class public Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;
.super Ljava/lang/Object;
.source "InputMethodAndSubtypeUtil.java"


# static fields
.field private static final sStringInputMethodSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

.field private static final sStringInputMethodSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    sput-object v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->sStringInputMethodSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 50
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3b

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    sput-object v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->sStringInputMethodSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildDisabledSystemInputMethods(Ljava/lang/StringBuilder;Ljava/util/HashSet;)V
    .locals 4
    .parameter "builder"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, imes:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 79
    .local v2, needsAppendSeparator:Z
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 80
    .local v1, ime:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 81
    const/16 v3, 0x3a

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 85
    :goto_1
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 83
    :cond_0
    const/4 v2, 0x1

    goto :goto_1

    .line 87
    .end local v1           #ime:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static buildEnabledInputMethodsString(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/HashSet;)V
    .locals 3
    .parameter "builder"
    .parameter "imi"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p2, subtypes:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 59
    .local v1, subtypeId:Ljava/lang/String;
    const/16 v2, 0x3b

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 61
    .end local v1           #subtypeId:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static buildInputMethodsAndSubtypesString(Ljava/lang/StringBuilder;Ljava/util/HashMap;)V
    .locals 4
    .parameter "builder"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, imsList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    const/4 v2, 0x0

    .line 66
    .local v2, needsAppendSeparator:Z
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 67
    .local v1, imi:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 68
    const/16 v3, 0x3a

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 72
    :goto_1
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    invoke-static {p0, v1, v3}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->buildEnabledInputMethodsString(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/HashSet;)V

    goto :goto_0

    .line 70
    :cond_0
    const/4 v2, 0x1

    goto :goto_1

    .line 74
    .end local v1           #imi:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static getDisabledSystemIMEs(Landroid/content/ContentResolver;)Ljava/util/HashSet;
    .locals 3
    .parameter "resolver"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 139
    .local v1, set:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v2, "disabled_system_input_methods"

    invoke-static {p0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, disabledIMEsStr:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 148
    :cond_0
    return-object v1

    .line 144
    :cond_1
    sget-object v2, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->sStringInputMethodSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v2, v0}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 145
    :goto_0
    sget-object v2, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->sStringInputMethodSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 146
    sget-object v2, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->sStringInputMethodSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static getEnabledInputMethodsAndSubtypeList(Landroid/content/ContentResolver;)Ljava/util/HashMap;
    .locals 6
    .parameter "resolver"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 109
    const-string v5, "enabled_input_methods"

    invoke-static {p0, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, enabledInputMethodsStr:Ljava/lang/String;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 117
    .local v2, imsList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 134
    :cond_0
    return-object v2

    .line 120
    :cond_1
    sget-object v5, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->sStringInputMethodSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v5, v0}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 121
    :cond_2
    :goto_0
    sget-object v5, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->sStringInputMethodSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 122
    sget-object v5, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->sStringInputMethodSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v3

    .line 123
    .local v3, nextImsStr:Ljava/lang/String;
    sget-object v5, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->sStringInputMethodSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v5, v3}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 124
    sget-object v5, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->sStringInputMethodSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 125
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 127
    .local v4, subtypeHashes:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    sget-object v5, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->sStringInputMethodSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, imeId:Ljava/lang/String;
    :goto_1
    sget-object v5, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->sStringInputMethodSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 129
    sget-object v5, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->sStringInputMethodSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 131
    :cond_3
    invoke-virtual {v2, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static getInputMethodSubtypeSelected(Landroid/content/ContentResolver;)I
    .locals 2
    .parameter "resolver"

    .prologue
    .line 91
    :try_start_0
    const-string v1, "selected_input_method_subtype"

    invoke-static {p0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 94
    :goto_0
    return v1

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private static isInputMethodSubtypeSelected(Landroid/content/ContentResolver;)Z
    .locals 2
    .parameter "resolver"

    .prologue
    .line 99
    invoke-static {p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->getInputMethodSubtypeSelected(Landroid/content/ContentResolver;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static loadInputMethodSubtypeList(Lcom/android/settings/SettingsPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Ljava/util/Map;)V
    .locals 10
    .parameter "context"
    .parameter "resolver"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/SettingsPreferenceFragment;",
            "Landroid/content/ContentResolver;",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/Preference;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 280
    .local p2, inputMethodInfos:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .local p3, inputMethodPrefsMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/preference/Preference;>;>;"
    invoke-static {p1}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->getEnabledInputMethodsAndSubtypeList(Landroid/content/ContentResolver;)Ljava/util/HashMap;

    move-result-object v2

    .line 283
    .local v2, enabledSubtypes:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    .line 284
    .local v5, imi:Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v6

    .line 285
    .local v6, imiId:Ljava/lang/String;
    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    .line 286
    .local v8, pref:Landroid/preference/Preference;
    if-eqz v8, :cond_0

    instance-of v9, v8, Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_0

    move-object v0, v8

    .line 287
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 288
    .local v0, checkBoxPreference:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    .line 289
    .local v7, isEnabled:Z
    invoke-virtual {v0, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 290
    if-eqz p3, :cond_1

    .line 291
    invoke-interface {p3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference;

    .line 292
    .local v1, childPref:Landroid/preference/Preference;
    invoke-virtual {v1, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .line 295
    .end local v1           #childPref:Landroid/preference/Preference;
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_1
    invoke-static {p0, p2, v6, v7}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->setSubtypesPreferenceEnabled(Lcom/android/settings/SettingsPreferenceFragment;Ljava/util/List;Ljava/lang/String;Z)V

    goto :goto_0

    .line 298
    .end local v0           #checkBoxPreference:Landroid/preference/CheckBoxPreference;
    .end local v5           #imi:Landroid/view/inputmethod/InputMethodInfo;
    .end local v6           #imiId:Ljava/lang/String;
    .end local v7           #isEnabled:Z
    .end local v8           #pref:Landroid/preference/Preference;
    :cond_2
    invoke-static {p0, p2, v2}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->updateSubtypesPreferenceChecked(Lcom/android/settings/SettingsPreferenceFragment;Ljava/util/List;Ljava/util/HashMap;)V

    .line 299
    return-void
.end method

.method private static putSelectedInputMethodSubtype(Landroid/content/ContentResolver;I)V
    .locals 1
    .parameter "resolver"
    .parameter "hashCode"

    .prologue
    .line 103
    const-string v0, "selected_input_method_subtype"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 104
    return-void
.end method

.method public static saveInputMethodSubtypeList(Lcom/android/settings/SettingsPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Z)V
    .locals 27
    .parameter "context"
    .parameter "resolver"
    .parameter
    .parameter "hasHardKeyboard"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/SettingsPreferenceFragment;",
            "Landroid/content/ContentResolver;",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 154
    .local p2, inputMethodInfos:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const-string v25, "default_input_method"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 156
    .local v4, currentInputMethodId:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->getInputMethodSubtypeSelected(Landroid/content/ContentResolver;)I

    move-result v17

    .line 157
    .local v17, selectedInputMethodSubtype:I
    invoke-static/range {p1 .. p1}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->getEnabledInputMethodsAndSubtypeList(Landroid/content/ContentResolver;)Ljava/util/HashMap;

    move-result-object v7

    .line 159
    .local v7, enabledIMEAndSubtypesMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    invoke-static/range {p1 .. p1}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->getDisabledSystemIMEs(Landroid/content/ContentResolver;)Ljava/util/HashSet;

    move-result-object v6

    .line 161
    .local v6, disabledSystemIMEs:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v11

    .line 162
    .local v11, imiCount:I
    const/4 v15, 0x0

    .line 163
    .local v15, needsToResetSelectedSubtype:Z
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/inputmethod/InputMethodInfo;

    .line 164
    .local v10, imi:Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v12

    .line 165
    .local v12, imiId:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/SettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    .line 166
    .local v16, pref:Landroid/preference/Preference;
    if-eqz v16, :cond_0

    .line 169
    move-object/from16 v0, v16

    instance-of v0, v0, Landroid/preference/CheckBoxPreference;

    move/from16 v25, v0

    if-eqz v25, :cond_5

    check-cast v16, Landroid/preference/CheckBoxPreference;

    .end local v16           #pref:Landroid/preference/Preference;
    invoke-virtual/range {v16 .. v16}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v14

    .line 172
    .local v14, isImeChecked:Z
    :goto_1
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 173
    .local v13, isCurrentInputMethod:Z
    invoke-static {v10}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v24

    .line 174
    .local v24, systemIme:Z
    if-nez p3, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->getInstance(Landroid/content/Context;)Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;

    move-result-object v25

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v10, v1}, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->isAlwaysCheckedIme(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;)Z

    move-result v25

    if-nez v25, :cond_2

    :cond_1
    if-eqz v14, :cond_9

    .line 177
    :cond_2
    invoke-virtual {v7, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_3

    .line 179
    new-instance v25, Ljava/util/HashSet;

    invoke-direct/range {v25 .. v25}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v7, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    :cond_3
    invoke-virtual {v7, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/HashSet;

    .line 183
    .local v23, subtypesSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/16 v22, 0x0

    .line 184
    .local v22, subtypePrefFound:Z
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v19

    .line 185
    .local v19, subtypeCount:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2
    move/from16 v0, v19

    if-ge v8, v0, :cond_a

    .line 186
    invoke-virtual {v10, v8}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v18

    .line 187
    .local v18, subtype:Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual/range {v18 .. v18}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    .line 188
    .local v20, subtypeHashCodeStr:Ljava/lang/String;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/CheckBoxPreference;

    .line 191
    .local v21, subtypePref:Landroid/preference/CheckBoxPreference;
    if-nez v21, :cond_6

    .line 185
    :cond_4
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 169
    .end local v8           #i:I
    .end local v13           #isCurrentInputMethod:Z
    .end local v14           #isImeChecked:Z
    .end local v18           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    .end local v19           #subtypeCount:I
    .end local v20           #subtypeHashCodeStr:Ljava/lang/String;
    .end local v21           #subtypePref:Landroid/preference/CheckBoxPreference;
    .end local v22           #subtypePrefFound:Z
    .end local v23           #subtypesSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v24           #systemIme:Z
    .restart local v16       #pref:Landroid/preference/Preference;
    :cond_5
    invoke-virtual {v7, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    goto :goto_1

    .line 192
    .end local v16           #pref:Landroid/preference/Preference;
    .restart local v8       #i:I
    .restart local v13       #isCurrentInputMethod:Z
    .restart local v14       #isImeChecked:Z
    .restart local v18       #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    .restart local v19       #subtypeCount:I
    .restart local v20       #subtypeHashCodeStr:Ljava/lang/String;
    .restart local v21       #subtypePref:Landroid/preference/CheckBoxPreference;
    .restart local v22       #subtypePrefFound:Z
    .restart local v23       #subtypesSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v24       #systemIme:Z
    :cond_6
    if-nez v22, :cond_7

    .line 195
    invoke-virtual/range {v23 .. v23}, Ljava/util/HashSet;->clear()V

    .line 197
    const/4 v15, 0x1

    .line 198
    const/16 v22, 0x1

    .line 200
    :cond_7
    invoke-virtual/range {v21 .. v21}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v25

    if-eqz v25, :cond_8

    .line 201
    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 202
    if-eqz v13, :cond_4

    .line 203
    invoke-virtual/range {v18 .. v18}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v25

    move/from16 v0, v17

    move/from16 v1, v25

    if-ne v0, v1, :cond_4

    .line 206
    const/4 v15, 0x0

    goto :goto_3

    .line 210
    :cond_8
    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 214
    .end local v8           #i:I
    .end local v18           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    .end local v19           #subtypeCount:I
    .end local v20           #subtypeHashCodeStr:Ljava/lang/String;
    .end local v21           #subtypePref:Landroid/preference/CheckBoxPreference;
    .end local v22           #subtypePrefFound:Z
    .end local v23           #subtypesSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_9
    invoke-virtual {v7, v12}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    if-eqz v13, :cond_a

    .line 223
    const/4 v4, 0x0

    .line 228
    :cond_a
    if-eqz v24, :cond_0

    if-eqz p3, :cond_0

    .line 229
    invoke-virtual {v6, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_b

    .line 230
    if-eqz v14, :cond_0

    .line 231
    invoke-virtual {v6, v12}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 234
    :cond_b
    if-nez v14, :cond_0

    .line 235
    invoke-virtual {v6, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 241
    .end local v10           #imi:Landroid/view/inputmethod/InputMethodInfo;
    .end local v12           #imiId:Ljava/lang/String;
    .end local v13           #isCurrentInputMethod:Z
    .end local v14           #isImeChecked:Z
    .end local v24           #systemIme:Z
    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    .local v3, builder:Ljava/lang/StringBuilder;
    invoke-static {v3, v7}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->buildInputMethodsAndSubtypesString(Ljava/lang/StringBuilder;Ljava/util/HashMap;)V

    .line 243
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    .local v5, disabledSysImesBuilder:Ljava/lang/StringBuilder;
    invoke-static {v5, v6}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->buildDisabledSystemInputMethods(Ljava/lang/StringBuilder;Ljava/util/HashSet;)V

    .line 257
    if-nez v15, :cond_d

    invoke-static/range {p1 .. p1}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->isInputMethodSubtypeSelected(Landroid/content/ContentResolver;)Z

    move-result v25

    if-nez v25, :cond_e

    .line 261
    :cond_d
    const/16 v25, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-static {v0, v1}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->putSelectedInputMethodSubtype(Landroid/content/ContentResolver;I)V

    .line 264
    :cond_e
    const-string v25, "enabled_input_methods"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 266
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v25

    if-lez v25, :cond_f

    .line 267
    const-string v25, "disabled_system_input_methods"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 272
    :cond_f
    const-string v25, "default_input_method"

    if-eqz v4, :cond_10

    .end local v4           #currentInputMethodId:Ljava/lang/String;
    :goto_4
    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 274
    return-void

    .line 272
    .restart local v4       #currentInputMethodId:Ljava/lang/String;
    :cond_10
    const-string v4, ""

    goto :goto_4
.end method

.method public static setSubtypesPreferenceEnabled(Lcom/android/settings/SettingsPreferenceFragment;Ljava/util/List;Ljava/lang/String;Z)V
    .locals 9
    .parameter "context"
    .parameter
    .parameter "id"
    .parameter "enabled"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/SettingsPreferenceFragment;",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 303
    .local p1, inputMethodProperties:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 304
    .local v4, preferenceScreen:Landroid/preference/PreferenceScreen;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 305
    .local v2, imi:Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 306
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v6

    .line 307
    .local v6, subtypeCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v6, :cond_0

    .line 308
    invoke-virtual {v2, v0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v5

    .line 309
    .local v5, subtype:Landroid/view/inputmethod/InputMethodSubtype;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    .line 311
    .local v3, pref:Landroid/preference/CheckBoxPreference;
    if-eqz v3, :cond_1

    .line 312
    invoke-virtual {v3, p3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 307
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 317
    .end local v0           #i:I
    .end local v2           #imi:Landroid/view/inputmethod/InputMethodInfo;
    .end local v3           #pref:Landroid/preference/CheckBoxPreference;
    .end local v5           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    .end local v6           #subtypeCount:I
    :cond_2
    return-void
.end method

.method public static updateSubtypesPreferenceChecked(Lcom/android/settings/SettingsPreferenceFragment;Ljava/util/List;Ljava/util/HashMap;)V
    .locals 11
    .parameter "context"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/SettingsPreferenceFragment;",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 322
    .local p1, inputMethodProperties:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .local p2, enabledSubtypes:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    .line 323
    .local v7, preferenceScreen:Landroid/preference/PreferenceScreen;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    .line 324
    .local v5, imi:Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    .line 325
    .local v4, id:Ljava/lang/String;
    invoke-virtual {p2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 342
    .end local v4           #id:Ljava/lang/String;
    .end local v5           #imi:Landroid/view/inputmethod/InputMethodInfo;
    :cond_1
    return-void

    .line 326
    .restart local v4       #id:Ljava/lang/String;
    .restart local v5       #imi:Landroid/view/inputmethod/InputMethodInfo;
    :cond_2
    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 327
    .local v0, enabledSubtypesSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v9

    .line 328
    .local v9, subtypeCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v9, :cond_0

    .line 329
    invoke-virtual {v5, v2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v8

    .line 330
    .local v8, subtype:Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 335
    .local v1, hashCode:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    .line 337
    .local v6, pref:Landroid/preference/CheckBoxPreference;
    if-eqz v6, :cond_3

    .line 338
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    invoke-virtual {v6, v10}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 328
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
