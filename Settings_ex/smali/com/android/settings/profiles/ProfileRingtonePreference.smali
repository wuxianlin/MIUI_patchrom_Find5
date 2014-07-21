.class public Lcom/android/settings/profiles/ProfileRingtonePreference;
.super Landroid/preference/RingtonePreference;
.source "ProfileRingtonePreference.java"


# instance fields
.field private mRingtone:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/preference/RingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method


# virtual methods
.method protected onPrepareRingtonePickerIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "ringtonePickerIntent"

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/preference/RingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    .line 41
    const-string v0, "android.intent.extra.ringtone.SHOW_DEFAULT"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 42
    return-void
.end method

.method protected onRestoreRingtone()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/profiles/ProfileRingtonePreference;->mRingtone:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 53
    invoke-super {p0}, Landroid/preference/RingtonePreference;->onRestoreRingtone()Landroid/net/Uri;

    move-result-object v0

    .line 55
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/profiles/ProfileRingtonePreference;->mRingtone:Landroid/net/Uri;

    goto :goto_0
.end method

.method setRingtone(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/settings/profiles/ProfileRingtonePreference;->mRingtone:Landroid/net/Uri;

    .line 48
    return-void
.end method
