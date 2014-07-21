.class public Lcom/android/settings/deviceinfo/Memory;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "Memory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/Memory$ConfirmClearCacheFragment;,
        Lcom/android/settings/deviceinfo/Memory$ClearCacheObserver;
    }
.end annotation


# static fields
.field private static sClickedMountPoint:Ljava/lang/String;

.field private static sLastClickedMountToggle:Landroid/preference/Preference;


# instance fields
.field private mCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;",
            ">;"
        }
    .end annotation
.end field

.field private final mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

.field private mMountService:Landroid/os/storage/IMountService;

.field mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mUsbManager:Landroid/hardware/usb/UsbManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 82
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    .line 139
    new-instance v0, Lcom/android/settings/deviceinfo/Memory$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Memory$1;-><init>(Lcom/android/settings/deviceinfo/Memory;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 253
    new-instance v0, Lcom/android/settings/deviceinfo/Memory$2;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Memory$2;-><init>(Lcom/android/settings/deviceinfo/Memory;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    .line 391
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/Memory;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/deviceinfo/Memory;)Landroid/hardware/usb/UsbManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mUsbManager:Landroid/hardware/usb/UsbManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/deviceinfo/Memory;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->doUnmount()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/deviceinfo/Memory;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->onCacheCleared()V

    return-void
.end method

.method private addCategory(Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;)V
    .locals 1
    .parameter "category"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 112
    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->init()V

    .line 113
    return-void
.end method

.method private doUnmount()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 296
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f080738

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 297
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v1

    .line 299
    .local v1, mountService:Landroid/os/storage/IMountService;
    :try_start_0
    sget-object v2, Lcom/android/settings/deviceinfo/Memory;->sLastClickedMountToggle:Landroid/preference/Preference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 300
    sget-object v2, Lcom/android/settings/deviceinfo/Memory;->sLastClickedMountToggle:Landroid/preference/Preference;

    const v3, 0x7f080739

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/Memory;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 301
    sget-object v2, Lcom/android/settings/deviceinfo/Memory;->sLastClickedMountToggle:Landroid/preference/Preference;

    const v3, 0x7f08073a

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/Memory;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 302
    sget-object v2, Lcom/android/settings/deviceinfo/Memory;->sClickedMountPoint:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    :goto_0
    return-void

    .line 303
    :catch_0
    move-exception v0

    .line 305
    .local v0, e:Landroid/os/RemoteException;
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/settings/deviceinfo/Memory;->showDialogInner(I)V

    goto :goto_0
.end method

.method private declared-synchronized getMountService()Landroid/os/storage/IMountService;
    .locals 3

    .prologue
    .line 203
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mMountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    .line 204
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 205
    .local v0, service:Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 206
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mMountService:Landroid/os/storage/IMountService;

    .line 211
    .end local v0           #service:Landroid/os/IBinder;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mMountService:Landroid/os/storage/IMountService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 208
    .restart local v0       #service:Landroid/os/IBinder;
    :cond_1
    :try_start_1
    const-string v1, "MemorySettings"

    const-string v2, "Can\'t get mount service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 203
    .end local v0           #service:Landroid/os/IBinder;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private hasAppsAccessingStorage()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 315
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    .line 316
    .local v0, mountService:Landroid/os/storage/IMountService;
    sget-object v2, Lcom/android/settings/deviceinfo/Memory;->sClickedMountPoint:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/os/storage/IMountService;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v1

    .line 317
    .local v1, stUsers:[I
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 331
    :cond_0
    return v3
.end method

.method private mount()V
    .locals 3

    .prologue
    .line 351
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    .line 353
    .local v0, mountService:Landroid/os/storage/IMountService;
    if-eqz v0, :cond_0

    .line 354
    :try_start_0
    sget-object v1, Lcom/android/settings/deviceinfo/Memory;->sClickedMountPoint:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I

    .line 361
    :goto_0
    return-void

    .line 356
    :cond_0
    const-string v1, "MemorySettings"

    const-string v2, "Mount service is null, can\'t mount"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 358
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private onCacheCleared()V
    .locals 3

    .prologue
    .line 364
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    .line 365
    .local v0, category:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;
    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->onCacheCleared()V

    goto :goto_0

    .line 367
    .end local v0           #category:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;
    :cond_0
    return-void
.end method

.method private showDialogInner(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 310
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/Memory;->removeDialog(I)V

    .line 311
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/Memory;->showDialog(I)V

    .line 312
    return-void
.end method

.method private unmount()V
    .locals 3

    .prologue
    .line 337
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->hasAppsAccessingStorage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 339
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/Memory;->showDialogInner(I)V

    .line 348
    :goto_0
    return-void

    .line 341
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->doUnmount()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 343
    :catch_0
    move-exception v0

    .line 345
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "MemorySettings"

    const-string v2, "Is MountService running?"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/Memory;->showDialogInner(I)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 90
    .local v1, context:Landroid/content/Context;
    const-string v6, "usb"

    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/Memory;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/usb/UsbManager;

    iput-object v6, p0, Lcom/android/settings/deviceinfo/Memory;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 92
    invoke-static {v1}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 93
    iget-object v6, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v7, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v6, v7}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 95
    const v6, 0x7f050015

    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/Memory;->addPreferencesFromResource(I)V

    .line 97
    invoke-static {v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->buildForInternal(Landroid/content/Context;)Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settings/deviceinfo/Memory;->addCategory(Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;)V

    .line 99
    iget-object v6, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v6}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v4

    .line 100
    .local v4, storageVolumes:[Landroid/os/storage/StorageVolume;
    move-object v0, v4

    .local v0, arr$:[Landroid/os/storage/StorageVolume;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v5, v0, v2

    .line 101
    .local v5, volume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v6

    if-nez v6, :cond_0

    .line 102
    invoke-static {v1, v5}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->buildForPhysical(Landroid/content/Context;Landroid/os/storage/StorageVolume;)Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settings/deviceinfo/Memory;->addCategory(Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;)V

    .line 100
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 106
    .end local v5           #volume:Landroid/os/storage/StorageVolume;
    :cond_1
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/Memory;->setHasOptionsMenu(Z)V

    .line 107
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    const v3, 0x7f080842

    const/4 v0, 0x0

    .line 273
    packed-switch p1, :pswitch_data_0

    .line 291
    :goto_0
    return-object v0

    .line 275
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080734

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/deviceinfo/Memory$3;

    invoke-direct {v2, p0}, Lcom/android/settings/deviceinfo/Memory$3;-><init>(Lcom/android/settings/deviceinfo/Memory;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0804f7

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080735

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 285
    :pswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080736

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080737

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 273
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 173
    const v0, 0x7f10000b

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 174
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 168
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 169
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 186
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 199
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 188
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f08073e

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 197
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 195
    :cond_0
    const-class v0, Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/android/settings/deviceinfo/Memory;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_1

    .line 186
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d02fb
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 156
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/deviceinfo/Memory;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 158
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    .line 159
    .local v0, category:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;
    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->onPause()V

    goto :goto_0

    .line 161
    .end local v0           #category:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v6, 0x1

    .line 216
    const-string v7, "cache"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 217
    invoke-static {p0}, Lcom/android/settings/deviceinfo/Memory$ConfirmClearCacheFragment;->show(Lcom/android/settings/deviceinfo/Memory;)V

    .line 250
    :cond_0
    :goto_0
    return v6

    .line 221
    :cond_1
    iget-object v7, p0, Lcom/android/settings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    .line 222
    .local v1, category:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;
    invoke-virtual {v1, p2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->intentForClick(Landroid/preference/Preference;)Landroid/content/Intent;

    move-result-object v3

    .line 223
    .local v3, intent:Landroid/content/Intent;
    if-eqz v3, :cond_3

    .line 225
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v7

    if-nez v7, :cond_0

    .line 227
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/Memory;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, anfe:Landroid/content/ActivityNotFoundException;
    const-string v7, "MemorySettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No activity found for intent "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 235
    .end local v0           #anfe:Landroid/content/ActivityNotFoundException;
    :cond_3
    invoke-virtual {v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->getStorageVolume()Landroid/os/storage/StorageVolume;

    move-result-object v5

    .line 236
    .local v5, volume:Landroid/os/storage/StorageVolume;
    if-eqz v5, :cond_2

    invoke-virtual {v1, p2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mountToggleClicked(Landroid/preference/Preference;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 237
    sput-object p2, Lcom/android/settings/deviceinfo/Memory;->sLastClickedMountToggle:Landroid/preference/Preference;

    .line 238
    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/android/settings/deviceinfo/Memory;->sClickedMountPoint:Ljava/lang/String;

    .line 239
    iget-object v7, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 240
    .local v4, state:Ljava/lang/String;
    const-string v7, "mounted"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "mounted_ro"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 242
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->unmount()V

    goto :goto_0

    .line 244
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->mount()V

    goto :goto_0

    .line 250
    .end local v1           #category:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #state:Ljava/lang/String;
    .end local v5           #volume:Landroid/os/storage/StorageVolume;
    :cond_6
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 5
    .parameter "menu"

    .prologue
    .line 178
    const v3, 0x7f0d02fb

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 179
    .local v1, usb:Landroid/view/MenuItem;
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "user"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 180
    .local v0, um:Landroid/os/UserManager;
    const-string v3, "no_usb_file_transfer"

    invoke-virtual {v0, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    .line 181
    .local v2, usbItemVisible:Z
    :goto_0
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 182
    return-void

    .line 180
    .end local v2           #usbItemVisible:Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 124
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 125
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 126
    .local v2, intentFilter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    const-string v3, "file"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/deviceinfo/Memory;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 130
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2           #intentFilter:Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 131
    .restart local v2       #intentFilter:Landroid/content/IntentFilter;
    const-string v3, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/deviceinfo/Memory;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 134
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    .line 135
    .local v0, category:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;
    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->onResume()V

    goto :goto_0

    .line 137
    .end local v0           #category:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;
    :cond_0
    return-void
.end method
