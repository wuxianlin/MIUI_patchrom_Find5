.class final Lcom/android/server/pm/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# static fields
.field private static final ATTR_BLOCKED:Ljava/lang/String; = "blocked"

.field private static final ATTR_CODE:Ljava/lang/String; = "code"

.field private static final ATTR_ENABLED:Ljava/lang/String; = "enabled"

.field private static final ATTR_ENABLED_CALLER:Ljava/lang/String; = "enabledCaller"

.field private static final ATTR_ENFORCEMENT:Ljava/lang/String; = "enforcement"

.field private static final ATTR_INSTALLED:Ljava/lang/String; = "inst"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_NOT_LAUNCHED:Ljava/lang/String; = "nl"

.field private static final ATTR_STOPPED:Ljava/lang/String; = "stopped"

.field private static final ATTR_USER:Ljava/lang/String; = "user"

.field private static final DEBUG_MU:Z = false

.field private static final DEBUG_STOPPED:Z = false

.field static final FLAG_DUMP_SPEC:[Ljava/lang/Object; = null

.field private static final TAG:Ljava/lang/String; = "PackageSettings"

.field private static final TAG_DISABLED_COMPONENTS:Ljava/lang/String; = "disabled-components"

.field private static final TAG_ENABLED_COMPONENTS:Ljava/lang/String; = "enabled-components"

.field private static final TAG_ITEM:Ljava/lang/String; = "item"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "pkg"

.field private static final TAG_PACKAGE_RESTRICTIONS:Ljava/lang/String; = "package-restrictions"

.field private static final TAG_READ_EXTERNAL_STORAGE:Ljava/lang/String; = "read-external-storage"

.field private static mFirstAvailableUid:I


# instance fields
.field private final mBackupSettingsFilename:Ljava/io/File;

.field private final mBackupStoppedPackagesFilename:Ljava/io/File;

.field private final mContext:Landroid/content/Context;

.field private final mDisabledSysPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation
.end field

.field mExternalSdkPlatform:I

.field mInternalSdkPlatform:I

.field public final mKeySetManager:Lcom/android/server/pm/KeySetManager;

.field private final mOtherUserIds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageListFilename:Ljava/io/File;

.field final mPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation
.end field

.field final mPackagesToBeCleaned:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageCleanItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mPastSignatures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/pm/PendingPackage;",
            ">;"
        }
    .end annotation
.end field

.field final mPermissionTrees:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/BasePermission;",
            ">;"
        }
    .end annotation
.end field

.field final mPermissions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/BasePermission;",
            ">;"
        }
    .end annotation
.end field

.field final mPreferredActivities:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/pm/PreferredIntentResolver;",
            ">;"
        }
    .end annotation
.end field

.field mReadExternalStorageEnforced:Ljava/lang/Boolean;

.field final mReadMessages:Ljava/lang/StringBuilder;

.field final mRenamedPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingsFilename:Ljava/io/File;

.field final mSharedUsers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/SharedUserSetting;",
            ">;"
        }
    .end annotation
.end field

.field private final mStoppedPackagesFilename:Ljava/io/File;

.field private final mSystemDir:Ljava/io/File;

.field private final mUserIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 129
    sput v2, Lcom/android/server/pm/Settings;->mFirstAvailableUid:I

    .line 2880
    const/16 v0, 0x24

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "SYSTEM"

    aput-object v1, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "DEBUGGABLE"

    aput-object v2, v0, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    const/4 v1, 0x5

    const-string v2, "HAS_CODE"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "PERSISTENT"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    const/16 v1, 0x9

    const-string v2, "FACTORY_TEST"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "ALLOW_TASK_REPARENTING"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x40

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "ALLOW_CLEAR_USER_DATA"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "UPDATED_SYSTEM_APP"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x100

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "TEST_ONLY"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x4000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "VM_SAFE_MODE"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const v2, 0x8000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "ALLOW_BACKUP"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const/high16 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "KILL_AFTER_RESTORE"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const/high16 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "RESTORE_ANY_VERSION"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const/high16 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const/high16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "LARGE_HEAP"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const/high16 v2, 0x4000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "PRIVILEGED"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const/high16 v2, 0x2000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "FORWARD_LOCK"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const/high16 v2, 0x1000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "CANT_SAVE_STATE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/pm/Settings;->FLAG_DUMP_SPEC:[Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 193
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/Settings;-><init>(Landroid/content/Context;Ljava/io/File;)V

    .line 194
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 4
    .parameter "context"
    .parameter "dataDir"

    .prologue
    const/4 v2, -0x1

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    .line 144
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Landroid/util/SparseArray;

    .line 147
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Ljava/util/HashMap;

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    .line 150
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mOtherUserIds:Landroid/util/SparseArray;

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    .line 158
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPermissions:Ljava/util/HashMap;

    .line 162
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPermissionTrees:Ljava/util/HashMap;

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    .line 173
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Ljava/util/HashMap;

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    .line 190
    new-instance v0, Lcom/android/server/pm/KeySetManager;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Lcom/android/server/pm/KeySetManager;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mKeySetManager:Lcom/android/server/pm/KeySetManager;

    .line 197
    iput-object p1, p0, Lcom/android/server/pm/Settings;->mContext:Landroid/content/Context;

    .line 198
    new-instance v0, Ljava/io/File;

    const-string v1, "system"

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    .line 199
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 200
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1fd

    invoke-static {v0, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 204
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string v2, "packages.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    .line 205
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string v2, "packages-backup.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    .line 206
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string v2, "packages.list"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    .line 207
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    const/16 v1, 0x1b0

    const/16 v2, 0x3e8

    const/16 v3, 0x408

    invoke-static {v0, v1, v2, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    .line 210
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string v2, "packages-stopped.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    .line 211
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string v2, "packages-stopped-backup.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    .line 212
    return-void
.end method

.method private addPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;)V
    .locals 3
    .parameter "p"
    .parameter "name"
    .parameter "sharedUser"

    .prologue
    const/4 v2, 0x6

    .line 608
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    if-eqz p3, :cond_1

    .line 610
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eq v0, p3, :cond_2

    .line 611
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " was user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " but is now "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; I am not changing its files so it will probably fail!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 615
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/SharedUserSetting;->removePackage(Lcom/android/server/pm/PackageSetting;)V

    .line 624
    :cond_0
    :goto_0
    invoke-virtual {p3, p1}, Lcom/android/server/pm/SharedUserSetting;->addPackage(Lcom/android/server/pm/PackageSetting;)V

    .line 625
    iput-object p3, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    .line 626
    iget v0, p3, Lcom/android/server/pm/SharedUserSetting;->userId:I

    iput v0, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 628
    :cond_1
    return-void

    .line 616
    :cond_2
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    iget v1, p3, Lcom/android/server/pm/SharedUserSetting;->userId:I

    if-eq v0, v1, :cond_0

    .line 617
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " was user id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " but is now user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " with id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p3, Lcom/android/server/pm/SharedUserSetting;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; I am not changing its files so it will probably fail!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private addUserIdLPw(ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .parameter "uid"
    .parameter "obj"
    .parameter "name"

    .prologue
    const/4 v5, 0x6

    const/4 v2, 0x0

    .line 712
    const/16 v3, 0x4e1f

    if-le p1, v3, :cond_0

    .line 739
    :goto_0
    return v2

    .line 716
    :cond_0
    const/16 v3, 0x2710

    if-lt p1, v3, :cond_3

    .line 717
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 718
    .local v0, N:I
    add-int/lit16 v1, p1, -0x2710

    .line 719
    .local v1, index:I
    :goto_1
    if-lt v1, v0, :cond_1

    .line 720
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 721
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 723
    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 724
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding duplicate user id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_0

    .line 729
    :cond_2
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 739
    .end local v0           #N:I
    .end local v1           #index:I
    :goto_2
    const/4 v2, 0x1

    goto :goto_0

    .line 731
    :cond_3
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mOtherUserIds:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 732
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding duplicate shared id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_0

    .line 737
    :cond_4
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mOtherUserIds:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2
.end method

.method private applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;Ljava/lang/String;I)V
    .locals 18
    .parameter "service"
    .parameter "intent"
    .parameter "flags"
    .parameter "cn"
    .parameter "scheme"
    .parameter "ssp"
    .parameter "auth"
    .parameter "path"
    .parameter "mimeType"
    .parameter "userId"

    .prologue
    .line 2055
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService;->mActivities:Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v8

    const/16 v17, 0x0

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, v17

    invoke-virtual {v7, v0, v8, v1, v2}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v16

    .line 2059
    .local v16, ri:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v5, 0x0

    .line 2060
    .local v5, match:I
    if-eqz v16, :cond_b

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_b

    .line 2061
    const/4 v12, 0x0

    .line 2062
    .local v12, haveAct:Z
    const/4 v13, 0x0

    .line 2063
    .local v13, haveNonSys:Z
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v7

    new-array v6, v7, [Landroid/content/ComponentName;

    .line 2064
    .local v6, set:[Landroid/content/ComponentName;
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v7

    if-ge v14, v7, :cond_0

    .line 2065
    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2066
    .local v9, ai:Landroid/content/pm/ActivityInfo;
    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v7, v8, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v6, v14

    .line 2067
    iget-object v7, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_2

    .line 2073
    const/4 v13, 0x1

    .line 2086
    .end local v9           #ai:Landroid/content/pm/ActivityInfo;
    :cond_0
    if-eqz v12, :cond_c

    if-nez v13, :cond_c

    .line 2087
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 2088
    .local v4, filter:Landroid/content/IntentFilter;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 2089
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2091
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 2092
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 2093
    .local v10, cat:Ljava/lang/String;
    invoke-virtual {v4, v10}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    goto :goto_1

    .line 2075
    .end local v4           #filter:Landroid/content/IntentFilter;
    .end local v10           #cat:Ljava/lang/String;
    .end local v15           #i$:Ljava/util/Iterator;
    .restart local v9       #ai:Landroid/content/pm/ActivityInfo;
    :cond_2
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2079
    const/4 v12, 0x1

    .line 2080
    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget v5, v7, Landroid/content/pm/ResolveInfo;->match:I

    .line 2064
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 2096
    .end local v9           #ai:Landroid/content/pm/ActivityInfo;
    .restart local v4       #filter:Landroid/content/IntentFilter;
    :cond_4
    const/high16 v7, 0x1

    and-int v7, v7, p3

    if-eqz v7, :cond_5

    .line 2097
    const-string v7, "android.intent.category.DEFAULT"

    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 2099
    :cond_5
    if-eqz p5, :cond_6

    .line 2100
    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2102
    :cond_6
    if-eqz p6, :cond_7

    .line 2103
    invoke-virtual/range {p6 .. p6}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p6 .. p6}, Landroid/os/PatternMatcher;->getType()I

    move-result v8

    invoke-virtual {v4, v7, v8}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 2105
    :cond_7
    if-eqz p7, :cond_8

    .line 2106
    move-object/from16 v0, p7

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addDataAuthority(Landroid/content/IntentFilter$AuthorityEntry;)V

    .line 2108
    :cond_8
    if-eqz p8, :cond_9

    .line 2109
    move-object/from16 v0, p8

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addDataPath(Landroid/os/PatternMatcher;)V

    .line 2111
    :cond_9
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_a

    .line 2113
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2118
    :cond_a
    :goto_2
    new-instance v3, Lcom/android/server/pm/PreferredActivity;

    const/4 v8, 0x1

    move-object/from16 v7, p4

    invoke-direct/range {v3 .. v8}, Lcom/android/server/pm/PreferredActivity;-><init>(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;Z)V

    .line 2119
    .local v3, pa:Lcom/android/server/pm/PreferredActivity;
    move-object/from16 v0, p0

    move/from16 v1, p10

    invoke-virtual {v0, v1}, Lcom/android/server/pm/Settings;->editPreferredActivitiesLPw(I)Lcom/android/server/pm/PreferredIntentResolver;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/android/server/pm/PreferredIntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    .line 2124
    .end local v3           #pa:Lcom/android/server/pm/PreferredActivity;
    .end local v4           #filter:Landroid/content/IntentFilter;
    .end local v6           #set:[Landroid/content/ComponentName;
    .end local v12           #haveAct:Z
    .end local v13           #haveNonSys:Z
    .end local v14           #i:I
    :cond_b
    :goto_3
    return-void

    .line 2114
    .restart local v4       #filter:Landroid/content/IntentFilter;
    .restart local v6       #set:[Landroid/content/ComponentName;
    .restart local v12       #haveAct:Z
    .restart local v13       #haveNonSys:Z
    .restart local v14       #i:I
    :catch_0
    move-exception v11

    .line 2115
    .local v11, ex:Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string v7, "PackageSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Malformed mimetype "

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v17, " for "

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p4

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2120
    .end local v4           #filter:Landroid/content/IntentFilter;
    .end local v11           #ex:Landroid/content/IntentFilter$MalformedMimeTypeException;
    :cond_c
    if-nez v13, :cond_b

    .line 2121
    const-string v7, "PackageSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "No component found for default preferred activity "

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p4

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V
    .locals 51
    .parameter "service"
    .parameter "tmpPa"
    .parameter "cn"
    .parameter "userId"

    .prologue
    .line 1949
    new-instance v30, Landroid/content/Intent;

    invoke-direct/range {v30 .. v30}, Landroid/content/Intent;-><init>()V

    .line 1950
    .local v30, intent:Landroid/content/Intent;
    const/4 v5, 0x0

    .line 1951
    .local v5, flags:I
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1952
    const/16 v45, 0x0

    .local v45, i:I
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countCategories()I

    move-result v2

    move/from16 v0, v45

    if-ge v0, v2, :cond_1

    .line 1953
    move-object/from16 v0, p2

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    move-result-object v40

    .line 1954
    .local v40, cat:Ljava/lang/String;
    const-string v2, "android.intent.category.DEFAULT"

    move-object/from16 v0, v40

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1955
    const/high16 v2, 0x1

    or-int/2addr v5, v2

    .line 1952
    :goto_1
    add-int/lit8 v45, v45, 0x1

    goto :goto_0

    .line 1957
    :cond_0
    move-object/from16 v0, v30

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 1961
    .end local v40           #cat:Ljava/lang/String;
    :cond_1
    const/16 v42, 0x1

    .line 1962
    .local v42, doNonData:Z
    const/16 v44, 0x0

    .line 1964
    .local v44, hasSchemes:Z
    const/16 v49, 0x0

    .local v49, ischeme:I
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v2

    move/from16 v0, v49

    if-ge v0, v2, :cond_a

    .line 1965
    const/16 v43, 0x1

    .line 1966
    .local v43, doScheme:Z
    move-object/from16 v0, p2

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v7

    .line 1967
    .local v7, scheme:Ljava/lang/String;
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1968
    const/16 v44, 0x1

    .line 1970
    :cond_2
    const/16 v50, 0x0

    .local v50, issp:I
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataSchemeSpecificParts()I

    move-result v2

    move/from16 v0, v50

    if-ge v0, v2, :cond_3

    .line 1971
    new-instance v39, Landroid/net/Uri$Builder;

    invoke-direct/range {v39 .. v39}, Landroid/net/Uri$Builder;-><init>()V

    .line 1972
    .local v39, builder:Landroid/net/Uri$Builder;
    move-object/from16 v0, v39

    invoke-virtual {v0, v7}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1973
    move-object/from16 v0, p2

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->getDataSchemeSpecificPart(I)Landroid/os/PatternMatcher;

    move-result-object v8

    .line 1974
    .local v8, ssp:Landroid/os/PatternMatcher;
    invoke-virtual {v8}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v39

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->opaquePart(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1975
    new-instance v4, Landroid/content/Intent;

    move-object/from16 v0, v30

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1976
    .local v4, finalIntent:Landroid/content/Intent;
    invoke-virtual/range {v39 .. v39}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1977
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v6, p3

    move/from16 v12, p4

    invoke-direct/range {v2 .. v12}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;Ljava/lang/String;I)V

    .line 1979
    const/16 v43, 0x0

    .line 1970
    add-int/lit8 v50, v50, 0x1

    goto :goto_3

    .line 1981
    .end local v4           #finalIntent:Landroid/content/Intent;
    .end local v8           #ssp:Landroid/os/PatternMatcher;
    .end local v39           #builder:Landroid/net/Uri$Builder;
    :cond_3
    const/16 v46, 0x0

    .local v46, iauth:I
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v2

    move/from16 v0, v46

    if-ge v0, v2, :cond_8

    .line 1982
    const/16 v41, 0x1

    .line 1983
    .local v41, doAuth:Z
    move-object/from16 v0, p2

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->getDataAuthority(I)Landroid/content/IntentFilter$AuthorityEntry;

    move-result-object v16

    .line 1984
    .local v16, auth:Landroid/content/IntentFilter$AuthorityEntry;
    const/16 v48, 0x0

    .end local v41           #doAuth:Z
    .local v48, ipath:I
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataPaths()I

    move-result v2

    move/from16 v0, v48

    if-ge v0, v2, :cond_5

    .line 1985
    new-instance v39, Landroid/net/Uri$Builder;

    invoke-direct/range {v39 .. v39}, Landroid/net/Uri$Builder;-><init>()V

    .line 1986
    .restart local v39       #builder:Landroid/net/Uri$Builder;
    move-object/from16 v0, v39

    invoke-virtual {v0, v7}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1987
    invoke-virtual/range {v16 .. v16}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1988
    invoke-virtual/range {v16 .. v16}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v39

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1990
    :cond_4
    move-object/from16 v0, p2

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->getDataPath(I)Landroid/os/PatternMatcher;

    move-result-object v17

    .line 1991
    .local v17, path:Landroid/os/PatternMatcher;
    invoke-virtual/range {v17 .. v17}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v39

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1992
    new-instance v4, Landroid/content/Intent;

    move-object/from16 v0, v30

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1993
    .restart local v4       #finalIntent:Landroid/content/Intent;
    invoke-virtual/range {v39 .. v39}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1994
    const/4 v15, 0x0

    const/16 v18, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object v11, v4

    move v12, v5

    move-object/from16 v13, p3

    move-object v14, v7

    move/from16 v19, p4

    invoke-direct/range {v9 .. v19}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;Ljava/lang/String;I)V

    .line 1996
    const/16 v43, 0x0

    move/from16 v41, v43

    .line 1984
    .local v41, doAuth:I
    add-int/lit8 v48, v48, 0x1

    goto :goto_5

    .line 1998
    .end local v4           #finalIntent:Landroid/content/Intent;
    .end local v17           #path:Landroid/os/PatternMatcher;
    .end local v39           #builder:Landroid/net/Uri$Builder;
    .end local v41           #doAuth:I
    :cond_5
    if-eqz v41, :cond_7

    .line 1999
    new-instance v39, Landroid/net/Uri$Builder;

    invoke-direct/range {v39 .. v39}, Landroid/net/Uri$Builder;-><init>()V

    .line 2000
    .restart local v39       #builder:Landroid/net/Uri$Builder;
    move-object/from16 v0, v39

    invoke-virtual {v0, v7}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2001
    invoke-virtual/range {v16 .. v16}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 2002
    invoke-virtual/range {v16 .. v16}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v39

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2004
    :cond_6
    new-instance v4, Landroid/content/Intent;

    move-object/from16 v0, v30

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 2005
    .restart local v4       #finalIntent:Landroid/content/Intent;
    invoke-virtual/range {v39 .. v39}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2006
    const/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v18, p0

    move-object/from16 v19, p1

    move-object/from16 v20, v4

    move/from16 v21, v5

    move-object/from16 v22, p3

    move-object/from16 v23, v7

    move-object/from16 v25, v16

    move/from16 v28, p4

    invoke-direct/range {v18 .. v28}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;Ljava/lang/String;I)V

    .line 2008
    const/16 v43, 0x0

    .line 1981
    .end local v4           #finalIntent:Landroid/content/Intent;
    .end local v39           #builder:Landroid/net/Uri$Builder;
    :cond_7
    add-int/lit8 v46, v46, 0x1

    goto/16 :goto_4

    .line 2011
    .end local v16           #auth:Landroid/content/IntentFilter$AuthorityEntry;
    .end local v48           #ipath:I
    :cond_8
    if-eqz v43, :cond_9

    .line 2012
    new-instance v39, Landroid/net/Uri$Builder;

    invoke-direct/range {v39 .. v39}, Landroid/net/Uri$Builder;-><init>()V

    .line 2013
    .restart local v39       #builder:Landroid/net/Uri$Builder;
    move-object/from16 v0, v39

    invoke-virtual {v0, v7}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2014
    new-instance v4, Landroid/content/Intent;

    move-object/from16 v0, v30

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 2015
    .restart local v4       #finalIntent:Landroid/content/Intent;
    invoke-virtual/range {v39 .. v39}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2016
    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v18, p0

    move-object/from16 v19, p1

    move-object/from16 v20, v4

    move/from16 v21, v5

    move-object/from16 v22, p3

    move-object/from16 v23, v7

    move/from16 v28, p4

    invoke-direct/range {v18 .. v28}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;Ljava/lang/String;I)V

    .line 2019
    .end local v4           #finalIntent:Landroid/content/Intent;
    .end local v39           #builder:Landroid/net/Uri$Builder;
    :cond_9
    const/16 v42, 0x0

    .line 1964
    add-int/lit8 v49, v49, 0x1

    goto/16 :goto_2

    .line 2022
    .end local v7           #scheme:Ljava/lang/String;
    .end local v43           #doScheme:Z
    .end local v46           #iauth:I
    .end local v50           #issp:I
    :cond_a
    const/16 v47, 0x0

    .local v47, idata:I
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v2

    move/from16 v0, v47

    if-ge v0, v2, :cond_e

    .line 2023
    move-object/from16 v0, p2

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->getDataType(I)Ljava/lang/String;

    move-result-object v27

    .line 2024
    .local v27, mimeType:Ljava/lang/String;
    if-eqz v44, :cond_c

    .line 2025
    new-instance v39, Landroid/net/Uri$Builder;

    invoke-direct/range {v39 .. v39}, Landroid/net/Uri$Builder;-><init>()V

    .line 2026
    .restart local v39       #builder:Landroid/net/Uri$Builder;
    const/16 v49, 0x0

    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v2

    move/from16 v0, v49

    if-ge v0, v2, :cond_d

    .line 2027
    move-object/from16 v0, p2

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v7

    .line 2028
    .restart local v7       #scheme:Ljava/lang/String;
    if-eqz v7, :cond_b

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b

    .line 2029
    new-instance v4, Landroid/content/Intent;

    move-object/from16 v0, v30

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 2030
    .restart local v4       #finalIntent:Landroid/content/Intent;
    move-object/from16 v0, v39

    invoke-virtual {v0, v7}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2031
    invoke-virtual/range {v39 .. v39}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v4, v2, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2032
    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v18, p0

    move-object/from16 v19, p1

    move-object/from16 v20, v4

    move/from16 v21, v5

    move-object/from16 v22, p3

    move-object/from16 v23, v7

    move/from16 v28, p4

    invoke-direct/range {v18 .. v28}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;Ljava/lang/String;I)V

    .line 2026
    .end local v4           #finalIntent:Landroid/content/Intent;
    :cond_b
    add-int/lit8 v49, v49, 0x1

    goto :goto_7

    .line 2037
    .end local v7           #scheme:Ljava/lang/String;
    .end local v39           #builder:Landroid/net/Uri$Builder;
    :cond_c
    new-instance v4, Landroid/content/Intent;

    move-object/from16 v0, v30

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 2038
    .restart local v4       #finalIntent:Landroid/content/Intent;
    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2039
    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v18, p0

    move-object/from16 v19, p1

    move-object/from16 v20, v4

    move/from16 v21, v5

    move-object/from16 v22, p3

    move/from16 v28, p4

    invoke-direct/range {v18 .. v28}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;Ljava/lang/String;I)V

    .line 2042
    .end local v4           #finalIntent:Landroid/content/Intent;
    :cond_d
    const/16 v42, 0x0

    .line 2022
    add-int/lit8 v47, v47, 0x1

    goto/16 :goto_6

    .line 2045
    .end local v27           #mimeType:Ljava/lang/String;
    :cond_e
    if-eqz v42, :cond_f

    .line 2046
    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    move-object/from16 v28, p0

    move-object/from16 v29, p1

    move/from16 v31, v5

    move-object/from16 v32, p3

    move/from16 v38, p4

    invoke-direct/range {v28 .. v38}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;Ljava/lang/String;I)V

    .line 2049
    :cond_f
    return-void
.end method

.method private compToString(Ljava/util/HashSet;)Ljava/lang/String;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 2750
    .local p1, cmp:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/HashSet;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "[]"

    goto :goto_0
.end method

