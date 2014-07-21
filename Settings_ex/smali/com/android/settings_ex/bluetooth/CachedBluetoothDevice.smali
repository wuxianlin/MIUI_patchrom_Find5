.class final Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;
.super Ljava/lang/Object;
.source "CachedBluetoothDevice.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;",
        ">;"
    }
.end annotation


# instance fields
.field private mBtClass:Landroid/bluetooth/BluetoothClass;

.field private final mCallbacks:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectAfterPairing:Z

.field private mConnectAttempted:J

.field private final mContext:Landroid/content/Context;

.field private final mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mDeviceRemove:Z

.field private mIsConnectingErrorPossible:Z

.field private final mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

.field private mLocalNapRoleConnected:Z

.field private mMessagePermissionChoice:I

.field private mMessageRejectedTimes:I

.field private mName:Ljava/lang/String;

.field private mPhonebookPermissionChoice:I

.field private mPhonebookRejectedTimes:I

.field private mProfileConnectionState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mProfileManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;

.field private final mProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemovedProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mRssi:S

.field private mVisible:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .parameter "context"
    .parameter "adapter"
    .parameter "profileManager"
    .parameter "device"

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/List;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    .line 179
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    .line 180
    iput-object p2, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    .line 181
    iput-object p3, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;

    .line 182
    iput-object p4, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 183
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    .line 184
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->fillData()V

    .line 185
    return-void
.end method

.method private connectAutoConnectableProfiles()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 258
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->ensurePaired()Z

    move-result v2

    if-nez v2, :cond_1

    .line 270
    :cond_0
    return-void

    .line 262
    :cond_1
    iput-boolean v3, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mIsConnectingErrorPossible:Z

    .line 264
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;

    .line 265
    .local v1, profile:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;
    invoke-interface {v1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;->isAutoConnectable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 266
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v1, v2, v3}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 267
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->connectInt(Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;)V

    goto :goto_0
.end method

.method private connectWithoutResettingTimer(Z)V
    .locals 5
    .parameter "connectAllProfiles"

    .prologue
    .line 226
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 234
    const-string v3, "CachedBluetoothDevice"

    const-string v4, "No profiles. Maybe we will connect later"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mIsConnectingErrorPossible:Z

    .line 241
    const/4 v1, 0x0

    .line 242
    .local v1, preferredProfiles:I
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;

    .line 243
    .local v2, profile:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;
    if-eqz p1, :cond_3

    invoke-interface {v2}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;->isConnectable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 244
    :goto_2
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v2, v3}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 245
    add-int/lit8 v1, v1, 0x1

    .line 246
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->connectInt(Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;)V

    goto :goto_1

    .line 243
    :cond_3
    invoke-interface {v2}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;->isAutoConnectable()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    .line 252
    .end local v2           #profile:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;
    :cond_4
    if-nez v1, :cond_0

    .line 253
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->connectAutoConnectableProfiles()V

    goto :goto_0
.end method

