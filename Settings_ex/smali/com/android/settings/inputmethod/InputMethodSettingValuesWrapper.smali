.class public Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;
.super Ljava/lang/Object;
.source "InputMethodSettingValuesWrapper.java"


# static fields
.field private static final ENGLISH_LOCALE:Ljava/util/Locale;

.field private static final TAG:Ljava/lang/String;

.field private static volatile sInstance:Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;


# instance fields
.field private final mAsciiCapableEnabledImis:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mImm:Landroid/view/inputmethod/InputMethodManager;

.field private final mMethodList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mMethodMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    const-class v0, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->TAG:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/util/Locale;

    const-string v1, "en"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->ENGLISH_LOCALE:Ljava/util/Locale;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->mMethodList:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->mMethodMap:Ljava/util/HashMap;

    .line 52
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->mAsciiCapableEnabledImis:Ljava/util/HashSet;

    .line 77
    new-instance v0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->mMethodMap:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->mMethodList:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->getDefaultCurrentUserId()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;-><init>(Landroid/content/res/Resources;Landroid/content/ContentResolver;Ljava/util/HashMap;Ljava/util/ArrayList;I)V

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 80
    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->refreshAllInputMethodAndSubtypes()V

    .line 82
    return-void
.end method

.method private static getDefaultCurrentUserId()I
    .locals 3

    .prologue
    .line 68
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .local v0, e:Landroid/os/RemoteException;
    :goto_0
    return v1

    .line 69
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_0
    move-exception v0

    .line 70
    .restart local v0       #e:Landroid/os/RemoteException;
    sget-object v1, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Couldn\'t get current user ID; guessing it\'s 0"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getEnabledValidSystemNonAuxAsciiCapableImeCount(Landroid/content/Context;)I
    .locals 6
    .parameter "context"

    .prologue
    .line 159
    const/4 v0, 0x0

    .line 161
    .local v0, count:I
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 162
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v4}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/List;

    move-result-object v1

    .line 163
    .local v1, enabledImis:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 165
    .local v3, imi:Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {p0, v3, p1}, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->isValidSystemNonAuxAsciiCapableIme(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 163
    .end local v1           #enabledImis:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #imi:Landroid/view/inputmethod/InputMethodInfo;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 169
    .restart local v1       #enabledImis:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_1
    if-nez v0, :cond_2

    .line 170
    sget-object v4, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->TAG:Ljava/lang/String;

    const-string v5, "No \"enabledValidSystemNonAuxAsciiCapableIme\"s found."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_2
    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;
    .locals 2
    .parameter "context"

    .prologue
    .line 56
    sget-object v0, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->sInstance:Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;

    if-nez v0, :cond_1

    .line 57
    sget-object v1, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->TAG:Ljava/lang/String;

    monitor-enter v1

    .line 58
    :try_start_0
    sget-object v0, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->sInstance:Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;

    invoke-direct {v0, p0}, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->sInstance:Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;

    .line 61
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :cond_1
    sget-object v0, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->sInstance:Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;

    return-object v0

    .line 61
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private isEnabledImi(Landroid/view/inputmethod/InputMethodInfo;)Z
    .locals 5
    .parameter "imi"

    .prologue
    .line 177
    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 178
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/List;

    move-result-object v0

    .line 179
    .local v0, enabledImis:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 181
    .local v2, tempImi:Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 182
    const/4 v3, 0x1

    .line 185
    .end local v2           #tempImi:Landroid/view/inputmethod/InputMethodInfo;
    :goto_0
    return v3

    .line 179
    .end local v0           #enabledImis:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 185
    .restart local v0       #enabledImis:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private updateAsciiCapableEnabledImis()V
    .locals 9

    .prologue
    .line 99
    iget-object v7, p0, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v7

    .line 100
    :try_start_0
    iget-object v6, p0, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->mAsciiCapableEnabledImis:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    .line 101
    iget-object v6, p0, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/List;

    move-result-object v0

    .line 102
    .local v0, enabledImis:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 103
    .local v3, imi:Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v5

    .line 104
    .local v5, subtypeCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v5, :cond_0

    .line 105
    invoke-virtual {v3, v1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v4

    .line 106
    .local v4, subtype:Landroid/view/inputmethod/InputMethodSubtype;
    const-string v6, "keyboard"

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodSubtype;->isAsciiCapable()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 108
    iget-object v6, p0, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->mAsciiCapableEnabledImis:Ljava/util/HashSet;

    invoke-virtual {v6, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 113
    .end local v0           #enabledImis:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v1           #i:I
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #imi:Landroid/view/inputmethod/InputMethodInfo;
    .end local v4           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    .end local v5           #subtypeCount:I
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 104
    .restart local v0       #enabledImis:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .restart local v1       #i:I
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #imi:Landroid/view/inputmethod/InputMethodInfo;
    .restart local v4       #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    .restart local v5       #subtypeCount:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 113
    .end local v1           #i:I
    .end local v3           #imi:Landroid/view/inputmethod/InputMethodInfo;
    .end local v4           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    .end local v5           #subtypeCount:I
    :cond_2
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    return-void
.end method


# virtual methods
.method public getCurrentInputMethodName(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 6
    .parameter "context"

    .prologue
    .line 123
    iget-object v3, p0, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 124
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->mMethodMap:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v4}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 125
    .local v0, imi:Landroid/view/inputmethod/InputMethodInfo;
    if-nez v0, :cond_0

    .line 126
    sget-object v2, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid selected imi: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v5}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const-string v2, ""

    monitor-exit v3

    .line 130
    :goto_0
    return-object v2

    .line 129
    :cond_0
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v1

    .line 130
    .local v1, subtype:Landroid/view/inputmethod/InputMethodSubtype;
    invoke-static {p1, v0, v1}, Lcom/android/internal/inputmethod/InputMethodUtils;->getImeAndSubtypeDisplayName(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Ljava/lang/CharSequence;

    move-result-object v2

    monitor-exit v3

    goto :goto_0

    .line 131
    .end local v0           #imi:Landroid/view/inputmethod/InputMethodInfo;
    .end local v1           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getInputMethodList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->mMethodList:Ljava/util/ArrayList;

    monitor-exit v1

    return-object v0

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isAlwaysCheckedIme(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;)Z
    .locals 6
    .parameter "imi"
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 135
    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->isEnabledImi(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v1

    .line 136
    .local v1, isEnabled:Z
    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 137
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v5}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-gt v5, v2, :cond_0

    if-eqz v1, :cond_0

    .line 138
    monitor-exit v4

    .line 155
    :goto_0
    return v2

    .line 140
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    invoke-direct {p0, p2}, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->getEnabledValidSystemNonAuxAsciiCapableImeCount(Landroid/content/Context;)I

    move-result v0

    .line 144
    .local v0, enabledValidSystemNonAuxAsciiCapableImeCount:I
    if-le v0, v2, :cond_1

    move v2, v3

    .line 145
    goto :goto_0

    .line 140
    .end local v0           #enabledValidSystemNonAuxAsciiCapableImeCount:I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 148
    .restart local v0       #enabledValidSystemNonAuxAsciiCapableImeCount:I
    :cond_1
    if-ne v0, v2, :cond_2

    if-nez v1, :cond_2

    move v2, v3

    .line 149
    goto :goto_0

    .line 152
    :cond_2
    invoke-static {p1}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v3

    .line 153
    goto :goto_0

    .line 155
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->isValidSystemNonAuxAsciiCapableIme(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;)Z

    move-result v2

    goto :goto_0
.end method

.method public isValidSystemNonAuxAsciiCapableIme(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;)Z
    .locals 2
    .parameter "imi"
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    .line 190
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->isAuxiliaryIme()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 191
    const/4 v0, 0x0

    .line 202
    :cond_0
    :goto_0
    return v0

    .line 193
    :cond_1
    invoke-static {v0, p1, p2}, Lcom/android/internal/inputmethod/InputMethodUtils;->isValidSystemDefaultIme(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->mAsciiCapableEnabledImis:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 197
    sget-object v0, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->TAG:Ljava/lang/String;

    const-string v1, "ascii capable subtype enabled imi not found. Fall back to English Keyboard subtype."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    sget-object v0, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->ENGLISH_LOCALE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "keyboard"

    invoke-static {p1, v0, v1}, Lcom/android/internal/inputmethod/InputMethodUtils;->containsSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 202
    :cond_2
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->mAsciiCapableEnabledImis:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public refreshAllInputMethodAndSubtypes()V
    .locals 6

    .prologue
    .line 85
    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 86
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 87
    iget-object v3, p0, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 88
    iget-object v3, p0, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v2

    .line 89
    .local v2, imms:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    iget-object v3, p0, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 90
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 91
    .local v1, imi:Landroid/view/inputmethod/InputMethodInfo;
    iget-object v3, p0, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 94
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #imi:Landroid/view/inputmethod/InputMethodInfo;
    .end local v2           #imms:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 93
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v2       #imms:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->updateAsciiCapableEnabledImis()V

    .line 94
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    return-void
.end method
