.class Lcom/android/server/BackupManagerService$FullParams;
.super Ljava/lang/Object;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FullParams"
.end annotation


# instance fields
.field public curPassword:Ljava/lang/String;

.field public encryptPassword:Ljava/lang/String;

.field public fd:Landroid/os/ParcelFileDescriptor;

.field public ignoreEncryptionPasswordCheck:Z

.field public ignoreVersionMismatchCheck:Z

.field public final latch:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public noninteractive:Z

.field public observer:Landroid/app/backup/IFullBackupRestoreObserver;

.field final synthetic this$0:Lcom/android/server/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BackupManagerService;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 421
    iput-object p1, p0, Lcom/android/server/BackupManagerService$FullParams;->this$0:Lcom/android/server/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 422
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/BackupManagerService$FullParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 423
    iput-boolean v1, p0, Lcom/android/server/BackupManagerService$FullParams;->noninteractive:Z

    .line 424
    iput-boolean v1, p0, Lcom/android/server/BackupManagerService$FullParams;->ignoreVersionMismatchCheck:Z

    .line 425
    return-void
.end method
