.class public Lcom/android/settings_ex/HomeSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "HomeSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/HomeSettings$HomeAppPreference;
    }
.end annotation


# instance fields
.field mCurrentHome:Lcom/android/settings_ex/HomeSettings$HomeAppPreference;

.field mDeleteClickListener:Landroid/view/View$OnClickListener;

.field mHomeClickListener:Landroid/view/View$OnClickListener;

.field mHomeComponentSet:[Landroid/content/ComponentName;

.field final mHomeFilter:Landroid/content/IntentFilter;

.field mPm:Landroid/content/pm/PackageManager;

.field mPrefGroup:Landroid/preference/PreferenceGroup;

.field mPrefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/HomeSettings$HomeAppPreference;",
            ">;"
        }
    .end annotation
.end field

.field mShowNotice:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/HomeSettings;->mCurrentHome:Lcom/android/settings_ex/HomeSettings$HomeAppPreference;

    .line 76
    new-instance v0, Lcom/android/settings_ex/HomeSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/HomeSettings$1;-><init>(Lcom/android/settings_ex/HomeSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/HomeSettings;->mHomeClickListener:Landroid/view/View$OnClickListener;

    .line 87
    new-instance v0, Lcom/android/settings_ex/HomeSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/HomeSettings$2;-><init>(Lcom/android/settings_ex/HomeSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/HomeSettings;->mDeleteClickListener:Landroid/view/View$OnClickListener;

    .line 71
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings_ex/HomeSettings;->mHomeFilter:Landroid/content/IntentFilter;

    .line 72
    iget-object v0, p0, Lcom/android/settings_ex/HomeSettings;->mHomeFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/android/settings_ex/HomeSettings;->mHomeFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 74
    return-void
.end method


# virtual methods
.method buildHomeActivitiesList()V
    .locals 21

    .prologue
    .line 160
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v14, homeActivities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/HomeSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v14}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v12

    .line 163
    .local v12, currentDefaultHome:Landroid/content/ComponentName;
    new-instance v19, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 164
    .local v19, prefsIntent:Landroid/content/Intent;
    const-string v2, "com.cyanogenmod.category.LAUNCHER_PREFERENCES"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/HomeSettings;->mPm:Landroid/content/pm/PackageManager;

    const/4 v8, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v18

    .line 167
    .local v18, prefsActivities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/HomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 168
    .local v3, context:Landroid/content/Context;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/HomeSettings;->mCurrentHome:Lcom/android/settings_ex/HomeSettings$HomeAppPreference;

    .line 169
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/HomeSettings;->mPrefGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 170
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/HomeSettings;->mPrefs:Ljava/util/ArrayList;

    .line 171
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/HomeSettings;->mHomeComponentSet:[Landroid/content/ComponentName;

    .line 172
    const/4 v5, 0x0

    .line 173
    .local v5, prefIndex:I
    const/4 v15, 0x0

    .local v15, i:I
    :goto_0
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v15, v2, :cond_3

    .line 174
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 175
    .local v11, candidate:Landroid/content/pm/ResolveInfo;
    iget-object v9, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 176
    .local v9, info:Landroid/content/pm/ActivityInfo;
    const/4 v10, 0x0

    .line 177
    .local v10, resolvedPrefsIntent:Landroid/content/Intent;
    new-instance v4, Landroid/content/ComponentName;

    iget-object v2, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v2, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .local v4, activityName:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/HomeSettings;->mHomeComponentSet:[Landroid/content/ComponentName;

    aput-object v4, v2, v15

    .line 180
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/ResolveInfo;

    .line 181
    .local v17, prefInfo:Landroid/content/pm/ResolveInfo;
    iget-object v2, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 182
    new-instance v10, Landroid/content/Intent;

    .end local v10           #resolvedPrefsIntent:Landroid/content/Intent;
    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 183
    .restart local v10       #resolvedPrefsIntent:Landroid/content/Intent;
    iget-object v2, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    .end local v17           #prefInfo:Landroid/content/pm/ResolveInfo;
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/HomeSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, v2}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 190
    .local v6, icon:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/HomeSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, v2}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 191
    .local v7, name:Ljava/lang/CharSequence;
    new-instance v1, Lcom/android/settings_ex/HomeSettings$HomeAppPreference;

    move-object/from16 v2, p0

    move-object/from16 v8, p0

    invoke-direct/range {v1 .. v10}, Lcom/android/settings_ex/HomeSettings$HomeAppPreference;-><init>(Lcom/android/settings_ex/HomeSettings;Landroid/content/Context;Landroid/content/ComponentName;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/settings_ex/HomeSettings;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)V

    .line 193
    .local v1, pref:Lcom/android/settings_ex/HomeSettings$HomeAppPreference;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/HomeSettings;->mPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/HomeSettings;->mPrefGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 195
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/HomeSettings$HomeAppPreference;->setEnabled(Z)V

    .line 196
    invoke-virtual {v4, v12}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 197
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings_ex/HomeSettings;->mCurrentHome:Lcom/android/settings_ex/HomeSettings$HomeAppPreference;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 173
    .end local v1           #pref:Lcom/android/settings_ex/HomeSettings$HomeAppPreference;
    .end local v6           #icon:Landroid/graphics/drawable/Drawable;
    .end local v7           #name:Ljava/lang/CharSequence;
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    .line 200
    :catch_0
    move-exception v13

    .line 201
    .local v13, e:Ljava/lang/Exception;
    const-string v2, "HomeSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Problem dealing with activity "

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 205
    .end local v4           #activityName:Landroid/content/ComponentName;
    .end local v9           #info:Landroid/content/pm/ActivityInfo;
    .end local v10           #resolvedPrefsIntent:Landroid/content/Intent;
    .end local v11           #candidate:Landroid/content/pm/ResolveInfo;
    .end local v13           #e:Ljava/lang/Exception;
    .end local v16           #i$:Ljava/util/Iterator;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/HomeSettings;->mCurrentHome:Lcom/android/settings_ex/HomeSettings$HomeAppPreference;

    if-eqz v2, :cond_4

    .line 206
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v8, Lcom/android/settings_ex/HomeSettings$3;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/android/settings_ex/HomeSettings$3;-><init>(Lcom/android/settings_ex/HomeSettings;)V

    invoke-virtual {v2, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 212
    :cond_4
    return-void
.end method

.method makeCurrentHome(Lcom/android/settings_ex/HomeSettings$HomeAppPreference;)V
    .locals 5
    .parameter "newHome"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/settings_ex/HomeSettings;->mCurrentHome:Lcom/android/settings_ex/HomeSettings$HomeAppPreference;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/settings_ex/HomeSettings;->mCurrentHome:Lcom/android/settings_ex/HomeSettings$HomeAppPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/HomeSettings$HomeAppPreference;->setChecked(Z)V

    .line 99
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/settings_ex/HomeSettings$HomeAppPreference;->setChecked(Z)V

    .line 100
    iput-object p1, p0, Lcom/android/settings_ex/HomeSettings;->mCurrentHome:Lcom/android/settings_ex/HomeSettings$HomeAppPreference;

    .line 102
    iget-object v0, p0, Lcom/android/settings_ex/HomeSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/settings_ex/HomeSettings;->mHomeFilter:Landroid/content/IntentFilter;

    const/high16 v2, 0x10

    iget-object v3, p0, Lcom/android/settings_ex/HomeSettings;->mHomeComponentSet:[Landroid/content/ComponentName;

    iget-object v4, p1, Lcom/android/settings_ex/HomeSettings$HomeAppPreference;->activityName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/PackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 104
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 117
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 120
    invoke-virtual {p0}, Lcom/android/settings_ex/HomeSettings;->buildHomeActivitiesList()V

    .line 123
    const/16 v4, 0xa

    if-le p1, v4, :cond_0

    .line 128
    iget-object v4, p0, Lcom/android/settings_ex/HomeSettings;->mCurrentHome:Lcom/android/settings_ex/HomeSettings$HomeAppPreference;

    if-nez v4, :cond_0

    .line 129
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/settings_ex/HomeSettings;->mPrefs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 130
    iget-object v4, p0, Lcom/android/settings_ex/HomeSettings;->mPrefs:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/HomeSettings$HomeAppPreference;

    .line 131
    .local v3, pref:Lcom/android/settings_ex/HomeSettings$HomeAppPreference;
    iget-boolean v4, v3, Lcom/android/settings_ex/HomeSettings$HomeAppPreference;->isSystem:Z

    if-eqz v4, :cond_5

    .line 132
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/HomeSettings;->makeCurrentHome(Lcom/android/settings_ex/HomeSettings$HomeAppPreference;)V

    .line 139
    .end local v1           #i:I
    .end local v3           #pref:Lcom/android/settings_ex/HomeSettings$HomeAppPreference;
    :cond_0
    const/4 v0, 0x0

    .line 140
    .local v0, hasSettingsPanel:Z
    iget-object v4, p0, Lcom/android/settings_ex/HomeSettings;->mPrefs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/HomeSettings$HomeAppPreference;

    .line 141
    .restart local v3       #pref:Lcom/android/settings_ex/HomeSettings$HomeAppPreference;
    iget-object v4, v3, Lcom/android/settings_ex/HomeSettings$HomeAppPreference;->prefsIntent:Landroid/content/Intent;

    if-eqz v4, :cond_1

    .line 142
    const/4 v0, 0x1

    .line 150
    .end local v3           #pref:Lcom/android/settings_ex/HomeSettings$HomeAppPreference;
    :cond_2
    iget-object v4, p0, Lcom/android/settings_ex/HomeSettings;->mPrefs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_4

    if-nez v0, :cond_4

    .line 151
    iget-boolean v4, p0, Lcom/android/settings_ex/HomeSettings;->mShowNotice:Z

    if-eqz v4, :cond_3

    .line 152
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/settings_ex/HomeSettings;->mShowNotice:Z

    .line 153
    invoke-static {}, Lcom/android/settings_ex/Settings;->requestHomeNotice()V

    .line 155
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings_ex/HomeSettings;->finishFragment()V

    .line 157
    :cond_4
    return-void

    .line 129
    .end local v0           #hasSettingsPanel:Z
    .end local v2           #i$:Ljava/util/Iterator;
    .restart local v1       #i:I
    .restart local v3       #pref:Lcom/android/settings_ex/HomeSettings$HomeAppPreference;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 216
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 217
    const v1, 0x7f05001f

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/HomeSettings;->addPreferencesFromResource(I)V

    .line 219
    invoke-virtual {p0}, Lcom/android/settings_ex/HomeSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/HomeSettings;->mPm:Landroid/content/pm/PackageManager;

    .line 220
    const-string v1, "home"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/HomeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    iput-object v1, p0, Lcom/android/settings_ex/HomeSettings;->mPrefGroup:Landroid/preference/PreferenceGroup;

    .line 222
    invoke-virtual {p0}, Lcom/android/settings_ex/HomeSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 223
    .local v0, args:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v1, "show"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings_ex/HomeSettings;->mShowNotice:Z

    .line 225
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/HomeSettings;->setHasOptionsMenu(Z)V

    .line 226
    return-void

    :cond_0
    move v1, v3

    .line 223
    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v4, 0x0

    .line 236
    const/4 v2, 0x0

    .line 238
    .local v2, selectedPref:Lcom/android/settings_ex/HomeSettings$HomeAppPreference;
    iget-object v3, p0, Lcom/android/settings_ex/HomeSettings;->mPrefs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/HomeSettings$HomeAppPreference;

    .line 239
    .local v1, pref:Lcom/android/settings_ex/HomeSettings$HomeAppPreference;
    iget-boolean v3, v1, Lcom/android/settings_ex/HomeSettings$HomeAppPreference;->isChecked:Z

    if-eqz v3, :cond_0

    .line 240
    move-object v2, v1

    .line 245
    .end local v1           #pref:Lcom/android/settings_ex/HomeSettings$HomeAppPreference;
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 247
    if-eqz v2, :cond_2

    iget-object v3, v2, Lcom/android/settings_ex/HomeSettings$HomeAppPreference;->prefsIntent:Landroid/content/Intent;

    if-eqz v3, :cond_2

    .line 248
    const v3, 0x7f0804f8

    invoke-interface {p1, v4, v4, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v4, v2, Lcom/android/settings_ex/HomeSettings$HomeAppPreference;->prefsIntent:Landroid/content/Intent;

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 252
    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 230
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 231
    invoke-virtual {p0}, Lcom/android/settings_ex/HomeSettings;->buildHomeActivitiesList()V

    .line 232
    return-void
.end method

.method uninstallApp(Lcom/android/settings_ex/HomeSettings$HomeAppPreference;)V
    .locals 6
    .parameter "pref"

    .prologue
    const/4 v3, 0x0

    .line 108
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "package:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/settings_ex/HomeSettings$HomeAppPreference;->uninstallTarget:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 109
    .local v0, packageURI:Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-direct {v2, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 110
    .local v2, uninstallIntent:Landroid/content/Intent;
    const-string v4, "android.intent.extra.UNINSTALL_ALL_USERS"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 111
    iget-boolean v4, p1, Lcom/android/settings_ex/HomeSettings$HomeAppPreference;->isChecked:Z

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    add-int/lit8 v1, v3, 0xa

    .line 112
    .local v1, requestCode:I
    invoke-virtual {p0, v2, v1}, Lcom/android/settings_ex/HomeSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 113
    return-void
.end method
