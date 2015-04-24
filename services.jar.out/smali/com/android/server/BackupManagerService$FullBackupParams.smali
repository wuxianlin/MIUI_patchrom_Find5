.class Lcom/android/server/BackupManagerService$FullBackupParams;
.super Lcom/android/server/BackupManagerService$FullParams;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FullBackupParams"
.end annotation


# instance fields
.field public allApps:Z

.field public domainTokens:[Ljava/lang/String;

.field public excludeFilesRegex:Ljava/lang/String;

.field public includeApks:Z

.field public includeObbs:Z

.field public includeShared:Z

.field public includeSystem:Z

.field public packages:[Ljava/lang/String;

.field public shouldKillAfterBackup:Z

.field final synthetic this$0:Lcom/android/server/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BackupManagerService;Landroid/os/ParcelFileDescriptor;ZZZZZ[Ljava/lang/String;ZZ)V
    .locals 0
    .param p2, "output"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "saveApks"    # Z
    .param p4, "saveObbs"    # Z
    .param p5, "saveShared"    # Z
    .param p6, "doAllApps"    # Z
    .param p7, "doSystem"    # Z
    .param p8, "pkgList"    # [Ljava/lang/String;
    .param p9, "killAfterBackup"    # Z
    .param p10, "ignoreEncryptionCheck"    # Z

    .prologue
    .line 441
    iput-object p1, p0, Lcom/android/server/BackupManagerService$FullBackupParams;->this$0:Lcom/android/server/BackupManagerService;

    invoke-direct {p0, p1}, Lcom/android/server/BackupManagerService$FullParams;-><init>(Lcom/android/server/BackupManagerService;)V

    .line 442
    iput-object p2, p0, Lcom/android/server/BackupManagerService$FullBackupParams;->fd:Landroid/os/ParcelFileDescriptor;

    .line 443
    iput-boolean p3, p0, Lcom/android/server/BackupManagerService$FullBackupParams;->includeApks:Z

    .line 444
    iput-boolean p4, p0, Lcom/android/server/BackupManagerService$FullBackupParams;->includeObbs:Z

    .line 445
    iput-boolean p5, p0, Lcom/android/server/BackupManagerService$FullBackupParams;->includeShared:Z

    .line 446
    iput-boolean p6, p0, Lcom/android/server/BackupManagerService$FullBackupParams;->allApps:Z

    .line 447
    iput-boolean p7, p0, Lcom/android/server/BackupManagerService$FullBackupParams;->includeSystem:Z

    .line 448
    iput-object p8, p0, Lcom/android/server/BackupManagerService$FullBackupParams;->packages:[Ljava/lang/String;

    .line 449
    iput-boolean p9, p0, Lcom/android/server/BackupManagerService$FullBackupParams;->shouldKillAfterBackup:Z

    .line 450
    iput-boolean p10, p0, Lcom/android/server/BackupManagerService$FullBackupParams;->ignoreEncryptionPasswordCheck:Z

    .line 451
    return-void
.end method