.method private getAllUsers()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2857
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2859
    .local v0, id:J
    :try_start_0
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2863
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2865
    :goto_0
    return-object v2

    .line 2860
    :catch_0
    move-exception v2

    .line 2863
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2865
    const/4 v2, 0x0

    goto :goto_0

    .line 2863
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private getPackageLPw(Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;Ljava/io/File;Ljava/io/File;Ljava/lang/String;IILandroid/os/UserHandle;ZZ)Lcom/android/server/pm/PackageSetting;
    .locals 20
    .parameter "name"
    .parameter "origPackage"
    .parameter "realName"
    .parameter "sharedUser"
    .parameter "codePath"
    .parameter "resourcePath"
    .parameter "nativeLibraryPathString"
    .parameter "vc"
    .parameter "pkgFlags"
    .parameter "installUser"
    .parameter "add"
    .parameter "allowInstall"

    .prologue
    .line 396
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 397
    .local v3, p:Lcom/android/server/pm/PackageSetting;
    if-eqz v3, :cond_1

    .line 398
    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 400
    iget v4, v3, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    .line 404
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Trying to update system app code path from "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v3, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " to "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_0
    :goto_0
    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    move-object/from16 v0, p4

    if-eq v4, v0, :cond_5

    .line 421
    const/4 v5, 0x5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " shared user changed from "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v4, :cond_3

    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v4, v4, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    :goto_1
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " to "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz p4, :cond_4

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    :goto_2
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "; replacing with new"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 427
    const/4 v3, 0x0

    .line 437
    :cond_1
    :goto_3
    if-nez v3, :cond_10

    .line 438
    if-eqz p2, :cond_6

    .line 440
    new-instance v3, Lcom/android/server/pm/PackageSetting;

    .end local v3           #p:Lcom/android/server/pm/PackageSetting;
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    move-object/from16 v5, p1

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v3 .. v10}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;II)V

    .line 446
    .restart local v3       #p:Lcom/android/server/pm/PackageSetting;
    iget-object v15, v3, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 447
    .local v15, s:Lcom/android/server/pm/PackageSignatures;
    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/android/server/pm/PackageSetting;->copyFrom(Lcom/android/server/pm/PackageSettingBase;)V

    .line 448
    iput-object v15, v3, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 449
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iput-object v4, v3, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    .line 450
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    iput v4, v3, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 451
    move-object/from16 v0, p2

    iput-object v0, v3, Lcom/android/server/pm/PackageSetting;->origPackage:Lcom/android/server/pm/PackageSettingBase;

    .line 452
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/Settings;->mRenamedPackages:Ljava/util/HashMap;

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    move-object/from16 p1, v0

    .line 455
    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V

    .line 525
    .end local v15           #s:Lcom/android/server/pm/PackageSignatures;
    :goto_4
    iget v4, v3, Lcom/android/server/pm/PackageSetting;->appId:I

    if-gez v4, :cond_e

    .line 526
    const/4 v4, 0x5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " could not be assigned a valid uid"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 528
    const/4 v4, 0x0

    .line 555
    :goto_5
    return-object v4

    .line 409
    :cond_2
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " codePath changed from "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v3, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " to "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "; Retaining data and using new"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    move-object/from16 v0, p7

    iput-object v0, v3, Lcom/android/server/pm/PackageSetting;->nativeLibraryPathString:Ljava/lang/String;

    goto/16 :goto_0

    .line 421
    :cond_3
    const-string v4, "<nothing>"

    goto/16 :goto_1

    :cond_4
    const-string v4, "<nothing>"

    goto/16 :goto_2

    .line 432
    :cond_5
    const v4, 0x40000001

    and-int v16, p9, v4

    .line 434
    .local v16, sysPrivFlags:I
    iget v4, v3, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    or-int v4, v4, v16

    iput v4, v3, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    goto/16 :goto_3

    .line 457
    .end local v16           #sysPrivFlags:I
    :cond_6
    new-instance v3, Lcom/android/server/pm/PackageSetting;

    .end local v3           #p:Lcom/android/server/pm/PackageSetting;
    move-object/from16 v4, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v3 .. v10}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;II)V

    .line 459
    .restart local v3       #p:Lcom/android/server/pm/PackageSetting;
    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V

    .line 460
    move-object/from16 v0, p4

    iput-object v0, v3, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    .line 462
    and-int/lit8 v4, p9, 0x1

    if-nez v4, :cond_9

    .line 468
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/Settings;->getAllUsers()Ljava/util/List;

    move-result-object v19

    .line 469
    .local v19, users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v19, :cond_9

    if-eqz p12, :cond_9

    .line 470
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/UserInfo;

    .line 477
    .local v17, user:Landroid/content/pm/UserInfo;
    if-eqz p10, :cond_7

    invoke-virtual/range {p10 .. p10}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_7

    invoke-virtual/range {p10 .. p10}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    move-object/from16 v0, v17

    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    if-ne v4, v5, :cond_8

    :cond_7
    const/4 v6, 0x1

    .line 480
    .local v6, installed:Z
    :goto_7
    move-object/from16 v0, v17

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v3 .. v12}, Lcom/android/server/pm/PackageSetting;->setUserState(IIZZZZLjava/lang/String;Ljava/util/HashSet;Ljava/util/HashSet;)V

    .line 486
    move-object/from16 v0, v17

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    goto :goto_6

    .line 477
    .end local v6           #installed:Z
    :cond_8
    const/4 v6, 0x0

    goto :goto_7

    .line 490
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v17           #user:Landroid/content/pm/UserInfo;
    .end local v19           #users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_9
    if-eqz p4, :cond_a

    .line 491
    move-object/from16 v0, p4

    iget v4, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    iput v4, v3, Lcom/android/server/pm/PackageSetting;->appId:I

    goto/16 :goto_4

    .line 494
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/pm/PackageSetting;

    .line 495
    .local v13, dis:Lcom/android/server/pm/PackageSetting;
    if-eqz v13, :cond_d

    .line 500
    iget-object v4, v13, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v4, v4, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    if-eqz v4, :cond_b

    .line 501
    iget-object v5, v3, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v4, v13, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v4, v4, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    invoke-virtual {v4}, [Landroid/content/pm/Signature;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/content/pm/Signature;

    iput-object v4, v5, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    .line 503
    :cond_b
    iget v4, v13, Lcom/android/server/pm/PackageSetting;->appId:I

    iput v4, v3, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 505
    new-instance v4, Ljava/util/HashSet;

    iget-object v5, v13, Lcom/android/server/pm/PackageSetting;->grantedPermissions:Ljava/util/HashSet;

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v4, v3, Lcom/android/server/pm/PackageSetting;->grantedPermissions:Ljava/util/HashSet;

    .line 507
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/Settings;->getAllUsers()Ljava/util/List;

    move-result-object v19

    .line 508
    .restart local v19       #users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v19, :cond_c

    .line 509
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14       #i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/UserInfo;

    .line 510
    .restart local v17       #user:Landroid/content/pm/UserInfo;
    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v18, v0

    .line 511
    .local v18, userId:I
    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/android/server/pm/PackageSetting;->getDisabledComponents(I)Ljava/util/HashSet;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v3, v4, v0}, Lcom/android/server/pm/PackageSetting;->setDisabledComponentsCopy(Ljava/util/HashSet;I)V

    .line 513
    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/android/server/pm/PackageSetting;->getEnabledComponents(I)Ljava/util/HashSet;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v3, v4, v0}, Lcom/android/server/pm/PackageSetting;->setEnabledComponentsCopy(Ljava/util/HashSet;I)V

    goto :goto_8

    .line 518
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v17           #user:Landroid/content/pm/UserInfo;
    .end local v18           #userId:I
    :cond_c
    iget v4, v3, Lcom/android/server/pm/PackageSetting;->appId:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v3, v1}, Lcom/android/server/pm/Settings;->addUserIdLPw(ILjava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 521
    .end local v19           #users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_d
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/pm/Settings;->newUserIdLPw(Ljava/lang/Object;)I

    move-result v4

    iput v4, v3, Lcom/android/server/pm/PackageSetting;->appId:I

    goto/16 :goto_4

    .line 530
    .end local v13           #dis:Lcom/android/server/pm/PackageSetting;
    :cond_e
    if-eqz p11, :cond_f

    .line 533
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/pm/Settings;->addPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;)V

    :cond_f
    move-object v4, v3

    .line 555
    goto/16 :goto_5

    .line 536
    :cond_10
    if-eqz p10, :cond_f

    if-eqz p12, :cond_f

    .line 540
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/Settings;->getAllUsers()Ljava/util/List;

    move-result-object v19

    .line 541
    .restart local v19       #users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v19, :cond_f

    .line 542
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14       #i$:Ljava/util/Iterator;
    :cond_11
    :goto_9
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/UserInfo;

    .line 543
    .restart local v17       #user:Landroid/content/pm/UserInfo;
    invoke-virtual/range {p10 .. p10}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_12

    invoke-virtual/range {p10 .. p10}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    move-object/from16 v0, v17

    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    if-ne v4, v5, :cond_11

    .line 545
    :cond_12
    move-object/from16 v0, v17

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v6

    .line 546
    .restart local v6       #installed:Z
    if-nez v6, :cond_11

    .line 547
    const/4 v4, 0x1

    move-object/from16 v0, v17

    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4, v5}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 548
    move-object/from16 v0, v17

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    goto :goto_9
.end method

.method private getUserPackagesStateBackupFile(I)Ljava/io/File;
    .locals 3
    .parameter "userId"

    .prologue
    .line 787
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "package-restrictions-backup.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getUserPackagesStateFile(I)Ljava/io/File;
    .locals 3
    .parameter "userId"

    .prologue
    .line 783
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "package-restrictions.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private newUserIdLPw(Ljava/lang/Object;)I
    .locals 3
    .parameter "obj"

    .prologue
    .line 2717
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2718
    .local v0, N:I
    sget v1, Lcom/android/server/pm/Settings;->mFirstAvailableUid:I

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2719
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 2720
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2721
    add-int/lit16 v2, v1, 0x2710

    .line 2731
    :goto_1
    return v2

    .line 2718
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2726
    :cond_1
    const/16 v2, 0x270f

    if-le v0, v2, :cond_2

    .line 2727
    const/4 v2, -0x1

    goto :goto_1

    .line 2730
    :cond_2
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2731
    add-int/lit16 v2, v0, 0x2710

    goto :goto_1
.end method

.method static final printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V
    .locals 3
    .parameter "pw"
    .parameter "val"
    .parameter "spec"

    .prologue
    .line 2869
    const-string v2, "[ "

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2870
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_1

    .line 2871
    aget-object v2, p2, v0

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2872
    .local v1, mask:I
    and-int v2, p1, v1

    if-eqz v2, :cond_0

    .line 2873
    add-int/lit8 v2, v0, 0x1

    aget-object v2, p2, v2

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2874
    const-string v2, " "

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2870
    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 2877
    .end local v1           #mask:I
    :cond_1
    const-string v2, "]"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2878
    return-void
.end method

