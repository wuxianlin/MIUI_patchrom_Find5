.class public Lcom/android/settings_ex/inputmethod/InputMethodPreference;
.super Landroid/preference/CheckBoxPreference;
.source "InputMethodPreference.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCollator:Ljava/text/Collator;

.field private mDialog:Landroid/app/AlertDialog;

.field private final mFragment:Lcom/android/settings_ex/SettingsPreferenceFragment;

.field private final mImi:Landroid/view/inputmethod/InputMethodInfo;

.field private final mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mInputMethodPref:Landroid/view/View;

.field private mInputMethodSettingsButton:Landroid/widget/ImageView;

.field private final mIsSystemIme:Z

.field private final mIsValidSystemNonAuxAsciiCapableIme:Z

.field private mOnImePreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private final mPrefOnclickListener:Landroid/view/View$OnClickListener;

.field private final mSettingsIntent:Landroid/content/Intent;

.field private mSummaryText:Landroid/widget/TextView;

.field private mTitleText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/settings_ex/SettingsPreferenceFragment;Landroid/content/Intent;Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodInfo;)V
    .locals 4
    .parameter "fragment"
    .parameter "settingsIntent"
    .parameter "imm"
    .parameter "imi"

    .prologue
    const/4 v3, 0x0

    .line 88
    invoke-virtual {p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f09003c

    invoke-direct {p0, v1, v3, v2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    iput-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    .line 68
    new-instance v1, Lcom/android/settings_ex/inputmethod/InputMethodPreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference$1;-><init>(Lcom/android/settings_ex/inputmethod/InputMethodPreference;)V

    iput-object v1, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mPrefOnclickListener:Landroid/view/View$OnClickListener;

    .line 89
    const v1, 0x7f040096

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->setLayoutResource(I)V

    .line 90
    const v1, 0x7f040097

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->setWidgetLayoutResource(I)V

    .line 91
    iput-object p1, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mFragment:Lcom/android/settings_ex/SettingsPreferenceFragment;

    .line 92
    iput-object p2, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mSettingsIntent:Landroid/content/Intent;

    .line 93
    iput-object p3, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 94
    iput-object p4, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    .line 95
    invoke-static {p4}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mIsSystemIme:Z

    .line 96
    invoke-virtual {p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mCollator:Ljava/text/Collator;

    .line 97
    invoke-virtual {p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 98
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;

    move-result-object v1

    invoke-virtual {v1, p4, v0}, Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;->isValidSystemNonAuxAsciiCapableIme(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mIsValidSystemNonAuxAsciiCapableIme:Z

    .line 100
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->updatePreferenceViews()V

    .line 101
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/inputmethod/InputMethodPreference;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->setChecked(ZZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/inputmethod/InputMethodPreference;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mIsSystemIme:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/inputmethod/InputMethodPreference;)Landroid/view/inputmethod/InputMethodInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/inputmethod/InputMethodPreference;Landroid/view/inputmethod/InputMethodInfo;Lcom/android/settings_ex/inputmethod/InputMethodPreference;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->showSecurityWarnDialog(Landroid/view/inputmethod/InputMethodInfo;Lcom/android/settings_ex/inputmethod/InputMethodPreference;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings_ex/inputmethod/InputMethodPreference;)Lcom/android/settings_ex/SettingsPreferenceFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mFragment:Lcom/android/settings_ex/SettingsPreferenceFragment;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/inputmethod/InputMethodPreference;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mSettingsIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getSummaryString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    .local v0, builder:Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v6, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v4

    .line 225
    .local v4, subtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodSubtype;

    .line 226
    .local v2, subtype:Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 227
    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    :cond_0
    iget-object v5, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mFragment:Lcom/android/settings_ex/SettingsPreferenceFragment;

    invoke-virtual {v5}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v5, v6, v7}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 231
    .local v3, subtypeLabel:Ljava/lang/CharSequence;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 233
    .end local v2           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    .end local v3           #subtypeLabel:Ljava/lang/CharSequence;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private saveImeSettings()V
    .locals 5

    .prologue
    .line 316
    iget-object v1, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mFragment:Lcom/android/settings_ex/SettingsPreferenceFragment;

    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mFragment:Lcom/android/settings_ex/SettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v3

    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mFragment:Lcom/android/settings_ex/SettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v3, v0}, Lcom/android/settings_ex/inputmethod/InputMethodAndSubtypeUtil;->saveInputMethodSubtypeList(Lcom/android/settings_ex/SettingsPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Z)V

    .line 320
    return-void

    .line 316
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setChecked(ZZ)V
    .locals 3
    .parameter "checked"
    .parameter "save"

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->isChecked()Z

    move-result v0

    .line 251
    .local v0, wasChecked:Z
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 252
    if-eqz p2, :cond_0

    .line 253
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->saveImeSettings()V

    .line 254
    if-eq v0, p1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mOnImePreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    if-eqz v1, :cond_0

    .line 255
    iget-object v1, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mOnImePreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, p0, v2}, Landroid/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 258
    :cond_0
    return-void
.end method

.method private showSecurityWarnDialog(Landroid/view/inputmethod/InputMethodInfo;Lcom/android/settings_ex/inputmethod/InputMethodPreference;)V
    .locals 7
    .parameter "imi"
    .parameter "chkPref"

    .prologue
    const/4 v3, 0x1

    .line 265
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 268
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mFragment:Lcom/android/settings_ex/SettingsPreferenceFragment;

    invoke-virtual {v1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings_ex/inputmethod/InputMethodPreference$6;

    invoke-direct {v2, p0, p2}, Lcom/android/settings_ex/inputmethod/InputMethodPreference$6;-><init>(Lcom/android/settings_ex/inputmethod/InputMethodPreference;Lcom/android/settings_ex/inputmethod/InputMethodPreference;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/android/settings_ex/inputmethod/InputMethodPreference$5;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference$5;-><init>(Lcom/android/settings_ex/inputmethod/InputMethodPreference;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    .line 286
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mFragment:Lcom/android/settings_ex/SettingsPreferenceFragment;

    invoke-virtual {v1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08089f

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mFragment:Lcom/android/settings_ex/SettingsPreferenceFragment;

    invoke-virtual {v6}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 289
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 290
    return-void
.end method

.method public static startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z
    .locals 7
    .parameter "fragment"
    .parameter "fragmentClass"
    .parameter "requestCode"
    .parameter "extras"

    .prologue
    const/4 v3, 0x0

    .line 209
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Landroid/preference/PreferenceActivity;

    if-eqz v1, :cond_0

    .line 210
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 211
    .local v0, preferenceActivity:Landroid/preference/PreferenceActivity;
    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, p3

    move-object v5, p0

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 213
    const/4 v3, 0x1

    .line 218
    .end local v0           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :goto_0
    return v3

    .line 215
    :cond_0
    sget-object v1, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parent isn\'t PreferenceActivity, thus there\'s no way to launch the given Fragment (name: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", requestCode: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateSummary()V
    .locals 2

    .prologue
    .line 237
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->getSummaryString()Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, summary:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    :goto_0
    return-void

    .line 241
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 9
    .parameter "p"

    .prologue
    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v5, 0x1

    .line 294
    instance-of v8, p1, Lcom/android/settings_ex/inputmethod/InputMethodPreference;

    if-nez v8, :cond_1

    .line 295
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->compareTo(Landroid/preference/Preference;)I

    move-result v5

    .line 312
    :cond_0
    :goto_0
    return v5

    :cond_1
    move-object v0, p1

    .line 297
    check-cast v0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;

    .line 298
    .local v0, imp:Lcom/android/settings_ex/inputmethod/InputMethodPreference;
    iget-boolean v8, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mIsSystemIme:Z

    if-eqz v8, :cond_2

    iget-boolean v8, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mIsValidSystemNonAuxAsciiCapableIme:Z

    if-eqz v8, :cond_2

    move v1, v5

    .line 299
    .local v1, priority0:Z
    :goto_1
    iget-boolean v8, v0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mIsSystemIme:Z

    if-eqz v8, :cond_3

    iget-boolean v8, v0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mIsValidSystemNonAuxAsciiCapableIme:Z

    if-eqz v8, :cond_3

    move v2, v5

    .line 300
    .local v2, priority1:Z
    :goto_2
    if-ne v1, v2, :cond_5

    .line 301
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    .line 302
    .local v3, t0:Ljava/lang/CharSequence;
    invoke-virtual {v0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    .line 303
    .local v4, t1:Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 306
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v5, v7

    .line 307
    goto :goto_0

    .end local v1           #priority0:Z
    .end local v2           #priority1:Z
    .end local v3           #t0:Ljava/lang/CharSequence;
    .end local v4           #t1:Ljava/lang/CharSequence;
    :cond_2
    move v1, v6

    .line 298
    goto :goto_1

    .restart local v1       #priority0:Z
    :cond_3
    move v2, v6

    .line 299
    goto :goto_2

    .line 309
    .restart local v2       #priority1:Z
    .restart local v3       #t0:Ljava/lang/CharSequence;
    .restart local v4       #t1:Ljava/lang/CharSequence;
    :cond_4
    iget-object v5, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mCollator:Ljava/text/Collator;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto :goto_0

    .line 312
    .end local v3           #t0:Ljava/lang/CharSequence;
    .end local v4           #t1:Ljava/lang/CharSequence;
    :cond_5
    if-eqz v1, :cond_0

    move v5, v7

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    check-cast p1, Landroid/preference/Preference;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v0, 0x1

    .line 105
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 106
    const v3, 0x7f0d0188

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mInputMethodPref:Landroid/view/View;

    .line 107
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mInputMethodPref:Landroid/view/View;

    iget-object v4, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mPrefOnclickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    const v3, 0x7f0d0189

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mInputMethodSettingsButton:Landroid/widget/ImageView;

    .line 109
    const v3, 0x1020016

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mTitleText:Landroid/widget/TextView;

    .line 110
    const v3, 0x1020010

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mSummaryText:Landroid/widget/TextView;

    .line 111
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v3

    if-le v3, v0, :cond_4

    .line 112
    .local v0, hasSubtypes:Z
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, imiId:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 114
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mInputMethodPref:Landroid/view/View;

    new-instance v4, Lcom/android/settings_ex/inputmethod/InputMethodPreference$2;

    invoke-direct {v4, p0, v1}, Lcom/android/settings_ex/inputmethod/InputMethodPreference$2;-><init>(Lcom/android/settings_ex/inputmethod/InputMethodPreference;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 126
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mSettingsIntent:Landroid/content/Intent;

    if-eqz v3, :cond_1

    .line 127
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mInputMethodSettingsButton:Landroid/widget/ImageView;

    new-instance v4, Lcom/android/settings_ex/inputmethod/InputMethodPreference$3;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference$3;-><init>(Lcom/android/settings_ex/inputmethod/InputMethodPreference;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    :cond_1
    if-eqz v0, :cond_2

    .line 146
    new-instance v2, Lcom/android/settings_ex/inputmethod/InputMethodPreference$4;

    invoke-direct {v2, p0, v1}, Lcom/android/settings_ex/inputmethod/InputMethodPreference$4;-><init>(Lcom/android/settings_ex/inputmethod/InputMethodPreference;Ljava/lang/String;)V

    .line 156
    .local v2, listener:Landroid/view/View$OnLongClickListener;
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mInputMethodSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 158
    .end local v2           #listener:Landroid/view/View$OnLongClickListener;
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mSettingsIntent:Landroid/content/Intent;

    if-nez v3, :cond_3

    .line 159
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mInputMethodSettingsButton:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 161
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->updatePreferenceViews()V

    .line 162
    return-void

    .line 111
    .end local v0           #hasSubtypes:Z
    .end local v1           #imiId:Ljava/lang/String;
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 166
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 167
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->updatePreferenceViews()V

    .line 168
    return-void
.end method

.method public setOnImePreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 261
    iput-object p1, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mOnImePreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 262
    return-void
.end method

.method public updatePreferenceViews()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 171
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;->isAlwaysCheckedIme(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;)Z

    move-result v2

    .line 174
    .local v2, isAlwaysChecked:Z
    if-eqz v2, :cond_4

    .line 175
    invoke-super {p0, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 176
    invoke-super {p0, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 180
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->isChecked()Z

    move-result v0

    .line 181
    .local v0, checked:Z
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mInputMethodSettingsButton:Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    .line 182
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mInputMethodSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 183
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mInputMethodSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 184
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mInputMethodSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 185
    if-nez v0, :cond_0

    .line 186
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mInputMethodSettingsButton:Landroid/widget/ImageView;

    const v4, 0x3ecccccd

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 189
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mTitleText:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 190
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 192
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mSummaryText:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    .line 193
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mSummaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 195
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mInputMethodPref:Landroid/view/View;

    if-eqz v3, :cond_3

    .line 196
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mInputMethodPref:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 197
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mInputMethodPref:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 198
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->isEnabled()Z

    move-result v1

    .line 199
    .local v1, enabled:Z
    iget-object v4, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mInputMethodPref:Landroid/view/View;

    if-eqz v1, :cond_5

    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mPrefOnclickListener:Landroid/view/View$OnClickListener;

    :goto_1
    invoke-virtual {v4, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    if-nez v1, :cond_3

    .line 201
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mInputMethodPref:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 204
    .end local v1           #enabled:Z
    :cond_3
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->updateSummary()V

    .line 205
    return-void

    .line 178
    .end local v0           #checked:Z
    :cond_4
    invoke-super {p0, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 199
    .restart local v0       #checked:Z
    .restart local v1       #enabled:Z
    :cond_5
    const/4 v3, 0x0

    goto :goto_1
.end method
