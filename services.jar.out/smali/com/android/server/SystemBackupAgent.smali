.class public Lcom/android/server/SystemBackupAgent;
.super Landroid/app/backup/BackupAgentHelper;
.source "SystemBackupAgent.java"


# static fields
.field private static final PROFILES_FILENAME:Ljava/lang/String; = null

.field private static final PROFILES_FILE_DIRECTORY:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "SystemBackupAgent"

.field private static final WALLPAPER_IMAGE:Ljava/lang/String; = null

.field private static final WALLPAPER_IMAGE_DIR:Ljava/lang/String; = null

.field private static final WALLPAPER_IMAGE_FILENAME:Ljava/lang/String; = "wallpaper"

.field private static final WALLPAPER_IMAGE_KEY:Ljava/lang/String; = "/data/data/com.android.settings/files/wallpaper"

.field private static final WALLPAPER_INFO:Ljava/lang/String; = null

.field private static final WALLPAPER_INFO_DIR:Ljava/lang/String; = null

.field private static final WALLPAPER_INFO_FILENAME:Ljava/lang/String; = "wallpaper_info.xml"

.field private static final WALLPAPER_INFO_KEY:Ljava/lang/String; = "/data/system/wallpaper_info.xml"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    sget-object v0, Lcom/android/server/ProfileManagerService;->PROFILE_FILE:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/SystemBackupAgent;->PROFILES_FILENAME:Ljava/lang/String;

    .line 52
    sget-object v0, Lcom/android/server/ProfileManagerService;->PROFILE_FILE:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/SystemBackupAgent;->PROFILES_FILE_DIRECTORY:Ljava/lang/String;

    .line 56
    invoke-static {v1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/SystemBackupAgent;->WALLPAPER_IMAGE_DIR:Ljava/lang/String;

    .line 58
    sget-object v0, Landroid/app/backup/WallpaperBackupHelper;->WALLPAPER_IMAGE:Ljava/lang/String;

    sput-object v0, Lcom/android/server/SystemBackupAgent;->WALLPAPER_IMAGE:Ljava/lang/String;

    .line 61
    invoke-static {v1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/SystemBackupAgent;->WALLPAPER_INFO_DIR:Ljava/lang/String;

    .line 63
    sget-object v0, Landroid/app/backup/WallpaperBackupHelper;->WALLPAPER_INFO:Ljava/lang/String;

    sput-object v0, Lcom/android/server/SystemBackupAgent;->WALLPAPER_INFO:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/backup/BackupAgentHelper;-><init>()V

    return-void
.end method

.method private fullProfilesBackup(Landroid/app/backup/FullBackupDataOutput;)V
    .locals 6
    .parameter "output"

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/android/server/SystemBackupAgent;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "r"

    const/4 v2, 0x0

    sget-object v3, Lcom/android/server/SystemBackupAgent;->PROFILES_FILE_DIRECTORY:Ljava/lang/String;

    sget-object v4, Lcom/android/server/SystemBackupAgent;->PROFILES_FILENAME:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/app/backup/FullBackupDataOutput;->getData()Landroid/app/backup/BackupDataOutput;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/BackupDataOutput;)I

    .line 110
    return-void
.end method

.method private fullWallpaperBackup(Landroid/app/backup/FullBackupDataOutput;)V
    .locals 6
    .parameter "output"

    .prologue
    const/4 v2, 0x0

    .line 101
    invoke-virtual {p0}, Lcom/android/server/SystemBackupAgent;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "r"

    sget-object v3, Lcom/android/server/SystemBackupAgent;->WALLPAPER_INFO_DIR:Ljava/lang/String;

    sget-object v4, Lcom/android/server/SystemBackupAgent;->WALLPAPER_INFO:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/app/backup/FullBackupDataOutput;->getData()Landroid/app/backup/BackupDataOutput;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/BackupDataOutput;)I

    .line 103
    invoke-virtual {p0}, Lcom/android/server/SystemBackupAgent;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "r"

    sget-object v3, Lcom/android/server/SystemBackupAgent;->WALLPAPER_IMAGE_DIR:Ljava/lang/String;

    sget-object v4, Lcom/android/server/SystemBackupAgent;->WALLPAPER_IMAGE:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/app/backup/FullBackupDataOutput;->getData()Landroid/app/backup/BackupDataOutput;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/BackupDataOutput;)I

    .line 105
    return-void
.end method


