.class public Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;
.super Ljava/lang/Object;
.source "UserDictionaryAddWordContents.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;
    }
.end annotation


# static fields
.field private static final HAS_WORD_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mLocale:Ljava/lang/String;

.field private final mMode:I

.field private final mOldShortcut:Ljava/lang/String;

.field private final mOldWord:Ljava/lang/String;

.field private mSavedShortcut:Ljava/lang/String;

.field private mSavedWord:Ljava/lang/String;

.field private final mShortcutEditText:Landroid/widget/EditText;

.field private final mWordEditText:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 169
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "word"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->HAS_WORD_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .parameter "view"
    .parameter "args"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const v2, 0x7f0d022b

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mWordEditText:Landroid/widget/EditText;

    .line 65
    const v2, 0x7f0d022e

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mShortcutEditText:Landroid/widget/EditText;

    .line 66
    const-string v2, "word"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, word:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 68
    iget-object v2, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mWordEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v2, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mWordEditText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mWordEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 73
    :cond_0
    const-string v2, "shortcut"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, shortcut:Ljava/lang/String;
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mShortcutEditText:Landroid/widget/EditText;

    if-eqz v2, :cond_1

    .line 75
    iget-object v2, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mShortcutEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 77
    :cond_1
    const-string v2, "mode"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mMode:I

    .line 78
    const-string v2, "word"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mOldWord:Ljava/lang/String;

    .line 79
    const-string v2, "shortcut"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mOldShortcut:Ljava/lang/String;

    .line 80
    const-string v2, "locale"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->updateLocale(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method constructor <init>(Landroid/view/View;Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;)V
    .locals 1
    .parameter "view"
    .parameter "oldInstanceToBeEdited"

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const v0, 0x7f0d022b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mWordEditText:Landroid/widget/EditText;

    .line 86
    const v0, 0x7f0d022e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mShortcutEditText:Landroid/widget/EditText;

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mMode:I

    .line 88
    iget-object v0, p2, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mSavedWord:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mOldWord:Ljava/lang/String;

    .line 89
    iget-object v0, p2, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mSavedShortcut:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mOldShortcut:Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mLocale:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->updateLocale(Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method private static addLocaleDisplayNameToList(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter
    .parameter "locale"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 224
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;>;"
    if-eqz p2, :cond_0

    .line 225
    new-instance v0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    :cond_0
    return-void
.end method

.method private hasWord(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 10
    .parameter "word"
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 178
    const-string v0, ""

    iget-object v1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mLocale:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->HAS_WORD_PROJECTION:[Ljava/lang/String;

    const-string v3, "word=? AND locale is null"

    new-array v4, v7, [Ljava/lang/String;

    aput-object p1, v4, v8

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 188
    .local v6, cursor:Landroid/database/Cursor;
    :goto_0
    if-nez v6, :cond_2

    .line 191
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_1
    return v8

    .line 183
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_1
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->HAS_WORD_PROJECTION:[Ljava/lang/String;

    const-string v3, "word=? AND locale=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v8

    iget-object v9, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mLocale:Ljava/lang/String;

    aput-object v9, v4, v7

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .restart local v6       #cursor:Landroid/database/Cursor;
    goto :goto_0

    .line 189
    :cond_2
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_4

    move v0, v7

    .line 191
    :goto_2
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v8, v0

    goto :goto_1

    :cond_4
    move v0, v8

    .line 189
    goto :goto_2

    .line 191
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method


# virtual methods
.method apply(Landroid/content/Context;Landroid/os/Bundle;)I
    .locals 8
    .parameter "context"
    .parameter "outParameters"

    .prologue
    const/4 v4, 0x0

    .line 121
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->saveStateIntoBundle(Landroid/os/Bundle;)V

    .line 122
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 123
    .local v2, resolver:Landroid/content/ContentResolver;
    iget v5, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mMode:I

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mOldWord:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 125
    iget-object v5, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mOldWord:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mOldShortcut:Ljava/lang/String;

    invoke-static {v5, v6, v2}, Lcom/android/settings/UserDictionarySettings;->deleteWord(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)V

    .line 127
    :cond_1
    iget-object v5, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mWordEditText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, newWord:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mShortcutEditText:Landroid/widget/EditText;

    if-nez v5, :cond_2

    .line 130
    const/4 v0, 0x0

    .line 139
    .local v0, newShortcut:Ljava/lang/String;
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 141
    const/4 v4, 0x1

    .line 166
    :goto_1
    return v4

    .line 132
    .end local v0           #newShortcut:Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mShortcutEditText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 133
    .local v3, tmpShortcut:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 134
    const/4 v0, 0x0

    .restart local v0       #newShortcut:Ljava/lang/String;
    goto :goto_0

    .line 136
    .end local v0           #newShortcut:Ljava/lang/String;
    :cond_3
    move-object v0, v3

    .restart local v0       #newShortcut:Ljava/lang/String;
    goto :goto_0

    .line 143
    .end local v3           #tmpShortcut:Ljava/lang/String;
    :cond_4
    iput-object v1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mSavedWord:Ljava/lang/String;

    .line 144
    iput-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mSavedShortcut:Ljava/lang/String;

    .line 149
    invoke-direct {p0, v1, p1}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->hasWord(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v4, 0x2

    goto :goto_1

    .line 154
    :cond_5
    invoke-static {v1, v4, v2}, Lcom/android/settings/UserDictionarySettings;->deleteWord(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)V

    .line 155
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 157
    invoke-static {v1, v0, v2}, Lcom/android/settings/UserDictionarySettings;->deleteWord(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)V

    .line 162
    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xfa

    iget-object v7, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mLocale:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    :goto_2
    invoke-static {p1, v5, v6, v0, v4}, Landroid/provider/UserDictionary$Words;->addWord(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/util/Locale;)V

    .line 166
    const/4 v4, 0x0

    goto :goto_1

    .line 162
    :cond_7
    iget-object v4, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mLocale:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/settings/Utils;->createLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v4

    goto :goto_2
.end method

.method delete(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 112
    iget v1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mMode:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mOldWord:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 115
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mOldWord:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mOldShortcut:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/android/settings/UserDictionarySettings;->deleteWord(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)V

    .line 118
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :cond_0
    return-void
.end method

.method public getCurrentUserDictionaryLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mLocale:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalesList(Landroid/app/Activity;)Ljava/util/ArrayList;
    .locals 7
    .parameter "activity"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 231
    invoke-static {p1}, Lcom/android/settings/inputmethod/UserDictionaryList;->getUserDictionaryLocalesSet(Landroid/app/Activity;)Ljava/util/TreeSet;

    move-result-object v2

    .line 233
    .local v2, locales:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mLocale:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 234
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    .line 236
    .local v4, systemLocale:Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 237
    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 238
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 241
    .local v3, localesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;>;"
    iget-object v5, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mLocale:Ljava/lang/String;

    invoke-static {p1, v3, v5}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->addLocaleDisplayNameToList(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 242
    iget-object v5, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mLocale:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 243
    invoke-static {p1, v3, v4}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->addLocaleDisplayNameToList(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 245
    :cond_0
    invoke-virtual {v2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 247
    .local v1, l:Ljava/lang/String;
    invoke-static {p1, v3, v1}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->addLocaleDisplayNameToList(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_0

    .line 249
    .end local v1           #l:Ljava/lang/String;
    :cond_1
    const-string v5, ""

    iget-object v6, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mLocale:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 251
    const-string v5, ""

    invoke-static {p1, v3, v5}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->addLocaleDisplayNameToList(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 253
    :cond_2
    new-instance v5, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;

    const/4 v6, 0x0

    invoke-direct {v5, p1, v6}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    return-object v3
.end method

.method saveStateIntoBundle(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 100
    const-string v0, "word"

    iget-object v1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mWordEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v0, "originalWord"

    iget-object v1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mOldWord:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mShortcutEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 103
    const-string v0, "shortcut"

    iget-object v1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mShortcutEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mOldShortcut:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 106
    const-string v0, "originalShortcut"

    iget-object v1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mOldShortcut:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_1
    const-string v0, "locale"

    iget-object v1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mLocale:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method updateLocale(Ljava/lang/String;)V
    .locals 1
    .parameter "locale"

    .prologue
    .line 96
    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p1

    .end local p1
    :cond_0
    iput-object p1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->mLocale:Ljava/lang/String;

    .line 97
    return-void
.end method
