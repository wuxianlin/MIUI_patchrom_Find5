.class Lcom/koushikdutta/superuser/MainActivity$2;
.super Ljava/lang/Thread;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/superuser/MainActivity;->doRecoveryInstall()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/superuser/MainActivity;

.field final synthetic val$dlg:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/koushikdutta/superuser/MainActivity;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/koushikdutta/superuser/MainActivity$2;->this$0:Lcom/koushikdutta/superuser/MainActivity;

    iput-object p2, p0, Lcom/koushikdutta/superuser/MainActivity$2;->val$dlg:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method doEntry(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "zout"
    .parameter "entryName"
    .parameter "dest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    new-instance v2, Ljava/util/zip/ZipFile;

    iget-object v3, p0, Lcom/koushikdutta/superuser/MainActivity$2;->this$0:Lcom/koushikdutta/superuser/MainActivity;

    invoke-virtual {v3}, Lcom/koushikdutta/superuser/MainActivity;->getPackageCodePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 104
    .local v2, zf:Ljava/util/zip/ZipFile;
    invoke-virtual {v2, p2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 105
    .local v1, ze:Ljava/util/zip/ZipEntry;
    new-instance v3, Ljava/util/zip/ZipEntry;

    invoke-direct {v3, p3}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 107
    invoke-virtual {v2, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    .local v0, in:Ljava/io/InputStream;
    invoke-static {v0, p1}, Lcom/koushikdutta/superuser/util/StreamUtility;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 108
    invoke-virtual {p1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 109
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 110
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V

    .line 111
    return-void
.end method

.method public run()V
    .locals 18

    .prologue
    .line 115
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/koushikdutta/superuser/MainActivity$2;->this$0:Lcom/koushikdutta/superuser/MainActivity;

    const-string v13, "superuser.zip"

    invoke-virtual {v12, v13}, Lcom/koushikdutta/superuser/MainActivity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    .line 116
    .local v10, zip:Ljava/io/File;
    new-instance v11, Ljava/util/zip/ZipOutputStream;

    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v11, v12}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 117
    .local v11, zout:Ljava/util/zip/ZipOutputStream;
    const-string v12, "assets/update-binary"

    const-string v13, "META-INF/com/google/android/update-binary"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12, v13}, Lcom/koushikdutta/superuser/MainActivity$2;->doEntry(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v12, "assets/install-recovery.sh"

    const-string v13, "install-recovery.sh"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12, v13}, Lcom/koushikdutta/superuser/MainActivity$2;->doEntry(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-virtual {v11}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 121
    new-instance v9, Ljava/util/zip/ZipFile;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/koushikdutta/superuser/MainActivity$2;->this$0:Lcom/koushikdutta/superuser/MainActivity;

    invoke-virtual {v12}, Lcom/koushikdutta/superuser/MainActivity;->getPackageCodePath()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 122
    .local v9, zf:Ljava/util/zip/ZipFile;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "assets/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/koushikdutta/superuser/MainActivity$2;->this$0:Lcom/koushikdutta/superuser/MainActivity;

    #calls: Lcom/koushikdutta/superuser/MainActivity;->getArch()Ljava/lang/String;
    invoke-static {v13}, Lcom/koushikdutta/superuser/MainActivity;->access$000(Lcom/koushikdutta/superuser/MainActivity;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/reboot"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v8

    .line 125
    .local v8, ze:Ljava/util/zip/ZipEntry;
    invoke-virtual {v9, v8}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    .local v3, in:Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/koushikdutta/superuser/MainActivity$2;->this$0:Lcom/koushikdutta/superuser/MainActivity;

    const-string v13, "reboot"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lcom/koushikdutta/superuser/MainActivity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v5

    .local v5, reboot:Ljava/io/FileOutputStream;
    invoke-static {v3, v5}, Lcom/koushikdutta/superuser/util/StreamUtility;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 126
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 127
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 129
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/koushikdutta/superuser/MainActivity$2;->this$0:Lcom/koushikdutta/superuser/MainActivity;

    invoke-virtual {v12}, Lcom/koushikdutta/superuser/MainActivity;->extractSu()Ljava/io/File;

    move-result-object v7

    .line 131
    .local v7, su:Ljava/io/File;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "cat %s > /cache/superuser.zip\n"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "cat %s > /cache/su\n"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "cat %s > /cache/Superuser.apk\n"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/koushikdutta/superuser/MainActivity$2;->this$0:Lcom/koushikdutta/superuser/MainActivity;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/koushikdutta/superuser/MainActivity;->getPackageCodePath()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "mkdir /cache/recovery\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "echo \'--update_package=CACHE:superuser.zip\' > /cache/recovery/command\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "chmod 644 /cache/superuser.zip\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "chmod 644 /cache/recovery/command\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "sync\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "chmod 755 %s\n"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/koushikdutta/superuser/MainActivity$2;->this$0:Lcom/koushikdutta/superuser/MainActivity;

    move-object/from16 v16, v0

    const-string v17, "reboot"

    invoke-virtual/range {v16 .. v17}, Lcom/koushikdutta/superuser/MainActivity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "reboot recovery\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, command:Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v12

    const-string v13, "su"

    invoke-virtual {v12, v13}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 143
    .local v4, p:Ljava/lang/Process;
    invoke-virtual {v4}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/OutputStream;->write([B)V

    .line 144
    invoke-virtual {v4}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V

    .line 145
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/koushikdutta/superuser/MainActivity$2;->this$0:Lcom/koushikdutta/superuser/MainActivity;

    const-string v13, "reboot.sh"

    invoke-virtual {v12, v13}, Lcom/koushikdutta/superuser/MainActivity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 146
    .local v6, rebootScript:Ljava/io/File;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "reboot recovery ; "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/koushikdutta/superuser/MainActivity$2;->this$0:Lcom/koushikdutta/superuser/MainActivity;

    const-string v14, "reboot"

    invoke-virtual {v13, v14}, Lcom/koushikdutta/superuser/MainActivity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " recovery ;"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Lcom/koushikdutta/superuser/util/StreamUtility;->writeFile(Ljava/io/File;Ljava/lang/String;)V

    .line 147
    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I

    .line 148
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v12

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "su"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    const-string v15, "-c"

    aput-object v15, v13, v14

    const/4 v14, 0x2

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, ". "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v12, v13}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    .line 149
    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I

    move-result v12

    if-eqz v12, :cond_0

    .line 150
    new-instance v12, Ljava/lang/Exception;

    const-string v13, "non zero result"

    invoke-direct {v12, v13}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .end local v1           #command:Ljava/lang/String;
    .end local v3           #in:Ljava/io/InputStream;
    .end local v4           #p:Ljava/lang/Process;
    .end local v5           #reboot:Ljava/io/FileOutputStream;
    .end local v6           #rebootScript:Ljava/io/File;
    .end local v7           #su:Ljava/io/File;
    .end local v8           #ze:Ljava/util/zip/ZipEntry;
    .end local v9           #zf:Ljava/util/zip/ZipFile;
    .end local v10           #zip:Ljava/io/File;
    .end local v11           #zout:Ljava/util/zip/ZipOutputStream;
    :catch_0
    move-exception v2

    .line 153
    .local v2, ex:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 154
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/koushikdutta/superuser/MainActivity$2;->val$dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v12}, Landroid/app/ProgressDialog;->dismiss()V

    .line 156
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/koushikdutta/superuser/MainActivity$2;->this$0:Lcom/koushikdutta/superuser/MainActivity;

    new-instance v13, Lcom/koushikdutta/superuser/MainActivity$2$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/koushikdutta/superuser/MainActivity$2$1;-><init>(Lcom/koushikdutta/superuser/MainActivity$2;)V

    invoke-virtual {v12, v13}, Lcom/koushikdutta/superuser/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 167
    .end local v2           #ex:Ljava/lang/Exception;
    :cond_0
    return-void
.end method