# virtual methods
.method public onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 8
    .parameter "oldState"
    .parameter "data"
    .parameter "newState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 72
    const-string v3, "wallpaper"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Lcom/android/server/WallpaperManagerService;

    .line 74
    .local v2, wallpaper:Lcom/android/server/WallpaperManagerService;
    new-array v0, v4, [Ljava/lang/String;

    sget-object v3, Lcom/android/server/SystemBackupAgent;->WALLPAPER_IMAGE:Ljava/lang/String;

    aput-object v3, v0, v7

    sget-object v3, Lcom/android/server/SystemBackupAgent;->WALLPAPER_INFO:Ljava/lang/String;

    aput-object v3, v0, v5

    .line 75
    .local v0, files:[Ljava/lang/String;
    new-array v1, v4, [Ljava/lang/String;

    const-string v3, "/data/data/com.android.settings/files/wallpaper"

    aput-object v3, v1, v7

    const-string v3, "/data/system/wallpaper_info.xml"

    aput-object v3, v1, v5

    .line 76
    .local v1, keys:[Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/WallpaperManagerService;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/android/server/WallpaperManagerService;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 80
    new-array v0, v5, [Ljava/lang/String;

    .end local v0           #files:[Ljava/lang/String;
    sget-object v3, Lcom/android/server/SystemBackupAgent;->WALLPAPER_INFO:Ljava/lang/String;

    aput-object v3, v0, v7

    .line 81
    .restart local v0       #files:[Ljava/lang/String;
    new-array v1, v5, [Ljava/lang/String;

    .end local v1           #keys:[Ljava/lang/String;
    const-string v3, "/data/system/wallpaper_info.xml"

    aput-object v3, v1, v7

    .line 83
    .restart local v1       #keys:[Ljava/lang/String;
    :cond_0
    const-string v3, "wallpaper"

    new-instance v4, Landroid/app/backup/WallpaperBackupHelper;

    invoke-direct {v4, p0, v0, v1}, Landroid/app/backup/WallpaperBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Lcom/android/server/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 84
    const-string v3, "profiles"

    new-instance v4, Landroid/app/backup/AbsoluteFileBackupHelper;

    new-array v5, v5, [Ljava/lang/String;

    sget-object v6, Lcom/android/server/ProfileManagerService;->PROFILE_FILE:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-direct {v4, p0, v5}, Landroid/app/backup/AbsoluteFileBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Lcom/android/server/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 86
    invoke-super {p0, p1, p2, p3}, Landroid/app/backup/BackupAgentHelper;->onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V

    .line 87
    return-void
.end method

.method public onFullBackup(Landroid/app/backup/FullBackupDataOutput;)V
    .locals 0
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/server/SystemBackupAgent;->fullWallpaperBackup(Landroid/app/backup/FullBackupDataOutput;)V

    .line 93
    invoke-direct {p0, p1}, Lcom/android/server/SystemBackupAgent;->fullProfilesBackup(Landroid/app/backup/FullBackupDataOutput;)V

    .line 94
    return-void
.end method

.method public onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .locals 10
    .parameter "data"
    .parameter "appVersionCode"
    .parameter "newState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 116
    const-string v3, "wallpaper"

    new-instance v4, Landroid/app/backup/WallpaperBackupHelper;

    new-array v5, v7, [Ljava/lang/String;

    sget-object v6, Lcom/android/server/SystemBackupAgent;->WALLPAPER_IMAGE:Ljava/lang/String;

    aput-object v6, v5, v8

    sget-object v6, Lcom/android/server/SystemBackupAgent;->WALLPAPER_INFO:Ljava/lang/String;

    aput-object v6, v5, v9

    new-array v6, v7, [Ljava/lang/String;

    const-string v7, "/data/data/com.android.settings/files/wallpaper"

    aput-object v7, v6, v8

    const-string v7, "/data/system/wallpaper_info.xml"

    aput-object v7, v6, v9

    invoke-direct {v4, p0, v5, v6}, Landroid/app/backup/WallpaperBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Lcom/android/server/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 119
    const-string v3, "system_files"

    new-instance v4, Landroid/app/backup/WallpaperBackupHelper;

    new-array v5, v9, [Ljava/lang/String;

    sget-object v6, Lcom/android/server/SystemBackupAgent;->WALLPAPER_IMAGE:Ljava/lang/String;

    aput-object v6, v5, v8

    new-array v6, v9, [Ljava/lang/String;

    const-string v7, "/data/data/com.android.settings/files/wallpaper"

    aput-object v7, v6, v8

    invoke-direct {v4, p0, v5, v6}, Landroid/app/backup/WallpaperBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Lcom/android/server/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 122
    const-string v3, "profiles"

    new-instance v4, Landroid/app/backup/AbsoluteFileBackupHelper;

    new-array v5, v9, [Ljava/lang/String;

    sget-object v6, Lcom/android/server/ProfileManagerService;->PROFILE_FILE:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-direct {v4, p0, v5}, Landroid/app/backup/AbsoluteFileBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Lcom/android/server/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 126
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/backup/BackupAgentHelper;->onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V

    .line 128
    const-string v3, "wallpaper"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Lcom/android/server/WallpaperManagerService;

    .line 130
    .local v2, wallpaper:Lcom/android/server/WallpaperManagerService;
    const-string v3, "profile"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/ProfileManagerService;

    .line 133
    .local v1, profiles:Lcom/android/server/ProfileManagerService;
    invoke-virtual {v2}, Lcom/android/server/WallpaperManagerService;->settingsRestored()V

    .line 134
    invoke-virtual {v1}, Lcom/android/server/ProfileManagerService;->settingsRestored()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .end local v1           #profiles:Lcom/android/server/ProfileManagerService;
    .end local v2           #wallpaper:Lcom/android/server/WallpaperManagerService;
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v0

    .line 138
    .local v0, ex:Ljava/io/IOException;
    const-string v3, "SystemBackupAgent"

    const-string v4, "restore failed"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 139
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/android/server/SystemBackupAgent;->WALLPAPER_IMAGE:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 140
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/android/server/SystemBackupAgent;->WALLPAPER_INFO:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public onRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJ)V
    .locals 15
    .parameter "data"
    .parameter "size"
    .parameter "type"
    .parameter "domain"
    .parameter "path"
    .parameter "mode"
    .parameter "mtime"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    const-string v1, "SystemBackupAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Restoring file domain="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const/4 v13, 0x0

    .line 152
    .local v13, restoredWallpaper:Z
    const/4 v12, 0x0

    .line 154
    .local v12, restoredProfiles:Z
    const/4 v9, 0x0

    .line 156
    .local v9, outFile:Ljava/io/File;
    const-string v1, "r"

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    const-string v1, "wallpaper_info.xml"

    move-object/from16 v0, p6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 158
    new-instance v9, Ljava/io/File;

    .end local v9           #outFile:Ljava/io/File;
    sget-object v1, Lcom/android/server/SystemBackupAgent;->WALLPAPER_INFO:Ljava/lang/String;

    invoke-direct {v9, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 159
    .restart local v9       #outFile:Ljava/io/File;
    const/4 v13, 0x1

    .line 170
    :cond_0
    :goto_0
    if-nez v9, :cond_1

    .line 171
    :try_start_0
    const-string v1, "SystemBackupAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping unrecognized system file: [ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move/from16 v4, p4

    move-wide/from16 v5, p7

    move-wide/from16 v7, p9

    .line 173
    invoke-static/range {v1 .. v9}, Landroid/app/backup/FullBackup;->restoreFile(Landroid/os/ParcelFileDescriptor;JIJJLjava/io/File;)V

    .line 175
    if-eqz v13, :cond_2

    .line 176
    const-string v1, "wallpaper"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v14

    check-cast v14, Lcom/android/server/WallpaperManagerService;

    .line 179
    .local v14, wallpaper:Lcom/android/server/WallpaperManagerService;
    invoke-virtual {v14}, Lcom/android/server/WallpaperManagerService;->settingsRestored()V

    .line 181
    .end local v14           #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_2
    if-eqz v12, :cond_3

    .line 182
    const-string v1, "profile"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    check-cast v11, Lcom/android/server/ProfileManagerService;

    .line 184
    .local v11, profiles:Lcom/android/server/ProfileManagerService;
    invoke-virtual {v11}, Lcom/android/server/ProfileManagerService;->settingsRestored()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    .end local v11           #profiles:Lcom/android/server/ProfileManagerService;
    :cond_3
    :goto_1
    return-void

    .line 160
    :cond_4
    const-string v1, "wallpaper"

    move-object/from16 v0, p6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 161
    new-instance v9, Ljava/io/File;

    .end local v9           #outFile:Ljava/io/File;
    sget-object v1, Lcom/android/server/SystemBackupAgent;->WALLPAPER_IMAGE:Ljava/lang/String;

    invoke-direct {v9, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 162
    .restart local v9       #outFile:Ljava/io/File;
    const/4 v13, 0x1

    goto :goto_0

    .line 163
    :cond_5
    sget-object v1, Lcom/android/server/SystemBackupAgent;->PROFILES_FILENAME:Ljava/lang/String;

    move-object/from16 v0, p6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    sget-object v9, Lcom/android/server/ProfileManagerService;->PROFILE_FILE:Ljava/io/File;

    .line 165
    const/4 v12, 0x1

    goto :goto_0

    .line 186
    :catch_0
    move-exception v10

    .line 187
    .local v10, e:Ljava/io/IOException;
    if-eqz v13, :cond_3

    .line 189
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/android/server/SystemBackupAgent;->WALLPAPER_IMAGE:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 190
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/android/server/SystemBackupAgent;->WALLPAPER_INFO:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_1
.end method