.method private describe(Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;)Ljava/lang/String;
    .locals 3
    .parameter "profile"

    .prologue
    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "Address:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 127
    if-eqz p1, :cond_0

    .line 128
    const-string v1, " Profile:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 131
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private dispatchAttributesChanged()V
    .locals 4

    .prologue
    .line 673
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    monitor-enter v3

    .line 674
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice$Callback;

    .line 675
    .local v0, callback:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice$Callback;
    invoke-interface {v0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice$Callback;->onDeviceAttributesChanged()V

    goto :goto_0

    .line 677
    .end local v0           #callback:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice$Callback;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 678
    return-void
.end method

.method private ensurePaired()Z
    .locals 2

    .prologue
    .line 300
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 301
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->startPairing()Z

    .line 302
    const/4 v0, 0x0

    .line 304
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private fetchBtClass()V
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    .line 517
    return-void
.end method

.method private fetchMessagePermissionChoice()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 805
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    const-string v2, "bluetooth_message_permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 807
    .local v0, preference:Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mMessagePermissionChoice:I

    .line 809
    return-void
.end method

.method private fetchMessageRejectTimes()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 812
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    const-string v2, "bluetooth_message_reject"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 814
    .local v0, preference:Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mMessageRejectedTimes:I

    .line 815
    return-void
.end method

.method private fetchName()V
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 437
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 441
    :cond_0
    return-void
.end method

.method private fetchPhonebookPermissionChoice()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 754
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    const-string v2, "bluetooth_phonebook_permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 756
    .local v0, preference:Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mPhonebookPermissionChoice:I

    .line 758
    return-void
.end method

.method private fetchPhonebookRejectTimes()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 761
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    const-string v2, "bluetooth_phonebook_reject"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 763
    .local v0, preference:Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mPhonebookRejectedTimes:I

    .line 764
    return-void
.end method

.method private fillData()V
    .locals 1

    .prologue
    .line 388
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->fetchName()V

    .line 389
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->fetchBtClass()V

    .line 390
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->updateProfiles()Z

    .line 391
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->fetchPhonebookPermissionChoice()V

    .line 392
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->fetchMessagePermissionChoice()V

    .line 393
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->fetchPhonebookRejectTimes()V

    .line 394
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->fetchMessageRejectTimes()V

    .line 396
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mVisible:Z

    .line 397
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 398
    return-void
.end method

.method private saveMessageRejectTimes()V
    .locals 4

    .prologue
    .line 818
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    const-string v2, "bluetooth_message_reject"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 820
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget v1, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mMessageRejectedTimes:I

    if-nez v1, :cond_0

    .line 821
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 825
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 826
    return-void

    .line 823
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mMessageRejectedTimes:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method private savePhonebookRejectTimes()V
    .locals 4

    .prologue
    .line 767
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    const-string v2, "bluetooth_phonebook_reject"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 770
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget v1, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mPhonebookRejectedTimes:I

    if-nez v1, :cond_0

    .line 771
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 775
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 776
    return-void

    .line 773
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mPhonebookRejectedTimes:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method private updateProfiles()Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 520
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v1

    .line 521
    .local v1, uuids:[Landroid/os/ParcelUuid;
    if-nez v1, :cond_1

    .line 539
    :cond_0
    :goto_0
    return v0

    .line 523
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v3}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v2

    .line 524
    .local v2, localUuids:[Landroid/os/ParcelUuid;
    if-eqz v2, :cond_0

    .line 526
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/List;

    iget-boolean v5, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mLocalNapRoleConnected:Z

    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->updateProfiles([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;Ljava/util/Collection;Ljava/util/Collection;ZLandroid/bluetooth/BluetoothDevice;)V

    .line 539
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public clearProfileConnectionState()V
    .locals 5

    .prologue
    .line 379
    const-string v2, "CachedBluetoothDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Clearing all connection state for dev:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;

    .line 382
    .local v1, profile:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 384
    .end local v1           #profile:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;
    :cond_0
    return-void
.end method

.method public compareTo(Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;)I
    .locals 6
    .parameter "another"

    .prologue
    const/16 v5, 0xc

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 703
    invoke-virtual {p1}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v2

    :goto_1
    sub-int v0, v1, v4

    .line 704
    .local v0, comparison:I
    if-eqz v0, :cond_2

    move v1, v0

    .line 720
    :goto_2
    return v1

    .end local v0           #comparison:I
    :cond_0
    move v1, v3

    .line 703
    goto :goto_0

    :cond_1
    move v4, v3

    goto :goto_1

    .line 707
    .restart local v0       #comparison:I
    :cond_2
    invoke-virtual {p1}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    if-ne v1, v5, :cond_3

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v4

    if-ne v4, v5, :cond_4

    move v4, v2

    :goto_4
    sub-int v0, v1, v4

    .line 709
    if-eqz v0, :cond_5

    move v1, v0

    goto :goto_2

    :cond_3
    move v1, v3

    .line 707
    goto :goto_3

    :cond_4
    move v4, v3

    goto :goto_4

    .line 712
    :cond_5
    iget-boolean v1, p1, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mVisible:Z

    if-eqz v1, :cond_6

    move v1, v2

    :goto_5
    iget-boolean v4, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mVisible:Z

    if-eqz v4, :cond_7

    :goto_6
    sub-int v0, v1, v2

    .line 713
    if-eqz v0, :cond_8

    move v1, v0

    goto :goto_2

    :cond_6
    move v1, v3

    .line 712
    goto :goto_5

    :cond_7
    move v2, v3

    goto :goto_6

    .line 716
    :cond_8
    iget-short v1, p1, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mRssi:S

    iget-short v2, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mRssi:S

    sub-int v0, v1, v2

    .line 717
    if-eqz v0, :cond_9

    move v1, v0

    goto :goto_2

    .line 720
    :cond_9
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    goto :goto_2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    check-cast p1, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->compareTo(Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;)I

    move-result v0

    return v0
.end method

.method connect(Z)V
    .locals 2
    .parameter "connectAllProfiles"

    .prologue
    .line 210
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->ensurePaired()Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    :goto_0
    return-void

    .line 214
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mConnectAttempted:J

    .line 215
    invoke-direct {p0, p1}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->connectWithoutResettingTimer(Z)V

    goto :goto_0
.end method

.method declared-synchronized connectInt(Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;)V
    .locals 3
    .parameter "profile"

    .prologue
    .line 287
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->ensurePaired()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 297
    :goto_0
    monitor-exit p0

    return-void

    .line 290
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 292
    const-string v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Command sent successfully:CONNECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->describe(Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 287
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 296
    :cond_1
    :try_start_2
    const-string v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to connect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method connectProfile(Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;)V
    .locals 2
    .parameter "profile"

    .prologue
    .line 278
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mConnectAttempted:J

    .line 280
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mIsConnectingErrorPossible:Z

    .line 281
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->connectInt(Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;)V

    .line 283
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->refresh()V

    .line 284
    return-void
.end method

.method disconnect()V
    .locals 5

    .prologue
    .line 188
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;

    .line 189
    .local v2, profile:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->disconnect(Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;)V

    goto :goto_0

    .line 194
    .end local v2           #profile:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v3}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->getPbapProfile()Lcom/android/settings_ex/bluetooth/PbapServerProfile;

    move-result-object v0

    .line 195
    .local v0, PbapProfile:Lcom/android/settings_ex/bluetooth/PbapServerProfile;
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/bluetooth/PbapServerProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 197
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/bluetooth/PbapServerProfile;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 199
    :cond_1
    return-void
.end method

.method disconnect(Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;)V
    .locals 3
    .parameter "profile"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    const-string v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Command sent successfully:DISCONNECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->describe(Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 687
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    if-nez v0, :cond_1

    .line 688
    :cond_0
    const/4 v0, 0x0

    .line 690
    .end local p1
    :goto_0
    return v0

    .restart local p1
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    check-cast p1, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    .end local p1
    iget-object v1, p1, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method getBondState()I
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    return v0
.end method

.method getBtClass()Landroid/bluetooth/BluetoothClass;
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    return-object v0
.end method

.method getConnectableProfiles()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 646
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 648
    .local v0, connectableProfiles:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;>;"
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;

    .line 649
    .local v2, profile:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;
    invoke-interface {v2}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;->isConnectable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 650
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 653
    .end local v2           #profile:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;
    :cond_1
    return-object v0
.end method

.method getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method getMessagePermissionChoice()I
    .locals 1

    .prologue
    .line 779
    iget v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mMessagePermissionChoice:I

    return v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    return-object v0
.end method

.method getPhonebookPermissionChoice()I
    .locals 1

    .prologue
    .line 728
    iget v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mPhonebookPermissionChoice:I

    return v0
.end method

.method getProfileConnectionState(Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;)I
    .locals 3
    .parameter "profile"

    .prologue
    .line 367
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 370
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, v1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 371
    .local v0, state:I
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    .end local v0           #state:I
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method getProfiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 642
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getRemovedProfiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 657
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 695
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method isBusy()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 502
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;

    .line 503
    .local v1, profile:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->getProfileConnectionState(Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;)I

    move-result v2

    .line 504
    .local v2, status:I
    if-eq v2, v3, :cond_1

    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    .line 509
    .end local v1           #profile:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;
    .end local v2           #status:I
    :cond_1
    :goto_0
    return v3

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v4

    const/16 v5, 0xb

    if-eq v4, v5, :cond_1

    const/4 v3, 0x0

    goto :goto_0
.end method

.method isConnected()Z
    .locals 4

    .prologue
    .line 485
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;

    .line 486
    .local v1, profile:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->getProfileConnectionState(Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;)I

    move-result v2

    .line 487
    .local v2, status:I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 488
    const/4 v3, 0x1

    .line 492
    .end local v1           #profile:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;
    .end local v2           #status:I
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method isRemovable()Z
    .locals 1

    .prologue
    .line 452
    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDeviceRemove:Z

    return v0
.end method

.method isVisible()Z
    .locals 1

    .prologue
    .line 448
    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mVisible:Z

    return v0
.end method

.method onBondingDockConnect()V
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->connect(Z)V

    .line 222
    return-void
.end method

.method onBondingStateChanged(I)V
    .locals 4
    .parameter "bondState"

    .prologue
    const/4 v3, 0x0

    .line 579
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->setPairingState(Z)V

    .line 581
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 582
    iput-boolean v3, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mConnectAfterPairing:Z

    .line 583
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->setPhonebookPermissionChoice(I)V

    .line 584
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->setMessagePermissionChoice(I)V

    .line 585
    iput v3, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mPhonebookRejectedTimes:I

    .line 586
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->savePhonebookRejectTimes()V

    .line 587
    iput v3, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mMessageRejectedTimes:I

    .line 588
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->saveMessageRejectTimes()V

    .line 589
    const-string v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBondingstate none: isPairing : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->checkPairingState()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 626
    const-string v0, "CachedBluetoothDevice"

    const-string v1, "Incorrect Bond State received"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    :goto_0
    return-void

    .line 596
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->setPairingState(Z)V

    .line 597
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 598
    iput-boolean v3, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mConnectAfterPairing:Z

    .line 604
    :pswitch_1
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->setPhonebookPermissionChoice(I)V

    .line 605
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->setMessagePermissionChoice(I)V

    .line 606
    iput v3, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mPhonebookRejectedTimes:I

    .line 607
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->savePhonebookRejectTimes()V

    .line 608
    iput v3, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mMessageRejectedTimes:I

    .line 609
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->saveMessageRejectTimes()V

    .line 611
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->refresh()V

    goto :goto_0

    .line 615
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->setPairingState(Z)V

    .line 616
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 617
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->onBondingDockConnect()V

    .line 621
    :cond_1
    :goto_1
    iput-boolean v3, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mConnectAfterPairing:Z

    .line 622
    const-string v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BondState bonded: isPairing : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->checkPairingState()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 618
    :cond_2
    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mConnectAfterPairing:Z

    if-eqz v0, :cond_1

    .line 619
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->connect(Z)V

    goto :goto_1

    .line 594
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method onProfileStateChanged(Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;I)V
    .locals 5
    .parameter "profile"
    .parameter "newProfileState"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 136
    const-string v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProfileStateChanged: profile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " newProfileState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 141
    const-string v0, "CachedBluetoothDevice"

    const-string v1, " BT Turninig Off...Profile conn state change ignored..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    .line 146
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 147
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 148
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    instance-of v0, p1, Lcom/android/settings_ex/bluetooth/PanProfile;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/android/settings_ex/bluetooth/PanProfile;

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/bluetooth/PanProfile;->isLocalRoleNap(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 152
    iput-boolean v4, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mLocalNapRoleConnected:Z

    .line 155
    :cond_2
    instance-of v0, p1, Lcom/android/settings_ex/bluetooth/MapProfile;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, v0, v4}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    goto :goto_0

    .line 158
    :cond_3
    instance-of v0, p1, Lcom/android/settings_ex/bluetooth/MapProfile;

    if-eqz v0, :cond_5

    if-nez p2, :cond_5

    .line 160
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 161
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 164
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, v0, v3}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    goto :goto_0

    .line 165
    :cond_5
    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mLocalNapRoleConnected:Z

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/android/settings_ex/bluetooth/PanProfile;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/settings_ex/bluetooth/PanProfile;

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/bluetooth/PanProfile;->isLocalRoleNap(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 168
    const-string v0, "CachedBluetoothDevice"

    const-string v1, "Removing PanProfile from device after NAP disconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 170
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    iput-boolean v3, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mLocalNapRoleConnected:Z

    goto :goto_0
.end method

.method onUuidChanged()V
    .locals 9

    .prologue
    .line 555
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->updateProfiles()Z

    .line 556
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v2

    .line 557
    .local v2, uuids:[Landroid/os/ParcelUuid;
    const-wide/16 v0, 0x1388

    .line 558
    .local v0, timeout:J
    const-string v3, "CachedBluetoothDevice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onUuidChanged: Time since last connect"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mConnectAttempted:J

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    sget-object v3, Landroid/bluetooth/BluetoothUuid;->Hogp:Landroid/os/ParcelUuid;

    invoke-static {v2, v3}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 567
    const-wide/16 v0, 0x7530

    .line 569
    :cond_0
    const-string v3, "CachedBluetoothDevice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onUuidChanged timeout value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-wide v3, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mConnectAttempted:J

    add-long/2addr v3, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    .line 573
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->connectWithoutResettingTimer(Z)V

    .line 575
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 576
    return-void
.end method

.method refresh()V
    .locals 0

    .prologue
    .line 444
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 445
    return-void
.end method

.method refreshBtClass()V
    .locals 0

    .prologue
    .line 547
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->fetchBtClass()V

    .line 548
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 549
    return-void
.end method

.method refreshName()V
    .locals 0

    .prologue
    .line 430
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->fetchName()V

    .line 431
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 432
    return-void
.end method

.method registerCallback(Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice$Callback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 661
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    monitor-enter v1

    .line 662
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 663
    monitor-exit v1

    .line 664
    return-void

    .line 663
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setAliasName(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 421
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 422
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 423
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->setAlias(Ljava/lang/String;)Z

    .line 425
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 427
    :cond_1
    return-void
.end method

.method setBtClass(Landroid/bluetooth/BluetoothClass;)V
    .locals 1
    .parameter "btClass"

    .prologue
    .line 631
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    if-eq v0, p1, :cond_0

    .line 632
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    .line 633
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 635
    :cond_0
    return-void
.end method

.method setMessagePermissionChoice(I)V
    .locals 4
    .parameter "permissionChoice"

    .prologue
    const/4 v2, 0x2

    .line 784
    if-ne p1, v2, :cond_0

    .line 785
    iget v1, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mMessageRejectedTimes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mMessageRejectedTimes:I

    .line 786
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->saveMessageRejectTimes()V

    .line 787
    iget v1, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mMessageRejectedTimes:I

    if-ge v1, v2, :cond_0

    .line 802
    :goto_0
    return-void

    .line 792
    :cond_0
    iput p1, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mMessagePermissionChoice:I

    .line 794
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    const-string v2, "bluetooth_message_permission"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 796
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-nez p1, :cond_1

    .line 797
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 801
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 799
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method setName(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 410
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 412
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 416
    :goto_0
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 418
    :cond_0
    return-void

    .line 414
    :cond_1
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    goto :goto_0
.end method

.method setPhonebookPermissionChoice(I)V
    .locals 4
    .parameter "permissionChoice"

    .prologue
    const/4 v2, 0x2

    .line 733
    if-ne p1, v2, :cond_0

    .line 734
    iget v1, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mPhonebookRejectedTimes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mPhonebookRejectedTimes:I

    .line 735
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->savePhonebookRejectTimes()V

    .line 736
    iget v1, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mPhonebookRejectedTimes:I

    if-ge v1, v2, :cond_0

    .line 751
    :goto_0
    return-void

    .line 741
    :cond_0
    iput p1, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mPhonebookPermissionChoice:I

    .line 743
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    const-string v2, "bluetooth_phonebook_permission"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 745
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-nez p1, :cond_1

    .line 746
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 750
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 748
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method setRemovable(Z)V
    .locals 0
    .parameter "removable"

    .prologue
    .line 464
    iput-boolean p1, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDeviceRemove:Z

    .line 465
    return-void
.end method

.method setRssi(S)V
    .locals 1
    .parameter "rssi"

    .prologue
    .line 473
    iget-short v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mRssi:S

    if-eq v0, p1, :cond_0

    .line 474
    iput-short p1, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mRssi:S

    .line 475
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 477
    :cond_0
    return-void
.end method

.method setVisible(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 457
    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mVisible:Z

    if-eq v0, p1, :cond_0

    .line 458
    iput-boolean p1, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mVisible:Z

    .line 459
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 461
    :cond_0
    return-void
.end method

.method startPairing()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 309
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->checkPairingState()Z

    move-result v2

    if-ne v2, v0, :cond_0

    .line 311
    const-string v1, "CachedBluetoothDevice"

    const-string v2, "Pairing is onging"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :goto_0
    return v0

    .line 315
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2, v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->setPairingState(Z)V

    .line 316
    const-string v2, "CachedBluetoothDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startPairing : isPairing : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v4}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->checkPairingState()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 320
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->cancelDiscovery()V

    .line 323
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    move-result v2

    if-nez v2, :cond_2

    .line 324
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->setPairingState(Z)V

    move v0, v1

    .line 325
    goto :goto_0

    .line 328
    :cond_2
    const-string v1, "CachedBluetoothDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startPairing CreateBond : isPairing : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v3}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->checkPairingState()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iput-boolean v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mConnectAfterPairing:Z

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unpair()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 342
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    .line 344
    .local v1, state:I
    const/16 v3, 0xb

    if-ne v1, v3, :cond_0

    .line 345
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->cancelBondProcess()Z

    .line 348
    :cond_0
    const/16 v3, 0xa

    if-eq v1, v3, :cond_1

    .line 349
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 350
    .local v0, dev:Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_1

    .line 351
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z

    move-result v2

    .line 352
    .local v2, successful:Z
    if-eqz v2, :cond_1

    .line 354
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v6}, Landroid/bluetooth/BluetoothDevice;->setAlias(Ljava/lang/String;)Z

    .line 355
    const-string v3, "CachedBluetoothDevice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Command sent successfully:REMOVE_BOND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v6}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->describe(Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->setRemovable(Z)V

    .line 364
    .end local v0           #dev:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #successful:Z
    :cond_1
    return-void
.end method

.method unregisterCallback(Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice$Callback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 667
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    monitor-enter v1

    .line 668
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 669
    monitor-exit v1

    .line 670
    return-void

    .line 669
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
