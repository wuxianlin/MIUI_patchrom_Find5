.class public Lcom/android/settings/profiles/ProfileGroupConfig;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ProfileGroupConfig.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final KEY_LIGHTSMODE:Ljava/lang/CharSequence;

.field private static final KEY_RINGERMODE:Ljava/lang/CharSequence;

.field private static final KEY_RINGTONE:Ljava/lang/CharSequence;

.field private static final KEY_SOUNDMODE:Ljava/lang/CharSequence;

.field private static final KEY_SOUNDTONE:Ljava/lang/CharSequence;

.field private static final KEY_VIBRATEMODE:Ljava/lang/CharSequence;


# instance fields
.field private mLightsMode:Landroid/preference/ListPreference;

.field mProfile:Landroid/app/Profile;

.field mProfileGroup:Landroid/app/ProfileGroup;

.field private mProfileManager:Landroid/app/ProfileManager;

.field private mRingTone:Lcom/android/settings/profiles/ProfileRingtonePreference;

.field private mRingerMode:Landroid/preference/ListPreference;

.field private mSoundMode:Landroid/preference/ListPreference;

.field private mSoundTone:Lcom/android/settings/profiles/ProfileRingtonePreference;

.field private mVibrateMode:Landroid/preference/ListPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "sound_mode"

    sput-object v0, Lcom/android/settings/profiles/ProfileGroupConfig;->KEY_SOUNDMODE:Ljava/lang/CharSequence;

    .line 41
    const-string v0, "vibrate_mode"

    sput-object v0, Lcom/android/settings/profiles/ProfileGroupConfig;->KEY_VIBRATEMODE:Ljava/lang/CharSequence;

    .line 43
    const-string v0, "lights_mode"

    sput-object v0, Lcom/android/settings/profiles/ProfileGroupConfig;->KEY_LIGHTSMODE:Ljava/lang/CharSequence;

    .line 45
    const-string v0, "ringer_mode"

    sput-object v0, Lcom/android/settings/profiles/ProfileGroupConfig;->KEY_RINGERMODE:Ljava/lang/CharSequence;

    .line 47
    const-string v0, "soundtone"

    sput-object v0, Lcom/android/settings/profiles/ProfileGroupConfig;->KEY_SOUNDTONE:Ljava/lang/CharSequence;

    .line 49
    const-string v0, "ringtone"

    sput-object v0, Lcom/android/settings/profiles/ProfileGroupConfig;->KEY_RINGTONE:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private updateState()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/settings/profiles/ProfileGroupConfig;->mVibrateMode:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/profiles/ProfileGroupConfig;->mProfileGroup:Landroid/app/ProfileGroup;

    invoke-virtual {v1}, Landroid/app/ProfileGroup;->getVibrateMode()Landroid/app/ProfileGroup$Mode;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProfileGroup$Mode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/android/settings/profiles/ProfileGroupConfig;->mSoundMode:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/profiles/ProfileGroupConfig;->mProfileGroup:Landroid/app/ProfileGroup;

    invoke-virtual {v1}, Landroid/app/ProfileGroup;->getSoundMode()Landroid/app/ProfileGroup$Mode;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProfileGroup$Mode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/android/settings/profiles/ProfileGroupConfig;->mRingerMode:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/profiles/ProfileGroupConfig;->mProfileGroup:Landroid/app/ProfileGroup;

    invoke-virtual {v1}, Landroid/app/ProfileGroup;->getRingerMode()Landroid/app/ProfileGroup$Mode;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProfileGroup$Mode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/android/settings/profiles/ProfileGroupConfig;->mLightsMode:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/profiles/ProfileGroupConfig;->mProfileGroup:Landroid/app/ProfileGroup;

    invoke-virtual {v1}, Landroid/app/ProfileGroup;->getLightsMode()Landroid/app/ProfileGroup$Mode;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProfileGroup$Mode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/android/settings/profiles/ProfileGroupConfig;->mVibrateMode:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/profiles/ProfileGroupConfig;->mVibrateMode:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v0, p0, Lcom/android/settings/profiles/ProfileGroupConfig;->mSoundMode:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/profiles/ProfileGroupConfig;->mSoundMode:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v0, p0, Lcom/android/settings/profiles/ProfileGroupConfig;->mRingerMode:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/profiles/ProfileGroupConfig;->mRingerMode:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v0, p0, Lcom/android/settings/profiles/ProfileGroupConfig;->mLightsMode:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/profiles/ProfileGroupConfig;->mLightsMode:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v0, p0, Lcom/android/settings/profiles/ProfileGroupConfig;->mProfileGroup:Landroid/app/ProfileGroup;

    invoke-virtual {v0}, Landroid/app/ProfileGroup;->getSoundOverride()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/settings/profiles/ProfileGroupConfig;->mSoundTone:Lcom/android/settings/profiles/ProfileRingtonePreference;

    iget-object v1, p0, Lcom/android/settings/profiles/ProfileGroupConfig;->mProfileGroup:Landroid/app/ProfileGroup;

    invoke-virtual {v1}, Landroid/app/ProfileGroup;->getSoundOverride()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/profiles/ProfileRingtonePreference;->setRingtone(Landroid/net/Uri;)V

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/android/settings/profiles/ProfileGroupConfig;->mProfileGroup:Landroid/app/ProfileGroup;

    invoke-virtual {v0}, Landroid/app/ProfileGroup;->getRingerOverride()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/android/settings/profiles/ProfileGroupConfig;->mRingTone:Lcom/android/settings/profiles/ProfileRingtonePreference;

    iget-object v1, p0, Lcom/android/settings/profiles/ProfileGroupConfig;->mProfileGroup:Landroid/app/ProfileGroup;

    invoke-virtual {v1}, Landroid/app/ProfileGroup;->getRingerOverride()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/profiles/ProfileRingtonePreference;->setRingtone(Landroid/net/Uri;)V

    .line 124
    :cond_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 71
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const v2, 0x7f05003a

    invoke-virtual {p0, v2}, Lcom/android/settings/profiles/ProfileGroupConfig;->addPreferencesFromResource(I)V

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/profiles/ProfileGroupConfig;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 76
    .local v0, args:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 77
    const-string v2, "Profile"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/app/Profile;

    iput-object v2, p0, Lcom/android/settings/profiles/ProfileGroupConfig;->mProfile:Landroid/app/Profile;

    .line 78
    const-string v2, "ProfileGroup"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    .line 80
    .local v1, uuid:Ljava/util/UUID;
    const-string v2, "profile"

    invoke-virtual {p0, v2}, Lcom/android/settings/profiles/ProfileGroupConfig;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ProfileManager;

    iput-object v2, p0, Lcom/android/settings/profiles/ProfileGroupConfig;->mProfileManager:Landroid/app/ProfileManager;

    .line 81
    iget-object v2, p0, Lcom/android/settings/profiles/ProfileGroupConfig;->mProfile:Landroid/app/Profile;

    invoke-virtual {v2, v1}, Landroid/app/Profile;->getProfileGroup(Ljava/util/UUID;)Landroid/app/ProfileGroup;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/profiles/ProfileGroupConfig;->mProfileGroup:Landroid/app/ProfileGroup;

    .line 83
    sget-object v2, Lcom/android/settings/profiles/ProfileGroupConfig;->KEY_RINGERMODE:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/android/settings/profiles/ProfileGroupConfig;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/settings/profiles/ProfileGroupConfig;->mRingerMode:Landroid/preference/ListPreference;

    .line 84
    sget-object v2, Lcom/android/settings/profiles/ProfileGroupConfig;->KEY_SOUNDMODE:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/android/settings/profiles/ProfileGroupConfig;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/settings/profiles/ProfileGroupConfig;->mSoundMode:Landroid/preference/ListPreference;

    .line 85
    sget-object v2, Lcom/android/settings/profiles/ProfileGroupConfig;->KEY_VIBRATEMODE:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/android/settings/profiles/ProfileGroupConfig;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/settings/profiles/ProfileGroupConfig;->mVibrateMode:Landroid/preference/ListPreference;

    .line 86
    sget-object v2, Lcom/android/settings/profiles/ProfileGroupConfig;->KEY_LIGHTSMODE:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/android/settings/profiles/ProfileGroupConfig;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/settings/profiles/ProfileGroupConfig;->mLightsMode:Landroid/preference/ListPreference;

    .line 87
    sget-object v2, Lcom/android/settings/profiles/ProfileGroupConfig;->KEY_RINGTONE:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/android/settings/profiles/ProfileGroupConfig;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/profiles/ProfileRingtonePreference;

    iput-object v2, p0, Lcom/android/settings/profiles/ProfileGroupConfig;->mRingTone:Lcom/android/settings/profiles/ProfileRingtonePreference;

    .line 88
    sget-object v2, Lcom/android/settings/profiles/ProfileGroupConfig;->KEY_SOUNDTONE:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/android/settings/profiles/ProfileGroupConfig;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/profiles/ProfileRingtonePreference;

    iput-object v2, p0, Lcom/android/settings/profiles/ProfileGroupConfig;->mSoundTone:Lcom/android/settings/profiles/ProfileRingtonePreference;

    .line 90
    iget-object v2, p0, Lcom/android/settings/profiles/ProfileGroupConfig;->mRingTone:Lcom/android/settings/profiles/ProfileRingtonePreference;

    invoke-virtual {v2, v3}, Lcom/android/settings/profiles/ProfileRingtonePreference;->setShowSilent(Z)V

    .line 91
    iget-object v2, p0, Lcom/android/settings/profiles/ProfileGroupConfig;->mSoundTone:Lcom/android/settings/profiles/ProfileRingtonePreference;

    invoke-virtual {v2, v3}, Lcom/android/settings/profiles/ProfileRingtonePreference;->setShowSilent(Z)V

    .line 93
    iget-object v2, p0, Lcom/android/settings/profiles/ProfileGroupConfig;->mSoundMode:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 94
    iget-object v2, p0, Lcom/android/settings/profiles/ProfileGroupConfig;->mRingerMode:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 95
    iget-object v2, p0, Lcom/android/settings/profiles/ProfileGroupConfig;->mVibrateMode:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 96
    iget-object v2, p0, Lcom/android/settings/profiles/ProfileGroupConfig;->mLightsMode:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 97
    iget-object v2, p0, Lcom/android/settings/profiles/ProfileGroupConfig;->mSoundTone:Lcom/android/settings/profiles/ProfileRingtonePreference;

    invoke-virtual {v2, p0}, Lcom/android/settings/profiles/ProfileRingtonePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 98
    iget-object v2, p0, Lcom/android/settings/profiles/ProfileGroupConfig;->mRingTone:Lcom/android/settings/profiles/ProfileRingtonePreference;

    invoke-virtual {v2, p0}, Lcom/android/settings/profiles/ProfileRingtonePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 100
    invoke-direct {p0}, Lcom/android/settings/profiles/ProfileGroupConfig;->updateState()V

    .line 102
    .end local v1           #uuid:Ljava/util/UUID;
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 128
    iget-object v1, p0, Lcom/android/settings/profiles/ProfileGroupConfig;->mVibrateMode:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_1

    .line 129
    iget-object v1, p0, Lcom/android/settings/profiles/ProfileGroupConfig;->mProfileGroup:Landroid/app/ProfileGroup;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Landroid/app/ProfileGroup$Mode;->valueOf(Ljava/lang/String;)Landroid/app/ProfileGroup$Mode;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProfileGroup;->setVibrateMode(Landroid/app/ProfileGroup$Mode;)V

    .line 144
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/profiles/ProfileGroupConfig;->mProfileManager:Landroid/app/ProfileManager;

    iget-object v2, p0, Lcom/android/settings/profiles/ProfileGroupConfig;->mProfile:Landroid/app/Profile;

    invoke-virtual {v1, v2}, Landroid/app/ProfileManager;->updateProfile(Landroid/app/Profile;)V

    .line 146
    invoke-direct {p0}, Lcom/android/settings/profiles/ProfileGroupConfig;->updateState()V

    .line 147
    const/4 v1, 0x1

    return v1

    .line 130
    .restart local p2
    :cond_1
    iget-object v1, p0, Lcom/android/settings/profiles/ProfileGroupConfig;->mSoundMode:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_2

    .line 131
    iget-object v1, p0, Lcom/android/settings/profiles/ProfileGroupConfig;->mProfileGroup:Landroid/app/ProfileGroup;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Landroid/app/ProfileGroup$Mode;->valueOf(Ljava/lang/String;)Landroid/app/ProfileGroup$Mode;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProfileGroup;->setSoundMode(Landroid/app/ProfileGroup$Mode;)V

    goto :goto_0

    .line 132
    .restart local p2
    :cond_2
    iget-object v1, p0, Lcom/android/settings/profiles/ProfileGroupConfig;->mRingerMode:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_3

    .line 133
    iget-object v1, p0, Lcom/android/settings/profiles/ProfileGroupConfig;->mProfileGroup:Landroid/app/ProfileGroup;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Landroid/app/ProfileGroup$Mode;->valueOf(Ljava/lang/String;)Landroid/app/ProfileGroup$Mode;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProfileGroup;->setRingerMode(Landroid/app/ProfileGroup$Mode;)V

    goto :goto_0

    .line 134
    .restart local p2
    :cond_3
    iget-object v1, p0, Lcom/android/settings/profiles/ProfileGroupConfig;->mLightsMode:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_4

    .line 135
    iget-object v1, p0, Lcom/android/settings/profiles/ProfileGroupConfig;->mProfileGroup:Landroid/app/ProfileGroup;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Landroid/app/ProfileGroup$Mode;->valueOf(Ljava/lang/String;)Landroid/app/ProfileGroup$Mode;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProfileGroup;->setLightsMode(Landroid/app/ProfileGroup$Mode;)V

    goto :goto_0

    .line 136
    .restart local p2
    :cond_4
    iget-object v1, p0, Lcom/android/settings/profiles/ProfileGroupConfig;->mRingTone:Lcom/android/settings/profiles/ProfileRingtonePreference;

    if-ne p1, v1, :cond_5

    .line 137
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 138
    .local v0, uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/settings/profiles/ProfileGroupConfig;->mProfileGroup:Landroid/app/ProfileGroup;

    invoke-virtual {v1, v0}, Landroid/app/ProfileGroup;->setRingerOverride(Landroid/net/Uri;)V

    goto :goto_0

    .line 139
    .end local v0           #uri:Landroid/net/Uri;
    .restart local p2
    :cond_5
    iget-object v1, p0, Lcom/android/settings/profiles/ProfileGroupConfig;->mSoundTone:Lcom/android/settings/profiles/ProfileRingtonePreference;

    if-ne p1, v1, :cond_0

    .line 140
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 141
    .restart local v0       #uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/settings/profiles/ProfileGroupConfig;->mProfileGroup:Landroid/app/ProfileGroup;

    invoke-virtual {v1, v0}, Landroid/app/ProfileGroup;->setSoundOverride(Landroid/net/Uri;)V

    goto :goto_0
.end method
