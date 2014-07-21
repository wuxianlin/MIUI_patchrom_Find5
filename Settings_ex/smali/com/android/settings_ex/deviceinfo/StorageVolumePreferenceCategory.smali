.class public Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;
.super Landroid/preference/PreferenceCategory;
.source "StorageVolumePreferenceCategory.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;
.implements Lcom/android/settings_ex/deviceinfo/UsageBarPreference$OnRequestMediaRescanListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;
    }
.end annotation


# instance fields
.field private mFormatPreference:Landroid/preference/Preference;

.field private final mIsInternal:Z

.field private final mIsPrimary:Z

.field private mItemApps:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

.field private mItemAvailable:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

.field private mItemCache:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

.field private mItemDcim:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

.field private mItemDownloads:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

.field private mItemMisc:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

.field private mItemMusic:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

.field private mItemTotal:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

.field private mItemUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/deviceinfo/StorageItemPreference;",
            ">;"
        }
    .end annotation
.end field

.field private final mMeasure:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

.field private mMountTogglePreference:Landroid/preference/Preference;

.field private mReceiver:Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementReceiver;

.field private final mResources:Landroid/content/res/Resources;

.field private mStorageLow:Landroid/preference/Preference;

.field private final mStorageManager:Landroid/os/storage/StorageManager;

.field private mTotalSize:J

.field private mUpdateHandler:Landroid/os/Handler;

.field private mUsageBarPreference:Lcom/android/settings_ex/deviceinfo/UsageBarPreference;

.field private mUsbConnected:Z

