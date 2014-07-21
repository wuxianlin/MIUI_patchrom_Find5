.class public Lcom/android/settings_ex/voicewakeup/VoiceWakeupSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "VoiceWakeupSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings_ex/cyanogenmod/ShortcutPickHelper$OnPickListener;


# instance fields
.field private mActionBarSwitch:Landroid/widget/Switch;

.field mContainer:Landroid/view/ViewGroup;

.field private mDefaultActivityString:Ljava/lang/String;

.field private mEnabled:Z

.field private mLaunchIntentString:Ljava/lang/String;

.field private mPickShortcutPreference:Landroid/preference/Preference;

.field private mPicker:Lcom/android/settings_ex/cyanogenmod/ShortcutPickHelper;

.field private mRetrainPreference:Landroid/preference/Preference;

.field private mSettingsObserver:Landroid/database/ContentObserver;

.field private mVoiceWakeupEnabler:Lcom/android/settings_ex/voicewakeup/VoiceWakeupEnabler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 73
    new-instance v0, Lcom/android/settings_ex/voicewakeup/VoiceWakeupSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/voicewakeup/VoiceWakeupSettings$1;-><init>(Lcom/android/settings_ex/voicewakeup/VoiceWakeupSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/voicewakeup/VoiceWakeupSettings;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/voicewakeup/VoiceWakeupSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/settings_ex/voicewakeup/VoiceWakeupSettings;->refreshEnabledState()V

    return-void
.end method

.method private refreshEnabledState()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 115
    invoke-virtual {p0}, Lcom/android/settings_ex/voicewakeup/VoiceWakeupSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 116
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "voice_wakeup"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings_ex/voicewakeup/VoiceWakeupSettings;->mEnabled:Z

    .line 118
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "voice_launch_intent"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/voicewakeup/VoiceWakeupSettings;->mLaunchIntentString:Ljava/lang/String;

    .line 121
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 123
    iget-object v1, p0, Lcom/android/settings_ex/voicewakeup/VoiceWakeupSettings;->mRetrainPreference:Landroid/preference/Preference;

    iget-boolean v2, p0, Lcom/android/settings_ex/voicewakeup/VoiceWakeupSettings;->mEnabled:Z

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 124
    iget-object v1, p0, Lcom/android/settings_ex/voicewakeup/VoiceWakeupSettings;->mPickShortcutPreference:Landroid/preference/Preference;

    iget-boolean v2, p0, Lcom/android/settings_ex/voicewakeup/VoiceWakeupSettings;->mEnabled:Z

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 126
    iget-object v1, p0, Lcom/android/settings_ex/voicewakeup/VoiceWakeupSettings;->mLaunchIntentString:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/voicewakeup/VoiceWakeupSettings;->mLaunchIntentString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 127
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/voicewakeup/VoiceWakeupSettings;->mPickShortcutPreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings_ex/voicewakeup/VoiceWakeupSettings;->mDefaultActivityString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 131
    :goto_1
    return-void

    :cond_1
    move v1, v2

    .line 116
    goto :goto_0

    .line 129
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/voicewakeup/VoiceWakeupSettings;->mPickShortcutPreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings_ex/voicewakeup/VoiceWakeupSettings;->mPicker:Lcom/android/settings_ex/cyanogenmod/ShortcutPickHelper;

    iget-object v3, p0, Lcom/android/settings_ex/voicewakeup/VoiceWakeupSettings;->mLaunchIntentString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/cyanogenmod/ShortcutPickHelper;->getFriendlyNameForUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private retrain()V
    .locals 4

    .prologue
    .line 86
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 87
    .local v0, retrain:Landroid/content/Intent;
    const v1, 0x14008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 89
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.cyanogenmod.voicewakeup"

    const-string v3, "com.cyanogenmod.voicewakeup.VoiceTrainingActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 90
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/voicewakeup/VoiceWakeupSettings;->startActivity(Landroid/content/Intent;)V

    .line 91
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/16 v6, 0x10

    const/4 v7, -0x2

    const/4 v5, 0x0

    .line 147
    invoke-virtual {p0}, Lcom/android/settings_ex/voicewakeup/VoiceWakeupSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 149
    .local v0, activity:Landroid/app/Activity;
    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings_ex/voicewakeup/VoiceWakeupSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 151
    instance-of v3, v0, Landroid/preference/PreferenceActivity;

    if-eqz v3, :cond_1

    move-object v2, v0

    .line 152
    check-cast v2, Landroid/preference/PreferenceActivity;

    .line 153
    .local v2, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v3

    if-nez v3, :cond_1

    .line 154
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070014

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 156
    .local v1, padding:I
    iget-object v3, p0, Lcom/android/settings_ex/voicewakeup/VoiceWakeupSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5, v5, v1, v5}, Landroid/widget/Switch;->setPaddingRelative(IIII)V

    .line 157
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 159
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/voicewakeup/VoiceWakeupSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const v6, 0x800015

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 166
    .end local v1           #padding:I
    .end local v2           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_1
    new-instance v3, Lcom/android/settings_ex/voicewakeup/VoiceWakeupEnabler;

    iget-object v4, p0, Lcom/android/settings_ex/voicewakeup/VoiceWakeupSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-direct {v3, v0, v4}, Lcom/android/settings_ex/voicewakeup/VoiceWakeupEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v3, p0, Lcom/android/settings_ex/voicewakeup/VoiceWakeupSettings;->mVoiceWakeupEnabler:Lcom/android/settings_ex/voicewakeup/VoiceWakeupEnabler;

    .line 169
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 170
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 214
    const/4 v0, 0x0

    .line 215
    .local v0, shortcutName:Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 216
    const-string v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 219
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/voicewakeup/VoiceWakeupSettings;->mDefaultActivityString:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 220
    const-string v1, ""

    iget-object v2, p0, Lcom/android/settings_ex/voicewakeup/VoiceWakeupSettings;->mDefaultActivityString:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/settings_ex/voicewakeup/VoiceWakeupSettings;->shortcutPicked(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 225
    :cond_1
    :goto_0
    return-void

    .line 221
    :cond_2
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 223
    iget-object v1, p0, Lcom/android/settings_ex/voicewakeup/VoiceWakeupSettings;->mPicker:Lcom/android/settings_ex/cyanogenmod/ShortcutPickHelper;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/settings_ex/cyanogenmod/ShortcutPickHelper;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 97
    const v0, 0x7f050060

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/voicewakeup/VoiceWakeupSettings;->addPreferencesFromResource(I)V

    .line 99
    const-string v0, "retrain"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/voicewakeup/VoiceWakeupSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/voicewakeup/VoiceWakeupSettings;->mRetrainPreference:Landroid/preference/Preference;

    .line 100
    const-string v0, "voice_wakeup_launch_intent"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/voicewakeup/VoiceWakeupSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/voicewakeup/VoiceWakeupSettings;->mPickShortcutPreference:Landroid/preference/Preference;

    .line 101
    new-instance v0, Lcom/android/settings_ex/cyanogenmod/ShortcutPickHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/voicewakeup/VoiceWakeupSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/settings_ex/cyanogenmod/ShortcutPickHelper;-><init>(Landroid/app/Activity;Lcom/android/settings_ex/cyanogenmod/ShortcutPickHelper$OnPickListener;)V

    iput-object v0, p0, Lcom/android/settings_ex/voicewakeup/VoiceWakeupSettings;->mPicker:Lcom/android/settings_ex/cyanogenmod/ShortcutPickHelper;

    .line 102
    invoke-virtual {p0}, Lcom/android/settings_ex/voicewakeup/VoiceWakeupSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0803fe

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/voicewakeup/VoiceWakeupSettings;->mDefaultActivityString:Ljava/lang/String;

    .line 104
    invoke-virtual {p0}, Lcom/android/settings_ex/voicewakeup/VoiceWakeupSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "voice_wakeup"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings_ex/voicewakeup/VoiceWakeupSettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 106
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 135
    iput-object p2, p0, Lcom/android/settings_ex/voicewakeup/VoiceWakeupSettings;->mContainer:Landroid/view/ViewGroup;

    .line 136
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 110
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroy()V

    .line 111
    invoke-virtual {p0}, Lcom/android/settings_ex/voicewakeup/VoiceWakeupSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/voicewakeup/VoiceWakeupSettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 112
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 174
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 175
    iget-object v0, p0, Lcom/android/settings_ex/voicewakeup/VoiceWakeupSettings;->mVoiceWakeupEnabler:Lcom/android/settings_ex/voicewakeup/VoiceWakeupEnabler;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/settings_ex/voicewakeup/VoiceWakeupSettings;->mVoiceWakeupEnabler:Lcom/android/settings_ex/voicewakeup/VoiceWakeupEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/voicewakeup/VoiceWakeupEnabler;->pause()V

    .line 178
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 234
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 196
    iget-object v3, p0, Lcom/android/settings_ex/voicewakeup/VoiceWakeupSettings;->mRetrainPreference:Landroid/preference/Preference;

    if-ne p2, v3, :cond_0

    .line 197
    invoke-direct {p0}, Lcom/android/settings_ex/voicewakeup/VoiceWakeupSettings;->retrain()V

    .line 209
    :goto_0
    return v2

    .line 199
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/voicewakeup/VoiceWakeupSettings;->mPickShortcutPreference:Landroid/preference/Preference;

    if-ne p2, v3, :cond_1

    .line 200
    new-array v1, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings_ex/voicewakeup/VoiceWakeupSettings;->mDefaultActivityString:Ljava/lang/String;

    aput-object v3, v1, v5

    .line 203
    .local v1, names:[Ljava/lang/String;
    new-array v0, v2, [Landroid/content/Intent$ShortcutIconResource;

    invoke-virtual {p0}, Lcom/android/settings_ex/voicewakeup/VoiceWakeupSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0200e3

    invoke-static {v3, v4}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v3

    aput-object v3, v0, v5

    .line 206
    .local v0, icons:[Landroid/content/Intent$ShortcutIconResource;
    iget-object v3, p0, Lcom/android/settings_ex/voicewakeup/VoiceWakeupSettings;->mPicker:Lcom/android/settings_ex/cyanogenmod/ShortcutPickHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/voicewakeup/VoiceWakeupSettings;->getId()I

    move-result v4

    invoke-virtual {v3, v1, v0, v4}, Lcom/android/settings_ex/cyanogenmod/ShortcutPickHelper;->pickShortcut([Ljava/lang/String;[Landroid/content/Intent$ShortcutIconResource;I)V

    goto :goto_0

    .line 209
    .end local v0           #icons:[Landroid/content/Intent$ShortcutIconResource;
    .end local v1           #names:[Ljava/lang/String;
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 182
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 183
    iget-object v0, p0, Lcom/android/settings_ex/voicewakeup/VoiceWakeupSettings;->mVoiceWakeupEnabler:Lcom/android/settings_ex/voicewakeup/VoiceWakeupEnabler;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/settings_ex/voicewakeup/VoiceWakeupSettings;->mVoiceWakeupEnabler:Lcom/android/settings_ex/voicewakeup/VoiceWakeupEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/voicewakeup/VoiceWakeupEnabler;->resume()V

    .line 187
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/voicewakeup/VoiceWakeupSettings;->refreshEnabledState()V

    .line 190
    invoke-virtual {p0}, Lcom/android/settings_ex/voicewakeup/VoiceWakeupSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/android/settings_ex/voicewakeup/VoiceWakeupSettings;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 193
    :cond_1
    return-void
.end method

.method public shortcutPicked(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .parameter "uri"
    .parameter "friendlyName"
    .parameter "isApplication"

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/android/settings_ex/voicewakeup/VoiceWakeupSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "voice_launch_intent"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 230
    return-void
.end method
