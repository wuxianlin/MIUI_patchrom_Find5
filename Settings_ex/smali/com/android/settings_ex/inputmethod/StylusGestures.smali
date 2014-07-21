.class public Lcom/android/settings_ex/inputmethod/StylusGestures;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "StylusGestures.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mActionNames:[Ljava/lang/String;

.field private mActionValues:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSwipeDouble:Landroid/preference/ListPreference;

.field private mSwipeDown:Landroid/preference/ListPreference;

.field private mSwipeLeft:Landroid/preference/ListPreference;

.field private mSwipeLong:Landroid/preference/ListPreference;

.field private mSwipeRight:Landroid/preference/ListPreference;

.field private mSwipeUp:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private addApplicationEntries(Landroid/preference/ListPreference;Ljava/lang/String;)V
    .locals 11
    .parameter "pref"
    .parameter "packageName"

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/StylusGestures;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 152
    .local v7, pm:Landroid/content/pm/PackageManager;
    new-instance v4, Landroid/content/Intent;

    const-string v9, "android.intent.action.MAIN"

    const/4 v10, 0x0

    invoke-direct {v4, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 153
    .local v4, intent:Landroid/content/Intent;
    const-string v9, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    const/4 v9, 0x0

    invoke-virtual {v7, v4, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 157
    .local v6, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v9, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    invoke-direct {v9, v7}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v6, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 159
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    iget-object v10, p0, Lcom/android/settings_ex/inputmethod/StylusGestures;->mActionValues:[Ljava/lang/String;

    array-length v10, v10

    add-int v0, v9, v10

    .line 160
    .local v0, count:I
    new-array v1, v0, [Ljava/lang/CharSequence;

    .line 161
    .local v1, entries:[Ljava/lang/CharSequence;
    new-array v8, v0, [Ljava/lang/CharSequence;

    .line 164
    .local v8, values:[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v9, p0, Lcom/android/settings_ex/inputmethod/StylusGestures;->mActionValues:[Ljava/lang/String;

    array-length v9, v9

    if-ge v2, v9, :cond_0

    .line 165
    iget-object v9, p0, Lcom/android/settings_ex/inputmethod/StylusGestures;->mActionNames:[Ljava/lang/String;

    aget-object v9, v9, v2

    aput-object v9, v1, v2

    .line 166
    iget-object v9, p0, Lcom/android/settings_ex/inputmethod/StylusGestures;->mActionValues:[Ljava/lang/String;

    aget-object v9, v9, v2

    aput-object v9, v8, v2

    .line 164
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 170
    :cond_0
    iget-object v9, p0, Lcom/android/settings_ex/inputmethod/StylusGestures;->mActionValues:[Ljava/lang/String;

    array-length v2, v9

    :goto_1
    if-ge v2, v0, :cond_2

    .line 171
    iget-object v9, p0, Lcom/android/settings_ex/inputmethod/StylusGestures;->mActionValues:[Ljava/lang/String;

    array-length v9, v9

    sub-int v9, v2, v9

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 172
    .local v3, info:Landroid/content/pm/ResolveInfo;
    invoke-virtual {v3, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 173
    .local v5, label:Ljava/lang/CharSequence;
    if-nez v5, :cond_1

    .line 174
    iget-object v9, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 177
    :cond_1
    aput-object v5, v1, v2

    .line 178
    iget-object v9, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v9, v8, v2

    .line 170
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 181
    .end local v3           #info:Landroid/content/pm/ResolveInfo;
    .end local v5           #label:Ljava/lang/CharSequence;
    :cond_2
    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 182
    invoke-virtual {p1, v8}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 183
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/inputmethod/StylusGestures;->setPrefValue(Landroid/preference/ListPreference;Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method private getAppName(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 4
    .parameter "packageName"

    .prologue
    .line 187
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/StylusGestures;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 191
    .local v2, pm:Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 196
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    :goto_0
    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 199
    :goto_1
    return-object v3

    .line 192
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 193
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    .restart local v0       #ai:Landroid/content/pm/ApplicationInfo;
    goto :goto_0

    .line 199
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private mapUpdateValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "time"

    .prologue
    .line 119
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/inputmethod/StylusGestures;->mActionValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 120
    iget-object v1, p0, Lcom/android/settings_ex/inputmethod/StylusGestures;->mActionValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/android/settings_ex/inputmethod/StylusGestures;->mActionNames:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 124
    :goto_1
    return-object v1

    .line 119
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private setPrefValue(Landroid/preference/ListPreference;Ljava/lang/String;)V
    .locals 6
    .parameter "pref"
    .parameter "packageName"

    .prologue
    .line 128
    if-nez p2, :cond_0

    .line 129
    const/16 v2, 0x3e8

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    .line 132
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/settings_ex/inputmethod/StylusGestures;->mapUpdateValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, text:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 134
    invoke-virtual {p1, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 147
    :goto_0
    return-void

    .line 137
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/settings_ex/inputmethod/StylusGestures;->getAppName(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 138
    .local v0, appName:Ljava/lang/CharSequence;
    if-eqz v0, :cond_2

    .line 139
    invoke-virtual {p1, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 142
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/inputmethod/StylusGestures;->mContext:Landroid/content/Context;

    const v3, 0x7f08037e

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setupGesturePref(Ljava/lang/String;Ljava/lang/String;)Landroid/preference/ListPreference;
    .locals 3
    .parameter "key"
    .parameter "settingName"

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/inputmethod/StylusGestures;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 86
    .local v0, pref:Landroid/preference/ListPreference;
    iget-object v2, p0, Lcom/android/settings_ex/inputmethod/StylusGestures;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v2, p2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, setting:Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/inputmethod/StylusGestures;->addApplicationEntries(Landroid/preference/ListPreference;Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 89
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const v1, 0x7f05001e

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/inputmethod/StylusGestures;->addPreferencesFromResource(I)V

    .line 68
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/StylusGestures;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/inputmethod/StylusGestures;->mContext:Landroid/content/Context;

    .line 69
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/StylusGestures;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/inputmethod/StylusGestures;->mResolver:Landroid/content/ContentResolver;

    .line 71
    iget-object v1, p0, Lcom/android/settings_ex/inputmethod/StylusGestures;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 72
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f0c00a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/inputmethod/StylusGestures;->mActionNames:[Ljava/lang/String;

    .line 73
    const v1, 0x7f0c00a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/inputmethod/StylusGestures;->mActionValues:[Ljava/lang/String;

    .line 76
    const-string v1, "gestures_left"

    const-string v2, "gestures_left_swipe"

    invoke-direct {p0, v1, v2}, Lcom/android/settings_ex/inputmethod/StylusGestures;->setupGesturePref(Ljava/lang/String;Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/inputmethod/StylusGestures;->mSwipeLeft:Landroid/preference/ListPreference;

    .line 77
    const-string v1, "gestures_right"

    const-string v2, "gestures_right_swipe"

    invoke-direct {p0, v1, v2}, Lcom/android/settings_ex/inputmethod/StylusGestures;->setupGesturePref(Ljava/lang/String;Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/inputmethod/StylusGestures;->mSwipeRight:Landroid/preference/ListPreference;

    .line 78
    const-string v1, "gestures_up"

    const-string v2, "gestures_up_swipe"

    invoke-direct {p0, v1, v2}, Lcom/android/settings_ex/inputmethod/StylusGestures;->setupGesturePref(Ljava/lang/String;Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/inputmethod/StylusGestures;->mSwipeUp:Landroid/preference/ListPreference;

    .line 79
    const-string v1, "gestures_down"

    const-string v2, "gestures_down_swipe"

    invoke-direct {p0, v1, v2}, Lcom/android/settings_ex/inputmethod/StylusGestures;->setupGesturePref(Ljava/lang/String;Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/inputmethod/StylusGestures;->mSwipeDown:Landroid/preference/ListPreference;

    .line 80
    const-string v1, "gestures_long"

    const-string v2, "gestures_long_press"

    invoke-direct {p0, v1, v2}, Lcom/android/settings_ex/inputmethod/StylusGestures;->setupGesturePref(Ljava/lang/String;Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/inputmethod/StylusGestures;->mSwipeLong:Landroid/preference/ListPreference;

    .line 81
    const-string v1, "gestures_double"

    const-string v2, "gestures_double_tap"

    invoke-direct {p0, v1, v2}, Lcom/android/settings_ex/inputmethod/StylusGestures;->setupGesturePref(Ljava/lang/String;Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/inputmethod/StylusGestures;->mSwipeDouble:Landroid/preference/ListPreference;

    .line 82
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 94
    const/4 v1, 0x0

    .line 96
    .local v1, settingName:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings_ex/inputmethod/StylusGestures;->mSwipeLeft:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_0

    .line 97
    const-string v1, "gestures_left_swipe"

    .line 112
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, packageName:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings_ex/inputmethod/StylusGestures;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v2, v1, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 114
    check-cast p1, Landroid/preference/ListPreference;

    .end local p1
    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/inputmethod/StylusGestures;->setPrefValue(Landroid/preference/ListPreference;Ljava/lang/String;)V

    .line 115
    const/4 v2, 0x1

    .end local v0           #packageName:Ljava/lang/String;
    :goto_1
    return v2

    .line 98
    .restart local p1
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/inputmethod/StylusGestures;->mSwipeRight:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_1

    .line 99
    const-string v1, "gestures_right_swipe"

    goto :goto_0

    .line 100
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/inputmethod/StylusGestures;->mSwipeUp:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_2

    .line 101
    const-string v1, "gestures_up_swipe"

    goto :goto_0

    .line 102
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/inputmethod/StylusGestures;->mSwipeDown:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_3

    .line 103
    const-string v1, "gestures_down_swipe"

    goto :goto_0

    .line 104
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/inputmethod/StylusGestures;->mSwipeLong:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_4

    .line 105
    const-string v1, "gestures_long_press"

    goto :goto_0

    .line 106
    :cond_4
    iget-object v2, p0, Lcom/android/settings_ex/inputmethod/StylusGestures;->mSwipeDouble:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_5

    .line 107
    const-string v1, "gestures_double_tap"

    goto :goto_0

    .line 109
    :cond_5
    const/4 v2, 0x0

    goto :goto_1
.end method
