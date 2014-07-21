.class public Lcom/android/settings/inputmethod/UserDictionaryList;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "UserDictionaryList.java"


# instance fields
.field private mLocale:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method public static getUserDictionaryLocalesSet(Landroid/app/Activity;)Ljava/util/TreeSet;
    .locals 18
    .parameter "activity"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    sget-object v2, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "locale"

    aput-object v4, v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 80
    .local v8, cursor:Landroid/database/Cursor;
    new-instance v15, Ljava/util/TreeSet;

    invoke-direct {v15}, Ljava/util/TreeSet;-><init>()V

    .line 81
    .local v15, localeSet:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Ljava/lang/String;>;"
    if-nez v8, :cond_1

    .line 83
    const/4 v15, 0x0

    .line 121
    .end local v15           #localeSet:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-object v15

    .line 84
    .restart local v15       #localeSet:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 85
    const-string v1, "locale"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 87
    .local v7, columnIndex:I
    :cond_2
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 88
    .local v14, locale:Ljava/lang/String;
    if-eqz v14, :cond_6

    .end local v14           #locale:Ljava/lang/String;
    :goto_1
    invoke-virtual {v15, v14}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 98
    .end local v7           #columnIndex:I
    :cond_3
    const-string v1, "input_method"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/inputmethod/InputMethodManager;

    .line 100
    .local v13, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v13}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v12

    .line 101
    .local v12, imis:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/inputmethod/InputMethodInfo;

    .line 102
    .local v11, imi:Landroid/view/inputmethod/InputMethodInfo;
    const/4 v1, 0x1

    invoke-virtual {v13, v11, v1}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v17

    .line 105
    .local v17, subtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/inputmethod/InputMethodSubtype;

    .line 106
    .local v16, subtype:Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual/range {v16 .. v16}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v14

    .line 107
    .restart local v14       #locale:Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 108
    invoke-virtual {v15, v14}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 88
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #imi:Landroid/view/inputmethod/InputMethodInfo;
    .end local v12           #imis:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v13           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v16           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    .end local v17           #subtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .restart local v7       #columnIndex:I
    :cond_6
    const-string v14, ""

    goto :goto_1

    .line 117
    .end local v7           #columnIndex:I
    .end local v14           #locale:Ljava/lang/String;
    .restart local v12       #imis:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .restart local v13       #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_7
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 118
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method protected createUserDictSettings(Landroid/preference/PreferenceGroup;)V
    .locals 6
    .parameter "userDictGroup"

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 130
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 131
    invoke-static {v0}, Lcom/android/settings/inputmethod/UserDictionaryList;->getUserDictionaryLocalesSet(Landroid/app/Activity;)Ljava/util/TreeSet;

    move-result-object v3

    .line 133
    .local v3, localeSet:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/settings/inputmethod/UserDictionaryList;->mLocale:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 136
    iget-object v4, p0, Lcom/android/settings/inputmethod/UserDictionaryList;->mLocale:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 138
    :cond_0
    invoke-virtual {v3}, Ljava/util/TreeSet;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    .line 141
    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 144
    :cond_1
    invoke-virtual {v3}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 145
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v0}, Lcom/android/settings/inputmethod/UserDictionaryList;->createUserDictionaryPreference(Ljava/lang/String;Landroid/app/Activity;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 151
    :cond_2
    return-void

    .line 147
    :cond_3
    invoke-virtual {v3}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 148
    .local v2, locale:Ljava/lang/String;
    invoke-virtual {p0, v2, v0}, Lcom/android/settings/inputmethod/UserDictionaryList;->createUserDictionaryPreference(Ljava/lang/String;Landroid/app/Activity;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method protected createUserDictionaryPreference(Ljava/lang/String;Landroid/app/Activity;)Landroid/preference/Preference;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 159
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 160
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.USER_DICTIONARY_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 161
    if-nez p1, :cond_0

    .line 162
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 171
    :goto_0
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 172
    const-class v1, Lcom/android/settings/UserDictionarySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 173
    return-object v0

    .line 164
    :cond_0
    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 165
    const v2, 0x7f0808bf

    invoke-virtual {p0, v2}, Lcom/android/settings/inputmethod/UserDictionaryList;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 168
    :goto_1
    const-string v2, "locale"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    invoke-virtual {v0}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "locale"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 167
    :cond_1
    invoke-static {p1}, Lcom/android/settings/Utils;->createLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 54
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryList;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 57
    .local v1, intent:Landroid/content/Intent;
    if-nez v1, :cond_0

    move-object v4, v5

    .line 60
    .local v4, localeFromIntent:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryList;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 61
    .local v0, arguments:Landroid/os/Bundle;
    if-nez v0, :cond_1

    move-object v3, v5

    .line 65
    .local v3, localeFromArguments:Ljava/lang/String;
    :goto_1
    if-eqz v3, :cond_2

    .line 66
    move-object v2, v3

    .line 72
    .local v2, locale:Ljava/lang/String;
    :goto_2
    iput-object v2, p0, Lcom/android/settings/inputmethod/UserDictionaryList;->mLocale:Ljava/lang/String;

    .line 73
    return-void

    .line 57
    .end local v0           #arguments:Landroid/os/Bundle;
    .end local v2           #locale:Ljava/lang/String;
    .end local v3           #localeFromArguments:Ljava/lang/String;
    .end local v4           #localeFromIntent:Ljava/lang/String;
    :cond_0
    const-string v6, "locale"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 61
    .restart local v0       #arguments:Landroid/os/Bundle;
    .restart local v4       #localeFromIntent:Ljava/lang/String;
    :cond_1
    const-string v5, "locale"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 67
    .restart local v3       #localeFromArguments:Ljava/lang/String;
    :cond_2
    if-eqz v4, :cond_3

    .line 68
    move-object v2, v4

    .restart local v2       #locale:Ljava/lang/String;
    goto :goto_2

    .line 70
    .end local v2           #locale:Ljava/lang/String;
    :cond_3
    const/4 v2, 0x0

    .restart local v2       #locale:Ljava/lang/String;
    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryList;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/UserDictionaryList;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 49
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0808ae

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 50
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 178
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 179
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryList;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/UserDictionaryList;->createUserDictSettings(Landroid/preference/PreferenceGroup;)V

    .line 180
    return-void
.end method
