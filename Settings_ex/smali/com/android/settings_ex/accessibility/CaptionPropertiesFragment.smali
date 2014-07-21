.class public Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "CaptionPropertiesFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings_ex/accessibility/ListDialogPreference$OnValueChangedListener;


# instance fields
.field private mBackgroundColor:Lcom/android/settings_ex/accessibility/ColorPreference;

.field private mBackgroundOpacity:Lcom/android/settings_ex/accessibility/ColorPreference;

.field private mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

.field private mCustom:Landroid/preference/PreferenceCategory;

.field private mEdgeColor:Lcom/android/settings_ex/accessibility/ColorPreference;

.field private mEdgeType:Lcom/android/settings_ex/accessibility/EdgeTypePreference;

.field private mFontSize:Landroid/preference/ListPreference;

.field private mForegroundColor:Lcom/android/settings_ex/accessibility/ColorPreference;

.field private mLocale:Lcom/android/settings_ex/accessibility/LocalePreference;

.field private mParent:Lcom/android/settings_ex/accessibility/ToggleCaptioningPreferenceFragment;

.field private mPreset:Lcom/android/settings_ex/accessibility/PresetPreference;

.field private mShowingCustom:Z

.field private mTypeface:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private initializeAllPreferences()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 83
    const-string v9, "captioning_locale"

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings_ex/accessibility/LocalePreference;

    iput-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mLocale:Lcom/android/settings_ex/accessibility/LocalePreference;

    .line 84
    const-string v9, "captioning_font_size"

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/ListPreference;

    iput-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mFontSize:Landroid/preference/ListPreference;

    .line 86
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 87
    .local v8, res:Landroid/content/res/Resources;
    const v9, 0x7f0c0043

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v7

    .line 88
    .local v7, presetValues:[I
    const v9, 0x7f0c0042

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 89
    .local v6, presetTitles:[Ljava/lang/String;
    const-string v9, "captioning_preset"

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings_ex/accessibility/PresetPreference;

    iput-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings_ex/accessibility/PresetPreference;

    .line 90
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings_ex/accessibility/PresetPreference;

    invoke-virtual {v9, v7}, Lcom/android/settings_ex/accessibility/PresetPreference;->setValues([I)V

    .line 91
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings_ex/accessibility/PresetPreference;

    invoke-virtual {v9, v6}, Lcom/android/settings_ex/accessibility/PresetPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 93
    const-string v9, "custom"

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceCategory;

    iput-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/preference/PreferenceCategory;

    .line 94
    iput-boolean v12, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mShowingCustom:Z

    .line 96
    const v9, 0x7f0c003f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    .line 97
    .local v3, colorValues:[I
    const v9, 0x7f0c003e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, colorTitles:[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/preference/PreferenceCategory;

    const-string v10, "captioning_foreground_color"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings_ex/accessibility/ColorPreference;

    iput-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    .line 99
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-virtual {v9, v2}, Lcom/android/settings_ex/accessibility/ColorPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 100
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-virtual {v9, v3}, Lcom/android/settings_ex/accessibility/ColorPreference;->setValues([I)V

    .line 101
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/preference/PreferenceCategory;

    const-string v10, "captioning_edge_color"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings_ex/accessibility/ColorPreference;

    iput-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    .line 102
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-virtual {v9, v2}, Lcom/android/settings_ex/accessibility/ColorPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 103
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-virtual {v9, v3}, Lcom/android/settings_ex/accessibility/ColorPreference;->setValues([I)V

    .line 106
    array-length v9, v3

    add-int/lit8 v9, v9, 0x1

    new-array v1, v9, [I

    .line 107
    .local v1, bgColorValues:[I
    array-length v9, v2

    add-int/lit8 v9, v9, 0x1

    new-array v0, v9, [Ljava/lang/String;

    .line 108
    .local v0, bgColorTitles:[Ljava/lang/String;
    array-length v9, v3

    invoke-static {v3, v11, v1, v12, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    array-length v9, v2

    invoke-static {v2, v11, v0, v12, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 110
    aput v11, v1, v11

    .line 111
    const v9, 0x7f080937

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v11

    .line 112
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/preference/PreferenceCategory;

    const-string v10, "captioning_background_color"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings_ex/accessibility/ColorPreference;

    iput-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    .line 113
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-virtual {v9, v0}, Lcom/android/settings_ex/accessibility/ColorPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 114
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-virtual {v9, v1}, Lcom/android/settings_ex/accessibility/ColorPreference;->setValues([I)V

    .line 116
    const v9, 0x7f0c0041

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    .line 117
    .local v5, opacityValues:[I
    const v9, 0x7f0c0040

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 119
    .local v4, opacityTitles:[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/preference/PreferenceCategory;

    const-string v10, "captioning_background_opacity"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings_ex/accessibility/ColorPreference;

    iput-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings_ex/accessibility/ColorPreference;

    .line 121
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-virtual {v9, v4}, Lcom/android/settings_ex/accessibility/ColorPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 122
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-virtual {v9, v5}, Lcom/android/settings_ex/accessibility/ColorPreference;->setValues([I)V

    .line 124
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/preference/PreferenceCategory;

    const-string v10, "captioning_edge_type"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings_ex/accessibility/EdgeTypePreference;

    iput-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mEdgeType:Lcom/android/settings_ex/accessibility/EdgeTypePreference;

    .line 125
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/preference/PreferenceCategory;

    const-string v10, "captioning_typeface"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/ListPreference;

    iput-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mTypeface:Landroid/preference/ListPreference;

    .line 126
    return-void
.end method

.method private installUpdateListeners()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings_ex/accessibility/PresetPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/accessibility/PresetPreference;->setOnValueChangedListener(Lcom/android/settings_ex/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 130
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/accessibility/ColorPreference;->setOnValueChangedListener(Lcom/android/settings_ex/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 131
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/accessibility/ColorPreference;->setOnValueChangedListener(Lcom/android/settings_ex/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 132
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/accessibility/ColorPreference;->setOnValueChangedListener(Lcom/android/settings_ex/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 133
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/accessibility/ColorPreference;->setOnValueChangedListener(Lcom/android/settings_ex/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 134
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mEdgeType:Lcom/android/settings_ex/accessibility/EdgeTypePreference;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/accessibility/EdgeTypePreference;->setOnValueChangedListener(Lcom/android/settings_ex/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 136
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mTypeface:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 137
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mFontSize:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 138
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mLocale:Lcom/android/settings_ex/accessibility/LocalePreference;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/accessibility/LocalePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 139
    return-void
.end method

.method private refreshPreviewText()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mParent:Lcom/android/settings_ex/accessibility/ToggleCaptioningPreferenceFragment;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mParent:Lcom/android/settings_ex/accessibility/ToggleCaptioningPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/accessibility/ToggleCaptioningPreferenceFragment;->refreshPreviewText()V

    .line 178
    :cond_0
    return-void
.end method

.method private refreshShowingCustom()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 181
    iget-object v3, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings_ex/accessibility/PresetPreference;

    invoke-virtual {v3}, Lcom/android/settings_ex/accessibility/PresetPreference;->getValue()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    move v0, v1

    .line 182
    .local v0, customPreset:Z
    :goto_0
    if-nez v0, :cond_2

    iget-boolean v3, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mShowingCustom:Z

    if-eqz v3, :cond_2

    .line 183
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 184
    iput-boolean v2, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mShowingCustom:Z

    .line 189
    :cond_0
    :goto_1
    return-void

    .end local v0           #customPreset:Z
    :cond_1
    move v0, v2

    .line 181
    goto :goto_0

    .line 185
    .restart local v0       #customPreset:Z
    :cond_2
    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mShowingCustom:Z

    if-nez v2, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 187
    iput-boolean v1, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mShowingCustom:Z

    goto :goto_1
.end method

.method private updateAllPreferences()V
    .locals 12

    .prologue
    const/high16 v11, -0x100

    .line 142
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v9}, Landroid/view/accessibility/CaptioningManager;->getRawUserStyle()I

    move-result v6

    .line 143
    .local v6, preset:I
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings_ex/accessibility/PresetPreference;

    invoke-virtual {v9, v6}, Lcom/android/settings_ex/accessibility/PresetPreference;->setValue(I)V

    .line 145
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v9}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v5

    .line 146
    .local v5, fontSize:F
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mFontSize:Landroid/preference/ListPreference;

    invoke-static {v5}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 149
    .local v4, cr:Landroid/content/ContentResolver;
    invoke-static {v4}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getCustomStyle(Landroid/content/ContentResolver;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v0

    .line 150
    .local v0, attrs:Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    iget v10, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    invoke-virtual {v9, v10}, Lcom/android/settings_ex/accessibility/ColorPreference;->setValue(I)V

    .line 151
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mEdgeType:Lcom/android/settings_ex/accessibility/EdgeTypePreference;

    iget v10, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    invoke-virtual {v9, v10}, Lcom/android/settings_ex/accessibility/EdgeTypePreference;->setValue(I)V

    .line 152
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    iget v10, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    invoke-virtual {v9, v10}, Lcom/android/settings_ex/accessibility/ColorPreference;->setValue(I)V

    .line 154
    iget v1, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    .line 157
    .local v1, backgroundColor:I
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    if-nez v9, :cond_2

    .line 158
    const/4 v3, 0x0

    .line 159
    .local v3, bgColor:I
    and-int/lit16 v9, v1, 0xff

    shl-int/lit8 v2, v9, 0x18

    .line 164
    .local v2, bgAlpha:I
    :goto_0
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-virtual {v9, v3}, Lcom/android/settings_ex/accessibility/ColorPreference;->setValue(I)V

    .line 165
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings_ex/accessibility/ColorPreference;

    const v10, 0xffffff

    or-int/2addr v10, v2

    invoke-virtual {v9, v10}, Lcom/android/settings_ex/accessibility/ColorPreference;->setValue(I)V

    .line 167
    iget-object v8, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mRawTypeface:Ljava/lang/String;

    .line 168
    .local v8, rawTypeface:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mTypeface:Landroid/preference/ListPreference;

    if-nez v8, :cond_0

    const-string v8, ""

    .end local v8           #rawTypeface:Ljava/lang/String;
    :cond_0
    invoke-virtual {v9, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 170
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v9}, Landroid/view/accessibility/CaptioningManager;->getRawLocale()Ljava/lang/String;

    move-result-object v7

    .line 171
    .local v7, rawLocale:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mLocale:Lcom/android/settings_ex/accessibility/LocalePreference;

    if-nez v7, :cond_1

    const-string v7, ""

    .end local v7           #rawLocale:Ljava/lang/String;
    :cond_1
    invoke-virtual {v9, v7}, Lcom/android/settings_ex/accessibility/LocalePreference;->setValue(Ljava/lang/String;)V

    .line 172
    return-void

    .line 161
    .end local v2           #bgAlpha:I
    .end local v3           #bgColor:I
    :cond_2
    or-int v3, v1, v11

    .line 162
    .restart local v3       #bgColor:I
    and-int v2, v1, v11

    .restart local v2       #bgAlpha:I
    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const-string v0, "captioning"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    iput-object v0, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    .line 66
    const v0, 0x7f050010

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->addPreferencesFromResource(I)V

    .line 67
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->initializeAllPreferences()V

    .line 68
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->updateAllPreferences()V

    .line 69
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->refreshShowingCustom()V

    .line 70
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->installUpdateListeners()V

    .line 71
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "value"

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 223
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mTypeface:Landroid/preference/ListPreference;

    if-ne v1, p1, :cond_1

    .line 224
    const-string v1, "accessibility_captioning_typeface"

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 235
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->refreshPreviewText()V

    .line 236
    const/4 v1, 0x1

    return v1

    .line 226
    .restart local p2
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mFontSize:Landroid/preference/ListPreference;

    if-ne v1, p1, :cond_2

    .line 227
    const-string v1, "accessibility_captioning_font_scale"

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    goto :goto_0

    .line 230
    .restart local p2
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mLocale:Lcom/android/settings_ex/accessibility/LocalePreference;

    if-ne v1, p1, :cond_0

    .line 231
    const-string v1, "accessibility_captioning_locale"

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public onValueChanged(Lcom/android/settings_ex/accessibility/ListDialogPreference;I)V
    .locals 6
    .parameter "preference"
    .parameter "value"

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 194
    .local v3, cr:Landroid/content/ContentResolver;
    iget-object v4, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    if-ne v4, p1, :cond_1

    .line 195
    const-string v4, "accessibility_captioning_foreground_color"

    invoke-static {v3, v4, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 217
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->refreshPreviewText()V

    .line 218
    return-void

    .line 197
    :cond_1
    iget-object v4, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    if-eq v4, p1, :cond_2

    iget-object v4, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings_ex/accessibility/ColorPreference;

    if-ne v4, p1, :cond_4

    .line 198
    :cond_2
    iget-object v4, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-virtual {v4}, Lcom/android/settings_ex/accessibility/ColorPreference;->getValue()I

    move-result v2

    .line 199
    .local v2, bgColor:I
    iget-object v4, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-virtual {v4}, Lcom/android/settings_ex/accessibility/ColorPreference;->getValue()I

    move-result v1

    .line 201
    .local v1, bgAlpha:I
    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    if-nez v4, :cond_3

    .line 202
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 206
    .local v0, argb:I
    :goto_1
    const-string v4, "accessibility_captioning_background_color"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 204
    .end local v0           #argb:I
    :cond_3
    const v4, 0xffffff

    and-int/2addr v4, v2

    const/high16 v5, -0x100

    and-int/2addr v5, v1

    or-int v0, v4, v5

    .restart local v0       #argb:I
    goto :goto_1

    .line 208
    .end local v0           #argb:I
    .end local v1           #bgAlpha:I
    .end local v2           #bgColor:I
    :cond_4
    iget-object v4, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    if-ne v4, p1, :cond_5

    .line 209
    const-string v4, "accessibility_captioning_edge_color"

    invoke-static {v3, v4, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 210
    :cond_5
    iget-object v4, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings_ex/accessibility/PresetPreference;

    if-ne v4, p1, :cond_6

    .line 211
    const-string v4, "accessibility_captioning_preset"

    invoke-static {v3, v4, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 212
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->refreshShowingCustom()V

    goto :goto_0

    .line 213
    :cond_6
    iget-object v4, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mEdgeType:Lcom/android/settings_ex/accessibility/EdgeTypePreference;

    if-ne v4, p1, :cond_0

    .line 214
    const-string v4, "accessibility_captioning_edge_type"

    invoke-static {v3, v4, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public setParent(Lcom/android/settings_ex/accessibility/ToggleCaptioningPreferenceFragment;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mParent:Lcom/android/settings_ex/accessibility/ToggleCaptioningPreferenceFragment;

    .line 80
    return-void
.end method