.field private mUsbFunction:Ljava/lang/String;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mVolume:Landroid/os/storage/StorageVolume;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;)V
    .locals 2
    .parameter "context"
    .parameter "volume"

    .prologue
    const/4 v1, 0x0

    .line 137
    invoke-direct {p0, p1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 92
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemUsers:Ljava/util/List;

    .line 102
    new-instance v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$1;-><init>(Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUpdateHandler:Landroid/os/Handler;

    .line 438
    new-instance v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$2;-><init>(Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mReceiver:Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementReceiver;

    .line 139
    iput-object p2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    .line 140
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mIsInternal:Z

    .line 141
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v1

    :cond_0
    iput-boolean v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mIsPrimary:Z

    .line 142
    invoke-static {p1, p2}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->getInstance(Landroid/content/Context;Landroid/os/storage/StorageVolume;)Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMeasure:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    .line 144
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    .line 145
    invoke-static {p1}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 146
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUserManager:Landroid/os/UserManager;

    .line 148
    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 150
    return-void

    :cond_1
    move v0, v1

    .line 140
    goto :goto_0

    .line 148
    :cond_2
    const v0, 0x7f08083d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUpdateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;)Lcom/android/settings_ex/deviceinfo/UsageBarPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings_ex/deviceinfo/UsageBarPreference;

    return-object v0
.end method

.method public static buildForInternal(Landroid/content/Context;)Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;
    .locals 2
    .parameter "context"

    .prologue
    .line 125
    new-instance v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;-><init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;)V

    return-object v0
.end method

.method public static buildForPhysical(Landroid/content/Context;Landroid/os/storage/StorageVolume;)Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;
    .locals 1
    .parameter "context"
    .parameter "volume"

    .prologue
    .line 133
    new-instance v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;

    invoke-direct {v0, p0, p1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;-><init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;)V

    return-object v0
.end method

.method private buildItem(II)Lcom/android/settings_ex/deviceinfo/StorageItemPreference;
    .locals 2
    .parameter "titleRes"
    .parameter "colorRes"

    .prologue
    .line 153
    new-instance v0, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;-><init>(Landroid/content/Context;II)V

    return-object v0
.end method

.method private formatSize(J)Ljava/lang/String;
    .locals 1
    .parameter "size"

    .prologue
    .line 435
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUsersExcluding(Landroid/content/pm/UserInfo;)Ljava/util/List;
    .locals 4
    .parameter "excluding"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/UserInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 511
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    .line 512
    .local v1, users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 513
    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/UserInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 514
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    iget v3, p1, Landroid/content/pm/UserInfo;->id:I

    if-ne v2, v3, :cond_0

    .line 515
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 518
    :cond_1
    return-object v1
.end method

.method private measure()V
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMeasure:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    invoke-virtual {v0}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->invalidate()V

    .line 403
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMeasure:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    invoke-virtual {v0}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->measure()V

    .line 404
    return-void
.end method

.method private static varargs totalValues(Ljava/util/HashMap;[Ljava/lang/String;)J
    .locals 8
    .parameter
    .parameter "keys"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;[",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    .prologue
    .line 347
    .local p0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const-wide/16 v4, 0x0

    .line 348
    .local v4, total:J
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 349
    .local v2, key:Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 350
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 348
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 353
    .end local v2           #key:Ljava/lang/String;
    :cond_1
    return-wide v4
.end method

.method private updatePreference(Lcom/android/settings_ex/deviceinfo/StorageItemPreference;J)V
    .locals 5
    .parameter "pref"
    .parameter "size"

    .prologue
    .line 392
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-lez v1, :cond_0

    .line 393
    invoke-direct {p0, p2, p3}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 394
    invoke-virtual {p1}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->getOrder()I

    move-result v0

    .line 395
    .local v0, order:I
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings_ex/deviceinfo/UsageBarPreference;

    long-to-float v2, p2

    iget-wide v3, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mTotalSize:J

    long-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p1, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->color:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/settings_ex/deviceinfo/UsageBarPreference;->addEntry(IFI)V

    .line 399
    .end local v0           #order:I
    :goto_0
    return-void

    .line 397
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private updatePreferencesFromState()V
    .locals 7

    .prologue
    const v6, 0x7f080733

    const v5, 0x7f08072d

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 275
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    if-nez v1, :cond_1

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 279
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, state:Ljava/lang/String;
    const-string v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 282
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    const v2, 0x7f080720

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->setTitle(I)V

    .line 287
    :goto_1
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 289
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 290
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f08072a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 291
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f08072b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 292
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings_ex/deviceinfo/UsageBarPreference;

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 293
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 294
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 312
    :goto_2
    iget-boolean v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUsbConnected:Z

    if-eqz v1, :cond_a

    const-string v1, "mtp"

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUsbFunction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "ptp"

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUsbFunction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 314
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 315
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 317
    :cond_4
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 321
    :cond_5
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v1, :cond_0

    .line 322
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 323
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 284
    :cond_6
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    const v2, 0x7f08071f

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->setTitle(I)V

    goto/16 :goto_1

    .line 296
    :cond_7
    const-string v1, "unmounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "nofs"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "unmountable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 298
    :cond_8
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 299
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 300
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f08072e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 307
    :goto_3
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings_ex/deviceinfo/UsageBarPreference;

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 308
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 309
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 302
    :cond_9
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 303
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 304
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f08072c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 325
    :cond_a
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v1, :cond_0

    .line 326
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v2}, Landroid/preference/Preference;->isEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 327
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f080730

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public getStorageVolume()Landroid/os/storage/StorageVolume;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    return-object v0
.end method

.method public init()V
    .locals 29

    .prologue
    .line 157
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 159
    .local v7, context:Landroid/content/Context;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->removeAll()V

    .line 163
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 168
    .local v10, currentUser:Landroid/content/pm/UserInfo;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getUsersExcluding(Landroid/content/pm/UserInfo;)Ljava/util/List;

    move-result-object v17

    .line 169
    .local v17, otherUsers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v23, v0

    if-nez v23, :cond_5

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v23

    if-lez v23, :cond_5

    const/16 v21, 0x1

    .line 171
    .local v21, showUsers:Z
    :goto_0
    const/4 v5, 0x0

    .line 172
    .local v5, allowMediaScan:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mIsInternal:Z

    move/from16 v23, v0

    if-eqz v23, :cond_0

    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v23

    if-nez v23, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mIsPrimary:Z

    move/from16 v23, v0

    if-eqz v23, :cond_6

    .line 173
    :cond_1
    const/4 v5, 0x1

    .line 178
    :cond_2
    :goto_1
    new-instance v23, Lcom/android/settings_ex/deviceinfo/UsageBarPreference;

    move-object/from16 v0, v23

    invoke-direct {v0, v7}, Lcom/android/settings_ex/deviceinfo/UsageBarPreference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings_ex/deviceinfo/UsageBarPreference;

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings_ex/deviceinfo/UsageBarPreference;

    move-object/from16 v23, v0

    const/16 v24, -0x2

    invoke-virtual/range {v23 .. v24}, Lcom/android/settings_ex/deviceinfo/UsageBarPreference;->setOrder(I)V

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings_ex/deviceinfo/UsageBarPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/UsageBarPreference;->setOnRequestMediaRescanListener(Lcom/android/settings_ex/deviceinfo/UsageBarPreference$OnRequestMediaRescanListener;)V

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings_ex/deviceinfo/UsageBarPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Lcom/android/settings_ex/deviceinfo/UsageBarPreference;->setAllowMediaScan(Z)V

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings_ex/deviceinfo/UsageBarPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 184
    const v23, 0x7f080721

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    .line 185
    const v23, 0x7f08071f

    const v24, 0x7f0a0010

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 189
    const v23, 0x7f080723

    const v24, 0x7f0a0011

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    .line 190
    const v23, 0x7f080726

    const v24, 0x7f0a0013

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    .line 191
    const v23, 0x7f080727

    const v24, 0x7f0a0014

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    .line 192
    const v23, 0x7f080725

    const v24, 0x7f0a0012

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    .line 193
    const v23, 0x7f080729

    const v24, 0x7f0a0015

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    .line 194
    const v23, 0x7f080728

    const v24, 0x7f0a0016

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-object/from16 v23, v0

    const-string v24, "cache"

    invoke-virtual/range {v23 .. v24}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->setKey(Ljava/lang/String;)V

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v23, v0

    if-eqz v23, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v23

    if-eqz v23, :cond_7

    :cond_3
    const/16 v19, 0x1

    .line 199
    .local v19, showDetails:Z
    :goto_2
    if-eqz v19, :cond_9

    .line 200
    if-eqz v21, :cond_4

    .line 201
    new-instance v23, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;

    iget-object v0, v10, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v0, v7, v1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 204
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 211
    if-eqz v21, :cond_9

    .line 212
    new-instance v23, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;

    const v24, 0x7f080745

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v0, v7, v1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 214
    const/4 v8, 0x0

    .line 215
    .local v8, count:I
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_9

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/UserInfo;

    .line 216
    .local v13, info:Landroid/content/pm/UserInfo;
    add-int/lit8 v9, v8, 0x1

    .end local v8           #count:I
    .local v9, count:I
    rem-int/lit8 v23, v8, 0x2

    if-nez v23, :cond_8

    const v6, 0x7f0a0017

    .line 218
    .local v6, colorRes:I
    :goto_4
    new-instance v22, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v23

    iget-object v0, v13, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    iget v0, v13, Landroid/content/pm/UserInfo;->id:I

    move/from16 v25, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v0, v1, v2, v6, v3}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    .line 220
    .local v22, userPref:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemUsers:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    move v8, v9

    .line 222
    .end local v9           #count:I
    .restart local v8       #count:I
    goto :goto_3

    .line 164
    .end local v5           #allowMediaScan:Z
    .end local v6           #colorRes:I
    .end local v8           #count:I
    .end local v10           #currentUser:Landroid/content/pm/UserInfo;
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v13           #info:Landroid/content/pm/UserInfo;
    .end local v17           #otherUsers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v19           #showDetails:Z
    .end local v21           #showUsers:Z
    .end local v22           #userPref:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;
    :catch_0
    move-exception v11

    .line 165
    .local v11, e:Landroid/os/RemoteException;
    new-instance v23, Ljava/lang/RuntimeException;

    const-string v24, "Failed to get current user"

    invoke-direct/range {v23 .. v24}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 169
    .end local v11           #e:Landroid/os/RemoteException;
    .restart local v10       #currentUser:Landroid/content/pm/UserInfo;
    .restart local v17       #otherUsers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_5
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 174
    .restart local v5       #allowMediaScan:Z
    .restart local v21       #showUsers:Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v23, v0

    if-eqz v23, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v23

    if-nez v23, :cond_2

    .line 175
    const/4 v5, 0x1

    goto/16 :goto_1

    .line 198
    :cond_7
    const/16 v19, 0x0

    goto/16 :goto_2

    .line 216
    .restart local v9       #count:I
    .restart local v12       #i$:Ljava/util/Iterator;
    .restart local v13       #info:Landroid/content/pm/UserInfo;
    .restart local v19       #showDetails:Z
    :cond_8
    const v6, 0x7f0a0018

    goto :goto_4

    .line 226
    .end local v9           #count:I
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v13           #info:Landroid/content/pm/UserInfo;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v23, v0

    if-eqz v23, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v15

    .line 227
    .local v15, isRemovable:Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v23, v0

    if-eqz v23, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v23

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v24

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v25

    const-string v26, "storage_usb"

    const-string v27, "string"

    const-string v28, "android"

    invoke-virtual/range {v25 .. v28}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_10

    const/16 v16, 0x1

    .line 230
    .local v16, isUsbStorage:Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    move-object/from16 v23, v0

    const v24, 0x111002a

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    .line 233
    .local v14, isAccessible:Z
    new-instance v23, Landroid/preference/Preference;

    move-object/from16 v0, v23

    invoke-direct {v0, v7}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    .line 234
    if-eqz v15, :cond_b

    if-nez v16, :cond_a

    if-eqz v14, :cond_b

    .line 235
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    move-object/from16 v23, v0

    const v24, 0x7f08072a

    invoke-virtual/range {v23 .. v24}, Landroid/preference/Preference;->setTitle(I)V

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    move-object/from16 v23, v0

    const v24, 0x7f08072b

    invoke-virtual/range {v23 .. v24}, Landroid/preference/Preference;->setSummary(I)V

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 240
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v23, v0

    if-eqz v23, :cond_12

    const/4 v4, 0x1

    .line 241
    .local v4, allowFormat:Z
    :goto_7
    if-eqz v4, :cond_c

    .line 242
    new-instance v23, Landroid/preference/Preference;

    move-object/from16 v0, v23

    invoke-direct {v0, v7}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    move-object/from16 v23, v0

    const v24, 0x7f08072f

    invoke-virtual/range {v23 .. v24}, Landroid/preference/Preference;->setTitle(I)V

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    move-object/from16 v23, v0

    const v24, 0x7f080730

    invoke-virtual/range {v23 .. v24}, Landroid/preference/Preference;->setSummary(I)V

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 250
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v23, v0

    if-eqz v23, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v23

    if-eqz v23, :cond_13

    :cond_d
    const/16 v20, 0x1

    .line 251
    .local v20, showLowStorage:Z
    :goto_8
    if-eqz v20, :cond_e

    .line 252
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v18

    .line 254
    .local v18, pm:Landroid/content/pm/IPackageManager;
    :try_start_1
    invoke-interface/range {v18 .. v18}, Landroid/content/pm/IPackageManager;->isStorageLow()Z

    move-result v23

    if-eqz v23, :cond_14

    .line 255
    new-instance v23, Landroid/preference/Preference;

    move-object/from16 v0, v23

    invoke-direct {v0, v7}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    move-object/from16 v23, v0

    const/16 v24, -0x1

    invoke-virtual/range {v23 .. v24}, Landroid/preference/Preference;->setOrder(I)V

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    move-object/from16 v23, v0

    const v24, 0x7f08073b

    invoke-virtual/range {v23 .. v24}, Landroid/preference/Preference;->setTitle(I)V

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    move-object/from16 v23, v0

    const v24, 0x7f08073c

    invoke-virtual/range {v23 .. v24}, Landroid/preference/Preference;->setSummary(I)V

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 267
    .end local v18           #pm:Landroid/content/pm/IPackageManager;
    :cond_e
    :goto_9
    return-void

    .line 226
    .end local v4           #allowFormat:Z
    .end local v14           #isAccessible:Z
    .end local v15           #isRemovable:Z
    .end local v16           #isUsbStorage:Z
    .end local v20           #showLowStorage:Z
    :cond_f
    const/4 v15, 0x0

    goto/16 :goto_5

    .line 227
    .restart local v15       #isRemovable:Z
    :cond_10
    const/16 v16, 0x0

    goto/16 :goto_6

    :cond_11
    const/16 v16, 0x0

    goto/16 :goto_6

    .line 240
    .restart local v14       #isAccessible:Z
    .restart local v16       #isUsbStorage:Z
    :cond_12
    const/4 v4, 0x0

    goto/16 :goto_7

    .line 250
    .restart local v4       #allowFormat:Z
    :cond_13
    const/16 v20, 0x0

    goto :goto_8

    .line 260
    .restart local v18       #pm:Landroid/content/pm/IPackageManager;
    .restart local v20       #showLowStorage:Z
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    move-object/from16 v23, v0

    if-eqz v23, :cond_e

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 262
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_9

    .line 264
    :catch_1
    move-exception v23

    goto :goto_9
.end method

.method public intentForClick(Landroid/preference/Preference;)Landroid/content/Intent;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 456
    const/4 v0, 0x0

    .line 461
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    .line 462
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-ne p1, v1, :cond_1

    .line 463
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 464
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/settings_ex/MediaFormat;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 465
    const-string v1, "storage_volume"

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 487
    :cond_0
    :goto_0
    return-object v0

    .line 466
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    if-ne p1, v1, :cond_2

    .line 467
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 468
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/settings_ex/Settings$ManageApplicationsActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 470
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    if-ne p1, v1, :cond_3

    .line 471
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW_DOWNLOADS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.app.DownloadManager.extra_sortBySize"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 473
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    if-ne p1, v1, :cond_4

    .line 474
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 475
    const-string v1, "audio/mp3"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 476
    :cond_4
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    if-ne p1, v1, :cond_5

    .line 477
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 478
    const-string v1, "android.intent.extra.LOCAL_ONLY"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 480
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    .line 481
    :cond_5
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    if-ne p1, v1, :cond_0

    .line 482
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 483
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 484
    const-string v1, "storage_volume"

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public mountToggleClicked(Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preference"

    .prologue
    .line 452
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCacheCleared()V
    .locals 0

    .prologue
    .line 427
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 428
    return-void
.end method

.method public onMediaScannerFinished()V
    .locals 0

    .prologue
    .line 423
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 424
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMeasure:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    invoke-virtual {v0}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->cleanUp()V

    .line 432
    return-void
.end method

.method public onRequestMediaRescan()V
    .locals 7

    .prologue
    .line 523
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 524
    .local v1, currentUser:I
    new-instance v0, Landroid/os/Environment$UserEnvironment;

    invoke-direct {v0, v1}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 526
    .local v0, currentEnv:Landroid/os/Environment$UserEnvironment;
    const/4 v2, 0x0

    .line 527
    .local v2, path:Ljava/io/File;
    iget-boolean v3, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mIsInternal:Z

    if-eqz v3, :cond_0

    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    iget-boolean v3, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mIsPrimary:Z

    if-eqz v3, :cond_2

    .line 528
    :cond_1
    invoke-virtual {v0}, Landroid/os/Environment$UserEnvironment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 533
    :goto_0
    const-string v3, "StorageVolumePreferenceCategory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Request scan of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    invoke-static {v3, v4, v5, p0}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 536
    return-void

    .line 530
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPathFile()Ljava/io/File;

    move-result-object v2

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 407
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMeasure:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mReceiver:Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementReceiver;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->setReceiver(Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementReceiver;)V

    .line 408
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 409
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2
    .parameter "path"
    .parameter "uri"

    .prologue
    .line 540
    if-eqz p2, :cond_0

    .line 541
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 543
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$3;

    invoke-direct {v1, p0, p2}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$3;-><init>(Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 552
    return-void
.end method

.method public onStorageStateChanged()V
    .locals 0

    .prologue
    .line 412
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->init()V

    .line 413
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 414
    return-void
.end method

.method public onUsbStateChanged(ZLjava/lang/String;)V
    .locals 0
    .parameter "isUsbConnected"
    .parameter "usbFunction"

    .prologue
    .line 417
    iput-boolean p1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUsbConnected:Z

    .line 418
    iput-object p2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUsbFunction:Ljava/lang/String;

    .line 419
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 420
    return-void
.end method

.method public updateApproximate(JJ)V
    .locals 6
    .parameter "totalSize"
    .parameter "availSize"

    .prologue
    .line 332
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 333
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    invoke-direct {p0, p3, p4}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 335
    iput-wide p1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mTotalSize:J

    .line 337
    sub-long v0, p1, p3

    .line 339
    .local v0, usedSize:J
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings_ex/deviceinfo/UsageBarPreference;

    invoke-virtual {v2}, Lcom/android/settings_ex/deviceinfo/UsageBarPreference;->clear()V

    .line 340
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings_ex/deviceinfo/UsageBarPreference;

    const/4 v3, 0x0

    long-to-float v4, v0

    long-to-float v5, p1

    div-float/2addr v4, v5

    const v5, -0x777778

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/settings_ex/deviceinfo/UsageBarPreference;->addEntry(IFI)V

    .line 341
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings_ex/deviceinfo/UsageBarPreference;

    invoke-virtual {v2}, Lcom/android/settings_ex/deviceinfo/UsageBarPreference;->commit()V

    .line 343
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->updatePreferencesFromState()V

    .line 344
    return-void
.end method

.method public updateDetails(Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    .locals 16
    .parameter "details"

    .prologue
    .line 357
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v12}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v12

    if-eqz v12, :cond_1

    :cond_0
    const/4 v8, 0x1

    .line 358
    .local v8, showDetails:Z
    :goto_0
    if-nez v8, :cond_2

    .line 389
    :goto_1
    return-void

    .line 357
    .end local v8           #showDetails:Z
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 361
    .restart local v8       #showDetails:Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;->totalSize:J

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 362
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;->availSize:J

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 364
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings_ex/deviceinfo/UsageBarPreference;

    invoke-virtual {v12}, Lcom/android/settings_ex/deviceinfo/UsageBarPreference;->clear()V

    .line 366
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:J

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settings_ex/deviceinfo/StorageItemPreference;J)V

    .line 368
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Ljava/util/HashMap;

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    sget-object v15, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    aput-object v15, v13, v14

    const/4 v14, 0x1

    sget-object v15, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    aput-object v15, v13, v14

    const/4 v14, 0x2

    sget-object v15, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->totalValues(Ljava/util/HashMap;[Ljava/lang/String;)J

    move-result-wide v1

    .line 370
    .local v1, dcimSize:J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v1, v2}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settings_ex/deviceinfo/StorageItemPreference;J)V

    .line 372
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Ljava/util/HashMap;

    const/4 v13, 0x5

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    sget-object v15, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    aput-object v15, v13, v14

    const/4 v14, 0x1

    sget-object v15, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    aput-object v15, v13, v14

    const/4 v14, 0x2

    sget-object v15, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    aput-object v15, v13, v14

    const/4 v14, 0x3

    sget-object v15, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    aput-object v15, v13, v14

    const/4 v14, 0x4

    sget-object v15, Landroid/os/Environment;->DIRECTORY_PODCASTS:Ljava/lang/String;

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->totalValues(Ljava/util/HashMap;[Ljava/lang/String;)J

    move-result-wide v6

    .line 375
    .local v6, musicSize:J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v6, v7}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settings_ex/deviceinfo/StorageItemPreference;J)V

    .line 377
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Ljava/util/HashMap;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    sget-object v15, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->totalValues(Ljava/util/HashMap;[Ljava/lang/String;)J

    move-result-wide v3

    .line 378
    .local v3, downloadsSize:J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v3, v4}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settings_ex/deviceinfo/StorageItemPreference;J)V

    .line 380
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;->cacheSize:J

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settings_ex/deviceinfo/StorageItemPreference;J)V

    .line 381
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;->miscSize:J

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settings_ex/deviceinfo/StorageItemPreference;J)V

    .line 383
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mItemUsers:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;

    .line 384
    .local v9, userPref:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementDetails;->usersSize:Landroid/util/SparseLongArray;

    iget v13, v9, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->userHandle:I

    invoke-virtual {v12, v13}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v10

    .line 385
    .local v10, userSize:J
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10, v11}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settings_ex/deviceinfo/StorageItemPreference;J)V

    goto :goto_2

    .line 388
    .end local v9           #userPref:Lcom/android/settings_ex/deviceinfo/StorageItemPreference;
    .end local v10           #userSize:J
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings_ex/deviceinfo/UsageBarPreference;

    invoke-virtual {v12}, Lcom/android/settings_ex/deviceinfo/UsageBarPreference;->commit()V

    goto/16 :goto_1
.end method
