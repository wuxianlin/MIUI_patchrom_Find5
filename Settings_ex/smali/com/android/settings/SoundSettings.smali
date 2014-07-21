.class public Lcom/android/settings/SoundSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SoundSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final NEED_VOICE_CAPABILITY:[Ljava/lang/String;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mDockAudioMediaEnabled:Landroid/preference/CheckBoxPreference;

.field private mDockAudioSettings:Landroid/preference/Preference;

.field private mDockIntent:Landroid/content/Intent;

.field private mDockSounds:Landroid/preference/CheckBoxPreference;

.field private mHandler:Landroid/os/Handler;

.field private mMusicFx:Landroid/preference/Preference;

.field private mNotificationPreference:Landroid/preference/Preference;

.field private mPowerSounds:Landroid/preference/CheckBoxPreference;

.field private mPowerSoundsRingtone:Landroid/preference/Preference;

.field private mPowerSoundsVibrate:Landroid/preference/CheckBoxPreference;

.field private mQuietHours:Landroid/preference/PreferenceScreen;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRingMode:Landroid/preference/ListPreference;

.field private mRingtoneLookupRunnable:Ljava/lang/Runnable;

.field private mRingtonePreference:Landroid/preference/Preference;

.field private mSoundEffects:Landroid/preference/CheckBoxPreference;

.field private mSoundSettings:Landroid/preference/PreferenceGroup;

.field private mVolumeOverlay:Landroid/preference/ListPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 101
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ringtone"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "dtmf_tone"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "category_calls_and_notification"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "emergency_tone"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "increasing_ring"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "vibrate_when_ringing"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/SoundSettings;->NEED_VOICE_CAPABILITY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 136
    new-instance v0, Lcom/android/settings/SoundSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/SoundSettings$1;-><init>(Lcom/android/settings/SoundSettings;)V

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->mHandler:Landroid/os/Handler;

    .line 149
    new-instance v0, Lcom/android/settings/SoundSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/SoundSettings$2;-><init>(Lcom/android/settings/SoundSettings;)V

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SoundSettings;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/SoundSettings;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mNotificationPreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/SoundSettings;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/settings/SoundSettings;->handleDockChange(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/SoundSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/settings/SoundSettings;->updateState(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/SoundSettings;ILandroid/preference/Preference;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/SoundSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V

    return-void
.end method

.method private createUndockedMessage()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 637
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 638
    .local v0, ab:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0806c0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 639
    const v1, 0x7f0806c1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 640
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 641
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method private getPhoneRingModeSettingValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 347
    const-string v0, "normal"

    :goto_0
    return-object v0

    .line 340
    :pswitch_0
    const-string v0, "normal"

    goto :goto_0

    .line 342
    :pswitch_1
    const-string v0, "vibrate"

    goto :goto_0

    .line 344
    :pswitch_2
    const-string v0, "mute"

    goto :goto_0

    .line 338
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleDockChange(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    const/4 v6, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 531
    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mDockAudioSettings:Landroid/preference/Preference;

    if-eqz v3, :cond_0

    .line 532
    const-string v3, "android.intent.extra.DOCK_STATE"

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 534
    .local v0, dockState:I
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    if-eqz v3, :cond_1

    move v1, v4

    .line 537
    .local v1, isBluetooth:Z
    :goto_0
    iput-object p1, p0, Lcom/android/settings/SoundSettings;->mDockIntent:Landroid/content/Intent;

    .line 539
    if-eqz v0, :cond_6

    .line 542
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/android/settings/SoundSettings;->removeDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 547
    :goto_1
    if-eqz v1, :cond_2

    .line 548
    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mDockAudioSettings:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 572
    .end local v0           #dockState:I
    .end local v1           #isBluetooth:Z
    :cond_0
    :goto_2
    return-void

    .restart local v0       #dockState:I
    :cond_1
    move v1, v5

    .line 534
    goto :goto_0

    .line 550
    .restart local v1       #isBluetooth:Z
    :cond_2
    const/4 v3, 0x3

    if-ne v0, v3, :cond_5

    .line 551
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 552
    .local v2, resolver:Landroid/content/ContentResolver;
    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mDockAudioSettings:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 553
    const-string v3, "dock_audio_media_enabled"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v6, :cond_3

    .line 555
    const-string v3, "dock_audio_media_enabled"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 558
    :cond_3
    const-string v3, "dock_audio_media_enabled"

    invoke-virtual {p0, v3}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/SoundSettings;->mDockAudioMediaEnabled:Landroid/preference/CheckBoxPreference;

    .line 560
    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mDockAudioMediaEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 561
    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mDockAudioMediaEnabled:Landroid/preference/CheckBoxPreference;

    const-string v6, "dock_audio_media_enabled"

    invoke-static {v2, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_4

    :goto_3
    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_2

    :cond_4
    move v4, v5

    goto :goto_3

    .line 565
    .end local v2           #resolver:Landroid/content/ContentResolver;
    :cond_5
    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mDockAudioSettings:Landroid/preference/Preference;

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    .line 569
    :cond_6
    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mDockAudioSettings:Landroid/preference/Preference;

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    .line 543
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private initDockSettings()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 513
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 515
    .local v0, resolver:Landroid/content/ContentResolver;
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->needsDockSettings()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 516
    const-string v1, "dock_sounds"

    invoke-virtual {p0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/SoundSettings;->mDockSounds:Landroid/preference/CheckBoxPreference;

    .line 517
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mDockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 518
    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mDockSounds:Landroid/preference/CheckBoxPreference;

    const-string v1, "dock_sounds_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 520
    const-string v1, "dock_audio"

    invoke-virtual {p0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SoundSettings;->mDockAudioSettings:Landroid/preference/Preference;

    .line 521
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mDockAudioSettings:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 528
    :goto_1
    return-void

    :cond_0
    move v1, v3

    .line 518
    goto :goto_0

    .line 523
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v3, "dock_category"

    invoke-virtual {p0, v3}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 524
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v3, "dock_audio"

    invoke-virtual {p0, v3}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 525
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v3, "dock_sounds"

    invoke-virtual {p0, v3}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 526
    const-string v1, "dock_audio_media_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method private launchNotificationSoundPicker(ILjava/lang/String;)V
    .locals 4
    .parameter "code"
    .parameter "currentPowerRingtonePath"

    .prologue
    .line 575
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 577
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.intent.extra.ringtone.TITLE"

    const v3, 0x7f0802b2

    invoke-virtual {p0, v3}, Lcom/android/settings/SoundSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 579
    const-string v2, "android.intent.extra.ringtone.TYPE"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 581
    const-string v2, "android.intent.extra.ringtone.DEFAULT_URI"

    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 583
    if-eqz p2, :cond_0

    const-string v2, "silent"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 585
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 586
    .local v1, uri:Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 587
    const-string v2, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 590
    .end local v1           #uri:Landroid/net/Uri;
    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/SoundSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 591
    return-void
.end method

.method private lookupRingtoneNames()V
    .locals 2

    .prologue
    .line 397
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 398
    return-void
.end method

.method private needsDockSettings()Z
    .locals 2

    .prologue
    .line 509
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private returnTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "t"

    .prologue
    .line 488
    if-eqz p1, :cond_0

    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 489
    :cond_0
    const-string v4, ""

    .line 500
    :goto_0
    return-object v4

    .line 491
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 492
    .local v2, hr:I
    move v3, v2

    .line 494
    .local v3, mn:I
    div-int/lit8 v2, v2, 0x3c

    .line 495
    rem-int/lit8 v3, v3, 0x3c

    .line 496
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 497
    .local v0, cal:Ljava/util/Calendar;
    const/16 v4, 0xb

    invoke-virtual {v0, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 498
    const/16 v4, 0xc

    invoke-virtual {v0, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 499
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 500
    .local v1, date:Ljava/util/Date;
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private setPhoneRingModeValue(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 328
    const/4 v0, 0x2

    .line 329
    .local v0, ringerMode:I
    const-string v1, "mute"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 330
    const/4 v0, 0x0

    .line 334
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 335
    return-void

    .line 331
    :cond_1
    const-string v1, "vibrate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 332
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setPowerNotificationRingtone(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    .line 594
    const-string v4, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 599
    .local v3, uri:Landroid/net/Uri;
    if-eqz v3, :cond_0

    .line 600
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    .line 601
    .local v0, ringtone:Landroid/media/Ringtone;
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 602
    .local v1, toneName:Ljava/lang/String;
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 609
    .end local v0           #ringtone:Landroid/media/Ringtone;
    .local v2, toneUriPath:Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mPowerSoundsRingtone:Landroid/preference/Preference;

    invoke-virtual {v4, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 610
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "power_notifications_ringtone"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 612
    return-void

    .line 605
    .end local v1           #toneName:Ljava/lang/String;
    .end local v2           #toneUriPath:Ljava/lang/String;
    :cond_0
    const v4, 0x7f0802b3

    invoke-virtual {p0, v4}, Lcom/android/settings/SoundSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 606
    .restart local v1       #toneName:Ljava/lang/String;
    const-string v2, "silent"

    .restart local v2       #toneUriPath:Ljava/lang/String;
    goto :goto_0
.end method

.method private updateRingtoneName(ILandroid/preference/Preference;I)V
    .locals 9
    .parameter "type"
    .parameter "preference"
    .parameter "msg"

    .prologue
    .line 370
    if-nez p2, :cond_1

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 371
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 372
    .local v6, context:Landroid/content/Context;
    if-eqz v6, :cond_0

    .line 373
    invoke-static {v6, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 374
    .local v1, ringtoneUri:Landroid/net/Uri;
    const v0, 0x10404e4

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 376
    .local v8, summary:Ljava/lang/CharSequence;
    if-nez v1, :cond_3

    .line 377
    const v0, 0x10404e2

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 393
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p3, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 381
    :cond_3
    :try_start_0
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 383
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 384
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 385
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 387
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 389
    .end local v7           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private updateState(Z)V
    .locals 4
    .parameter "force"

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 367
    :goto_0
    return-void

    .line 353
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 355
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mRingMode:Landroid/preference/ListPreference;

    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->getPhoneRingModeSettingValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 357
    const-string v1, "quiet_hours_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 358
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mQuietHours:Landroid/preference/PreferenceScreen;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0801ff

    invoke-virtual {p0, v3}, Lcom/android/settings/SoundSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "quiet_hours_start"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/SoundSettings;->returnTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f080200

    invoke-virtual {p0, v3}, Lcom/android/settings/SoundSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "quiet_hours_end"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/SoundSettings;->returnTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 366
    :goto_1
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mRingMode:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mRingMode:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 363
    :cond_1
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mQuietHours:Landroid/preference/PreferenceScreen;

    const v2, 0x7f0801f2

    invoke-virtual {p0, v2}, Lcom/android/settings/SoundSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 505
    const v0, 0x7f080b89

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 616
    packed-switch p1, :pswitch_data_0

    .line 623
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 626
    :cond_0
    :goto_0
    return-void

    .line 618
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 619
    invoke-direct {p0, p3}, Lcom/android/settings/SoundSettings;->setPowerNotificationRingtone(Landroid/content/Intent;)V

    goto :goto_0

    .line 616
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 20
    .parameter "savedInstanceState"

    .prologue
    .line 164
    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 165
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 166
    .local v12, resolver:Landroid/content/ContentResolver;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v2

    .line 168
    .local v2, activePhoneType:I
    const-string v17, "audio"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/media/AudioManager;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 170
    const v17, 0x7f050052

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->addPreferencesFromResource(I)V

    .line 172
    const/16 v17, 0x2

    move/from16 v0, v17

    if-eq v0, v2, :cond_0

    .line 174
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    const-string v18, "emergency_tone"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 177
    :cond_0
    const-string v17, "volume_overlay"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/ListPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mVolumeOverlay:Landroid/preference/ListPreference;

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mVolumeOverlay:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 179
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "mode_volume_overlay"

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    .line 182
    .local v16, volumeOverlay:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mVolumeOverlay:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mVolumeOverlay:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mVolumeOverlay:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 185
    const-string v17, "ring_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/ListPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mRingMode:Landroid/preference/ListPreference;

    .line 186
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0b0003

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v17

    if-nez v17, :cond_8

    .line 187
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mRingMode:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 188
    const-string v17, "ring_volume"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 193
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x1110056

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 195
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    const-string v18, "ring_volume"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 198
    :cond_1
    const-string v17, "quiet_hours"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mQuietHours:Landroid/preference/PreferenceScreen;

    .line 199
    const-string v17, "quiet_hours_enabled"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v12, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mQuietHours:Landroid/preference/PreferenceScreen;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const v19, 0x7f0801ff

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "quiet_hours_start"

    move-object/from16 v0, v19

    invoke-static {v12, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/settings/SoundSettings;->returnTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const v19, 0x7f080200

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "quiet_hours_end"

    move-object/from16 v0, v19

    invoke-static {v12, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/settings/SoundSettings;->returnTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 208
    :goto_1
    const-string v17, "sound_effects_enabled"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    .line 210
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/settings/Utils;->hasVolumeRocker(Landroid/content/Context;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 211
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    const-string v18, "volume_adjust_sounds_enabled"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 214
    :cond_2
    const-string v17, "ringtone"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mRingtonePreference:Landroid/preference/Preference;

    .line 215
    const-string v17, "notification_sound"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mNotificationPreference:Landroid/preference/Preference;

    .line 217
    const-string v17, "vibrator"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/Vibrator;

    .line 218
    .local v15, vibrator:Landroid/os/Vibrator;
    if-eqz v15, :cond_3

    invoke-virtual {v15}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v17

    if-nez v17, :cond_4

    .line 219
    :cond_3
    const-string v17, "vibrate_when_ringing"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->removePreference(Ljava/lang/String;)V

    .line 220
    const-string v17, "haptic_feedback_enabled"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->removePreference(Ljava/lang/String;)V

    .line 221
    const-string v17, "convert_sound_to_vibration"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->removePreference(Ljava/lang/String;)V

    .line 222
    const-string v17, "vibrate_while_no_alerts"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->removePreference(Ljava/lang/String;)V

    .line 225
    :cond_4
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v0, v2, :cond_5

    .line 226
    const-string v17, "emergency_tone"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    .line 228
    .local v5, emergencyTonePreference:Landroid/preference/ListPreference;
    const-string v17, "emergency_tone"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v12, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 230
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 233
    .end local v5           #emergencyTonePreference:Landroid/preference/ListPreference;
    :cond_5
    const-string v17, "sound_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/PreferenceGroup;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mSoundSettings:Landroid/preference/PreferenceGroup;

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mSoundSettings:Landroid/preference/PreferenceGroup;

    move-object/from16 v17, v0

    const-string v18, "musicfx"

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mMusicFx:Landroid/preference/Preference;

    .line 236
    new-instance v6, Landroid/content/Intent;

    const-string v17, "android.media.action.DISPLAY_AUDIO_EFFECT_CONTROL_PANEL"

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 237
    .local v6, i:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mMusicFx:Landroid/preference/Preference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 238
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 239
    .local v9, p:Landroid/content/pm/PackageManager;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v9, v6, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v14

    .line 240
    .local v14, ris:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v17

    if-nez v17, :cond_a

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mSoundSettings:Landroid/preference/PreferenceGroup;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mMusicFx:Landroid/preference/Preference;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 246
    :cond_6
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v17

    if-nez v17, :cond_c

    .line 247
    sget-object v3, Lcom/android/settings/SoundSettings;->NEED_VOICE_CAPABILITY:[Ljava/lang/String;

    .local v3, arr$:[Ljava/lang/String;
    array-length v8, v3

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_3
    if-ge v7, v8, :cond_b

    aget-object v11, v3, v7

    .line 248
    .local v11, prefKey:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    .line 249
    .local v10, pref:Landroid/preference/Preference;
    if-eqz v10, :cond_7

    .line 250
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 247
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 190
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v6           #i:Landroid/content/Intent;
    .end local v7           #i$:I
    .end local v8           #len$:I
    .end local v9           #p:Landroid/content/pm/PackageManager;
    .end local v10           #pref:Landroid/preference/Preference;
    .end local v11           #prefKey:Ljava/lang/String;
    .end local v14           #ris:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v15           #vibrator:Landroid/os/Vibrator;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mRingMode:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_0

    .line 205
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mQuietHours:Landroid/preference/PreferenceScreen;

    move-object/from16 v17, v0

    const v18, 0x7f0801f2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 242
    .restart local v6       #i:Landroid/content/Intent;
    .restart local v9       #p:Landroid/content/pm/PackageManager;
    .restart local v14       #ris:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v15       #vibrator:Landroid/os/Vibrator;
    :cond_a
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mMusicFx:Landroid/preference/Preference;

    move-object/from16 v18, v0

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 253
    .restart local v3       #arr$:[Ljava/lang/String;
    .restart local v7       #i$:I
    .restart local v8       #len$:I
    :cond_b
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mRingtonePreference:Landroid/preference/Preference;

    .line 256
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v7           #i$:I
    .end local v8           #len$:I
    :cond_c
    new-instance v17, Lcom/android/settings/SoundSettings$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/SoundSettings$3;-><init>(Lcom/android/settings/SoundSettings;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    .line 270
    const-string v17, "power_notifications"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mPowerSounds:Landroid/preference/CheckBoxPreference;

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mPowerSounds:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const-string v17, "power_notifications_enabled"

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-static {v12, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    if-eqz v17, :cond_11

    const/16 v17, 0x1

    :goto_4
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 273
    const-string v17, "power_notifications_vibrate"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mPowerSoundsVibrate:Landroid/preference/CheckBoxPreference;

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mPowerSoundsVibrate:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const-string v17, "power_notifications_vibrate"

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-static {v12, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    if-eqz v17, :cond_12

    const/16 v17, 0x1

    :goto_5
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 276
    if-eqz v15, :cond_d

    invoke-virtual {v15}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v17

    if-nez v17, :cond_e

    .line 277
    :cond_d
    const-string v17, "power_notifications_vibrate"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->removePreference(Ljava/lang/String;)V

    .line 280
    :cond_e
    const-string v17, "power_notifications_ringtone"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mPowerSoundsRingtone:Landroid/preference/Preference;

    .line 281
    const-string v17, "power_notifications_ringtone"

    move-object/from16 v0, v17

    invoke-static {v12, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 285
    .local v4, currentPowerRingtonePath:Ljava/lang/String;
    if-nez v4, :cond_f

    .line 286
    sget-object v17, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 287
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "power_notifications_ringtone"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 291
    :cond_f
    const-string v17, "silent"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_13

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mPowerSoundsRingtone:Landroid/preference/Preference;

    move-object/from16 v17, v0

    const v18, 0x7f0802b3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 302
    :cond_10
    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->initDockSettings()V

    .line 303
    return-void

    .line 271
    .end local v4           #currentPowerRingtonePath:Ljava/lang/String;
    :cond_11
    const/16 v17, 0x0

    goto/16 :goto_4

    .line 274
    :cond_12
    const/16 v17, 0x0

    goto :goto_5

    .line 295
    .restart local v4       #currentPowerRingtonePath:Ljava/lang/String;
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v13

    .line 297
    .local v13, ringtone:Landroid/media/Ringtone;
    if-eqz v13, :cond_10

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mPowerSoundsRingtone:Landroid/preference/Preference;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_6
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "id"

    .prologue
    .line 630
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 631
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->createUndockedMessage()Landroid/app/Dialog;

    move-result-object v0

    .line 633
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 322
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 324
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 325
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 465
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 466
    .local v2, key:Ljava/lang/String;
    const-string v4, "emergency_tone"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 468
    :try_start_0
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 469
    .local v3, value:I
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "emergency_tone"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    .end local v3           #value:I
    :cond_0
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 471
    :catch_0
    move-exception v0

    .line 472
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v4, "SoundSettings"

    const-string v5, "could not persist emergency tone setting"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 474
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .restart local p2
    :cond_1
    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mRingMode:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_2

    .line 475
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/SoundSettings;->setPhoneRingModeValue(Ljava/lang/String;)V

    goto :goto_0

    .line 476
    :cond_2
    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mVolumeOverlay:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_0

    move-object v4, p2

    .line 477
    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 478
    .restart local v3       #value:I
    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mVolumeOverlay:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v4, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 479
    .local v1, index:I
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "mode_volume_overlay"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 481
    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mVolumeOverlay:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/settings/SoundSettings;->mVolumeOverlay:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 402
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_2

    .line 403
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 404
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->loadSoundEffects()V

    :goto_0
    move v1, v2

    .line 461
    :cond_0
    :goto_1
    return v1

    .line 406
    :cond_1
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->unloadSoundEffects()V

    goto :goto_0

    .line 409
    :cond_2
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mMusicFx:Landroid/preference/Preference;

    if-eq p2, v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mDockAudioSettings:Landroid/preference/Preference;

    if-ne p2, v0, :cond_8

    .line 413
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mDockIntent:Landroid/content/Intent;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mDockIntent:Landroid/content/Intent;

    const-string v3, "android.intent.extra.DOCK_STATE"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 417
    :goto_2
    if-nez v0, :cond_4

    .line 418
    invoke-virtual {p0, v2}, Lcom/android/settings/SoundSettings;->showDialog(I)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 413
    goto :goto_2

    .line 420
    :cond_4
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mDockIntent:Landroid/content/Intent;

    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_5

    move v0, v2

    .line 422
    :goto_3
    if-eqz v0, :cond_6

    .line 423
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mDockIntent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 424
    const-string v1, "com.android.settings.bluetooth.action.DOCK_SHOW_UI"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 425
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v3, Lcom/android/settings/bluetooth/DockEventReceiver;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 426
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_5
    move v0, v1

    .line 420
    goto :goto_3

    .line 428
    :cond_6
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mDockAudioSettings:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 429
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 430
    const-string v4, "checked"

    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "dock_audio_media_enabled"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v2, :cond_7

    move v1, v2

    :cond_7
    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 433
    invoke-super {p0, v0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto :goto_0

    .line 436
    :cond_8
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mDockSounds:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_a

    .line 437
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "dock_sounds_enabled"

    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mDockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_9

    move v1, v2

    :cond_9
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 439
    :cond_a
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mDockAudioMediaEnabled:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_c

    .line 440
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "dock_audio_media_enabled"

    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mDockAudioMediaEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_b

    move v1, v2

    :cond_b
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 442
    :cond_c
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mPowerSounds:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_e

    .line 443
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "power_notifications_enabled"

    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mPowerSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_d

    move v1, v2

    :cond_d
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 447
    :cond_e
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mPowerSoundsVibrate:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_10

    .line 448
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "power_notifications_vibrate"

    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mPowerSoundsVibrate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_f

    move v1, v2

    :cond_f
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 452
    :cond_10
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mPowerSoundsRingtone:Landroid/preference/Preference;

    if-ne p2, v0, :cond_11

    .line 453
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "power_notifications_ringtone"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/android/settings/SoundSettings;->launchNotificationSoundPicker(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 458
    :cond_11
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 307
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 309
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings/SoundSettings;->updateState(Z)V

    .line 310
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->lookupRingtoneNames()V

    .line 312
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 313
    .local v0, filter:Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 315
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #filter:Landroid/content/IntentFilter;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 316
    .restart local v0       #filter:Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 318
    return-void
.end method