.method private readComponentsLPr(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/HashSet;
    .locals 8
    .parameter "parser"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    .line 991
    const/4 v1, 0x0

    .line 993
    .local v1, components:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 996
    .local v2, outerDepth:I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .local v4, type:I
    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    if-ne v4, v7, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v2, :cond_3

    .line 998
    :cond_1
    if-eq v4, v7, :cond_0

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    .line 1002
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1003
    .local v3, tagName:Ljava/lang/String;
    const-string v5, "item"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1004
    const/4 v5, 0x0

    const-string v6, "name"

    invoke-interface {p1, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1005
    .local v0, componentName:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1006
    if-nez v1, :cond_2

    .line 1007
    new-instance v1, Ljava/util/HashSet;

    .end local v1           #components:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1009
    .restart local v1       #components:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1013
    .end local v0           #componentName:Ljava/lang/String;
    .end local v3           #tagName:Ljava/lang/String;
    :cond_3
    return-object v1
.end method

.method private readDefaultPreferredActivitiesLPw(Lcom/android/server/pm/PackageManagerService;Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 8
    .parameter "service"
    .parameter "parser"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x3

    .line 2129
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 2132
    .local v0, outerDepth:I
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, type:I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    if-ne v3, v6, :cond_1

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_4

    .line 2133
    :cond_1
    if-eq v3, v6, :cond_0

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    .line 2137
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2138
    .local v1, tagName:Ljava/lang/String;
    const-string v4, "item"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2139
    new-instance v2, Lcom/android/server/pm/PreferredActivity;

    invoke-direct {v2, p2}, Lcom/android/server/pm/PreferredActivity;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2140
    .local v2, tmpPa:Lcom/android/server/pm/PreferredActivity;
    iget-object v4, v2, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/PreferredComponent;

    invoke-virtual {v4}, Lcom/android/server/PreferredComponent;->getParseError()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    .line 2141
    iget-object v4, v2, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/PreferredComponent;

    iget-object v4, v4, Lcom/android/server/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    invoke-direct {p0, p1, v2, v4, p3}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V

    goto :goto_0

    .line 2144
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in package manager settings: <preferred-activity> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/PreferredComponent;

    invoke-virtual {v5}, Lcom/android/server/PreferredComponent;->getParseError()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_0

    .line 2150
    .end local v2           #tmpPa:Lcom/android/server/pm/PreferredActivity;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <preferred-activities>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2152
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 2155
    .end local v1           #tagName:Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private readDisabledComponentsLPw(Lcom/android/server/pm/PackageSettingBase;Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 8
    .parameter "packageSetting"
    .parameter "parser"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x3

    .line 2535
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 2538
    .local v1, outerDepth:I
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, type:I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    if-ne v3, v6, :cond_1

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_4

    .line 2539
    :cond_1
    if-eq v3, v6, :cond_0

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    .line 2543
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2544
    .local v2, tagName:Ljava/lang/String;
    const-string v4, "item"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2545
    const/4 v4, 0x0

    const-string v5, "name"

    invoke-interface {p2, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2546
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 2547
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, p3}, Lcom/android/server/pm/PackageSettingBase;->addDisabledComponent(Ljava/lang/String;I)V

    .line 2557
    .end local v0           #name:Ljava/lang/String;
    :goto_1
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 2549
    .restart local v0       #name:Ljava/lang/String;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in package manager settings: <disabled-components> has no name at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_1

    .line 2554
    .end local v0           #name:Ljava/lang/String;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <disabled-components>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_1

    .line 2559
    .end local v2           #tagName:Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private readDisabledSysPackageLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 23
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2227
    const/4 v6, 0x0

    const-string v21, "name"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2228
    .local v3, name:Ljava/lang/String;
    const/4 v6, 0x0

    const-string v21, "realName"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2229
    .local v4, realName:Ljava/lang/String;
    const/4 v6, 0x0

    const-string v21, "codePath"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2230
    .local v10, codePathStr:Ljava/lang/String;
    const/4 v6, 0x0

    const-string v21, "resourcePath"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2231
    .local v13, resourcePathStr:Ljava/lang/String;
    const/4 v6, 0x0

    const-string v21, "nativeLibraryPath"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2232
    .local v7, nativeLibraryPathStr:Ljava/lang/String;
    if-nez v13, :cond_0

    .line 2233
    move-object v13, v10

    .line 2235
    :cond_0
    const/4 v6, 0x0

    const-string v21, "version"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 2236
    .local v20, version:Ljava/lang/String;
    const/4 v8, 0x0

    .line 2237
    .local v8, versionCode:I
    if-eqz v20, :cond_1

    .line 2239
    :try_start_0
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    .line 2244
    :cond_1
    :goto_0
    const/4 v9, 0x0

    .line 2245
    .local v9, pkgFlags:I
    or-int/lit8 v9, v9, 0x1

    .line 2246
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2247
    .local v5, codePathFile:Ljava/io/File;
    invoke-static {v5}, Lcom/android/server/pm/PackageManagerService;->locationIsPrivileged(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2248
    const/high16 v6, 0x4000

    or-int/lit8 v9, v6, 0x1

    .line 2250
    :cond_2
    new-instance v2, Lcom/android/server/pm/PackageSetting;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v2 .. v9}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;II)V

    .line 2252
    .local v2, ps:Lcom/android/server/pm/PackageSetting;
    const/4 v6, 0x0

    const-string v21, "ft"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2253
    .local v18, timeStampStr:Ljava/lang/String;
    if-eqz v18, :cond_9

    .line 2255
    const/16 v6, 0x10

    :try_start_1
    move-object/from16 v0, v18

    invoke-static {v0, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v16

    .line 2256
    .local v16, timeStamp:J
    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_4

    .line 2269
    .end local v16           #timeStamp:J
    :cond_3
    :goto_1
    const/4 v6, 0x0

    const-string v21, "it"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2270
    if-eqz v18, :cond_4

    .line 2272
    const/16 v6, 0x10

    :try_start_2
    move-object/from16 v0, v18

    invoke-static {v0, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v21

    move-wide/from16 v0, v21

    iput-wide v0, v2, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_3

    .line 2276
    :cond_4
    :goto_2
    const/4 v6, 0x0

    const-string v21, "ut"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2277
    if-eqz v18, :cond_5

    .line 2279
    const/16 v6, 0x10

    :try_start_3
    move-object/from16 v0, v18

    invoke-static {v0, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v21

    move-wide/from16 v0, v21

    iput-wide v0, v2, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    .line 2283
    :cond_5
    :goto_3
    const/4 v6, 0x0

    const-string v21, "userId"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2284
    .local v11, idStr:Ljava/lang/String;
    if-eqz v11, :cond_a

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    :goto_4
    iput v6, v2, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 2285
    iget v6, v2, Lcom/android/server/pm/PackageSetting;->appId:I

    if-gtz v6, :cond_6

    .line 2286
    const/4 v6, 0x0

    const-string v21, "sharedUserId"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2287
    .local v14, sharedIdStr:Ljava/lang/String;
    if-eqz v14, :cond_b

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    :goto_5
    iput v6, v2, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 2289
    .end local v14           #sharedIdStr:Ljava/lang/String;
    :cond_6
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v12

    .line 2292
    .local v12, outerDepth:I
    :cond_7
    :goto_6
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v19

    .local v19, type:I
    const/4 v6, 0x1

    move/from16 v0, v19

    if-eq v0, v6, :cond_d

    const/4 v6, 0x3

    move/from16 v0, v19

    if-ne v0, v6, :cond_8

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v12, :cond_d

    .line 2293
    :cond_8
    const/4 v6, 0x3

    move/from16 v0, v19

    if-eq v0, v6, :cond_7

    const/4 v6, 0x4

    move/from16 v0, v19

    if-eq v0, v6, :cond_7

    .line 2297
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 2298
    .local v15, tagName:Ljava/lang/String;
    const-string v6, "perms"

    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 2299
    iget-object v6, v2, Lcom/android/server/pm/PackageSetting;->grantedPermissions:Ljava/util/HashSet;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6}, Lcom/android/server/pm/Settings;->readGrantedPermissionsLPw(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashSet;)V

    goto :goto_6

    .line 2260
    .end local v11           #idStr:Ljava/lang/String;
    .end local v12           #outerDepth:I
    .end local v15           #tagName:Ljava/lang/String;
    .end local v19           #type:I
    :cond_9
    const/4 v6, 0x0

    const-string v21, "ts"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2261
    if-eqz v18, :cond_3

    .line 2263
    :try_start_4
    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    .line 2264
    .restart local v16       #timeStamp:J
    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1

    .line 2265
    .end local v16           #timeStamp:J
    :catch_0
    move-exception v6

    goto/16 :goto_1

    .line 2284
    .restart local v11       #idStr:Ljava/lang/String;
    :cond_a
    const/4 v6, 0x0

    goto :goto_4

    .line 2287
    .restart local v14       #sharedIdStr:Ljava/lang/String;
    :cond_b
    const/4 v6, 0x0

    goto :goto_5

    .line 2301
    .end local v14           #sharedIdStr:Ljava/lang/String;
    .restart local v12       #outerDepth:I
    .restart local v15       #tagName:Ljava/lang/String;
    .restart local v19       #type:I
    :cond_c
    const/4 v6, 0x5

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Unknown element under <updated-package>: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v6, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2303
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_6

    .line 2307
    .end local v15           #tagName:Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    invoke-virtual {v6, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2308
    return-void

    .line 2240
    .end local v2           #ps:Lcom/android/server/pm/PackageSetting;
    .end local v5           #codePathFile:Ljava/io/File;
    .end local v9           #pkgFlags:I
    .end local v11           #idStr:Ljava/lang/String;
    .end local v12           #outerDepth:I
    .end local v18           #timeStampStr:Ljava/lang/String;
    .end local v19           #type:I
    :catch_1
    move-exception v6

    goto/16 :goto_0

    .line 2280
    .restart local v2       #ps:Lcom/android/server/pm/PackageSetting;
    .restart local v5       #codePathFile:Ljava/io/File;
    .restart local v9       #pkgFlags:I
    .restart local v18       #timeStampStr:Ljava/lang/String;
    :catch_2
    move-exception v6

    goto/16 :goto_3

    .line 2273
    :catch_3
    move-exception v6

    goto/16 :goto_2

    .line 2257
    :catch_4
    move-exception v6

    goto/16 :goto_1
.end method

.method private readEnabledComponentsLPw(Lcom/android/server/pm/PackageSettingBase;Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 8
    .parameter "packageSetting"
    .parameter "parser"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x3

    .line 2563
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 2566
    .local v1, outerDepth:I
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, type:I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    if-ne v3, v6, :cond_1

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_4

    .line 2567
    :cond_1
    if-eq v3, v6, :cond_0

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    .line 2571
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2572
    .local v2, tagName:Ljava/lang/String;
    const-string v4, "item"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2573
    const/4 v4, 0x0

    const-string v5, "name"

    invoke-interface {p2, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2574
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 2575
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, p3}, Lcom/android/server/pm/PackageSettingBase;->addEnabledComponent(Ljava/lang/String;I)V

    .line 2585
    .end local v0           #name:Ljava/lang/String;
    :goto_1
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 2577
    .restart local v0       #name:Ljava/lang/String;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in package manager settings: <enabled-components> has no name at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_1

    .line 2582
    .end local v0           #name:Ljava/lang/String;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <enabled-components>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_1

    .line 2587
    .end local v2           #tagName:Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private readGrantedPermissionsLPw(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashSet;)V
    .locals 8
    .parameter "parser"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .local p2, outPerms:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v7, 0x5

    const/4 v6, 0x3

    .line 2652
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 2655
    .local v1, outerDepth:I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, type:I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    if-ne v3, v6, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_4

    .line 2656
    :cond_1
    if-eq v3, v6, :cond_0

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    .line 2660
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2661
    .local v2, tagName:Ljava/lang/String;
    const-string v4, "item"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2662
    const/4 v4, 0x0

    const-string v5, "name"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2663
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 2664
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2674
    .end local v0           #name:Ljava/lang/String;
    :goto_1
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 2666
    .restart local v0       #name:Ljava/lang/String;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in package manager settings: <perms> has no name at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_1

    .line 2671
    .end local v0           #name:Ljava/lang/String;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <perms>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_1

    .line 2676
    .end local v2           #tagName:Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private readInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 5
    .parameter "parser"
    .parameter "ns"
    .parameter "name"
    .parameter "defValue"

    .prologue
    .line 2158
    invoke-interface {p1, p2, p3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2160
    .local v1, v:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 2170
    .end local p4
    :goto_0
    return p4

    .line 2163
    .restart local p4
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p4

    goto :goto_0

    .line 2164
    :catch_0
    move-exception v0

    .line 2165
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v2, 0x5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in package manager settings: attribute "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has bad integer value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private readPackageLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 37
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2311
    const/16 v24, 0x0

    .line 2312
    .local v24, name:Ljava/lang/String;
    const/4 v4, 0x0

    .line 2313
    .local v4, realName:Ljava/lang/String;
    const/16 v19, 0x0

    .line 2314
    .local v19, idStr:Ljava/lang/String;
    const/16 v28, 0x0

    .line 2315
    .local v28, sharedIdStr:Ljava/lang/String;
    const/4 v12, 0x0

    .line 2316
    .local v12, codePathStr:Ljava/lang/String;
    const/16 v27, 0x0

    .line 2317
    .local v27, resourcePathStr:Ljava/lang/String;
    const/4 v7, 0x0

    .line 2318
    .local v7, nativeLibraryPathStr:Ljava/lang/String;
    const/16 v29, 0x0

    .line 2319
    .local v29, systemStr:Ljava/lang/String;
    const/16 v21, 0x0

    .line 2320
    .local v21, installerPackageName:Ljava/lang/String;
    const/16 v35, 0x0

    .line 2321
    .local v35, uidError:Ljava/lang/String;
    const/4 v10, 0x0

    .line 2322
    .local v10, pkgFlags:I
    const-wide/16 v31, 0x0

    .line 2323
    .local v31, timeStamp:J
    const-wide/16 v15, 0x0

    .line 2324
    .local v15, firstInstallTime:J
    const-wide/16 v22, 0x0

    .line 2325
    .local v22, lastUpdateTime:J
    const/16 v26, 0x0

    .line 2326
    .local v26, packageSetting:Lcom/android/server/pm/PackageSettingBase;
    const/16 v36, 0x0

    .line 2327
    .local v36, version:Ljava/lang/String;
    const/4 v9, 0x0

    .line 2329
    .local v9, versionCode:I
    const/4 v3, 0x0

    :try_start_0
    const-string v5, "name"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 2330
    const/4 v3, 0x0

    const-string v5, "realName"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2331
    const/4 v3, 0x0

    const-string v5, "userId"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 2332
    const/4 v3, 0x0

    const-string v5, "uidError"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 2333
    const/4 v3, 0x0

    const-string v5, "sharedUserId"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 2334
    const/4 v3, 0x0

    const-string v5, "codePath"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2335
    const/4 v3, 0x0

    const-string v5, "resourcePath"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 2336
    const/4 v3, 0x0

    const-string v5, "nativeLibraryPath"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2337
    const/4 v3, 0x0

    const-string v5, "version"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_8

    move-result-object v36

    .line 2338
    if-eqz v36, :cond_0

    .line 2340
    :try_start_1
    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v9

    .line 2344
    :cond_0
    :goto_0
    const/4 v3, 0x0

    :try_start_2
    const-string v5, "installer"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 2346
    const/4 v3, 0x0

    const-string v5, "flags"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_8

    move-result-object v29

    .line 2347
    if-eqz v29, :cond_9

    .line 2349
    :try_start_3
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v10

    .line 2364
    :goto_1
    const/4 v3, 0x0

    :try_start_4
    const-string v5, "ft"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_8

    move-result-object v33

    .line 2365
    .local v33, timeStampStr:Ljava/lang/String;
    if-eqz v33, :cond_c

    .line 2367
    const/16 v3, 0x10

    :try_start_5
    move-object/from16 v0, v33

    invoke-static {v0, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_4

    move-result-wide v31

    .line 2379
    :cond_1
    :goto_2
    const/4 v3, 0x0

    :try_start_6
    const-string v5, "it"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_8

    move-result-object v33

    .line 2380
    if-eqz v33, :cond_2

    .line 2382
    const/16 v3, 0x10

    :try_start_7
    move-object/from16 v0, v33

    invoke-static {v0, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_6

    move-result-wide v15

    .line 2386
    :cond_2
    :goto_3
    const/4 v3, 0x0

    :try_start_8
    const-string v5, "ut"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_8

    move-result-object v33

    .line 2387
    if-eqz v33, :cond_3

    .line 2389
    const/16 v3, 0x10

    :try_start_9
    move-object/from16 v0, v33

    invoke-static {v0, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_7

    move-result-wide v22

    .line 2396
    :cond_3
    :goto_4
    if-eqz v19, :cond_d

    :try_start_a
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 2397
    .local v8, userId:I
    :goto_5
    if-nez v27, :cond_4

    .line 2398
    move-object/from16 v27, v12

    .line 2400
    :cond_4
    if-eqz v4, :cond_5

    .line 2401
    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    .line 2403
    :cond_5
    if-nez v24, :cond_e

    .line 2404
    const/4 v3, 0x5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in package manager settings: <package> has no name at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_8

    move-object/from16 v2, v26

    .line 2456
    .end local v8           #userId:I
    .end local v26           #packageSetting:Lcom/android/server/pm/PackageSettingBase;
    .end local v33           #timeStampStr:Ljava/lang/String;
    .local v2, packageSetting:Lcom/android/server/pm/PackageSettingBase;
    :goto_6
    if-eqz v2, :cond_20

    .line 2457
    const-string v3, "true"

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, v2, Lcom/android/server/pm/PackageSettingBase;->uidError:Z

    .line 2458
    move-object/from16 v0, v21

    iput-object v0, v2, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    .line 2459
    iput-object v7, v2, Lcom/android/server/pm/PackageSettingBase;->nativeLibraryPathString:Ljava/lang/String;

    .line 2461
    const/4 v3, 0x0

    const-string v5, "enabled"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2462
    .local v14, enabledStr:Ljava/lang/String;
    if-eqz v14, :cond_18

    .line 2464
    :try_start_b
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v5, v6}, Lcom/android/server/pm/PackageSettingBase;->setEnabled(IILjava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_1

    .line 2483
    :goto_7
    const/4 v3, 0x0

    const-string v5, "installStatus"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 2484
    .local v20, installStatusStr:Ljava/lang/String;
    if-eqz v20, :cond_6

    .line 2485
    const-string v3, "false"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 2486
    const/4 v3, 0x0

    iput v3, v2, Lcom/android/server/pm/PackageSettingBase;->installStatus:I

    .line 2492
    :cond_6
    :goto_8
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v25

    .line 2495
    .local v25, outerDepth:I
    :cond_7
    :goto_9
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v34

    .local v34, type:I
    const/4 v3, 0x1

    move/from16 v0, v34

    if-eq v0, v3, :cond_21

    const/4 v3, 0x3

    move/from16 v0, v34

    if-ne v0, v3, :cond_8

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    move/from16 v0, v25

    if-le v3, v0, :cond_21

    .line 2496
    :cond_8
    const/4 v3, 0x3

    move/from16 v0, v34

    if-eq v0, v3, :cond_7

    const/4 v3, 0x4

    move/from16 v0, v34

    if-eq v0, v3, :cond_7

    .line 2500
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v30

    .line 2502
    .local v30, tagName:Ljava/lang/String;
    const-string v3, "disabled-components"

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 2503
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/pm/Settings;->readDisabledComponentsLPw(Lcom/android/server/pm/PackageSettingBase;Lorg/xmlpull/v1/XmlPullParser;I)V

    goto :goto_9

    .line 2354
    .end local v2           #packageSetting:Lcom/android/server/pm/PackageSettingBase;
    .end local v14           #enabledStr:Ljava/lang/String;
    .end local v20           #installStatusStr:Ljava/lang/String;
    .end local v25           #outerDepth:I
    .end local v30           #tagName:Ljava/lang/String;
    .end local v34           #type:I
    .restart local v26       #packageSetting:Lcom/android/server/pm/PackageSettingBase;
    :cond_9
    const/4 v3, 0x0

    :try_start_c
    const-string v5, "system"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 2355
    if-eqz v29, :cond_b

    .line 2356
    const-string v3, "true"

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v3, 0x1

    :goto_a
    or-int/2addr v10, v3

    goto/16 :goto_1

    :cond_a
    const/4 v3, 0x0

    goto :goto_a

    .line 2361
    :cond_b
    or-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 2371
    .restart local v33       #timeStampStr:Ljava/lang/String;
    :cond_c
    const/4 v3, 0x0

    const-string v5, "ts"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_8

    move-result-object v33

    .line 2372
    if-eqz v33, :cond_1

    .line 2374
    :try_start_d
    invoke-static/range {v33 .. v33}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_5

    move-result-wide v31

    goto/16 :goto_2

    .line 2396
    :cond_d
    const/4 v8, 0x0

    goto/16 :goto_5

    .line 2407
    .restart local v8       #userId:I
    :cond_e
    if-nez v12, :cond_f

    .line 2408
    const/4 v3, 0x5

    :try_start_e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in package manager settings: <package> has no codePath at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    move-object/from16 v2, v26

    .end local v26           #packageSetting:Lcom/android/server/pm/PackageSettingBase;
    .restart local v2       #packageSetting:Lcom/android/server/pm/PackageSettingBase;
    goto/16 :goto_6

    .line 2411
    .end local v2           #packageSetting:Lcom/android/server/pm/PackageSettingBase;
    .restart local v26       #packageSetting:Lcom/android/server/pm/PackageSettingBase;
    :cond_f
    if-lez v8, :cond_11

    .line 2412
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    move-object/from16 v0, v27

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/pm/Settings;->addPackageLPw(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;III)Lcom/android/server/pm/PackageSetting;
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_e} :catch_8

    move-result-object v2

    .line 2418
    .end local v26           #packageSetting:Lcom/android/server/pm/PackageSettingBase;
    .restart local v2       #packageSetting:Lcom/android/server/pm/PackageSettingBase;
    if-nez v2, :cond_10

    .line 2419
    const/4 v3, 0x6

    :try_start_f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failure adding uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " while parsing settings at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_f} :catch_0

    goto/16 :goto_6

    .line 2451
    :catch_0
    move-exception v13

    .line 2452
    .end local v8           #userId:I
    .end local v33           #timeStampStr:Ljava/lang/String;
    .local v13, e:Ljava/lang/NumberFormatException;
    :goto_b
    const/4 v3, 0x5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in package manager settings: package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has bad userId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto/16 :goto_6

    .line 2423
    .end local v13           #e:Ljava/lang/NumberFormatException;
    .restart local v8       #userId:I
    .restart local v33       #timeStampStr:Ljava/lang/String;
    :cond_10
    :try_start_10
    move-wide/from16 v0, v31

    invoke-virtual {v2, v0, v1}, Lcom/android/server/pm/PackageSettingBase;->setTimeStamp(J)V

    .line 2424
    iput-wide v15, v2, Lcom/android/server/pm/PackageSettingBase;->firstInstallTime:J

    .line 2425
    move-wide/from16 v0, v22

    iput-wide v0, v2, Lcom/android/server/pm/PackageSettingBase;->lastUpdateTime:J
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_10} :catch_0

    goto/16 :goto_6

    .line 2427
    .end local v2           #packageSetting:Lcom/android/server/pm/PackageSettingBase;
    .restart local v26       #packageSetting:Lcom/android/server/pm/PackageSettingBase;
    :cond_11
    if-eqz v28, :cond_14

    .line 2428
    if-eqz v28, :cond_12

    :try_start_11
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 2429
    :goto_c
    if-lez v8, :cond_13

    .line 2430
    new-instance v2, Lcom/android/server/pm/PendingPackage;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    move-object/from16 v0, v27

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v2 .. v10}, Lcom/android/server/pm/PendingPackage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;III)V
    :try_end_11
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_11} :catch_8

    .line 2433
    .end local v26           #packageSetting:Lcom/android/server/pm/PackageSettingBase;
    .restart local v2       #packageSetting:Lcom/android/server/pm/PackageSettingBase;
    :try_start_12
    move-wide/from16 v0, v31

    invoke-virtual {v2, v0, v1}, Lcom/android/server/pm/PackageSettingBase;->setTimeStamp(J)V

    .line 2434
    iput-wide v15, v2, Lcom/android/server/pm/PackageSettingBase;->firstInstallTime:J

    .line 2435
    move-wide/from16 v0, v22

    iput-wide v0, v2, Lcom/android/server/pm/PackageSettingBase;->lastUpdateTime:J

    .line 2436
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    move-object v0, v2

    check-cast v0, Lcom/android/server/pm/PendingPackage;

    move-object v3, v0

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_12} :catch_0

    goto/16 :goto_6

    .line 2428
    .end local v2           #packageSetting:Lcom/android/server/pm/PackageSettingBase;
    .restart local v26       #packageSetting:Lcom/android/server/pm/PackageSettingBase;
    :cond_12
    const/4 v8, 0x0

    goto :goto_c

    .line 2441
    :cond_13
    const/4 v3, 0x5

    :try_start_13
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in package manager settings: package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has bad sharedId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    move-object/from16 v2, v26

    .end local v26           #packageSetting:Lcom/android/server/pm/PackageSettingBase;
    .restart local v2       #packageSetting:Lcom/android/server/pm/PackageSettingBase;
    goto/16 :goto_6

    .line 2447
    .end local v2           #packageSetting:Lcom/android/server/pm/PackageSettingBase;
    .restart local v26       #packageSetting:Lcom/android/server/pm/PackageSettingBase;
    :cond_14
    const/4 v3, 0x5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in package manager settings: package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has bad userId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_13} :catch_8

    move-object/from16 v2, v26

    .end local v26           #packageSetting:Lcom/android/server/pm/PackageSettingBase;
    .restart local v2       #packageSetting:Lcom/android/server/pm/PackageSettingBase;
    goto/16 :goto_6

    .line 2465
    .end local v8           #userId:I
    .end local v33           #timeStampStr:Ljava/lang/String;
    .restart local v14       #enabledStr:Ljava/lang/String;
    :catch_1
    move-exception v13

    .line 2466
    .restart local v13       #e:Ljava/lang/NumberFormatException;
    const-string v3, "true"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 2467
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v5, v6}, Lcom/android/server/pm/PackageSettingBase;->setEnabled(IILjava/lang/String;)V

    goto/16 :goto_7

    .line 2468
    :cond_15
    const-string v3, "false"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 2469
    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v5, v6}, Lcom/android/server/pm/PackageSettingBase;->setEnabled(IILjava/lang/String;)V

    goto/16 :goto_7

    .line 2470
    :cond_16
    const-string v3, "default"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 2471
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v5, v6}, Lcom/android/server/pm/PackageSettingBase;->setEnabled(IILjava/lang/String;)V

    goto/16 :goto_7

    .line 2473
    :cond_17
    const/4 v3, 0x5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in package manager settings: package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has bad enabled value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto/16 :goto_7

    .line 2480
    .end local v13           #e:Ljava/lang/NumberFormatException;
    :cond_18
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v5, v6}, Lcom/android/server/pm/PackageSettingBase;->setEnabled(IILjava/lang/String;)V

    goto/16 :goto_7

    .line 2488
    .restart local v20       #installStatusStr:Ljava/lang/String;
    :cond_19
    const/4 v3, 0x1

    iput v3, v2, Lcom/android/server/pm/PackageSettingBase;->installStatus:I

    goto/16 :goto_8

    .line 2504
    .restart local v25       #outerDepth:I
    .restart local v30       #tagName:Ljava/lang/String;
    .restart local v34       #type:I
    :cond_1a
    const-string v3, "enabled-components"

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 2505
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/pm/Settings;->readEnabledComponentsLPw(Lcom/android/server/pm/PackageSettingBase;Lorg/xmlpull/v1/XmlPullParser;I)V

    goto/16 :goto_9

    .line 2506
    :cond_1b
    const-string v3, "sigs"

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 2507
    iget-object v3, v2, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v5}, Lcom/android/server/pm/PackageSignatures;->readXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)V

    goto/16 :goto_9

    .line 2508
    :cond_1c
    const-string v3, "perms"

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 2509
    iget-object v3, v2, Lcom/android/server/pm/PackageSettingBase;->grantedPermissions:Ljava/util/HashSet;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/android/server/pm/Settings;->readGrantedPermissionsLPw(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashSet;)V

    .line 2510
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/pm/PackageSettingBase;->permissionsFixed:Z

    goto/16 :goto_9

    .line 2511
    :cond_1d
    const-string v3, "signing-keyset"

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 2512
    const/4 v3, 0x0

    const-string v5, "identifier"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    .line 2513
    .local v17, id:J
    iget-object v3, v2, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    move-wide/from16 v0, v17

    invoke-virtual {v3, v0, v1}, Lcom/android/server/pm/PackageKeySetData;->addSigningKeySet(J)V

    goto/16 :goto_9

    .line 2516
    .end local v17           #id:J
    :cond_1e
    const-string v3, "defined-keyset"

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 2517
    const/4 v3, 0x0

    const-string v5, "identifier"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    .line 2518
    .restart local v17       #id:J
    const/4 v3, 0x0

    const-string v5, "alias"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2519
    .local v11, alias:Ljava/lang/String;
    iget-object v3, v2, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    move-wide/from16 v0, v17

    invoke-virtual {v3, v0, v1, v11}, Lcom/android/server/pm/PackageKeySetData;->addDefinedKeySet(JLjava/lang/String;)V

    goto/16 :goto_9

    .line 2521
    .end local v11           #alias:Ljava/lang/String;
    .end local v17           #id:J
    :cond_1f
    const/4 v3, 0x5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <package>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2523
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_9

    .line 2529
    .end local v14           #enabledStr:Ljava/lang/String;
    .end local v20           #installStatusStr:Ljava/lang/String;
    .end local v25           #outerDepth:I
    .end local v30           #tagName:Ljava/lang/String;
    .end local v34           #type:I
    :cond_20
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2531
    :cond_21
    return-void

    .line 2341
    .end local v2           #packageSetting:Lcom/android/server/pm/PackageSettingBase;
    .restart local v26       #packageSetting:Lcom/android/server/pm/PackageSettingBase;
    :catch_2
    move-exception v3

    goto/16 :goto_0

    .line 2350
    :catch_3
    move-exception v3

    goto/16 :goto_1

    .line 2368
    .restart local v33       #timeStampStr:Ljava/lang/String;
    :catch_4
    move-exception v3

    goto/16 :goto_2

    .line 2375
    :catch_5
    move-exception v3

    goto/16 :goto_2

    .line 2383
    :catch_6
    move-exception v3

    goto/16 :goto_3

    .line 2390
    :catch_7
    move-exception v3

    goto/16 :goto_4

    .line 2451
    .end local v33           #timeStampStr:Ljava/lang/String;
    :catch_8
    move-exception v13

    move-object/from16 v2, v26

    .end local v26           #packageSetting:Lcom/android/server/pm/PackageSettingBase;
    .restart local v2       #packageSetting:Lcom/android/server/pm/PackageSettingBase;
    goto/16 :goto_b
.end method

