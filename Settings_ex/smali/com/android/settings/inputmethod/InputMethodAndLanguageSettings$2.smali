.class Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$2;
.super Ljava/lang/Object;
.source "InputMethodAndLanguageSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->updateUserDictionaryPreference(Landroid/preference/Preference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

.field final synthetic val$localeSet:Ljava/util/TreeSet;


# direct methods
.method constructor <init>(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;Ljava/util/TreeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 237
    iput-object p1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$2;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    iput-object p2, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$2;->val$localeSet:Ljava/util/TreeSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 242
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 244
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$2;->val$localeSet:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    if-gt v0, v5, :cond_1

    .line 245
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$2;->val$localeSet:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    const-string v2, "locale"

    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$2;->val$localeSet:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :cond_0
    const-class v0, Lcom/android/settings/UserDictionarySettings;

    .line 260
    :goto_0
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$2;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    iget-object v3, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$2;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v0, v4, v1}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    .line 262
    return v5

    .line 258
    :cond_1
    const-class v0, Lcom/android/settings/inputmethod/UserDictionaryList;

    goto :goto_0
.end method
