.class public Lcom/android/settings/profiles/NFCProfile;
.super Landroid/app/Activity;
.source "NFCProfile.java"


# instance fields
.field private mProfileManager:Landroid/app/ProfileManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private clearPreviouslySelectedProfile()V
    .locals 3

    .prologue
    .line 142
    const-string v1, "NFCProfile"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/profiles/NFCProfile;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 143
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "previous-profile"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 144
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 145
    return-void
.end method

.method private getPreviouslySelectedProfile()Landroid/app/Profile;
    .locals 5

    .prologue
    .line 132
    const/4 v1, 0x0

    .line 133
    .local v1, previous:Landroid/app/Profile;
    const-string v3, "NFCProfile"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/profiles/NFCProfile;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 134
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v3, "previous-profile"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, uuid:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 136
    iget-object v3, p0, Lcom/android/settings/profiles/NFCProfile;->mProfileManager:Landroid/app/ProfileManager;

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ProfileManager;->getProfile(Ljava/util/UUID;)Landroid/app/Profile;

    move-result-object v1

    .line 138
    :cond_0
    return-object v1
.end method

.method private handleProfileMimeType([B)V
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 86
    invoke-static {p1}, Lcom/android/settings/profiles/NFCProfileUtils;->toUUID([B)Ljava/util/UUID;

    move-result-object v1

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/profiles/NFCProfile;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "system_profiles_enabled"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 91
    :goto_0
    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/settings/profiles/NFCProfile;->mProfileManager:Landroid/app/ProfileManager;

    invoke-virtual {v0}, Landroid/app/ProfileManager;->getActiveProfile()Landroid/app/Profile;

    move-result-object v0

    .line 94
    iget-object v2, p0, Lcom/android/settings/profiles/NFCProfile;->mProfileManager:Landroid/app/ProfileManager;

    invoke-virtual {v2, v1}, Landroid/app/ProfileManager;->getProfile(Ljava/util/UUID;)Landroid/app/Profile;

    move-result-object v2

    .line 96
    if-nez v2, :cond_2

    .line 98
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/profiles/NFCProfileSelect;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 99
    const-string v2, "PROFILE_UUID"

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 101
    invoke-virtual {p0, v0}, Lcom/android/settings/profiles/NFCProfile;->startActivity(Landroid/content/Intent;)V

    .line 116
    :cond_0
    :goto_1
    return-void

    .line 88
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 104
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 105
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/profiles/NFCProfile;->saveCurrentProfile()V

    .line 106
    invoke-direct {p0, v1}, Lcom/android/settings/profiles/NFCProfile;->switchTo(Ljava/util/UUID;)V

    goto :goto_1

    .line 108
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/profiles/NFCProfile;->getPreviouslySelectedProfile()Landroid/app/Profile;

    move-result-object v0

    .line 109
    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/profiles/NFCProfile;->switchTo(Ljava/util/UUID;)V

    .line 111
    invoke-direct {p0}, Lcom/android/settings/profiles/NFCProfile;->clearPreviouslySelectedProfile()V

    goto :goto_1
.end method

.method private saveCurrentProfile()V
    .locals 4

    .prologue
    .line 148
    iget-object v2, p0, Lcom/android/settings/profiles/NFCProfile;->mProfileManager:Landroid/app/ProfileManager;

    invoke-virtual {v2}, Landroid/app/ProfileManager;->getActiveProfile()Landroid/app/Profile;

    move-result-object v0

    .line 149
    .local v0, currentProfile:Landroid/app/Profile;
    if-eqz v0, :cond_0

    .line 150
    const-string v2, "NFCProfile"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/profiles/NFCProfile;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 151
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "previous-profile"

    invoke-virtual {v0}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 152
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 154
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method private switchTo(Ljava/util/UUID;)V
    .locals 6
    .parameter "uuid"

    .prologue
    const/4 v5, 0x1

    .line 119
    iget-object v1, p0, Lcom/android/settings/profiles/NFCProfile;->mProfileManager:Landroid/app/ProfileManager;

    invoke-virtual {v1, p1}, Landroid/app/ProfileManager;->getProfile(Ljava/util/UUID;)Landroid/app/Profile;

    move-result-object v0

    .line 120
    .local v0, p:Landroid/app/Profile;
    if-eqz v0, :cond_0

    .line 121
    iget-object v1, p0, Lcom/android/settings/profiles/NFCProfile;->mProfileManager:Landroid/app/ProfileManager;

    invoke-virtual {v1, p1}, Landroid/app/ProfileManager;->setActiveProfile(Ljava/util/UUID;)V

    .line 123
    const v1, 0x7f0800cb

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/app/Profile;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/profiles/NFCProfile;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 127
    invoke-static {p0}, Lcom/android/settings/profiles/NFCProfileUtils;->vibrate(Landroid/content/Context;)V

    .line 129
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const-string v0, "profile"

    invoke-virtual {p0, v0}, Lcom/android/settings/profiles/NFCProfile;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProfileManager;

    iput-object v0, p0, Lcom/android/settings/profiles/NFCProfile;->mProfileManager:Landroid/app/ProfileManager;

    .line 57
    return-void
.end method

.method protected onResume()V
    .locals 13

    .prologue
    .line 61
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/profiles/NFCProfile;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 64
    .local v4, intent:Landroid/content/Intent;
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, action:Ljava/lang/String;
    const-string v11, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 66
    const-string v11, "android.nfc.extra.NDEF_MESSAGES"

    invoke-virtual {v4, v11}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v8

    .line 67
    .local v8, rawMsgs:[Landroid/os/Parcelable;
    if-eqz v8, :cond_2

    .line 68
    array-length v11, v8

    new-array v6, v11, [Landroid/nfc/NdefMessage;

    .line 69
    .local v6, msgs:[Landroid/nfc/NdefMessage;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v11, v8

    if-ge v2, v11, :cond_2

    .line 70
    aget-object v11, v8, v2

    check-cast v11, Landroid/nfc/NdefMessage;

    aput-object v11, v6, v2

    .line 71
    aget-object v11, v6, v2

    invoke-virtual {v11}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v1

    .local v1, arr$:[Landroid/nfc/NdefRecord;
    array-length v5, v1

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v5, :cond_1

    aget-object v9, v1, v3

    .line 72
    .local v9, record:Landroid/nfc/NdefRecord;
    new-instance v10, Ljava/lang/String;

    invoke-virtual {v9}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>([B)V

    .line 73
    .local v10, type:Ljava/lang/String;
    invoke-virtual {v9}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v7

    .line 74
    .local v7, payload:[B
    const-string v11, "cm/profile"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    if-eqz v7, :cond_0

    array-length v11, v7

    const/16 v12, 0x10

    if-ne v11, v12, :cond_0

    .line 76
    invoke-direct {p0, v7}, Lcom/android/settings/profiles/NFCProfile;->handleProfileMimeType([B)V

    .line 71
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 69
    .end local v7           #payload:[B
    .end local v9           #record:Landroid/nfc/NdefRecord;
    .end local v10           #type:Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    .end local v1           #arr$:[Landroid/nfc/NdefRecord;
    .end local v2           #i:I
    .end local v3           #i$:I
    .end local v5           #len$:I
    .end local v6           #msgs:[Landroid/nfc/NdefMessage;
    .end local v8           #rawMsgs:[Landroid/os/Parcelable;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/profiles/NFCProfile;->finish()V

    .line 83
    return-void
.end method
