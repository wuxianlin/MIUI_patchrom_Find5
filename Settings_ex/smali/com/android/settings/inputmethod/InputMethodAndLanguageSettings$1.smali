.class Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$1;
.super Ljava/lang/Object;
.source "InputMethodAndLanguageSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$1;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 108
    invoke-virtual {p1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->getInstance(Landroid/content/Context;)Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->refreshAllInputMethodAndSubtypes()V

    .line 110
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$1;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 111
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$1;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    #calls: Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->updateInputMethodPreferenceViews()V
    invoke-static {v0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->access$000(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)V

    .line 112
    const/4 v0, 0x1

    return v0
.end method
