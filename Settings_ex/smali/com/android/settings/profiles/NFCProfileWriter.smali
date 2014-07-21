.class public Lcom/android/settings/profiles/NFCProfileWriter;
.super Landroid/app/Activity;
.source "NFCProfileWriter.java"


# instance fields
.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mProfile:Landroid/app/Profile;

.field private mProfileManager:Landroid/app/ProfileManager;

.field private mWriteTagFilters:[Landroid/content/IntentFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private disableTagWriteMode()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/settings/profiles/NFCProfileWriter;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0, p0}, Landroid/nfc/NfcAdapter;->disableForegroundDispatch(Landroid/app/Activity;)V

    .line 107
    return-void
.end method

.method private enableTagWriteMode()V
    .locals 5

    .prologue
    .line 110
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.nfc.action.TAG_DISCOVERED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 111
    .local v0, tagDetected:Landroid/content/IntentFilter;
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/IntentFilter;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    iput-object v1, p0, Lcom/android/settings/profiles/NFCProfileWriter;->mWriteTagFilters:[Landroid/content/IntentFilter;

    .line 114
    iget-object v2, p0, Lcom/android/settings/profiles/NFCProfileWriter;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-direct {p0}, Lcom/android/settings/profiles/NFCProfileWriter;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/profiles/NFCProfileWriter;->mWriteTagFilters:[Landroid/content/IntentFilter;

    const/4 v1, 0x0

    check-cast v1, [[Ljava/lang/String;

    invoke-virtual {v2, p0, v3, v4, v1}, Landroid/nfc/NfcAdapter;->enableForegroundDispatch(Landroid/app/Activity;Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method private getPendingIntent()Landroid/app/PendingIntent;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 101
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/profiles/NFCProfileWriter;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 62
    const-string v1, "profile"

    invoke-virtual {p0, v1}, Lcom/android/settings/profiles/NFCProfileWriter;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ProfileManager;

    iput-object v1, p0, Lcom/android/settings/profiles/NFCProfileWriter;->mProfileManager:Landroid/app/ProfileManager;

    .line 64
    const v1, 0x7f040073

    invoke-virtual {p0, v1}, Lcom/android/settings/profiles/NFCProfileWriter;->setContentView(I)V

    .line 65
    const v1, 0x7f0800c7

    invoke-virtual {p0, v1}, Lcom/android/settings/profiles/NFCProfileWriter;->setTitle(I)V

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/profiles/NFCProfileWriter;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 68
    .local v0, mActionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 69
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 71
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    .line 120
    const-string v1, "android.nfc.action.TAG_DISCOVERED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    const-string v1, "android.nfc.extra.TAG"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/nfc/Tag;

    .line 122
    .local v0, detectedTag:Landroid/nfc/Tag;
    iget-object v1, p0, Lcom/android/settings/profiles/NFCProfileWriter;->mProfile:Landroid/app/Profile;

    invoke-static {v1}, Lcom/android/settings/profiles/NFCProfileUtils;->getProfileAsNdef(Landroid/app/Profile;)Landroid/nfc/NdefMessage;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/profiles/NFCProfileUtils;->writeTag(Landroid/nfc/NdefMessage;Landroid/nfc/Tag;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 123
    const v1, 0x7f0800c9

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 124
    invoke-static {p0}, Lcom/android/settings/profiles/NFCProfileUtils;->vibrate(Landroid/content/Context;)V

    .line 128
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/profiles/NFCProfileWriter;->finish()V

    .line 130
    .end local v0           #detectedTag:Landroid/nfc/Tag;
    :cond_0
    return-void

    .line 126
    .restart local v0       #detectedTag:Landroid/nfc/Tag;
    :cond_1
    const v1, 0x7f0800ca

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 75
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/profiles/NFCProfileWriter;->finish()V

    .line 77
    const/4 v0, 0x1

    .line 79
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 96
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 97
    invoke-direct {p0}, Lcom/android/settings/profiles/NFCProfileWriter;->disableTagWriteMode()V

    .line 98
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 84
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/profiles/NFCProfileWriter;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "PROFILE_UUID"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, profileUuid:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 87
    iget-object v1, p0, Lcom/android/settings/profiles/NFCProfileWriter;->mProfileManager:Landroid/app/ProfileManager;

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProfileManager;->getProfile(Ljava/util/UUID;)Landroid/app/Profile;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/profiles/NFCProfileWriter;->mProfile:Landroid/app/Profile;

    .line 88
    const-string v1, "NFCProfileWriter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Profile to write: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/profiles/NFCProfileWriter;->mProfile:Landroid/app/Profile;

    invoke-virtual {v3}, Landroid/app/Profile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-direct {p0}, Lcom/android/settings/profiles/NFCProfileWriter;->enableTagWriteMode()V

    .line 91
    :cond_0
    return-void
.end method