.method private readPermissionsLPw(Ljava/util/HashMap;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 13
    .parameter
    .parameter "parser"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/BasePermission;",
            ">;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 2175
    .local p1, out:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/pm/BasePermission;>;"
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 2178
    .local v3, outerDepth:I
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    .local v9, type:I
    const/4 v10, 0x1

    if-eq v9, v10, :cond_7

    const/4 v10, 0x3

    if-ne v9, v10, :cond_1

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    if-le v10, v3, :cond_7

    .line 2179
    :cond_1
    const/4 v10, 0x3

    if-eq v9, v10, :cond_0

    const/4 v10, 0x4

    if-eq v9, v10, :cond_0

    .line 2183
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 2184
    .local v7, tagName:Ljava/lang/String;
    const-string v10, "item"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 2185
    const/4 v10, 0x0

    const-string v11, "name"

    invoke-interface {p2, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2186
    .local v2, name:Ljava/lang/String;
    const/4 v10, 0x0

    const-string v11, "package"

    invoke-interface {p2, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2187
    .local v6, sourcePackage:Ljava/lang/String;
    const/4 v10, 0x0

    const-string v11, "type"

    invoke-interface {p2, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2188
    .local v5, ptype:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/pm/Settings;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v10, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/BasePermission;

    .line 2189
    .local v8, tp:Lcom/android/server/pm/BasePermission;
    if-eqz v8, :cond_2

    .line 2190
    const-string v10, "PackageManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Permission "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " became a builtin "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "since configuration was generated, skipping it"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2194
    :cond_2
    if-eqz v2, :cond_5

    if-eqz v6, :cond_5

    .line 2195
    const-string v10, "dynamic"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2196
    .local v1, dynamic:Z
    new-instance v0, Lcom/android/server/pm/BasePermission;

    if-eqz v1, :cond_4

    const/4 v10, 0x2

    :goto_1
    invoke-direct {v0, v2, v6, v10}, Lcom/android/server/pm/BasePermission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2198
    .local v0, bp:Lcom/android/server/pm/BasePermission;
    const/4 v10, 0x0

    const-string v11, "protection"

    const/4 v12, 0x0

    invoke-direct {p0, p2, v10, v11, v12}, Lcom/android/server/pm/Settings;->readInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v10

    iput v10, v0, Lcom/android/server/pm/BasePermission;->protectionLevel:I

    .line 2200
    iget v10, v0, Lcom/android/server/pm/BasePermission;->protectionLevel:I

    invoke-static {v10}, Landroid/content/pm/PermissionInfo;->fixProtectionLevel(I)I

    move-result v10

    iput v10, v0, Lcom/android/server/pm/BasePermission;->protectionLevel:I

    .line 2201
    if-eqz v1, :cond_3

    .line 2202
    new-instance v4, Landroid/content/pm/PermissionInfo;

    invoke-direct {v4}, Landroid/content/pm/PermissionInfo;-><init>()V

    .line 2203
    .local v4, pi:Landroid/content/pm/PermissionInfo;
    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v4, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 2204
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v4, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 2205
    const/4 v10, 0x0

    const-string v11, "icon"

    const/4 v12, 0x0

    invoke-direct {p0, p2, v10, v11, v12}, Lcom/android/server/pm/Settings;->readInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v10

    iput v10, v4, Landroid/content/pm/PermissionInfo;->icon:I

    .line 2206
    const/4 v10, 0x0

    const-string v11, "label"

    invoke-interface {p2, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v4, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 2207
    iget v10, v0, Lcom/android/server/pm/BasePermission;->protectionLevel:I

    iput v10, v4, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 2208
    iput-object v4, v0, Lcom/android/server/pm/BasePermission;->pendingInfo:Landroid/content/pm/PermissionInfo;

    .line 2210
    .end local v4           #pi:Landroid/content/pm/PermissionInfo;
    :cond_3
    iget-object v10, v0, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {p1, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2221
    .end local v0           #bp:Lcom/android/server/pm/BasePermission;
    .end local v1           #dynamic:Z
    .end local v2           #name:Ljava/lang/String;
    .end local v5           #ptype:Ljava/lang/String;
    .end local v6           #sourcePackage:Ljava/lang/String;
    .end local v8           #tp:Lcom/android/server/pm/BasePermission;
    :goto_2
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 2196
    .restart local v1       #dynamic:Z
    .restart local v2       #name:Ljava/lang/String;
    .restart local v5       #ptype:Ljava/lang/String;
    .restart local v6       #sourcePackage:Ljava/lang/String;
    .restart local v8       #tp:Lcom/android/server/pm/BasePermission;
    :cond_4
    const/4 v10, 0x0

    goto :goto_1

    .line 2212
    .end local v1           #dynamic:Z
    :cond_5
    const/4 v10, 0x5

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error in package manager settings: permissions has no name at "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_2

    .line 2217
    .end local v2           #name:Ljava/lang/String;
    .end local v5           #ptype:Ljava/lang/String;
    .end local v6           #sourcePackage:Ljava/lang/String;
    .end local v8           #tp:Lcom/android/server/pm/BasePermission;
    :cond_6
    const/4 v10, 0x5

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown element reading permissions: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " at "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_2

    .line 2223
    .end local v7           #tagName:Ljava/lang/String;
    :cond_7
    return-void
.end method

.method private readPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 8
    .parameter "parser"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x3

    .line 814
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 817
    .local v0, outerDepth:I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, type:I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    if-ne v3, v6, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_4

    .line 818
    :cond_1
    if-eq v3, v6, :cond_0

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    .line 822
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 823
    .local v2, tagName:Ljava/lang/String;
    const-string v4, "item"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 824
    new-instance v1, Lcom/android/server/pm/PreferredActivity;

    invoke-direct {v1, p1}, Lcom/android/server/pm/PreferredActivity;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 825
    .local v1, pa:Lcom/android/server/pm/PreferredActivity;
    iget-object v4, v1, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/PreferredComponent;

    invoke-virtual {v4}, Lcom/android/server/PreferredComponent;->getParseError()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    .line 826
    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings;->editPreferredActivitiesLPw(I)Lcom/android/server/pm/PreferredIntentResolver;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/server/pm/PreferredIntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    goto :goto_0

    .line 828
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in package manager settings: <preferred-activity> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/PreferredComponent;

    invoke-virtual {v5}, Lcom/android/server/PreferredComponent;->getParseError()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_0

    .line 834
    .end local v1           #pa:Lcom/android/server/pm/PreferredActivity;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <preferred-activities>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 836
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 839
    .end local v2           #tagName:Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private readSharedUserLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 14
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x5

    .line 2590
    const/4 v2, 0x0

    .line 2591
    .local v2, name:Ljava/lang/String;
    const/4 v1, 0x0

    .line 2592
    .local v1, idStr:Ljava/lang/String;
    const/4 v4, 0x0

    .line 2593
    .local v4, pkgFlags:I
    const/4 v5, 0x0

    .line 2595
    .local v5, su:Lcom/android/server/pm/SharedUserSetting;
    const/4 v9, 0x0

    :try_start_0
    const-string v10, "name"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2596
    const/4 v9, 0x0

    const-string v10, "userId"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2597
    if-eqz v1, :cond_4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 2598
    .local v8, userId:I
    :goto_0
    const-string v9, "true"

    const/4 v10, 0x0

    const-string v11, "system"

    invoke-interface {p1, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2599
    or-int/lit8 v4, v4, 0x1

    .line 2601
    :cond_0
    if-nez v2, :cond_5

    .line 2602
    const/4 v9, 0x5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error in package manager settings: <shared-user> has no name at "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2624
    .end local v8           #userId:I
    :cond_1
    :goto_1
    if-eqz v5, :cond_9

    .line 2625
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 2628
    .local v3, outerDepth:I
    :cond_2
    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .local v7, type:I
    const/4 v9, 0x1

    if-eq v7, v9, :cond_a

    if-ne v7, v13, :cond_3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v3, :cond_a

    .line 2629
    :cond_3
    if-eq v7, v13, :cond_2

    const/4 v9, 0x4

    if-eq v7, v9, :cond_2

    .line 2633
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 2634
    .local v6, tagName:Ljava/lang/String;
    const-string v9, "sigs"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 2635
    iget-object v9, v5, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v10, p0, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    invoke-virtual {v9, p1, v10}, Lcom/android/server/pm/PackageSignatures;->readXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)V

    goto :goto_2

    .line 2597
    .end local v3           #outerDepth:I
    .end local v6           #tagName:Ljava/lang/String;
    .end local v7           #type:I
    :cond_4
    const/4 v8, 0x0

    goto :goto_0

    .line 2605
    .restart local v8       #userId:I
    :cond_5
    if-nez v8, :cond_6

    .line 2606
    const/4 v9, 0x5

    :try_start_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error in package manager settings: shared-user "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " has bad userId "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " at "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 2617
    .end local v8           #userId:I
    :catch_0
    move-exception v0

    .line 2618
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error in package manager settings: package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " has bad userId "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 2611
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .restart local v8       #userId:I
    :cond_6
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9, v8, v4}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;II)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v5

    if-nez v5, :cond_1

    .line 2612
    const/4 v9, 0x6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Occurred while parsing settings at "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 2636
    .end local v8           #userId:I
    .restart local v3       #outerDepth:I
    .restart local v6       #tagName:Ljava/lang/String;
    .restart local v7       #type:I
    :cond_7
    const-string v9, "perms"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 2637
    iget-object v9, v5, Lcom/android/server/pm/SharedUserSetting;->grantedPermissions:Ljava/util/HashSet;

    invoke-direct {p0, p1, v9}, Lcom/android/server/pm/Settings;->readGrantedPermissionsLPw(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashSet;)V

    goto/16 :goto_2

    .line 2639
    :cond_8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown element under <shared-user>: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2641
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2

    .line 2646
    .end local v3           #outerDepth:I
    .end local v6           #tagName:Ljava/lang/String;
    .end local v7           #type:I
    :cond_9
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2648
    :cond_a
    return-void
.end method

.method private removeUserIdLPw(I)V
    .locals 4
    .parameter "uid"

    .prologue
    .line 753
    const/16 v2, 0x2710

    if-lt p1, v2, :cond_1

    .line 754
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 755
    .local v0, N:I
    add-int/lit16 v1, p1, -0x2710

    .line 756
    .local v1, index:I
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 760
    .end local v0           #N:I
    .end local v1           #index:I
    :cond_0
    :goto_0
    add-int/lit8 v2, p1, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/pm/Settings;->setFirstAvailableUid(I)V

    .line 761
    return-void

    .line 758
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mOtherUserIds:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0
.end method

.method private replacePackageLPw(Ljava/lang/String;Lcom/android/server/pm/PackageSetting;)V
    .locals 2
    .parameter "name"
    .parameter "newp"

    .prologue
    .line 699
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 700
    .local v0, p:Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_0

    .line 701
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v1, :cond_1

    .line 702
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/SharedUserSetting;->removePackage(Lcom/android/server/pm/PackageSetting;)V

    .line 703
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {v1, p2}, Lcom/android/server/pm/SharedUserSetting;->addPackage(Lcom/android/server/pm/PackageSetting;)V

    .line 708
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    return-void

    .line 705
    :cond_1
    iget v1, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-direct {p0, v1, p2}, Lcom/android/server/pm/Settings;->replaceUserIdLPw(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private replaceUserIdLPw(ILjava/lang/Object;)V
    .locals 3
    .parameter "uid"
    .parameter "obj"

    .prologue
    .line 764
    const/16 v2, 0x2710

    if-lt p1, v2, :cond_1

    .line 765
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 766
    .local v0, N:I
    add-int/lit16 v1, p1, -0x2710

    .line 767
    .local v1, index:I
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 771
    .end local v0           #N:I
    .end local v1           #index:I
    :cond_0
    :goto_0
    return-void

    .line 769
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mOtherUserIds:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private setFirstAvailableUid(I)V
    .locals 1
    .parameter "uid"

    .prologue
    .line 2709
    sget v0, Lcom/android/server/pm/Settings;->mFirstAvailableUid:I

    if-le p1, v0, :cond_0

    .line 2710
    sput p1, Lcom/android/server/pm/Settings;->mFirstAvailableUid:I

    .line 2712
    :cond_0
    return-void
.end method


# virtual methods
.method addPackageLPw(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;III)Lcom/android/server/pm/PackageSetting;
    .locals 8
    .parameter "name"
    .parameter "realName"
    .parameter "codePath"
    .parameter "resourcePath"
    .parameter "nativeLibraryPathString"
    .parameter "uid"
    .parameter "vc"
    .parameter "pkgFlags"

    .prologue
    .line 316
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 317
    .local v0, p:Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_1

    .line 318
    iget v1, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    if-ne v1, p6, :cond_0

    move-object v1, v0

    .line 332
    :goto_0
    return-object v1

    .line 321
    :cond_0
    const/4 v1, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding duplicate package, keeping first: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 323
    const/4 v1, 0x0

    goto :goto_0

    .line 325
    :cond_1
    new-instance v0, Lcom/android/server/pm/PackageSetting;

    .end local v0           #p:Lcom/android/server/pm/PackageSetting;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;II)V

    .line 327
    .restart local v0       #p:Lcom/android/server/pm/PackageSetting;
    iput p6, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 328
    invoke-direct {p0, p6, v0, p1}, Lcom/android/server/pm/Settings;->addUserIdLPw(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 329
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 330
    goto :goto_0

    .line 332
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method addPackageToCleanLPw(Landroid/content/pm/PackageCleanItem;)V
    .locals 1
    .parameter "pkg"

    .prologue
    .line 1646
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1647
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1649
    :cond_0
    return-void
.end method

.method addSharedUserLPw(Ljava/lang/String;II)Lcom/android/server/pm/SharedUserSetting;
    .locals 5
    .parameter "name"
    .parameter "uid"
    .parameter "pkgFlags"

    .prologue
    const/4 v1, 0x0

    .line 336
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/SharedUserSetting;

    .line 337
    .local v0, s:Lcom/android/server/pm/SharedUserSetting;
    if-eqz v0, :cond_2

    .line 338
    iget v2, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    if-ne v2, p2, :cond_1

    move-object v1, v0

    .line 351
    :cond_0
    :goto_0
    return-object v1

    .line 341
    :cond_1
    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding duplicate shared user, keeping first: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_0

    .line 345
    :cond_2
    new-instance v0, Lcom/android/server/pm/SharedUserSetting;

    .end local v0           #s:Lcom/android/server/pm/SharedUserSetting;
    invoke-direct {v0, p1, p3}, Lcom/android/server/pm/SharedUserSetting;-><init>(Ljava/lang/String;I)V

    .line 346
    .restart local v0       #s:Lcom/android/server/pm/SharedUserSetting;
    iput p2, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    .line 347
    invoke-direct {p0, p2, v0, p1}, Lcom/android/server/pm/Settings;->addUserIdLPw(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 348
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 349
    goto :goto_0
.end method

.method createNewUserLILPw(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Installer;ILjava/io/File;)V
    .locals 5
    .parameter "service"
    .parameter "installer"
    .parameter "userHandle"
    .parameter "path"

    .prologue
    const/4 v4, -0x1

    .line 2680
    invoke-virtual {p4}, Ljava/io/File;->mkdir()Z

    .line 2681
    invoke-virtual {p4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1f9

    invoke-static {v2, v3, v4, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 2683
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 2685
    .local v1, ps:Lcom/android/server/pm/PackageSetting;
    iget v2, v1, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v1, v2, p3}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 2687
    iget-object v2, v1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    iget v3, v1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {p3, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    iget-object v4, v1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    invoke-virtual {p2, v2, v3, p3, v4}, Lcom/android/server/pm/Installer;->createUserData(Ljava/lang/String;IILjava/lang/String;)I

    goto :goto_0

    .line 2685
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 2691
    .end local v1           #ps:Lcom/android/server/pm/PackageSetting;
    :cond_1
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/Settings;->readDefaultPreferredAppsLPw(Lcom/android/server/pm/PackageManagerService;I)V

    .line 2692
    invoke-virtual {p0, p3}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 2693
    return-void
.end method

.method disableSystemPackageLPw(Ljava/lang/String;)Z
    .locals 7
    .parameter "name"

    .prologue
    const/4 v3, 0x0

    .line 266
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 267
    .local v2, p:Lcom/android/server/pm/PackageSetting;
    if-nez v2, :cond_1

    .line 268
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not an installed package"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_0
    :goto_0
    return v3

    .line 271
    :cond_1
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 273
    .local v0, dp:Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_0

    .line 274
    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_2

    .line 275
    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v4, v4, 0x80

    iput v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 277
    :cond_2
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    new-instance v1, Lcom/android/server/pm/PackageSetting;

    invoke-direct {v1, v2}, Lcom/android/server/pm/PackageSetting;-><init>(Lcom/android/server/pm/PackageSetting;)V

    .line 284
    .local v1, newp:Lcom/android/server/pm/PackageSetting;
    invoke-direct {p0, p1, v1}, Lcom/android/server/pm/Settings;->replacePackageLPw(Ljava/lang/String;Lcom/android/server/pm/PackageSetting;)V

    .line 285
    const/4 v3, 0x1

    goto :goto_0
.end method

.method dumpPackageLPr(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/util/List;)V
    .locals 10
    .parameter "pw"
    .parameter "prefix"
    .parameter "ps"
    .parameter "sdf"
    .parameter "date"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            "Ljava/text/SimpleDateFormat;",
            "Ljava/util/Date;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2903
    .local p6, users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "Package ["

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2904
    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    if-eqz v8, :cond_10

    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2905
    const-string v8, "] ("

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2906
    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2907
    const-string v8, "):"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2909
    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    if-eqz v8, :cond_0

    .line 2910
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  compat name="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2911
    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2914
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  userId="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v8, p3, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 2915
    const-string v8, " gids="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->gids:[I

    invoke-static {v8}, Lcom/android/server/pm/PackageManagerService;->arrayToString([I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2916
    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v8, :cond_1

    .line 2917
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  sharedUser="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2919
    :cond_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  pkg="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2920
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  codePath="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2921
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  resourcePath="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2922
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  nativeLibraryPath="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->nativeLibraryPathString:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2923
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  versionCode="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v8, p3, Lcom/android/server/pm/PackageSetting;->versionCode:I

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 2924
    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v8, :cond_2

    .line 2925
    const-string v8, " targetSdk="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 2927
    :cond_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2928
    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v8, :cond_14

    .line 2929
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  versionName="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2930
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  applicationInfo="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2931
    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8}, Landroid/content/pm/ApplicationInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2932
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  flags="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    sget-object v9, Lcom/android/server/pm/Settings;->FLAG_DUMP_SPEC:[Ljava/lang/Object;

    invoke-static {p1, v8, v9}, Lcom/android/server/pm/Settings;->printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V

    .line 2933
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2934
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  dataDir="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2935
    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-boolean v8, v8, Landroid/content/pm/PackageParser$Package;->mOperationPending:Z

    if-eqz v8, :cond_3

    .line 2936
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  mOperationPending=true"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2938
    :cond_3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  supportsScreens=["

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2939
    const/4 v1, 0x1

    .line 2940
    .local v1, first:Z
    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v8, v8, 0x200

    if-eqz v8, :cond_5

    .line 2941
    if-nez v1, :cond_4

    .line 2942
    const-string v8, ", "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2943
    :cond_4
    const/4 v1, 0x0

    .line 2944
    const-string v8, "small"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2946
    :cond_5
    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v8, v8, 0x400

    if-eqz v8, :cond_7

    .line 2947
    if-nez v1, :cond_6

    .line 2948
    const-string v8, ", "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2949
    :cond_6
    const/4 v1, 0x0

    .line 2950
    const-string v8, "medium"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2952
    :cond_7
    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v8, v8, 0x800

    if-eqz v8, :cond_9

    .line 2953
    if-nez v1, :cond_8

    .line 2954
    const-string v8, ", "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2955
    :cond_8
    const/4 v1, 0x0

    .line 2956
    const-string v8, "large"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2958
    :cond_9
    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v9, 0x8

    and-int/2addr v8, v9

    if-eqz v8, :cond_b

    .line 2959
    if-nez v1, :cond_a

    .line 2960
    const-string v8, ", "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2961
    :cond_a
    const/4 v1, 0x0

    .line 2962
    const-string v8, "xlarge"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2964
    :cond_b
    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v8, v8, 0x1000

    if-eqz v8, :cond_d

    .line 2965
    if-nez v1, :cond_c

    .line 2966
    const-string v8, ", "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2967
    :cond_c
    const/4 v1, 0x0

    .line 2968
    const-string v8, "resizeable"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2970
    :cond_d
    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v8, v8, 0x2000

    if-eqz v8, :cond_f

    .line 2971
    if-nez v1, :cond_e

    .line 2972
    const-string v8, ", "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2973
    :cond_e
    const/4 v1, 0x0

    .line 2974
    const-string v8, "anyDensity"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2976
    :cond_f
    const-string v8, "]"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2977
    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    if-eqz v8, :cond_11

    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_11

    .line 2978
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  libraries:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2979
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_11

    .line 2980
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "    "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2979
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2904
    .end local v1           #first:Z
    .end local v2           #i:I
    :cond_10
    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    goto/16 :goto_0

    .line 2983
    .restart local v1       #first:Z
    :cond_11
    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    if-eqz v8, :cond_12

    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_12

    .line 2984
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  usesLibraries:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2985
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2
    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_12

    .line 2986
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "    "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2985
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2989
    .end local v2           #i:I
    :cond_12
    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    if-eqz v8, :cond_13

    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_13

    .line 2991
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  usesOptionalLibraries:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2992
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3
    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_13

    .line 2993
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "    "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2994
    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2992
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2997
    .end local v2           #i:I
    :cond_13
    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    if-eqz v8, :cond_14

    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    array-length v8, v8

    if-lez v8, :cond_14

    .line 2999
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  usesLibraryFiles:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3000
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4
    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    array-length v8, v8

    if-ge v2, v8, :cond_14

    .line 3001
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "    "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    aget-object v8, v8, v2

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3000
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 3005
    .end local v1           #first:Z
    .end local v2           #i:I
    :cond_14
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  timeStamp="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3006
    iget-wide v8, p3, Lcom/android/server/pm/PackageSetting;->timeStamp:J

    invoke-virtual {p5, v8, v9}, Ljava/util/Date;->setTime(J)V

    .line 3007
    invoke-virtual {p4, p5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3008
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  firstInstallTime="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3009
    iget-wide v8, p3, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J

    invoke-virtual {p5, v8, v9}, Ljava/util/Date;->setTime(J)V

    .line 3010
    invoke-virtual {p4, p5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3011
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  lastUpdateTime="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3012
    iget-wide v8, p3, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    invoke-virtual {p5, v8, v9}, Ljava/util/Date;->setTime(J)V

    .line 3013
    invoke-virtual {p4, p5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3014
    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    if-eqz v8, :cond_15

    .line 3015
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  installerPackageName="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3016
    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3018
    :cond_15
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  signatures="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3019
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  permissionsFixed="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v8, p3, Lcom/android/server/pm/PackageSetting;->permissionsFixed:Z

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Z)V

    .line 3020
    const-string v8, " haveGids="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v8, p3, Lcom/android/server/pm/PackageSetting;->haveGids:Z

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Z)V

    .line 3021
    const-string v8, " installStatus="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v8, p3, Lcom/android/server/pm/PackageSetting;->installStatus:I

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(I)V

    .line 3022
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  pkgFlags="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v8, p3, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    sget-object v9, Lcom/android/server/pm/Settings;->FLAG_DUMP_SPEC:[Ljava/lang/Object;

    invoke-static {p1, v8, v9}, Lcom/android/server/pm/Settings;->printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V

    .line 3023
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3024
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_19

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 3025
    .local v7, user:Landroid/content/pm/UserInfo;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  User "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v8, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(I)V

    const-string v8, ": "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3026
    const-string v8, " installed="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3027
    iget v8, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p3, v8}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Z)V

    .line 3028
    const-string v8, " blocked="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3029
    iget v8, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p3, v8}, Lcom/android/server/pm/PackageSetting;->getBlocked(I)Z

    move-result v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Z)V

    .line 3030
    const-string v8, " stopped="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3031
    iget v8, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p3, v8}, Lcom/android/server/pm/PackageSetting;->getStopped(I)Z

    move-result v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Z)V

    .line 3032
    const-string v8, " notLaunched="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3033
    iget v8, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p3, v8}, Lcom/android/server/pm/PackageSetting;->getNotLaunched(I)Z

    move-result v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Z)V

    .line 3034
    const-string v8, " enabled="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3035
    iget v8, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p3, v8}, Lcom/android/server/pm/PackageSetting;->getEnabled(I)I

    move-result v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(I)V

    .line 3036
    iget v8, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p3, v8}, Lcom/android/server/pm/PackageSetting;->getLastDisabledAppCaller(I)Ljava/lang/String;

    move-result-object v5

    .line 3037
    .local v5, lastDisabledAppCaller:Ljava/lang/String;
    if-eqz v5, :cond_17

    .line 3038
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "    lastDisabledCaller: "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3039
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3041
    :cond_17
    iget v8, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p3, v8}, Lcom/android/server/pm/PackageSetting;->getDisabledComponents(I)Ljava/util/HashSet;

    move-result-object v0

    .line 3042
    .local v0, cmp:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v8

    if-lez v8, :cond_18

    .line 3043
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "    disabledComponents:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3044
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_18

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 3045
    .local v6, s:Ljava/lang/String;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "    "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 3048
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #s:Ljava/lang/String;
    :cond_18
    iget v8, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p3, v8}, Lcom/android/server/pm/PackageSetting;->getEnabledComponents(I)Ljava/util/HashSet;

    move-result-object v0

    .line 3049
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v8

    if-lez v8, :cond_16

    .line 3050
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "    enabledComponents:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3051
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_16

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 3052
    .restart local v6       #s:Ljava/lang/String;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "    "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6

    .line 3056
    .end local v0           #cmp:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #lastDisabledAppCaller:Ljava/lang/String;
    .end local v6           #s:Ljava/lang/String;
    .end local v7           #user:Landroid/content/pm/UserInfo;
    :cond_19
    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->size()I

    move-result v8

    if-lez v8, :cond_1a

    .line 3057
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  grantedPermissions:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3058
    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 3059
    .restart local v6       #s:Ljava/lang/String;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "    "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7

    .line 3062
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v6           #s:Ljava/lang/String;
    :cond_1a
    return-void
.end method

.method dumpPackagesLPr(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/PackageManagerService$DumpState;)V
    .locals 10
    .parameter "pw"
    .parameter "packageName"
    .parameter "dumpState"

    .prologue
    .line 3065
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v4, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3066
    .local v4, sdf:Ljava/text/SimpleDateFormat;
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 3067
    .local v5, date:Ljava/util/Date;
    const/4 v9, 0x0

    .line 3068
    .local v9, printedSomething:Z
    invoke-direct {p0}, Lcom/android/server/pm/Settings;->getAllUsers()Ljava/util/List;

    move-result-object v6

    .line 3069
    .local v6, users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 3070
    .local v3, ps:Lcom/android/server/pm/PackageSetting;
    if-eqz p2, :cond_1

    iget-object v0, v3, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v3, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3075
    :cond_1
    if-eqz p2, :cond_2

    .line 3076
    iget-object v0, v3, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {p3, v0}, Lcom/android/server/pm/PackageManagerService$DumpState;->setSharedUser(Lcom/android/server/pm/SharedUserSetting;)V

    .line 3079
    :cond_2
    if-nez v9, :cond_4

    .line 3080
    invoke-virtual {p3}, Lcom/android/server/pm/PackageManagerService$DumpState;->onTitlePrinted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3081
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3082
    :cond_3
    const-string v0, "Packages:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3083
    const/4 v9, 0x1

    .line 3085
    :cond_4
    const-string v2, "  "

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/Settings;->dumpPackageLPr(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/util/List;)V

    goto :goto_0

    .line 3088
    .end local v3           #ps:Lcom/android/server/pm/PackageSetting;
    :cond_5
    const/4 v9, 0x0

    .line 3089
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 3090
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_6
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 3091
    .local v7, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_7

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3095
    :cond_7
    if-nez v9, :cond_9

    .line 3096
    invoke-virtual {p3}, Lcom/android/server/pm/PackageManagerService$DumpState;->onTitlePrinted()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3097
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3098
    :cond_8
    const-string v0, "Renamed packages:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3099
    const/4 v9, 0x1

    .line 3101
    :cond_9
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3102
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3103
    const-string v0, " -> "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3104
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 3108
    .end local v7           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_a
    const/4 v9, 0x0

    .line 3109
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_f

    .line 3110
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_b
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 3111
    .restart local v3       #ps:Lcom/android/server/pm/PackageSetting;
    if-eqz p2, :cond_c

    iget-object v0, v3, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, v3, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3115
    :cond_c
    if-nez v9, :cond_e

    .line 3116
    invoke-virtual {p3}, Lcom/android/server/pm/PackageManagerService$DumpState;->onTitlePrinted()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3117
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3118
    :cond_d
    const-string v0, "Hidden system packages:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3119
    const/4 v9, 0x1

    .line 3121
    :cond_e
    const-string v2, "  "

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/Settings;->dumpPackageLPr(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/util/List;)V

    goto :goto_2

    .line 3124
    .end local v3           #ps:Lcom/android/server/pm/PackageSetting;
    :cond_f
    return-void
.end method

.method dumpPermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/PackageManagerService$DumpState;)V
    .locals 5
    .parameter "pw"
    .parameter "packageName"
    .parameter "dumpState"

    .prologue
    .line 3127
    const/4 v2, 0x0

    .line 3128
    .local v2, printedSomething:Z
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/BasePermission;

    .line 3129
    .local v1, p:Lcom/android/server/pm/BasePermission;
    if-eqz p2, :cond_1

    iget-object v3, v1, Lcom/android/server/pm/BasePermission;->sourcePackage:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3132
    :cond_1
    if-nez v2, :cond_3

    .line 3133
    invoke-virtual {p3}, Lcom/android/server/pm/PackageManagerService$DumpState;->onTitlePrinted()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3134
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3135
    :cond_2
    const-string v3, "Permissions:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3136
    const/4 v2, 0x1

    .line 3138
    :cond_3
    const-string v3, "  Permission ["

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "] ("

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3139
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3140
    const-string v3, "):"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3141
    const-string v3, "    sourcePackage="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/pm/BasePermission;->sourcePackage:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3142
    const-string v3, "    uid="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v1, Lcom/android/server/pm/BasePermission;->uid:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 3143
    const-string v3, " gids="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/pm/BasePermission;->gids:[I

    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->arrayToString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3144
    const-string v3, " type="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v1, Lcom/android/server/pm/BasePermission;->type:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 3145
    const-string v3, " prot="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3146
    iget v3, v1, Lcom/android/server/pm/BasePermission;->protectionLevel:I

    invoke-static {v3}, Landroid/content/pm/PermissionInfo;->protectionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3147
    iget-object v3, v1, Lcom/android/server/pm/BasePermission;->packageSetting:Lcom/android/server/pm/PackageSettingBase;

    if-eqz v3, :cond_4

    .line 3148
    const-string v3, "    packageSetting="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/pm/BasePermission;->packageSetting:Lcom/android/server/pm/PackageSettingBase;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3150
    :cond_4
    iget-object v3, v1, Lcom/android/server/pm/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    if-eqz v3, :cond_5

    .line 3151
    const-string v3, "    perm="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/pm/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3153
    :cond_5
    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    iget-object v4, v1, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3154
    const-string v3, "    enforced="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3155
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mReadExternalStorageEnforced:Ljava/lang/Boolean;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 3158
    .end local v1           #p:Lcom/android/server/pm/BasePermission;
    :cond_6
    return-void
.end method

.method dumpReadMessagesLPr(Ljava/io/PrintWriter;Lcom/android/server/pm/PackageManagerService$DumpState;)V
    .locals 1
    .parameter "pw"
    .parameter "dumpState"

    .prologue
    .line 3190
    const-string v0, "Settings parse messages:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3191
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3192
    return-void
.end method

.method dumpSharedUsersLPr(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/PackageManagerService$DumpState;)V
    .locals 6
    .parameter "pw"
    .parameter "packageName"
    .parameter "dumpState"

    .prologue
    .line 3161
    const/4 v2, 0x0

    .line 3162
    .local v2, printedSomething:Z
    iget-object v5, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/SharedUserSetting;

    .line 3163
    .local v4, su:Lcom/android/server/pm/SharedUserSetting;
    if-eqz p2, :cond_1

    invoke-virtual {p3}, Lcom/android/server/pm/PackageManagerService$DumpState;->getSharedUser()Lcom/android/server/pm/SharedUserSetting;

    move-result-object v5

    if-ne v4, v5, :cond_0

    .line 3166
    :cond_1
    if-nez v2, :cond_3

    .line 3167
    invoke-virtual {p3}, Lcom/android/server/pm/PackageManagerService$DumpState;->onTitlePrinted()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3168
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3169
    :cond_2
    const-string v5, "Shared users:"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3170
    const/4 v2, 0x1

    .line 3172
    :cond_3
    const-string v5, "  SharedUser ["

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3173
    iget-object v5, v4, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3174
    const-string v5, "] ("

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3175
    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3176
    const-string v5, "):"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3177
    const-string v5, "    userId="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3178
    iget v5, v4, Lcom/android/server/pm/SharedUserSetting;->userId:I

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 3179
    const-string v5, " gids="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3180
    iget-object v5, v4, Lcom/android/server/pm/SharedUserSetting;->gids:[I

    invoke-static {v5}, Lcom/android/server/pm/PackageManagerService;->arrayToString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3181
    const-string v5, "    grantedPermissions:"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3182
    iget-object v5, v4, Lcom/android/server/pm/SharedUserSetting;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3183
    .local v3, s:Ljava/lang/String;
    const-string v5, "      "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3184
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 3187
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #s:Ljava/lang/String;
    .end local v4           #su:Lcom/android/server/pm/SharedUserSetting;
    :cond_4
    return-void
.end method

.method editPreferredActivitiesLPw(I)Lcom/android/server/pm/PreferredIntentResolver;
    .locals 2
    .parameter "userId"

    .prologue
    .line 774
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PreferredIntentResolver;

    .line 775
    .local v0, pir:Lcom/android/server/pm/PreferredIntentResolver;
    if-nez v0, :cond_0

    .line 776
    new-instance v0, Lcom/android/server/pm/PreferredIntentResolver;

    .end local v0           #pir:Lcom/android/server/pm/PreferredIntentResolver;
    invoke-direct {v0}, Lcom/android/server/pm/PreferredIntentResolver;-><init>()V

    .line 777
    .restart local v0       #pir:Lcom/android/server/pm/PreferredIntentResolver;
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 779
    :cond_0
    return-object v0
.end method

.method enableSystemPackageLPw(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .locals 11
    .parameter "name"

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/PackageSetting;

    .line 292
    .local v9, p:Lcom/android/server/pm/PackageSetting;
    if-nez v9, :cond_0

    .line 293
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not disabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const/4 v10, 0x0

    .line 303
    :goto_0
    return-object v10

    .line 297
    :cond_0
    iget-object v0, v9, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v0, :cond_1

    iget-object v0, v9, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_1

    .line 298
    iget-object v0, v9, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, -0x81

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 300
    :cond_1
    iget-object v2, v9, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    iget-object v3, v9, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    iget-object v4, v9, Lcom/android/server/pm/PackageSetting;->resourcePath:Ljava/io/File;

    iget-object v5, v9, Lcom/android/server/pm/PackageSetting;->nativeLibraryPathString:Ljava/lang/String;

    iget v6, v9, Lcom/android/server/pm/PackageSetting;->appId:I

    iget v7, v9, Lcom/android/server/pm/PackageSetting;->versionCode:I

    iget v8, v9, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/pm/Settings;->addPackageLPw(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;III)Lcom/android/server/pm/PackageSetting;

    move-result-object v10

    .line 302
    .local v10, ret:Lcom/android/server/pm/PackageSetting;
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method getApplicationEnabledSettingLPr(Ljava/lang/String;I)I
    .locals 4
    .parameter "packageName"
    .parameter "userId"

    .prologue
    .line 2803
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 2804
    .local v0, pkg:Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_0

    .line 2805
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2807
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->getEnabled(I)I

    move-result v1

    return v1
.end method

.method getComponentEnabledSettingLPr(Landroid/content/ComponentName;I)I
    .locals 6
    .parameter "componentName"
    .parameter "userId"

    .prologue
    .line 2811
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2812
    .local v1, packageName:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 2813
    .local v2, pkg:Lcom/android/server/pm/PackageSetting;
    if-nez v2, :cond_0

    .line 2814
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown component: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2816
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 2817
    .local v0, classNameStr:Ljava/lang/String;
    invoke-virtual {v2, v0, p2}, Lcom/android/server/pm/PackageSetting;->getCurrentEnabledStateLPr(Ljava/lang/String;I)I

    move-result v3

    return v3
.end method

.method public getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .locals 2
    .parameter "name"

    .prologue
    .line 2745
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 2746
    .local v0, ps:Lcom/android/server/pm/PackageSetting;
    return-object v0
.end method

.method getInstallerPackageNameLPr(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "packageName"

    .prologue
    .line 2795
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 2796
    .local v0, pkg:Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_0

    .line 2797
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2799
    :cond_0
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    return-object v1
.end method

.method getListOfIncompleteInstallPackagesLPr()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1632
    new-instance v1, Ljava/util/HashSet;

    iget-object v5, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1633
    .local v1, kList:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1634
    .local v0, its:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1635
    .local v4, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/pm/PackageSetting;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1636
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1637
    .local v2, key:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 1638
    .local v3, ps:Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getInstallStatus()I

    move-result v5

    if-nez v5, :cond_0

    .line 1639
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1642
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #ps:Lcom/android/server/pm/PackageSetting;
    :cond_1
    return-object v4
.end method

.method getPackageLPw(Landroid/content/pm/PackageParser$Package;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;Ljava/io/File;Ljava/io/File;Ljava/lang/String;ILandroid/os/UserHandle;Z)Lcom/android/server/pm/PackageSetting;
    .locals 14
    .parameter "pkg"
    .parameter "origPackage"
    .parameter "realName"
    .parameter "sharedUser"
    .parameter "codePath"
    .parameter "resourcePath"
    .parameter "nativeLibraryPathString"
    .parameter "pkgFlags"
    .parameter "user"
    .parameter "add"

    .prologue
    .line 217
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 218
    .local v1, name:Ljava/lang/String;
    iget v8, p1, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    const/4 v12, 0x1

    move-object v0, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v0 .. v12}, Lcom/android/server/pm/Settings;->getPackageLPw(Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;Ljava/io/File;Ljava/io/File;Ljava/lang/String;IILandroid/os/UserHandle;ZZ)Lcom/android/server/pm/PackageSetting;

    move-result-object v13

    .line 221
    .local v13, p:Lcom/android/server/pm/PackageSetting;
    return-object v13
.end method

.method getSharedUserLPw(Ljava/lang/String;IZ)Lcom/android/server/pm/SharedUserSetting;
    .locals 4
    .parameter "name"
    .parameter "pkgFlags"
    .parameter "create"

    .prologue
    .line 247
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/SharedUserSetting;

    .line 248
    .local v0, s:Lcom/android/server/pm/SharedUserSetting;
    if-nez v0, :cond_1

    .line 249
    if-nez p3, :cond_0

    .line 250
    const/4 v1, 0x0

    .line 262
    :goto_0
    return-object v1

    .line 252
    :cond_0
    new-instance v0, Lcom/android/server/pm/SharedUserSetting;

    .end local v0           #s:Lcom/android/server/pm/SharedUserSetting;
    invoke-direct {v0, p1, p2}, Lcom/android/server/pm/SharedUserSetting;-><init>(Ljava/lang/String;I)V

    .line 253
    .restart local v0       #s:Lcom/android/server/pm/SharedUserSetting;
    invoke-direct {p0, v0}, Lcom/android/server/pm/Settings;->newUserIdLPw(Ljava/lang/Object;)I

    move-result v1

    iput v1, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    .line 254
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New shared user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget v1, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    if-ltz v1, :cond_1

    .line 258
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object v1, v0

    .line 262
    goto :goto_0
.end method

.method public getUserIdLPr(I)Ljava/lang/Object;
    .locals 3
    .parameter "uid"

    .prologue
    .line 743
    const/16 v2, 0x2710

    if-lt p1, v2, :cond_1

    .line 744
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 745
    .local v0, N:I
    add-int/lit16 v1, p1, -0x2710

    .line 746
    .local v1, index:I
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 748
    .end local v0           #N:I
    .end local v1           #index:I
    :goto_0
    return-object v2

    .line 746
    .restart local v0       #N:I
    .restart local v1       #index:I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 748
    .end local v0           #N:I
    .end local v1           #index:I
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mOtherUserIds:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method public getVerifierDeviceIdentityLPw()Landroid/content/pm/VerifierDeviceIdentity;
    .locals 1

    .prologue
    .line 2735
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    if-nez v0, :cond_0

    .line 2736
    invoke-static {}, Landroid/content/pm/VerifierDeviceIdentity;->generate()Landroid/content/pm/VerifierDeviceIdentity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    .line 2738
    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->writeLPr()V

    .line 2741
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    return-object v0
.end method

.method insertPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Landroid/content/pm/PackageParser$Package;)V
    .locals 6
    .parameter "p"
    .parameter "pkg"

    .prologue
    .line 559
    iput-object p2, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    .line 562
    iget-object v3, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 563
    .local v0, codePath:Ljava/lang/String;
    iget-object v3, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v3, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 565
    .local v2, resourcePath:Ljava/lang/String;
    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 566
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Code path for pkg : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " changing from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p1, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    .line 569
    iput-object v0, p1, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    .line 572
    :cond_0
    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 573
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Resource path for pkg : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " changing from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p1, Lcom/android/server/pm/PackageSetting;->resourcePath:Ljava/io/File;

    .line 576
    iput-object v2, p1, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    .line 579
    :cond_1
    iget-object v3, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v3, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 580
    .local v1, nativeLibraryPath:Ljava/lang/String;
    if-eqz v1, :cond_2

    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->nativeLibraryPathString:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 582
    iput-object v1, p1, Lcom/android/server/pm/PackageSetting;->nativeLibraryPathString:Ljava/lang/String;

    .line 585
    :cond_2
    iget v3, p2, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    iget v4, p1, Lcom/android/server/pm/PackageSetting;->versionCode:I

    if-eq v3, v4, :cond_3

    .line 586
    iget v3, p2, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    iput v3, p1, Lcom/android/server/pm/PackageSetting;->versionCode:I

    .line 589
    :cond_3
    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v3, v3, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    if-nez v3, :cond_4

    .line 590
    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    invoke-virtual {v3, v4}, Lcom/android/server/pm/PackageSignatures;->assignSignatures([Landroid/content/pm/Signature;)V

    .line 593
    :cond_4
    iget-object v3, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    iget v4, p1, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    if-eq v3, v4, :cond_5

    .line 594
    iget-object v3, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    iput v3, p1, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    .line 598
    :cond_5
    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v3, :cond_6

    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v3, v3, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v3, v3, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    if-nez v3, :cond_6

    .line 599
    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v3, v3, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    invoke-virtual {v3, v4}, Lcom/android/server/pm/PackageSignatures;->assignSignatures([Landroid/content/pm/Signature;)V

    .line 601
    :cond_6
    iget-object v3, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/pm/Settings;->addPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;)V

    .line 602
    return-void
.end method

.method isDisabledSystemPackageLPr(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isEnabledLPr(Landroid/content/pm/ComponentInfo;II)Z
    .locals 8
    .parameter "componentInfo"
    .parameter "flags"
    .parameter "userId"

    .prologue
    const/4 v7, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2754
    and-int/lit16 v5, p2, 0x200

    if-eqz v5, :cond_1

    .line 2791
    :cond_0
    :goto_0
    return v3

    .line 2757
    :cond_1
    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 2758
    .local v1, pkgName:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 2767
    .local v0, packageSettings:Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_2

    move v3, v4

    .line 2768
    goto :goto_0

    .line 2770
    :cond_2
    invoke-virtual {v0, p3}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v2

    .line 2771
    .local v2, ustate:Landroid/content/pm/PackageUserState;
    const v5, 0x8000

    and-int/2addr v5, p2

    if-eqz v5, :cond_3

    .line 2772
    iget v5, v2, Landroid/content/pm/PackageUserState;->enabled:I

    if-eq v5, v7, :cond_0

    .line 2776
    :cond_3
    iget v5, v2, Landroid/content/pm/PackageUserState;->enabled:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_4

    iget v5, v2, Landroid/content/pm/PackageUserState;->enabled:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_4

    iget v5, v2, Landroid/content/pm/PackageUserState;->enabled:I

    if-eq v5, v7, :cond_4

    iget-object v5, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v5, :cond_5

    iget-object v5, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v5, v5, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v5, :cond_5

    iget v5, v2, Landroid/content/pm/PackageUserState;->enabled:I

    if-nez v5, :cond_5

    :cond_4
    move v3, v4

    .line 2781
    goto :goto_0

    .line 2783
    :cond_5
    iget-object v5, v2, Landroid/content/pm/PackageUserState;->enabledComponents:Ljava/util/HashSet;

    if-eqz v5, :cond_6

    iget-object v5, v2, Landroid/content/pm/PackageUserState;->enabledComponents:Ljava/util/HashSet;

    iget-object v6, p1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2787
    :cond_6
    iget-object v3, v2, Landroid/content/pm/PackageUserState;->disabledComponents:Ljava/util/HashSet;

    if-eqz v3, :cond_7

    iget-object v3, v2, Landroid/content/pm/PackageUserState;->disabledComponents:Ljava/util/HashSet;

    iget-object v5, p1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    move v3, v4

    .line 2789
    goto :goto_0

    .line 2791
    :cond_7
    iget-boolean v3, p1, Landroid/content/pm/ComponentInfo;->enabled:Z

    goto :goto_0
.end method

.method peekPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .locals 1
    .parameter "name"

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    return-object v0
.end method

.method pruneSharedUsersLPw()V
    .locals 7

    .prologue
    .line 355
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 356
    .local v3, removeStage:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 357
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/SharedUserSetting;

    .line 358
    .local v4, sus:Lcom/android/server/pm/SharedUserSetting;
    if-eqz v4, :cond_1

    iget-object v5, v4, Lcom/android/server/pm/SharedUserSetting;->packages:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 359
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 362
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;>;"
    .end local v4           #sus:Lcom/android/server/pm/SharedUserSetting;
    :cond_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 363
    iget-object v5, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 365
    :cond_3
    return-void
.end method

.method readAllUsersPackageRestrictionsLPr()V
    .locals 4

    .prologue
    .line 801
    invoke-direct {p0}, Lcom/android/server/pm/Settings;->getAllUsers()Ljava/util/List;

    move-result-object v2

    .line 802
    .local v2, users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-nez v2, :cond_1

    .line 803
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/server/pm/Settings;->readPackageRestrictionsLPr(I)V

    .line 810
    :cond_0
    return-void

    .line 807
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 808
    .local v1, user:Landroid/content/pm/UserInfo;
    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v3}, Lcom/android/server/pm/Settings;->readPackageRestrictionsLPr(I)V

    goto :goto_0
.end method

.method readDefaultPreferredAppsLPw(Lcom/android/server/pm/PackageManagerService;I)V
    .locals 21
    .parameter "service"
    .parameter "userId"

    .prologue
    .line 1867
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/pm/PackageSetting;

    .line 1868
    .local v14, ps:Lcom/android/server/pm/PackageSetting;
    iget v0, v14, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0x1

    if-eqz v18, :cond_0

    iget-object v0, v14, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    iget-object v0, v14, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 1870
    iget-object v0, v14, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v10, v0, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    .line 1872
    .local v10, intents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v8, v0, :cond_0

    .line 1873
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 1874
    .local v4, aii:Landroid/content/pm/PackageParser$ActivityIntentInfo;
    new-instance v18, Landroid/content/ComponentName;

    iget-object v0, v14, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    iget-object v0, v4, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->className:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-direct/range {v18 .. v20}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move/from16 v3, p2

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V

    .line 1872
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1881
    .end local v4           #aii:Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .end local v8           #i:I
    .end local v10           #intents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    .end local v14           #ps:Lcom/android/server/pm/PackageSetting;
    :cond_1
    new-instance v13, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v18

    const-string v19, "etc/preferred-apps"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v13, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1882
    .local v13, preferredDir:Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-virtual {v13}, Ljava/io/File;->isDirectory()Z

    move-result v18

    if-nez v18, :cond_3

    .line 1937
    .end local v9           #i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    return-void

    .line 1885
    .restart local v9       #i$:Ljava/util/Iterator;
    :cond_3
    invoke-virtual {v13}, Ljava/io/File;->canRead()Z

    move-result v18

    if-nez v18, :cond_4

    .line 1886
    const-string v18, "PackageSettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Directory "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " cannot be read"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1891
    :cond_4
    invoke-virtual {v13}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .local v5, arr$:[Ljava/io/File;
    array-length v11, v5

    .local v11, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_2
    if-ge v9, v11, :cond_2

    aget-object v7, v5, v9

    .line 1892
    .local v7, f:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v18

    const-string v19, ".xml"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_6

    .line 1893
    const-string v18, "PackageSettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Non-xml file "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " in "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " directory, ignoring"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1891
    :cond_5
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1896
    :cond_6
    invoke-virtual {v7}, Ljava/io/File;->canRead()Z

    move-result v18

    if-nez v18, :cond_7

    .line 1897
    const-string v18, "PackageSettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Preferred apps file "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " cannot be read"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1902
    :cond_7
    const/4 v15, 0x0

    .line 1904
    .local v15, str:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v16, Ljava/io/FileInputStream;

    move-object/from16 v0, v16

    invoke-direct {v0, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 1905
    .end local v15           #str:Ljava/io/FileInputStream;
    .local v16, str:Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v12

    .line 1906
    .local v12, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/16 v18, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1910
    :cond_8
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v17

    .local v17, type:I
    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_9

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 1914
    :cond_9
    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_a

    .line 1915
    const-string v18, "PackageSettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Preferred apps file "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " does not have start tag"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    .line 1929
    if-eqz v16, :cond_5

    .line 1931
    :try_start_2
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 1932
    :catch_0
    move-exception v18

    goto/16 :goto_3

    .line 1918
    :cond_a
    :try_start_3
    const-string v18, "preferred-activities"

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_b

    .line 1919
    const-string v18, "PackageSettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Preferred apps file "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " does not start with \'preferred-activities\'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8

    .line 1929
    if-eqz v16, :cond_5

    .line 1931
    :try_start_4
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_3

    .line 1932
    :catch_1
    move-exception v18

    goto/16 :goto_3

    .line 1923
    :cond_b
    :try_start_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v12, v2}, Lcom/android/server/pm/Settings;->readDefaultPreferredActivitiesLPw(Lcom/android/server/pm/PackageManagerService;Lorg/xmlpull/v1/XmlPullParser;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8

    .line 1929
    if-eqz v16, :cond_5

    .line 1931
    :try_start_6
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_3

    .line 1932
    :catch_2
    move-exception v18

    goto/16 :goto_3

    .line 1924
    .end local v12           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v16           #str:Ljava/io/FileInputStream;
    .end local v17           #type:I
    .restart local v15       #str:Ljava/io/FileInputStream;
    :catch_3
    move-exception v6

    .line 1925
    .local v6, e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_4
    :try_start_7
    const-string v18, "PackageSettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Error reading apps file "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1929
    if-eqz v15, :cond_5

    .line 1931
    :try_start_8
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_3

    .line 1932
    :catch_4
    move-exception v18

    goto/16 :goto_3

    .line 1926
    .end local v6           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_5
    move-exception v6

    .line 1927
    .local v6, e:Ljava/io/IOException;
    :goto_5
    :try_start_9
    const-string v18, "PackageSettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Error reading apps file "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1929
    if-eqz v15, :cond_5

    .line 1931
    :try_start_a
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    goto/16 :goto_3

    .line 1932
    :catch_6
    move-exception v18

    goto/16 :goto_3

    .line 1929
    .end local v6           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v18

    :goto_6
    if-eqz v15, :cond_c

    .line 1931
    :try_start_b
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 1933
    :cond_c
    :goto_7
    throw v18

    .line 1932
    :catch_7
    move-exception v19

    goto :goto_7

    .line 1929
    .end local v15           #str:Ljava/io/FileInputStream;
    .restart local v16       #str:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v18

    move-object/from16 v15, v16

    .end local v16           #str:Ljava/io/FileInputStream;
    .restart local v15       #str:Ljava/io/FileInputStream;
    goto :goto_6

    .line 1926
    .end local v15           #str:Ljava/io/FileInputStream;
    .restart local v16       #str:Ljava/io/FileInputStream;
    :catch_8
    move-exception v6

    move-object/from16 v15, v16

    .end local v16           #str:Ljava/io/FileInputStream;
    .restart local v15       #str:Ljava/io/FileInputStream;
    goto :goto_5

    .line 1924
    .end local v15           #str:Ljava/io/FileInputStream;
    .restart local v16       #str:Ljava/io/FileInputStream;
    :catch_9
    move-exception v6

    move-object/from16 v15, v16

    .end local v16           #str:Ljava/io/FileInputStream;
    .restart local v15       #str:Ljava/io/FileInputStream;
    goto :goto_4
.end method

.method readLPw(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;IZ)Z
    .locals 45
    .parameter "service"
    .parameter
    .parameter "sdkVersion"
    .parameter "onlyCore"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;IZ)Z"
        }
    .end annotation

    .prologue
    .line 1653
    .local p2, users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/16 v38, 0x0

    .line 1654
    .local v38, str:Ljava/io/FileInputStream;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1656
    :try_start_0
    new-instance v39, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    move-object/from16 v0, v39

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 1657
    .end local v38           #str:Ljava/io/FileInputStream;
    .local v39, str:Ljava/io/FileInputStream;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v4, "Reading from backup settings file\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1658
    const/4 v3, 0x4

    const-string v4, "Need to read from backup settings file"

    invoke-static {v3, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1660
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1664
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cleaning up settings file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    :cond_0
    move-object/from16 v38, v39

    .line 1673
    .end local v39           #str:Ljava/io/FileInputStream;
    .restart local v38       #str:Ljava/io/FileInputStream;
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1674
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1677
    if-nez v38, :cond_3

    .line 1678
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1679
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v4, "No settings file found\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1680
    const/4 v3, 0x4

    const-string v4, "No settings file; creating initial state"

    invoke-static {v3, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1682
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/pm/Settings;->mExternalSdkPlatform:I

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/pm/Settings;->mInternalSdkPlatform:I

    .line 1683
    const/4 v3, 0x0

    .line 1862
    :goto_1
    return v3

    .line 1685
    :cond_2
    new-instance v39, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    move-object/from16 v0, v39

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .end local v38           #str:Ljava/io/FileInputStream;
    .restart local v39       #str:Ljava/io/FileInputStream;
    move-object/from16 v38, v39

    .line 1687
    .end local v39           #str:Ljava/io/FileInputStream;
    .restart local v38       #str:Ljava/io/FileInputStream;
    :cond_3
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v36

    .line 1688
    .local v36, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v3, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-interface {v0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1692
    :cond_4
    invoke-interface/range {v36 .. v36}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v41

    .local v41, type:I
    const/4 v3, 0x2

    move/from16 v0, v41

    if-eq v0, v3, :cond_5

    const/4 v3, 0x1

    move/from16 v0, v41

    if-ne v0, v3, :cond_4

    .line 1696
    :cond_5
    const/4 v3, 0x2

    move/from16 v0, v41

    if-eq v0, v3, :cond_6

    .line 1697
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v4, "No start tag found in settings file\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1698
    const/4 v3, 0x5

    const-string v4, "No start tag found in package manager settings"

    invoke-static {v3, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1700
    const-string v3, "PackageManager"

    const-string v4, "No start tag found in package manager settings"

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1702
    const/4 v3, 0x0

    goto :goto_1

    .line 1705
    :cond_6
    invoke-interface/range {v36 .. v36}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v34

    .line 1707
    .local v34, outerDepth:I
    :cond_7
    :goto_2
    invoke-interface/range {v36 .. v36}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v41

    const/4 v3, 0x1

    move/from16 v0, v41

    if-eq v0, v3, :cond_18

    const/4 v3, 0x3

    move/from16 v0, v41

    if-ne v0, v3, :cond_8

    invoke-interface/range {v36 .. v36}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    move/from16 v0, v34

    if-le v3, v0, :cond_18

    .line 1708
    :cond_8
    const/4 v3, 0x3

    move/from16 v0, v41

    if-eq v0, v3, :cond_7

    const/4 v3, 0x4

    move/from16 v0, v41

    if-eq v0, v3, :cond_7

    .line 1712
    invoke-interface/range {v36 .. v36}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v40

    .line 1713
    .local v40, tagName:Ljava/lang/String;
    const-string v3, "package"

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1714
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/android/server/pm/Settings;->readPackageLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 1788
    .end local v34           #outerDepth:I
    .end local v36           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v40           #tagName:Ljava/lang/String;
    .end local v41           #type:I
    :catch_0
    move-exception v22

    .line 1789
    .local v22, e:Lorg/xmlpull/v1/XmlPullParserException;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error reading: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1790
    const/4 v3, 0x6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error reading settings: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1791
    const-string v3, "PackageManager"

    const-string v4, "Error reading package manager settings"

    move-object/from16 v0, v22

    invoke-static {v3, v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1799
    .end local v22           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 1800
    .local v16, N:I
    const/16 v25, 0x0

    .local v25, i:I
    :goto_4
    move/from16 v0, v25

    move/from16 v1, v16

    if-ge v0, v1, :cond_1c

    .line 1801
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/android/server/pm/PendingPackage;

    .line 1802
    .local v37, pp:Lcom/android/server/pm/PendingPackage;
    move-object/from16 v0, v37

    iget v3, v0, Lcom/android/server/pm/PendingPackage;->sharedId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->getUserIdLPr(I)Ljava/lang/Object;

    move-result-object v28

    .line 1803
    .local v28, idObj:Ljava/lang/Object;
    if-eqz v28, :cond_1a

    move-object/from16 v0, v28

    instance-of v3, v0, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v3, :cond_1a

    .line 1804
    move-object/from16 v0, v37

    iget-object v4, v0, Lcom/android/server/pm/PendingPackage;->name:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, v37

    iget-object v6, v0, Lcom/android/server/pm/PendingPackage;->realName:Ljava/lang/String;

    move-object/from16 v7, v28

    check-cast v7, Lcom/android/server/pm/SharedUserSetting;

    move-object/from16 v0, v37

    iget-object v8, v0, Lcom/android/server/pm/PendingPackage;->codePath:Ljava/io/File;

    move-object/from16 v0, v37

    iget-object v9, v0, Lcom/android/server/pm/PendingPackage;->resourcePath:Ljava/io/File;

    move-object/from16 v0, v37

    iget-object v10, v0, Lcom/android/server/pm/PendingPackage;->nativeLibraryPathString:Ljava/lang/String;

    move-object/from16 v0, v37

    iget v11, v0, Lcom/android/server/pm/PendingPackage;->versionCode:I

    move-object/from16 v0, v37

    iget v12, v0, Lcom/android/server/pm/PendingPackage;->pkgFlags:I

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v15}, Lcom/android/server/pm/Settings;->getPackageLPw(Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;Ljava/io/File;Ljava/io/File;Ljava/lang/String;IILandroid/os/UserHandle;ZZ)Lcom/android/server/pm/PackageSetting;

    move-result-object v35

    .line 1808
    .local v35, p:Lcom/android/server/pm/PackageSetting;
    if-nez v35, :cond_19

    .line 1809
    const/4 v3, 0x5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to create application package for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    iget-object v5, v0, Lcom/android/server/pm/PendingPackage;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1800
    .end local v35           #p:Lcom/android/server/pm/PackageSetting;
    :goto_5
    add-int/lit8 v25, v25, 0x1

    goto :goto_4

    .line 1715
    .end local v16           #N:I
    .end local v25           #i:I
    .end local v28           #idObj:Ljava/lang/Object;
    .end local v37           #pp:Lcom/android/server/pm/PendingPackage;
    .restart local v34       #outerDepth:I
    .restart local v36       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v40       #tagName:Ljava/lang/String;
    .restart local v41       #type:I
    :cond_9
    :try_start_3
    const-string v3, "permissions"

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1716
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mPermissions:Ljava/util/HashMap;

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v3, v1}, Lcom/android/server/pm/Settings;->readPermissionsLPw(Ljava/util/HashMap;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2

    .line 1793
    .end local v34           #outerDepth:I
    .end local v36           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v40           #tagName:Ljava/lang/String;
    .end local v41           #type:I
    :catch_1
    move-exception v22

    .line 1794
    .local v22, e:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error reading: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1795
    const/4 v3, 0x6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error reading settings: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1796
    const-string v3, "PackageManager"

    const-string v4, "Error reading package manager settings"

    move-object/from16 v0, v22

    invoke-static {v3, v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 1717
    .end local v22           #e:Ljava/io/IOException;
    .restart local v34       #outerDepth:I
    .restart local v36       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v40       #tagName:Ljava/lang/String;
    .restart local v41       #type:I
    :cond_a
    :try_start_4
    const-string v3, "permission-trees"

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1718
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mPermissionTrees:Ljava/util/HashMap;

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v3, v1}, Lcom/android/server/pm/Settings;->readPermissionsLPw(Ljava/util/HashMap;Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2

    .line 1719
    :cond_b
    const-string v3, "shared-user"

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1720
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/android/server/pm/Settings;->readSharedUserLPw(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2

    .line 1721
    :cond_c
    const-string v3, "preferred-packages"

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1723
    const-string v3, "preferred-activities"

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1726
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1, v3}, Lcom/android/server/pm/Settings;->readPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto/16 :goto_2

    .line 1727
    :cond_d
    const-string v3, "updated-package"

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1728
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/android/server/pm/Settings;->readDisabledSysPackageLPw(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2

    .line 1729
    :cond_e
    const-string v3, "cleaning-package"

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1730
    const/4 v3, 0x0

    const-string v4, "name"

    move-object/from16 v0, v36

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 1731
    .local v31, name:Ljava/lang/String;
    const/4 v3, 0x0

    const-string v4, "user"

    move-object/from16 v0, v36

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 1732
    .local v44, userStr:Ljava/lang/String;
    const/4 v3, 0x0

    const-string v4, "code"

    move-object/from16 v0, v36

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v18

    .line 1733
    .local v18, codeStr:Ljava/lang/String;
    if-eqz v31, :cond_7

    .line 1734
    const/16 v43, 0x0

    .line 1735
    .local v43, userId:I
    const/16 v17, 0x1

    .line 1737
    .local v17, andCode:Z
    if-eqz v44, :cond_f

    .line 1738
    :try_start_5
    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-result v43

    .line 1742
    :cond_f
    :goto_6
    if-eqz v18, :cond_10

    .line 1743
    :try_start_6
    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v17

    .line 1745
    :cond_10
    new-instance v3, Landroid/content/pm/PackageCleanItem;

    move/from16 v0, v43

    move-object/from16 v1, v31

    move/from16 v2, v17

    invoke-direct {v3, v0, v1, v2}, Landroid/content/pm/PackageCleanItem;-><init>(ILjava/lang/String;Z)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->addPackageToCleanLPw(Landroid/content/pm/PackageCleanItem;)V

    goto/16 :goto_2

    .line 1747
    .end local v17           #andCode:Z
    .end local v18           #codeStr:Ljava/lang/String;
    .end local v31           #name:Ljava/lang/String;
    .end local v43           #userId:I
    .end local v44           #userStr:Ljava/lang/String;
    :cond_11
    const-string v3, "renamed-package"

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1748
    const/4 v3, 0x0

    const-string v4, "new"

    move-object/from16 v0, v36

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 1749
    .local v32, nname:Ljava/lang/String;
    const/4 v3, 0x0

    const-string v4, "old"

    move-object/from16 v0, v36

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 1750
    .local v33, oname:Ljava/lang/String;
    if-eqz v32, :cond_7

    if-eqz v33, :cond_7

    .line 1751
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mRenamedPackages:Ljava/util/HashMap;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1753
    .end local v32           #nname:Ljava/lang/String;
    .end local v33           #oname:Ljava/lang/String;
    :cond_12
    const-string v3, "last-platform-version"

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1754
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/pm/Settings;->mExternalSdkPlatform:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/pm/Settings;->mInternalSdkPlatform:I
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 1756
    const/4 v3, 0x0

    :try_start_7
    const-string v4, "internal"

    move-object/from16 v0, v36

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 1757
    .local v29, internal:Ljava/lang/String;
    if-eqz v29, :cond_13

    .line 1758
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/pm/Settings;->mInternalSdkPlatform:I

    .line 1760
    :cond_13
    const/4 v3, 0x0

    const-string v4, "external"

    move-object/from16 v0, v36

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1761
    .local v24, external:Ljava/lang/String;
    if-eqz v24, :cond_7

    .line 1762
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/pm/Settings;->mExternalSdkPlatform:I
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_2

    .line 1764
    .end local v24           #external:Ljava/lang/String;
    .end local v29           #internal:Ljava/lang/String;
    :catch_2
    move-exception v3

    goto/16 :goto_2

    .line 1766
    :cond_14
    :try_start_8
    const-string v3, "verifier"

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1767
    const/4 v3, 0x0

    const-string v4, "device"

    move-object/from16 v0, v36

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    move-result-object v19

    .line 1769
    .local v19, deviceIdentity:Ljava/lang/String;
    :try_start_9
    invoke-static/range {v19 .. v19}, Landroid/content/pm/VerifierDeviceIdentity;->parse(Ljava/lang/String;)Landroid/content/pm/VerifierDeviceIdentity;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_2

    .line 1770
    :catch_3
    move-exception v22

    .line 1771
    .local v22, e:Ljava/lang/IllegalArgumentException;
    :try_start_a
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Discard invalid verifier device id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1774
    .end local v19           #deviceIdentity:Ljava/lang/String;
    .end local v22           #e:Ljava/lang/IllegalArgumentException;
    :cond_15
    const-string v3, "read-external-storage"

    move-object/from16 v0, v40

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1775
    const/4 v3, 0x0

    const-string v4, "enforcement"

    move-object/from16 v0, v36

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1776
    .local v23, enforcement:Ljava/lang/String;
    const-string v3, "1"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/pm/Settings;->mReadExternalStorageEnforced:Ljava/lang/Boolean;

    goto/16 :goto_2

    .line 1777
    .end local v23           #enforcement:Ljava/lang/String;
    :cond_16
    const-string v3, "keyset-settings"

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 1778
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mKeySetManager:Lcom/android/server/pm/KeySetManager;

    move-object/from16 v0, v36

    invoke-virtual {v3, v0}, Lcom/android/server/pm/KeySetManager;->readKeySetsLPw(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2

    .line 1780
    :cond_17
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <packages>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v36 .. v36}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1782
    invoke-static/range {v36 .. v36}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2

    .line 1786
    .end local v40           #tagName:Ljava/lang/String;
    :cond_18
    invoke-virtual/range {v38 .. v38}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_3

    .line 1813
    .end local v34           #outerDepth:I
    .end local v36           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v41           #type:I
    .restart local v16       #N:I
    .restart local v25       #i:I
    .restart local v28       #idObj:Ljava/lang/Object;
    .restart local v35       #p:Lcom/android/server/pm/PackageSetting;
    .restart local v37       #pp:Lcom/android/server/pm/PendingPackage;
    :cond_19
    move-object/from16 v0, v35

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageSetting;->copyFrom(Lcom/android/server/pm/PackageSettingBase;)V

    goto/16 :goto_5

    .line 1814
    .end local v35           #p:Lcom/android/server/pm/PackageSetting;
    :cond_1a
    if-eqz v28, :cond_1b

    .line 1815
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad package setting: package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v37

    iget-object v4, v0, Lcom/android/server/pm/PendingPackage;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has shared uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v37

    iget v4, v0, Lcom/android/server/pm/PendingPackage;->sharedId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " that is not a shared uid\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 1817
    .local v30, msg:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1818
    const/4 v3, 0x6

    move-object/from16 v0, v30

    invoke-static {v3, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto/16 :goto_5

    .line 1820
    .end local v30           #msg:Ljava/lang/String;
    :cond_1b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad package setting: package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v37

    iget-object v4, v0, Lcom/android/server/pm/PendingPackage;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has shared uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v37

    iget v4, v0, Lcom/android/server/pm/PendingPackage;->sharedId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " that is not defined\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 1822
    .restart local v30       #msg:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1823
    const/4 v3, 0x6

    move-object/from16 v0, v30

    invoke-static {v3, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto/16 :goto_5

    .line 1826
    .end local v28           #idObj:Ljava/lang/Object;
    .end local v30           #msg:Ljava/lang/String;
    .end local v37           #pp:Lcom/android/server/pm/PendingPackage;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1828
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 1831
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->readStoppedLPw()V

    .line 1832
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1833
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1835
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 1850
    :cond_1e
    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .line 1851
    .local v20, disabledIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/pm/PackageSetting;>;"
    :cond_1f
    :goto_8
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 1852
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/pm/PackageSetting;

    .line 1853
    .local v21, disabledPs:Lcom/android/server/pm/PackageSetting;
    move-object/from16 v0, v21

    iget v3, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->getUserIdLPr(I)Ljava/lang/Object;

    move-result-object v27

    .line 1854
    .local v27, id:Ljava/lang/Object;
    if-eqz v27, :cond_1f

    move-object/from16 v0, v27

    instance-of v3, v0, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v3, :cond_1f

    .line 1855
    check-cast v27, Lcom/android/server/pm/SharedUserSetting;

    .end local v27           #id:Ljava/lang/Object;
    move-object/from16 v0, v27

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    goto :goto_8

    .line 1837
    .end local v20           #disabledIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/pm/PackageSetting;>;"
    .end local v21           #disabledPs:Lcom/android/server/pm/PackageSetting;
    :cond_20
    if-nez p2, :cond_21

    .line 1838
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->readPackageRestrictionsLPr(I)V

    goto :goto_7

    .line 1840
    :cond_21
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v26

    .local v26, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Landroid/content/pm/UserInfo;

    .line 1841
    .local v42, user:Landroid/content/pm/UserInfo;
    move-object/from16 v0, v42

    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->readPackageRestrictionsLPr(I)V

    goto :goto_9

    .line 1859
    .end local v26           #i$:Ljava/util/Iterator;
    .end local v42           #user:Landroid/content/pm/UserInfo;
    .restart local v20       #disabledIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/pm/PackageSetting;>;"
    :cond_22
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Read completed successfully: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " packages, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/Settings;->mSharedUsers:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " shared uids\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1862
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 1740
    .end local v16           #N:I
    .end local v20           #disabledIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/pm/PackageSetting;>;"
    .end local v25           #i:I
    .restart local v17       #andCode:Z
    .restart local v18       #codeStr:Ljava/lang/String;
    .restart local v31       #name:Ljava/lang/String;
    .restart local v34       #outerDepth:I
    .restart local v36       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v40       #tagName:Ljava/lang/String;
    .restart local v41       #type:I
    .restart local v43       #userId:I
    .restart local v44       #userStr:Ljava/lang/String;
    :catch_4
    move-exception v3

    goto/16 :goto_6

    .line 1668
    .end local v17           #andCode:Z
    .end local v18           #codeStr:Ljava/lang/String;
    .end local v31           #name:Ljava/lang/String;
    .end local v34           #outerDepth:I
    .end local v36           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v40           #tagName:Ljava/lang/String;
    .end local v41           #type:I
    .end local v43           #userId:I
    .end local v44           #userStr:Ljava/lang/String;
    :catch_5
    move-exception v3

    goto/16 :goto_0

    .end local v38           #str:Ljava/io/FileInputStream;
    .restart local v39       #str:Ljava/io/FileInputStream;
    :catch_6
    move-exception v3

    move-object/from16 v38, v39

    .end local v39           #str:Ljava/io/FileInputStream;
    .restart local v38       #str:Ljava/io/FileInputStream;
    goto/16 :goto_0
.end method

.method readPackageRestrictionsLPr(I)V
    .locals 33
    .parameter "userId"

    .prologue
    .line 845
    const/16 v26, 0x0

    .line 846
    .local v26, str:Ljava/io/FileInputStream;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateFile(I)Ljava/io/File;

    move-result-object v30

    .line 847
    .local v30, userPackagesStateFile:Ljava/io/File;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateBackupFile(I)Ljava/io/File;

    move-result-object v14

    .line 848
    .local v14, backupFile:Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_16

    .line 850
    :try_start_0
    new-instance v27, Ljava/io/FileInputStream;

    move-object/from16 v0, v27

    invoke-direct {v0, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 851
    .end local v26           #str:Ljava/io/FileInputStream;
    .local v27, str:Ljava/io/FileInputStream;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v31, "Reading from backup stopped packages file\n"

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 852
    const/4 v5, 0x4

    const-string v31, "Need to read from backup stopped packages file"

    move-object/from16 v0, v31

    invoke-static {v5, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 854
    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 858
    const-string v5, "PackageManager"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Cleaning up stopped packages file "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 868
    :cond_0
    :goto_0
    if-nez v27, :cond_15

    .line 869
    :try_start_2
    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 870
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v31, "No stopped packages file found\n"

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 871
    const/4 v5, 0x4

    const-string v31, "No stopped packages file; assuming all started"

    move-object/from16 v0, v31

    invoke-static {v5, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 878
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 879
    .local v3, pkg:Lcom/android/server/pm/PackageSetting;
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move/from16 v4, p1

    invoke-virtual/range {v3 .. v12}, Lcom/android/server/pm/PackageSetting;->setUserState(IIZZZZLjava/lang/String;Ljava/util/HashSet;Ljava/util/HashSet;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_1

    .line 976
    .end local v3           #pkg:Lcom/android/server/pm/PackageSetting;
    .end local v18           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v16

    move-object/from16 v26, v27

    .line 977
    .end local v27           #str:Ljava/io/FileInputStream;
    .local v16, e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v26       #str:Ljava/io/FileInputStream;
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Error reading: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 978
    const/4 v5, 0x6

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Error reading stopped packages: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-static {v5, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 980
    const-string v5, "PackageManager"

    const-string v31, "Error reading package manager stopped packages"

    move-object/from16 v0, v31

    move-object/from16 v1, v16

    invoke-static {v5, v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 987
    .end local v16           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_3
    return-void

    .line 862
    :catch_1
    move-exception v5

    :goto_4
    move-object/from16 v27, v26

    .end local v26           #str:Ljava/io/FileInputStream;
    .restart local v27       #str:Ljava/io/FileInputStream;
    goto/16 :goto_0

    .restart local v18       #i$:Ljava/util/Iterator;
    :cond_1
    move-object/from16 v26, v27

    .line 886
    .end local v27           #str:Ljava/io/FileInputStream;
    .restart local v26       #str:Ljava/io/FileInputStream;
    goto :goto_3

    .line 888
    .end local v18           #i$:Ljava/util/Iterator;
    .end local v26           #str:Ljava/io/FileInputStream;
    .restart local v27       #str:Ljava/io/FileInputStream;
    :cond_2
    :try_start_3
    new-instance v26, Ljava/io/FileInputStream;

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 890
    .end local v27           #str:Ljava/io/FileInputStream;
    .restart local v26       #str:Ljava/io/FileInputStream;
    :goto_5
    :try_start_4
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v24

    .line 891
    .local v24, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v5, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-interface {v0, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 895
    :cond_3
    invoke-interface/range {v24 .. v24}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v29

    .local v29, type:I
    const/4 v5, 0x2

    move/from16 v0, v29

    if-eq v0, v5, :cond_4

    const/4 v5, 0x1

    move/from16 v0, v29

    if-ne v0, v5, :cond_3

    .line 899
    :cond_4
    const/4 v5, 0x2

    move/from16 v0, v29

    if-eq v0, v5, :cond_5

    .line 900
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v31, "No start tag found in package restrictions file\n"

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 901
    const/4 v5, 0x5

    const-string v31, "No start tag found in package manager stopped packages"

    move-object/from16 v0, v31

    invoke-static {v5, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_3

    .line 976
    .end local v24           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v29           #type:I
    :catch_2
    move-exception v16

    goto/16 :goto_2

    .line 906
    .restart local v24       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v29       #type:I
    :cond_5
    invoke-interface/range {v24 .. v24}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v22

    .line 907
    .local v22, outerDepth:I
    const/4 v4, 0x0

    .line 909
    .local v4, ps:Lcom/android/server/pm/PackageSetting;
    :cond_6
    :goto_6
    invoke-interface/range {v24 .. v24}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v29

    const/4 v5, 0x1

    move/from16 v0, v29

    if-eq v0, v5, :cond_14

    const/4 v5, 0x3

    move/from16 v0, v29

    if-ne v0, v5, :cond_7

    invoke-interface/range {v24 .. v24}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    move/from16 v0, v22

    if-le v5, v0, :cond_14

    .line 911
    :cond_7
    const/4 v5, 0x3

    move/from16 v0, v29

    if-eq v0, v5, :cond_6

    const/4 v5, 0x4

    move/from16 v0, v29

    if-eq v0, v5, :cond_6

    .line 916
    invoke-interface/range {v24 .. v24}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v28

    .line 917
    .local v28, tagName:Ljava/lang/String;
    const-string v5, "pkg"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 918
    const/4 v5, 0x0

    const-string v31, "name"

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-interface {v0, v5, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 919
    .local v20, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #ps:Lcom/android/server/pm/PackageSetting;
    check-cast v4, Lcom/android/server/pm/PackageSetting;

    .line 920
    .restart local v4       #ps:Lcom/android/server/pm/PackageSetting;
    if-nez v4, :cond_8

    .line 921
    const-string v5, "PackageManager"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "No package known for stopped package: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    invoke-static/range {v24 .. v24}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_6

    .line 982
    .end local v4           #ps:Lcom/android/server/pm/PackageSetting;
    .end local v20           #name:Ljava/lang/String;
    .end local v22           #outerDepth:I
    .end local v24           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v28           #tagName:Ljava/lang/String;
    .end local v29           #type:I
    :catch_3
    move-exception v16

    .line 983
    .local v16, e:Ljava/io/IOException;
    :goto_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Error reading: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 984
    const/4 v5, 0x6

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Error reading settings: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-static {v5, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 985
    const-string v5, "PackageManager"

    const-string v31, "Error reading package manager stopped packages"

    move-object/from16 v0, v31

    move-object/from16 v1, v16

    invoke-static {v5, v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 926
    .end local v16           #e:Ljava/io/IOException;
    .restart local v4       #ps:Lcom/android/server/pm/PackageSetting;
    .restart local v20       #name:Ljava/lang/String;
    .restart local v22       #outerDepth:I
    .restart local v24       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v28       #tagName:Ljava/lang/String;
    .restart local v29       #type:I
    :cond_8
    const/4 v5, 0x0

    :try_start_5
    const-string v31, "enabled"

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-interface {v0, v5, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 927
    .local v17, enabledStr:Ljava/lang/String;
    if-nez v17, :cond_b

    const/4 v6, 0x0

    .line 929
    .local v6, enabled:I
    :goto_8
    const/4 v5, 0x0

    const-string v31, "enabledCaller"

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-interface {v0, v5, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 931
    .local v11, enabledCaller:Ljava/lang/String;
    const/4 v5, 0x0

    const-string v31, "inst"

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-interface {v0, v5, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 932
    .local v19, installedStr:Ljava/lang/String;
    if-nez v19, :cond_c

    const/4 v7, 0x1

    .line 934
    .local v7, installed:Z
    :goto_9
    const/4 v5, 0x0

    const-string v31, "stopped"

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-interface {v0, v5, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 935
    .local v25, stoppedStr:Ljava/lang/String;
    if-nez v25, :cond_d

    const/4 v8, 0x0

    .line 937
    .local v8, stopped:Z
    :goto_a
    const/4 v5, 0x0

    const-string v31, "blocked"

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-interface {v0, v5, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 938
    .local v15, blockedStr:Ljava/lang/String;
    if-nez v15, :cond_e

    const/4 v10, 0x0

    .line 940
    .local v10, blocked:Z
    :goto_b
    const/4 v5, 0x0

    const-string v31, "nl"

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-interface {v0, v5, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 941
    .local v21, notLaunchedStr:Ljava/lang/String;
    if-nez v25, :cond_f

    const/4 v9, 0x0

    .line 944
    .local v9, notLaunched:Z
    :goto_c
    const/4 v12, 0x0

    .line 945
    .local v12, enabledComponents:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v13, 0x0

    .line 947
    .local v13, disabledComponents:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface/range {v24 .. v24}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v23

    .line 949
    .local v23, packageDepth:I
    :cond_9
    :goto_d
    invoke-interface/range {v24 .. v24}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v29

    const/4 v5, 0x1

    move/from16 v0, v29

    if-eq v0, v5, :cond_11

    const/4 v5, 0x3

    move/from16 v0, v29

    if-ne v0, v5, :cond_a

    invoke-interface/range {v24 .. v24}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    move/from16 v0, v23

    if-le v5, v0, :cond_11

    .line 951
    :cond_a
    const/4 v5, 0x3

    move/from16 v0, v29

    if-eq v0, v5, :cond_9

    const/4 v5, 0x4

    move/from16 v0, v29

    if-eq v0, v5, :cond_9

    .line 955
    invoke-interface/range {v24 .. v24}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v28

    .line 956
    const-string v5, "enabled-components"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 957
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/pm/Settings;->readComponentsLPr(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/HashSet;

    move-result-object v12

    goto :goto_d

    .line 927
    .end local v6           #enabled:I
    .end local v7           #installed:Z
    .end local v8           #stopped:Z
    .end local v9           #notLaunched:Z
    .end local v10           #blocked:Z
    .end local v11           #enabledCaller:Ljava/lang/String;
    .end local v12           #enabledComponents:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v13           #disabledComponents:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v15           #blockedStr:Ljava/lang/String;
    .end local v19           #installedStr:Ljava/lang/String;
    .end local v21           #notLaunchedStr:Ljava/lang/String;
    .end local v23           #packageDepth:I
    .end local v25           #stoppedStr:Ljava/lang/String;
    :cond_b
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto/16 :goto_8

    .line 932
    .restart local v6       #enabled:I
    .restart local v11       #enabledCaller:Ljava/lang/String;
    .restart local v19       #installedStr:Ljava/lang/String;
    :cond_c
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    goto :goto_9

    .line 935
    .restart local v7       #installed:Z
    .restart local v25       #stoppedStr:Ljava/lang/String;
    :cond_d
    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    goto :goto_a

    .line 938
    .restart local v8       #stopped:Z
    .restart local v15       #blockedStr:Ljava/lang/String;
    :cond_e
    invoke-static {v15}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    goto :goto_b

    .line 941
    .restart local v10       #blocked:Z
    .restart local v21       #notLaunchedStr:Ljava/lang/String;
    :cond_f
    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    goto :goto_c

    .line 958
    .restart local v9       #notLaunched:Z
    .restart local v12       #enabledComponents:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v13       #disabledComponents:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v23       #packageDepth:I
    :cond_10
    const-string v5, "disabled-components"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 959
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/pm/Settings;->readComponentsLPr(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/HashSet;

    move-result-object v13

    goto :goto_d

    :cond_11
    move/from16 v5, p1

    .line 963
    invoke-virtual/range {v4 .. v13}, Lcom/android/server/pm/PackageSetting;->setUserState(IIZZZZLjava/lang/String;Ljava/util/HashSet;Ljava/util/HashSet;)V

    goto/16 :goto_6

    .line 965
    .end local v6           #enabled:I
    .end local v7           #installed:Z
    .end local v8           #stopped:Z
    .end local v9           #notLaunched:Z
    .end local v10           #blocked:Z
    .end local v11           #enabledCaller:Ljava/lang/String;
    .end local v12           #enabledComponents:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v13           #disabledComponents:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v15           #blockedStr:Ljava/lang/String;
    .end local v17           #enabledStr:Ljava/lang/String;
    .end local v19           #installedStr:Ljava/lang/String;
    .end local v20           #name:Ljava/lang/String;
    .end local v21           #notLaunchedStr:Ljava/lang/String;
    .end local v23           #packageDepth:I
    .end local v25           #stoppedStr:Ljava/lang/String;
    :cond_12
    const-string v5, "preferred-activities"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 966
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/Settings;->readPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto/16 :goto_6

    .line 968
    :cond_13
    const-string v5, "PackageManager"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Unknown element under <stopped-packages>: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-interface/range {v24 .. v24}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    invoke-static/range {v24 .. v24}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_6

    .line 974
    .end local v28           #tagName:Ljava/lang/String;
    :cond_14
    invoke-virtual/range {v26 .. v26}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_3

    .line 982
    .end local v4           #ps:Lcom/android/server/pm/PackageSetting;
    .end local v22           #outerDepth:I
    .end local v24           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v26           #str:Ljava/io/FileInputStream;
    .end local v29           #type:I
    .restart local v27       #str:Ljava/io/FileInputStream;
    :catch_4
    move-exception v16

    move-object/from16 v26, v27

    .end local v27           #str:Ljava/io/FileInputStream;
    .restart local v26       #str:Ljava/io/FileInputStream;
    goto/16 :goto_7

    .line 862
    .end local v26           #str:Ljava/io/FileInputStream;
    .restart local v27       #str:Ljava/io/FileInputStream;
    :catch_5
    move-exception v5

    move-object/from16 v26, v27

    .end local v27           #str:Ljava/io/FileInputStream;
    .restart local v26       #str:Ljava/io/FileInputStream;
    goto/16 :goto_4

    .end local v26           #str:Ljava/io/FileInputStream;
    .restart local v27       #str:Ljava/io/FileInputStream;
    :cond_15
    move-object/from16 v26, v27

    .end local v27           #str:Ljava/io/FileInputStream;
    .restart local v26       #str:Ljava/io/FileInputStream;
    goto/16 :goto_5

    :cond_16
    move-object/from16 v27, v26

    .end local v26           #str:Ljava/io/FileInputStream;
    .restart local v27       #str:Ljava/io/FileInputStream;
    goto/16 :goto_0
.end method

.method readStoppedLPw()V
    .locals 14

    .prologue
    .line 1162
    const/4 v7, 0x0

    .line 1163
    .local v7, str:Ljava/io/FileInputStream;
    iget-object v11, p0, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_d

    .line 1165
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    iget-object v11, p0, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    invoke-direct {v8, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1166
    .end local v7           #str:Ljava/io/FileInputStream;
    .local v8, str:Ljava/io/FileInputStream;
    :try_start_1
    iget-object v11, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v12, "Reading from backup stopped packages file\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1167
    const/4 v11, 0x4

    const-string v12, "Need to read from backup stopped packages file"

    invoke-static {v11, v12}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1169
    iget-object v11, p0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1173
    const-string v11, "PackageManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Cleaning up stopped packages file "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    iget-object v11, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 1183
    :cond_0
    :goto_0
    if-nez v8, :cond_c

    .line 1184
    :try_start_2
    iget-object v11, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_2

    .line 1185
    iget-object v11, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v12, "No stopped packages file found\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1186
    const/4 v11, 0x4

    const-string v12, "No stopped packages file file; assuming all started"

    invoke-static {v11, v12}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1191
    iget-object v11, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 1192
    .local v5, pkg:Lcom/android/server/pm/PackageSetting;
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v5, v11, v12}, Lcom/android/server/pm/PackageSetting;->setStopped(ZI)V

    .line 1193
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v5, v11, v12}, Lcom/android/server/pm/PackageSetting;->setNotLaunched(ZI)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_1

    .line 1247
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v5           #pkg:Lcom/android/server/pm/PackageSetting;
    :catch_0
    move-exception v0

    move-object v7, v8

    .line 1248
    .end local v8           #str:Ljava/io/FileInputStream;
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v7       #str:Ljava/io/FileInputStream;
    :goto_2
    iget-object v11, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error reading: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1249
    const/4 v11, 0x6

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error reading stopped packages: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1251
    const-string v11, "PackageManager"

    const-string v12, "Error reading package manager stopped packages"

    invoke-static {v11, v12, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1259
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_3
    return-void

    .line 1177
    :catch_1
    move-exception v11

    :goto_4
    move-object v8, v7

    .end local v7           #str:Ljava/io/FileInputStream;
    .restart local v8       #str:Ljava/io/FileInputStream;
    goto :goto_0

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    move-object v7, v8

    .line 1195
    .end local v8           #str:Ljava/io/FileInputStream;
    .restart local v7       #str:Ljava/io/FileInputStream;
    goto :goto_3

    .line 1197
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v7           #str:Ljava/io/FileInputStream;
    .restart local v8       #str:Ljava/io/FileInputStream;
    :cond_2
    :try_start_3
    new-instance v7, Ljava/io/FileInputStream;

    iget-object v11, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-direct {v7, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 1199
    .end local v8           #str:Ljava/io/FileInputStream;
    .restart local v7       #str:Ljava/io/FileInputStream;
    :goto_5
    :try_start_4
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 1200
    .local v4, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v11, 0x0

    invoke-interface {v4, v7, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1204
    :cond_3
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    .local v10, type:I
    const/4 v11, 0x2

    if-eq v10, v11, :cond_4

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    .line 1208
    :cond_4
    const/4 v11, 0x2

    if-eq v10, v11, :cond_5

    .line 1209
    iget-object v11, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v12, "No start tag found in stopped packages file\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1210
    const/4 v11, 0x5

    const-string v12, "No start tag found in package manager stopped packages"

    invoke-static {v11, v12}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_3

    .line 1247
    .end local v4           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v10           #type:I
    :catch_2
    move-exception v0

    goto :goto_2

    .line 1215
    .restart local v4       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10       #type:I
    :cond_5
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 1217
    .local v3, outerDepth:I
    :cond_6
    :goto_6
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_b

    const/4 v11, 0x3

    if-ne v10, v11, :cond_7

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v11

    if-le v11, v3, :cond_b

    .line 1219
    :cond_7
    const/4 v11, 0x3

    if-eq v10, v11, :cond_6

    const/4 v11, 0x4

    if-eq v10, v11, :cond_6

    .line 1224
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 1225
    .local v9, tagName:Ljava/lang/String;
    const-string v11, "pkg"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 1226
    const/4 v11, 0x0

    const-string v12, "name"

    invoke-interface {v4, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1227
    .local v2, name:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v11, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PackageSetting;

    .line 1228
    .local v6, ps:Lcom/android/server/pm/PackageSetting;
    if-eqz v6, :cond_9

    .line 1229
    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {v6, v11, v12}, Lcom/android/server/pm/PackageSetting;->setStopped(ZI)V

    .line 1230
    const-string v11, "1"

    const/4 v12, 0x0

    const-string v13, "nl"

    invoke-interface {v4, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 1231
    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {v6, v11, v12}, Lcom/android/server/pm/PackageSetting;->setNotLaunched(ZI)V

    .line 1237
    :cond_8
    :goto_7
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_6

    .line 1253
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #outerDepth:I
    .end local v4           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v6           #ps:Lcom/android/server/pm/PackageSetting;
    .end local v9           #tagName:Ljava/lang/String;
    .end local v10           #type:I
    :catch_3
    move-exception v0

    .line 1254
    .local v0, e:Ljava/io/IOException;
    :goto_8
    iget-object v11, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error reading: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1255
    const/4 v11, 0x6

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error reading settings: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1256
    const-string v11, "PackageManager"

    const-string v12, "Error reading package manager stopped packages"

    invoke-static {v11, v12, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 1234
    .end local v0           #e:Ljava/io/IOException;
    .restart local v2       #name:Ljava/lang/String;
    .restart local v3       #outerDepth:I
    .restart local v4       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6       #ps:Lcom/android/server/pm/PackageSetting;
    .restart local v9       #tagName:Ljava/lang/String;
    .restart local v10       #type:I
    :cond_9
    :try_start_5
    const-string v11, "PackageManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "No package known for stopped package: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1239
    .end local v2           #name:Ljava/lang/String;
    .end local v6           #ps:Lcom/android/server/pm/PackageSetting;
    :cond_a
    const-string v11, "PackageManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown element under <stopped-packages>: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_6

    .line 1245
    .end local v9           #tagName:Ljava/lang/String;
    :cond_b
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_3

    .line 1253
    .end local v3           #outerDepth:I
    .end local v4           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v7           #str:Ljava/io/FileInputStream;
    .end local v10           #type:I
    .restart local v8       #str:Ljava/io/FileInputStream;
    :catch_4
    move-exception v0

    move-object v7, v8

    .end local v8           #str:Ljava/io/FileInputStream;
    .restart local v7       #str:Ljava/io/FileInputStream;
    goto :goto_8

    .line 1177
    .end local v7           #str:Ljava/io/FileInputStream;
    .restart local v8       #str:Ljava/io/FileInputStream;
    :catch_5
    move-exception v11

    move-object v7, v8

    .end local v8           #str:Ljava/io/FileInputStream;
    .restart local v7       #str:Ljava/io/FileInputStream;
    goto/16 :goto_4

    .end local v7           #str:Ljava/io/FileInputStream;
    .restart local v8       #str:Ljava/io/FileInputStream;
    :cond_c
    move-object v7, v8

    .end local v8           #str:Ljava/io/FileInputStream;
    .restart local v7       #str:Ljava/io/FileInputStream;
    goto/16 :goto_5

    :cond_d
    move-object v8, v7

    .end local v7           #str:Ljava/io/FileInputStream;
    .restart local v8       #str:Ljava/io/FileInputStream;
    goto/16 :goto_0
.end method

.method removeDisabledSystemPackageLPw(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    return-void
.end method

.method removePackageLPw(Ljava/lang/String;)I
    .locals 3
    .parameter "name"

    .prologue
    .line 680
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 681
    .local v0, p:Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_1

    .line 682
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v1, :cond_0

    .line 684
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/SharedUserSetting;->removePackage(Lcom/android/server/pm/PackageSetting;)V

    .line 685
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v1, v1, Lcom/android/server/pm/SharedUserSetting;->packages:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 686
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v2, v2, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget v1, v1, Lcom/android/server/pm/SharedUserSetting;->userId:I

    invoke-direct {p0, v1}, Lcom/android/server/pm/Settings;->removeUserIdLPw(I)V

    .line 688
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget v1, v1, Lcom/android/server/pm/SharedUserSetting;->userId:I

    .line 695
    :goto_0
    return v1

    .line 691
    :cond_0
    iget v1, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-direct {p0, v1}, Lcom/android/server/pm/Settings;->removeUserIdLPw(I)V

    .line 692
    iget v1, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    goto :goto_0

    .line 695
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method removeUserLPr(I)V
    .locals 5
    .parameter "userId"

    .prologue
    .line 2696
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 2697
    .local v0, entries:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2698
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v4, p1}, Lcom/android/server/pm/PackageSetting;->removeUser(I)V

    goto :goto_0

    .line 2700
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    :cond_0
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 2701
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateFile(I)Ljava/io/File;

    move-result-object v2

    .line 2702
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 2703
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateBackupFile(I)Ljava/io/File;

    move-result-object v2

    .line 2704
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 2705
    return-void
.end method

.method setInstallStatus(Ljava/lang/String;I)V
    .locals 2
    .parameter "pkgName"
    .parameter "status"

    .prologue
    .line 229
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 230
    .local v0, p:Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getInstallStatus()I

    move-result v1

    if-eq v1, p2, :cond_0

    .line 232
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->setInstallStatus(I)V

    .line 235
    :cond_0
    return-void
.end method

.method setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "pkgName"
    .parameter "installerPkgName"

    .prologue
    .line 239
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 240
    .local v0, p:Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->setInstallerPackageName(Ljava/lang/String;)V

    .line 243
    :cond_0
    return-void
.end method

.method setPackageStoppedStateLPw(Ljava/lang/String;ZZII)Z
    .locals 10
    .parameter "packageName"
    .parameter "stopped"
    .parameter "allowedByPermission"
    .parameter "uid"
    .parameter "userId"

    .prologue
    .line 2822
    invoke-static {p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    .line 2823
    .local v7, appId:I
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/PackageSetting;

    .line 2824
    .local v8, pkgSetting:Lcom/android/server/pm/PackageSetting;
    if-nez v8, :cond_0

    .line 2825
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2827
    :cond_0
    if-nez p3, :cond_1

    iget v0, v8, Lcom/android/server/pm/PackageSetting;->appId:I

    if-eq v7, v0, :cond_1

    .line 2828
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: attempt to change stopped state from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", package uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v8, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2840
    :cond_1
    invoke-virtual {v8, p5}, Lcom/android/server/pm/PackageSetting;->getStopped(I)Z

    move-result v0

    if-eq v0, p2, :cond_4

    .line 2841
    invoke-virtual {v8, p2, p5}, Lcom/android/server/pm/PackageSetting;->setStopped(ZI)V

    .line 2843
    invoke-virtual {v8, p5}, Lcom/android/server/pm/PackageSetting;->getNotLaunched(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2844
    iget-object v0, v8, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2845
    const-string v0, "android.intent.action.PACKAGE_FIRST_LAUNCH"

    iget-object v1, v8, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, v8, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [I

    const/4 v9, 0x0

    aput p5, v6, v9

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;[I)V

    .line 2849
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {v8, v0, p5}, Lcom/android/server/pm/PackageSetting;->setNotLaunched(ZI)V

    .line 2851
    :cond_3
    const/4 v0, 0x1

    .line 2853
    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method transferPermissionsLPw(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "origPkg"
    .parameter "newPkg"

    .prologue
    const/4 v5, 0x0

    .line 370
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v4, 0x2

    if-ge v1, v4, :cond_4

    .line 371
    if-nez v1, :cond_2

    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPermissionTrees:Ljava/util/HashMap;

    .line 373
    .local v3, permissions:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/pm/BasePermission;>;"
    :goto_1
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/BasePermission;

    .line 374
    .local v0, bp:Lcom/android/server/pm/BasePermission;
    iget-object v4, v0, Lcom/android/server/pm/BasePermission;->sourcePackage:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 379
    iput-object p2, v0, Lcom/android/server/pm/BasePermission;->sourcePackage:Ljava/lang/String;

    .line 380
    iput-object v5, v0, Lcom/android/server/pm/BasePermission;->packageSetting:Lcom/android/server/pm/PackageSettingBase;

    .line 381
    iput-object v5, v0, Lcom/android/server/pm/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    .line 382
    iget-object v4, v0, Lcom/android/server/pm/BasePermission;->pendingInfo:Landroid/content/pm/PermissionInfo;

    if-eqz v4, :cond_1

    .line 383
    iget-object v4, v0, Lcom/android/server/pm/BasePermission;->pendingInfo:Landroid/content/pm/PermissionInfo;

    iput-object p2, v4, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 385
    :cond_1
    const/4 v4, 0x0

    iput v4, v0, Lcom/android/server/pm/BasePermission;->uid:I

    .line 386
    iput-object v5, v0, Lcom/android/server/pm/BasePermission;->gids:[I

    goto :goto_2

    .line 371
    .end local v0           #bp:Lcom/android/server/pm/BasePermission;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #permissions:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/pm/BasePermission;>;"
    :cond_2
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPermissions:Ljava/util/HashMap;

    goto :goto_1

    .line 370
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #permissions:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/pm/BasePermission;>;"
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 390
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #permissions:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/pm/BasePermission;>;"
    :cond_4
    return-void
.end method

.method updateSharedUserPermsLPw(Lcom/android/server/pm/PackageSetting;[I)V
    .locals 10
    .parameter "deletedPs"
    .parameter "globalGids"

    .prologue
    .line 639
    if-eqz p1, :cond_0

    iget-object v8, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-nez v8, :cond_2

    .line 640
    :cond_0
    const-string v8, "PackageManager"

    const-string v9, "Trying to update info for null package. Just ignoring"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    :cond_1
    :goto_0
    return-void

    .line 645
    :cond_2
    iget-object v8, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v8, :cond_1

    .line 648
    iget-object v6, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    .line 650
    .local v6, sus:Lcom/android/server/pm/SharedUserSetting;
    iget-object v8, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 651
    .local v1, eachPerm:Ljava/lang/String;
    const/4 v7, 0x0

    .line 652
    .local v7, used:Z
    iget-object v8, v6, Lcom/android/server/pm/SharedUserSetting;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v8, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 655
    iget-object v8, v6, Lcom/android/server/pm/SharedUserSetting;->packages:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 656
    .local v5, pkg:Lcom/android/server/pm/PackageSetting;
    iget-object v8, v5, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v8, :cond_4

    iget-object v8, v5, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v9, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v9, v9, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    iget-object v8, v5, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 659
    const/4 v7, 0x1

    .line 663
    .end local v5           #pkg:Lcom/android/server/pm/PackageSetting;
    :cond_5
    if-nez v7, :cond_3

    .line 665
    iget-object v8, v6, Lcom/android/server/pm/SharedUserSetting;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v8, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 669
    .end local v1           #eachPerm:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v7           #used:Z
    :cond_6
    move-object v4, p2

    .line 670
    .local v4, newGids:[I
    iget-object v8, v6, Lcom/android/server/pm/SharedUserSetting;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_7
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 671
    .restart local v1       #eachPerm:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/pm/Settings;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v8, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/BasePermission;

    .line 672
    .local v0, bp:Lcom/android/server/pm/BasePermission;
    if-eqz v0, :cond_7

    .line 673
    iget-object v8, v0, Lcom/android/server/pm/BasePermission;->gids:[I

    invoke-static {v4, v8}, Lcom/android/server/pm/PackageManagerService;->appendInts([I[I)[I

    move-result-object v4

    goto :goto_2

    .line 676
    .end local v0           #bp:Lcom/android/server/pm/BasePermission;
    .end local v1           #eachPerm:Ljava/lang/String;
    :cond_8
    iput-object v4, v6, Lcom/android/server/pm/SharedUserSetting;->gids:[I

    goto/16 :goto_0
.end method

.method writeAllUsersPackageRestrictionsLPr()V
    .locals 4

    .prologue
    .line 792
    invoke-direct {p0}, Lcom/android/server/pm/Settings;->getAllUsers()Ljava/util/List;

    move-result-object v2

    .line 793
    .local v2, users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-nez v2, :cond_1

    .line 798
    :cond_0
    return-void

    .line 795
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 796
    .local v1, user:Landroid/content/pm/UserInfo;
    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v3}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    goto :goto_0
.end method

.method writeDisabledSysPackageLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageSetting;)V
    .locals 7
    .parameter "serializer"
    .parameter "pkg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1484
    const-string v3, "updated-package"

    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1485
    const-string v3, "name"

    iget-object v4, p2, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-interface {p1, v6, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1486
    iget-object v3, p2, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1487
    const-string v3, "realName"

    iget-object v4, p2, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    invoke-interface {p1, v6, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1489
    :cond_0
    const-string v3, "codePath"

    iget-object v4, p2, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    invoke-interface {p1, v6, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1490
    const-string v3, "ft"

    iget-wide v4, p2, Lcom/android/server/pm/PackageSetting;->timeStamp:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v6, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1491
    const-string v3, "it"

    iget-wide v4, p2, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v6, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1492
    const-string v3, "ut"

    iget-wide v4, p2, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v6, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1493
    const-string v3, "version"

    iget v4, p2, Lcom/android/server/pm/PackageSetting;->versionCode:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v6, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1494
    iget-object v3, p2, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    iget-object v4, p2, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1495
    const-string v3, "resourcePath"

    iget-object v4, p2, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    invoke-interface {p1, v6, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1497
    :cond_1
    iget-object v3, p2, Lcom/android/server/pm/PackageSetting;->nativeLibraryPathString:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 1498
    const-string v3, "nativeLibraryPath"

    iget-object v4, p2, Lcom/android/server/pm/PackageSetting;->nativeLibraryPathString:Ljava/lang/String;

    invoke-interface {p1, v6, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1500
    :cond_2
    iget-object v3, p2, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v3, :cond_4

    .line 1501
    const-string v3, "userId"

    iget v4, p2, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v6, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1505
    :goto_0
    const-string v3, "perms"

    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1506
    iget-object v3, p2, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v3, :cond_5

    .line 1511
    iget-object v3, p2, Lcom/android/server/pm/PackageSetting;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1512
    .local v2, name:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/BasePermission;

    .line 1513
    .local v0, bp:Lcom/android/server/pm/BasePermission;
    if-eqz v0, :cond_3

    .line 1518
    const-string v3, "item"

    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1519
    const-string v3, "name"

    invoke-interface {p1, v6, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1520
    const-string v3, "item"

    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    .line 1503
    .end local v0           #bp:Lcom/android/server/pm/BasePermission;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #name:Ljava/lang/String;
    :cond_4
    const-string v3, "sharedUserId"

    iget v4, p2, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v6, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 1524
    :cond_5
    const-string v3, "perms"

    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1525
    const-string v3, "updated-package"

    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1526
    return-void
.end method

.method writeKeySetAliasesLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V
    .locals 7
    .parameter "serializer"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1595
    invoke-virtual {p2}, Lcom/android/server/pm/PackageKeySetData;->getAliases()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1596
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    const-string v2, "defined-keyset"

    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1597
    const-string v3, "alias"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v6, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1598
    const-string v3, "identifier"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v6, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1599
    const-string v2, "defined-keyset"

    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 1601
    .end local v0           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_0
    return-void
.end method

.method writeLPr()V
    .locals 30

    .prologue
    .line 1266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->exists()Z

    move-result v26

    if-eqz v26, :cond_2

    .line 1271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->exists()Z

    move-result v26

    if-nez v26, :cond_1

    .line 1272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v26

    if-nez v26, :cond_2

    .line 1273
    const-string v26, "PackageManager"

    const-string v27, "Unable to backup package manager settings,  current changes will be lost at reboot"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    :cond_0
    :goto_0
    return-void

    .line 1278
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->delete()Z

    .line 1279
    const-string v26, "PackageManager"

    const-string v27, "Preserving older settings backup"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->clear()V

    .line 1286
    :try_start_0
    new-instance v9, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-direct {v9, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1287
    .local v9, fstr:Ljava/io/FileOutputStream;
    new-instance v21, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, v21

    invoke-direct {v0, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1290
    .local v21, str:Ljava/io/BufferedOutputStream;
    new-instance v20, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct/range {v20 .. v20}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1291
    .local v20, serializer:Lorg/xmlpull/v1/XmlSerializer;
    const-string v26, "utf-8"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1292
    const/16 v26, 0x0

    const/16 v27, 0x1

    invoke-static/range {v27 .. v27}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v27

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1293
    const-string v26, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/16 v27, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 1295
    const/16 v26, 0x0

    const-string v27, "packages"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1297
    const/16 v26, 0x0

    const-string v27, "last-platform-version"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1298
    const/16 v26, 0x0

    const-string v27, "internal"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/pm/Settings;->mInternalSdkPlatform:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1299
    const/16 v26, 0x0

    const-string v27, "external"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/pm/Settings;->mExternalSdkPlatform:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1300
    const/16 v26, 0x0

    const-string v27, "last-platform-version"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    move-object/from16 v26, v0

    if-eqz v26, :cond_3

    .line 1303
    const/16 v26, 0x0

    const-string v27, "verifier"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1304
    const/16 v26, 0x0

    const-string v27, "device"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/pm/VerifierDeviceIdentity;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1305
    const/16 v26, 0x0

    const-string v27, "verifier"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1308
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mReadExternalStorageEnforced:Ljava/lang/Boolean;

    move-object/from16 v26, v0

    if-eqz v26, :cond_4

    .line 1309
    const/16 v26, 0x0

    const-string v27, "read-external-storage"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1310
    const/16 v27, 0x0

    const-string v28, "enforcement"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mReadExternalStorageEnforced:Ljava/lang/Boolean;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v26

    if-eqz v26, :cond_5

    const-string v26, "1"

    :goto_1
    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v26

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1312
    const/16 v26, 0x0

    const-string v27, "read-external-storage"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1315
    :cond_4
    const/16 v26, 0x0

    const-string v27, "permission-trees"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPermissionTrees:Ljava/util/HashMap;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/BasePermission;

    .line 1317
    .local v5, bp:Lcom/android/server/pm/BasePermission;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v5}, Lcom/android/server/pm/Settings;->writePermissionLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/BasePermission;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 1465
    .end local v5           #bp:Lcom/android/server/pm/BasePermission;
    .end local v9           #fstr:Ljava/io/FileOutputStream;
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v20           #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .end local v21           #str:Ljava/io/BufferedOutputStream;
    :catch_0
    move-exception v7

    .line 1466
    .local v7, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v26, "PackageManager"

    const-string v27, "Unable to write package manager settings, current changes will be lost at reboot"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1473
    .end local v7           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->exists()Z

    move-result v26

    if-eqz v26, :cond_0

    .line 1474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->delete()Z

    move-result v26

    if-nez v26, :cond_0

    .line 1475
    const-string v26, "PackageManager"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Failed to clean up mangled file: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1310
    .restart local v9       #fstr:Ljava/io/FileOutputStream;
    .restart local v20       #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .restart local v21       #str:Ljava/io/BufferedOutputStream;
    :cond_5
    :try_start_1
    const-string v26, "0"

    goto/16 :goto_1

    .line 1319
    .restart local v12       #i$:Ljava/util/Iterator;
    :cond_6
    const/16 v26, 0x0

    const-string v27, "permission-trees"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1321
    const/16 v26, 0x0

    const-string v27, "permissions"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPermissions:Ljava/util/HashMap;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/BasePermission;

    .line 1323
    .restart local v5       #bp:Lcom/android/server/pm/BasePermission;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v5}, Lcom/android/server/pm/Settings;->writePermissionLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/BasePermission;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 1468
    .end local v5           #bp:Lcom/android/server/pm/BasePermission;
    .end local v9           #fstr:Ljava/io/FileOutputStream;
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v20           #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .end local v21           #str:Ljava/io/BufferedOutputStream;
    :catch_1
    move-exception v7

    .line 1469
    .local v7, e:Ljava/io/IOException;
    const-string v26, "PackageManager"

    const-string v27, "Unable to write package manager settings, current changes will be lost at reboot"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 1325
    .end local v7           #e:Ljava/io/IOException;
    .restart local v9       #fstr:Ljava/io/FileOutputStream;
    .restart local v12       #i$:Ljava/util/Iterator;
    .restart local v20       #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .restart local v21       #str:Ljava/io/BufferedOutputStream;
    :cond_7
    const/16 v26, 0x0

    :try_start_2
    const-string v27, "permissions"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/pm/PackageSetting;

    .line 1328
    .local v18, pkg:Lcom/android/server/pm/PackageSetting;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/Settings;->writePackageLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageSetting;)V

    goto :goto_5

    .line 1331
    .end local v18           #pkg:Lcom/android/server/pm/PackageSetting;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_9

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/pm/PackageSetting;

    .line 1332
    .restart local v18       #pkg:Lcom/android/server/pm/PackageSetting;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/Settings;->writeDisabledSysPackageLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageSetting;)V

    goto :goto_6

    .line 1335
    .end local v18           #pkg:Lcom/android/server/pm/PackageSetting;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mSharedUsers:Ljava/util/HashMap;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .end local v12           #i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/pm/SharedUserSetting;

    .line 1336
    .local v24, usr:Lcom/android/server/pm/SharedUserSetting;
    const/16 v26, 0x0

    const-string v27, "shared-user"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1337
    const/16 v26, 0x0

    const-string v27, "name"

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1338
    const/16 v26, 0x0

    const-string v27, "userId"

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1340
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    move-object/from16 v26, v0

    const-string v27, "sigs"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/PackageSignatures;->writeXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1341
    const/16 v26, 0x0

    const-string v27, "perms"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1342
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/pm/SharedUserSetting;->grantedPermissions:Ljava/util/HashSet;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 1343
    .local v17, name:Ljava/lang/String;
    const/16 v26, 0x0

    const-string v27, "item"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1344
    const/16 v26, 0x0

    const-string v27, "name"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v17

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1345
    const/16 v26, 0x0

    const-string v27, "item"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_8

    .line 1347
    .end local v17           #name:Ljava/lang/String;
    :cond_a
    const/16 v26, 0x0

    const-string v27, "perms"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1348
    const/16 v26, 0x0

    const-string v27, "shared-user"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_7

    .line 1351
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v24           #usr:Lcom/android/server/pm/SharedUserSetting;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    if-lez v26, :cond_d

    .line 1352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12       #i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/PackageCleanItem;

    .line 1353
    .local v15, item:Landroid/content/pm/PackageCleanItem;
    iget v0, v15, Landroid/content/pm/PackageCleanItem;->userId:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    .line 1354
    .local v23, userStr:Ljava/lang/String;
    const/16 v26, 0x0

    const-string v27, "cleaning-package"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1355
    const/16 v26, 0x0

    const-string v27, "name"

    iget-object v0, v15, Landroid/content/pm/PackageCleanItem;->packageName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1356
    const/16 v27, 0x0

    const-string v28, "code"

    iget-boolean v0, v15, Landroid/content/pm/PackageCleanItem;->andCode:Z

    move/from16 v26, v0

    if-eqz v26, :cond_c

    const-string v26, "true"

    :goto_a
    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v26

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1357
    const/16 v26, 0x0

    const-string v27, "user"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v23

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1358
    const/16 v26, 0x0

    const-string v27, "cleaning-package"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_9

    .line 1356
    :cond_c
    const-string v26, "false"

    goto :goto_a

    .line 1362
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v15           #item:Landroid/content/pm/PackageCleanItem;
    .end local v23           #userStr:Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mRenamedPackages:Ljava/util/HashMap;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/HashMap;->size()I

    move-result v26

    if-lez v26, :cond_e

    .line 1363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mRenamedPackages:Ljava/util/HashMap;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12       #i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_e

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 1364
    .local v8, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v26, 0x0

    const-string v27, "renamed-package"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1365
    const/16 v27, 0x0

    const-string v28, "new"

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v26

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1366
    const/16 v27, 0x0

    const-string v28, "old"

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v26

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1367
    const/16 v26, 0x0

    const-string v27, "renamed-package"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_b

    .line 1371
    .end local v8           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12           #i$:Ljava/util/Iterator;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mKeySetManager:Lcom/android/server/pm/KeySetManager;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/pm/KeySetManager;->writeKeySetManagerLPr(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1373
    const/16 v26, 0x0

    const-string v27, "packages"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1375
    invoke-interface/range {v20 .. v20}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1377
    invoke-virtual/range {v21 .. v21}, Ljava/io/BufferedOutputStream;->flush()V

    .line 1378
    invoke-static {v9}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1379
    invoke-virtual/range {v21 .. v21}, Ljava/io/BufferedOutputStream;->close()V

    .line 1383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->delete()Z

    .line 1384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x1b0

    const/16 v28, -0x1

    const/16 v29, -0x1

    invoke-static/range {v26 .. v29}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 1390
    new-instance v22, Ljava/io/File;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ".tmp"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1391
    .local v22, tempFile:Ljava/io/File;
    new-instance v16, Lcom/android/internal/util/JournaledFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    move-object/from16 v26, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    .line 1393
    .local v16, journal:Lcom/android/internal/util/JournaledFile;
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v25

    .line 1394
    .local v25, writeTarget:Ljava/io/File;
    new-instance v9, Ljava/io/FileOutputStream;

    .end local v9           #fstr:Ljava/io/FileOutputStream;
    move-object/from16 v0, v25

    invoke-direct {v9, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1395
    .restart local v9       #fstr:Ljava/io/FileOutputStream;
    new-instance v21, Ljava/io/BufferedOutputStream;

    .end local v21           #str:Ljava/io/BufferedOutputStream;
    move-object/from16 v0, v21

    invoke-direct {v0, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1397
    .restart local v21       #str:Ljava/io/BufferedOutputStream;
    :try_start_3
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v26

    const/16 v27, 0x1b0

    const/16 v28, 0x3e8

    const/16 v29, 0x408

    invoke-static/range {v26 .. v29}, Landroid/os/FileUtils;->setPermissions(Ljava/io/FileDescriptor;III)I

    .line 1399
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 1400
    .local v19, sb:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12       #i$:Ljava/util/Iterator;
    :cond_f
    :goto_c
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_16

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/pm/PackageSetting;

    .line 1401
    .restart local v18       #pkg:Lcom/android/server/pm/PackageSetting;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v26, v0

    if-eqz v26, :cond_10

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v26, v0

    if-nez v26, :cond_11

    .line 1402
    :cond_10
    const-string v26, "PackageSettings"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Skipping "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " due to missing metadata"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_c

    .line 1456
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v18           #pkg:Lcom/android/server/pm/PackageSetting;
    .end local v19           #sb:Ljava/lang/StringBuilder;
    :catch_2
    move-exception v7

    .line 1457
    .local v7, e:Ljava/lang/Exception;
    :try_start_4
    const-string v26, "PackageSettings"

    const-string v27, "Failed to write packages.list"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1458
    invoke-static/range {v21 .. v21}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1459
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/util/JournaledFile;->rollback()V

    .line 1462
    .end local v7           #e:Ljava/lang/Exception;
    :goto_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->writeAllUsersPackageRestrictionsLPr()V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 1406
    .restart local v12       #i$:Ljava/util/Iterator;
    .restart local v18       #pkg:Lcom/android/server/pm/PackageSetting;
    .restart local v19       #sb:Ljava/lang/StringBuilder;
    :cond_11
    :try_start_5
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1407
    .local v4, ai:Landroid/content/pm/ApplicationInfo;
    iget-object v6, v4, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 1408
    .local v6, dataPath:Ljava/lang/String;
    iget v0, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v26, v0

    and-int/lit8 v26, v26, 0x2

    if-eqz v26, :cond_12

    const/4 v14, 0x1

    .line 1409
    .local v14, isDebug:Z
    :goto_e
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/pm/PackageSetting;->getGids()[I

    move-result-object v10

    .line 1412
    .local v10, gids:[I
    const-string v26, " "

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v26

    if-gez v26, :cond_f

    .line 1431
    const/16 v26, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1432
    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1433
    const-string v26, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1434
    iget v0, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v26, v0

    move-object/from16 v0, v19

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1435
    if-eqz v14, :cond_13

    const-string v26, " 1 "

    :goto_f
    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1436
    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1437
    const-string v26, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1438
    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1439
    const-string v26, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1440
    if-eqz v10, :cond_14

    array-length v0, v10

    move/from16 v26, v0

    if-lez v26, :cond_14

    .line 1441
    const/16 v26, 0x0

    aget v26, v10, v26

    move-object/from16 v0, v19

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1442
    const/4 v11, 0x1

    .local v11, i:I
    :goto_10
    array-length v0, v10

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v11, v0, :cond_15

    .line 1443
    const-string v26, ","

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1444
    aget v26, v10, v11

    move-object/from16 v0, v19

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1442
    add-int/lit8 v11, v11, 0x1

    goto :goto_10

    .line 1408
    .end local v10           #gids:[I
    .end local v11           #i:I
    .end local v14           #isDebug:Z
    :cond_12
    const/4 v14, 0x0

    goto/16 :goto_e

    .line 1435
    .restart local v10       #gids:[I
    .restart local v14       #isDebug:Z
    :cond_13
    const-string v26, " 0 "

    goto :goto_f

    .line 1447
    :cond_14
    const-string v26, "none"

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1449
    :cond_15
    const-string v26, "\n"

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1450
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->getBytes()[B

    move-result-object v26

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    goto/16 :goto_c

    .line 1452
    .end local v4           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v6           #dataPath:Ljava/lang/String;
    .end local v10           #gids:[I
    .end local v14           #isDebug:Z
    .end local v18           #pkg:Lcom/android/server/pm/PackageSetting;
    :cond_16
    invoke-virtual/range {v21 .. v21}, Ljava/io/BufferedOutputStream;->flush()V

    .line 1453
    invoke-static {v9}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1454
    invoke-virtual/range {v21 .. v21}, Ljava/io/BufferedOutputStream;->close()V

    .line 1455
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_d
.end method

.method writePackageLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageSetting;)V
    .locals 6
    .parameter "serializer"
    .parameter "pkg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1530
    const-string v2, "package"

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1531
    const-string v2, "name"

    iget-object v3, p2, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1532
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1533
    const-string v2, "realName"

    iget-object v3, p2, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1535
    :cond_0
    const-string v2, "codePath"

    iget-object v3, p2, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1536
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1537
    const-string v2, "resourcePath"

    iget-object v3, p2, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1539
    :cond_1
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->nativeLibraryPathString:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 1540
    const-string v2, "nativeLibraryPath"

    iget-object v3, p2, Lcom/android/server/pm/PackageSetting;->nativeLibraryPathString:Ljava/lang/String;

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1542
    :cond_2
    const-string v2, "flags"

    iget v3, p2, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1543
    const-string v2, "ft"

    iget-wide v3, p2, Lcom/android/server/pm/PackageSetting;->timeStamp:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1544
    const-string v2, "it"

    iget-wide v3, p2, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1545
    const-string v2, "ut"

    iget-wide v3, p2, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1546
    const-string v2, "version"

    iget v3, p2, Lcom/android/server/pm/PackageSetting;->versionCode:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1547
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v2, :cond_6

    .line 1548
    const-string v2, "userId"

    iget v3, p2, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1552
    :goto_0
    iget-boolean v2, p2, Lcom/android/server/pm/PackageSetting;->uidError:Z

    if-eqz v2, :cond_3

    .line 1553
    const-string v2, "uidError"

    const-string v3, "true"

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1555
    :cond_3
    iget v2, p2, Lcom/android/server/pm/PackageSetting;->installStatus:I

    if-nez v2, :cond_4

    .line 1556
    const-string v2, "installStatus"

    const-string v3, "false"

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1558
    :cond_4
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 1559
    const-string v2, "installer"

    iget-object v3, p2, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1561
    :cond_5
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    const-string v3, "sigs"

    iget-object v4, p0, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/pm/PackageSignatures;->writeXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1562
    iget v2, p2, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_8

    .line 1563
    const-string v2, "perms"

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1564
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v2, :cond_7

    .line 1569
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1570
    .local v1, name:Ljava/lang/String;
    const-string v2, "item"

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1571
    const-string v2, "name"

    invoke-interface {p1, v5, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1572
    const-string v2, "item"

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    .line 1550
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #name:Ljava/lang/String;
    :cond_6
    const-string v2, "sharedUserId"

    iget v3, p2, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 1575
    :cond_7
    const-string v2, "perms"

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1578
    :cond_8
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {p0, p1, v2}, Lcom/android/server/pm/Settings;->writeSigningKeySetsLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V

    .line 1579
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {p0, p1, v2}, Lcom/android/server/pm/Settings;->writeKeySetAliasesLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V

    .line 1581
    const-string v2, "package"

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1582
    return-void
.end method

.method writePackageRestrictionsLPr(I)V
    .locals 17
    .parameter "userId"

    .prologue
    .line 1036
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateFile(I)Ljava/io/File;

    move-result-object v11

    .line 1037
    .local v11, userPackagesStateFile:Ljava/io/File;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateBackupFile(I)Ljava/io/File;

    move-result-object v2

    .line 1038
    .local v2, backupFile:Ljava/io/File;
    new-instance v13, Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->mkdirs()Z

    .line 1039
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1044
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_1

    .line 1045
    invoke-virtual {v11, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 1046
    const-string v13, "PackageManager"

    const-string v14, "Unable to backup user packages state file, current changes will be lost at reboot"

    invoke-static {v13, v14}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    :cond_0
    :goto_0
    return-void

    .line 1051
    :cond_1
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 1052
    const-string v13, "PackageManager"

    const-string v14, "Preserving older stopped packages backup"

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    :cond_2
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1058
    .local v4, fstr:Ljava/io/FileOutputStream;
    new-instance v10, Ljava/io/BufferedOutputStream;

    invoke-direct {v10, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1060
    .local v10, str:Ljava/io/BufferedOutputStream;
    new-instance v9, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v9}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1061
    .local v9, serializer:Lorg/xmlpull/v1/XmlSerializer;
    const-string v13, "utf-8"

    invoke-interface {v9, v10, v13}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1062
    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-interface {v9, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1063
    const-string v13, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v14, 0x1

    invoke-interface {v9, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 1065
    const/4 v13, 0x0

    const-string v14, "package-restrictions"

    invoke-interface {v9, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1067
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/PackageSetting;

    .line 1068
    .local v8, pkg:Lcom/android/server/pm/PackageSetting;
    move/from16 v0, p1

    invoke-virtual {v8, v0}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v12

    .line 1069
    .local v12, ustate:Landroid/content/pm/PackageUserState;
    iget-boolean v13, v12, Landroid/content/pm/PackageUserState;->stopped:Z

    if-nez v13, :cond_5

    iget-boolean v13, v12, Landroid/content/pm/PackageUserState;->notLaunched:Z

    if-nez v13, :cond_5

    iget-boolean v13, v12, Landroid/content/pm/PackageUserState;->installed:Z

    if-eqz v13, :cond_5

    iget v13, v12, Landroid/content/pm/PackageUserState;->enabled:I

    if-nez v13, :cond_5

    iget-boolean v13, v12, Landroid/content/pm/PackageUserState;->blocked:Z

    if-nez v13, :cond_5

    iget-object v13, v12, Landroid/content/pm/PackageUserState;->enabledComponents:Ljava/util/HashSet;

    if-eqz v13, :cond_4

    iget-object v13, v12, Landroid/content/pm/PackageUserState;->enabledComponents:Ljava/util/HashSet;

    invoke-virtual {v13}, Ljava/util/HashSet;->size()I

    move-result v13

    if-gtz v13, :cond_5

    :cond_4
    iget-object v13, v12, Landroid/content/pm/PackageUserState;->disabledComponents:Ljava/util/HashSet;

    if-eqz v13, :cond_3

    iget-object v13, v12, Landroid/content/pm/PackageUserState;->disabledComponents:Ljava/util/HashSet;

    invoke-virtual {v13}, Ljava/util/HashSet;->size()I

    move-result v13

    if-lez v13, :cond_3

    .line 1076
    :cond_5
    const/4 v13, 0x0

    const-string v14, "pkg"

    invoke-interface {v9, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1077
    const/4 v13, 0x0

    const-string v14, "name"

    iget-object v15, v8, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-interface {v9, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1080
    iget-boolean v13, v12, Landroid/content/pm/PackageUserState;->installed:Z

    if-nez v13, :cond_6

    .line 1081
    const/4 v13, 0x0

    const-string v14, "inst"

    const-string v15, "false"

    invoke-interface {v9, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1083
    :cond_6
    iget-boolean v13, v12, Landroid/content/pm/PackageUserState;->stopped:Z

    if-eqz v13, :cond_7

    .line 1084
    const/4 v13, 0x0

    const-string v14, "stopped"

    const-string v15, "true"

    invoke-interface {v9, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1086
    :cond_7
    iget-boolean v13, v12, Landroid/content/pm/PackageUserState;->notLaunched:Z

    if-eqz v13, :cond_8

    .line 1087
    const/4 v13, 0x0

    const-string v14, "nl"

    const-string v15, "true"

    invoke-interface {v9, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1089
    :cond_8
    iget-boolean v13, v12, Landroid/content/pm/PackageUserState;->blocked:Z

    if-eqz v13, :cond_9

    .line 1090
    const/4 v13, 0x0

    const-string v14, "blocked"

    const-string v15, "true"

    invoke-interface {v9, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1092
    :cond_9
    iget v13, v12, Landroid/content/pm/PackageUserState;->enabled:I

    if-eqz v13, :cond_a

    .line 1093
    const/4 v13, 0x0

    const-string v14, "enabled"

    iget v15, v12, Landroid/content/pm/PackageUserState;->enabled:I

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v9, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1095
    iget-object v13, v12, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    if-eqz v13, :cond_a

    .line 1096
    const/4 v13, 0x0

    const-string v14, "enabledCaller"

    iget-object v15, v12, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    invoke-interface {v9, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1100
    :cond_a
    iget-object v13, v12, Landroid/content/pm/PackageUserState;->enabledComponents:Ljava/util/HashSet;

    if-eqz v13, :cond_c

    iget-object v13, v12, Landroid/content/pm/PackageUserState;->enabledComponents:Ljava/util/HashSet;

    invoke-virtual {v13}, Ljava/util/HashSet;->size()I

    move-result v13

    if-lez v13, :cond_c

    .line 1102
    const/4 v13, 0x0

    const-string v14, "enabled-components"

    invoke-interface {v9, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1103
    iget-object v13, v12, Landroid/content/pm/PackageUserState;->enabledComponents:Ljava/util/HashSet;

    invoke-virtual {v13}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1104
    .local v7, name:Ljava/lang/String;
    const/4 v13, 0x0

    const-string v14, "item"

    invoke-interface {v9, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1105
    const/4 v13, 0x0

    const-string v14, "name"

    invoke-interface {v9, v13, v14, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1106
    const/4 v13, 0x0

    const-string v14, "item"

    invoke-interface {v9, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1144
    .end local v4           #fstr:Ljava/io/FileOutputStream;
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #name:Ljava/lang/String;
    .end local v8           #pkg:Lcom/android/server/pm/PackageSetting;
    .end local v9           #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .end local v10           #str:Ljava/io/BufferedOutputStream;
    .end local v12           #ustate:Landroid/content/pm/PackageUserState;
    :catch_0
    move-exception v3

    .line 1145
    .local v3, e:Ljava/io/IOException;
    const-string v13, "PackageManager"

    const-string v14, "Unable to write package manager user packages state,  current changes will be lost at reboot"

    invoke-static {v13, v14, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1151
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 1152
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    move-result v13

    if-nez v13, :cond_0

    .line 1153
    const-string v13, "PackageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed to clean up mangled file: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1108
    .end local v3           #e:Ljava/io/IOException;
    .restart local v4       #fstr:Ljava/io/FileOutputStream;
    .restart local v6       #i$:Ljava/util/Iterator;
    .restart local v8       #pkg:Lcom/android/server/pm/PackageSetting;
    .restart local v9       #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .restart local v10       #str:Ljava/io/BufferedOutputStream;
    .restart local v12       #ustate:Landroid/content/pm/PackageUserState;
    :cond_b
    const/4 v13, 0x0

    :try_start_1
    const-string v14, "enabled-components"

    invoke-interface {v9, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1110
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_c
    iget-object v13, v12, Landroid/content/pm/PackageUserState;->disabledComponents:Ljava/util/HashSet;

    if-eqz v13, :cond_e

    iget-object v13, v12, Landroid/content/pm/PackageUserState;->disabledComponents:Ljava/util/HashSet;

    invoke-virtual {v13}, Ljava/util/HashSet;->size()I

    move-result v13

    if-lez v13, :cond_e

    .line 1112
    const/4 v13, 0x0

    const-string v14, "disabled-components"

    invoke-interface {v9, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1113
    iget-object v13, v12, Landroid/content/pm/PackageUserState;->disabledComponents:Ljava/util/HashSet;

    invoke-virtual {v13}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1114
    .restart local v7       #name:Ljava/lang/String;
    const/4 v13, 0x0

    const-string v14, "item"

    invoke-interface {v9, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1115
    const/4 v13, 0x0

    const-string v14, "name"

    invoke-interface {v9, v13, v14, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1116
    const/4 v13, 0x0

    const-string v14, "item"

    invoke-interface {v9, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_3

    .line 1118
    .end local v7           #name:Ljava/lang/String;
    :cond_d
    const/4 v13, 0x0

    const-string v14, "disabled-components"

    invoke-interface {v9, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1120
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_e
    const/4 v13, 0x0

    const-string v14, "pkg"

    invoke-interface {v9, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_1

    .line 1124
    .end local v8           #pkg:Lcom/android/server/pm/PackageSetting;
    .end local v12           #ustate:Landroid/content/pm/PackageUserState;
    :cond_f
    const/4 v13, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v9, v1, v13}, Lcom/android/server/pm/Settings;->writePreferredActivitiesLPr(Lorg/xmlpull/v1/XmlSerializer;IZ)V

    .line 1126
    const/4 v13, 0x0

    const-string v14, "package-restrictions"

    invoke-interface {v9, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1128
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1130
    invoke-virtual {v10}, Ljava/io/BufferedOutputStream;->flush()V

    .line 1131
    invoke-static {v4}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1132
    invoke-virtual {v10}, Ljava/io/BufferedOutputStream;->close()V

    .line 1136
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1137
    invoke-virtual {v11}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x1b0

    const/4 v15, -0x1

    const/16 v16, -0x1

    invoke-static/range {v13 .. v16}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method writePermissionLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/BasePermission;)V
    .locals 4
    .parameter "serializer"
    .parameter "bp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1605
    iget v1, p2, Lcom/android/server/pm/BasePermission;->type:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    iget-object v1, p2, Lcom/android/server/pm/BasePermission;->sourcePackage:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 1606
    const-string v1, "item"

    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1607
    const-string v1, "name"

    iget-object v2, p2, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1608
    const-string v1, "package"

    iget-object v2, p2, Lcom/android/server/pm/BasePermission;->sourcePackage:Ljava/lang/String;

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1609
    iget v1, p2, Lcom/android/server/pm/BasePermission;->protectionLevel:I

    if-eqz v1, :cond_0

    .line 1610
    const-string v1, "protection"

    iget v2, p2, Lcom/android/server/pm/BasePermission;->protectionLevel:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1615
    :cond_0
    iget v1, p2, Lcom/android/server/pm/BasePermission;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 1616
    iget-object v1, p2, Lcom/android/server/pm/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    if-eqz v1, :cond_4

    iget-object v1, p2, Lcom/android/server/pm/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v0, v1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    .line 1617
    .local v0, pi:Landroid/content/pm/PermissionInfo;
    :goto_0
    if-eqz v0, :cond_2

    .line 1618
    const-string v1, "type"

    const-string v2, "dynamic"

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1619
    iget v1, v0, Landroid/content/pm/PermissionInfo;->icon:I

    if-eqz v1, :cond_1

    .line 1620
    const-string v1, "icon"

    iget v2, v0, Landroid/content/pm/PermissionInfo;->icon:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1622
    :cond_1
    iget-object v1, v0, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    .line 1623
    const-string v1, "label"

    iget-object v2, v0, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1627
    .end local v0           #pi:Landroid/content/pm/PermissionInfo;
    :cond_2
    const-string v1, "item"

    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1629
    :cond_3
    return-void

    .line 1616
    :cond_4
    iget-object v0, p2, Lcom/android/server/pm/BasePermission;->pendingInfo:Landroid/content/pm/PermissionInfo;

    goto :goto_0
.end method

.method writePreferredActivitiesLPr(Lorg/xmlpull/v1/XmlSerializer;IZ)V
    .locals 5
    .parameter "serializer"
    .parameter "userId"
    .parameter "full"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1018
    const-string v3, "preferred-activities"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1019
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PreferredIntentResolver;

    .line 1020
    .local v2, pir:Lcom/android/server/pm/PreferredIntentResolver;
    if-eqz v2, :cond_0

    .line 1021
    invoke-virtual {v2}, Lcom/android/server/pm/PreferredIntentResolver;->filterSet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PreferredActivity;

    .line 1022
    .local v1, pa:Lcom/android/server/pm/PreferredActivity;
    const-string v3, "item"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1023
    invoke-virtual {v1, p1, p3}, Lcom/android/server/pm/PreferredActivity;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;Z)V

    .line 1024
    const-string v3, "item"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 1027
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #pa:Lcom/android/server/pm/PreferredActivity;
    :cond_0
    const-string v3, "preferred-activities"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1028
    return-void
.end method

.method writeSigningKeySetsLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V
    .locals 8
    .parameter "serializer"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1586
    invoke-virtual {p2}, Lcom/android/server/pm/PackageKeySetData;->getSigningKeySets()[J

    move-result-object v0

    .local v0, arr$:[J
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v4, :cond_0

    aget-wide v2, v0, v1

    .line 1587
    .local v2, id:J
    const-string v5, "signing-keyset"

    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1588
    const-string v5, "identifier"

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v7, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1589
    const-string v5, "signing-keyset"

    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1586
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1591
    .end local v2           #id:J
    :cond_0
    return-void
.end method
