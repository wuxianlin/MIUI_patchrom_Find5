.class Lcom/koushikdutta/superuser/MainActivity$3;
.super Ljava/lang/Thread;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/superuser/MainActivity;->doSystemInstall()V
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
    .line 177
    iput-object p1, p0, Lcom/koushikdutta/superuser/MainActivity$3;->this$0:Lcom/koushikdutta/superuser/MainActivity;

    iput-object p2, p0, Lcom/koushikdutta/superuser/MainActivity$3;->val$dlg:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 179
    const/4 v0, 0x0

    .line 181
    .local v0, _error:Z
    :try_start_0
    iget-object v6, p0, Lcom/koushikdutta/superuser/MainActivity$3;->this$0:Lcom/koushikdutta/superuser/MainActivity;

    invoke-virtual {v6}, Lcom/koushikdutta/superuser/MainActivity;->extractSu()Ljava/io/File;

    move-result-object v5

    .line 182
    .local v5, su:Ljava/io/File;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mount -orw,remount /system\nrm /system/xbin/su\nrm /system/bin/su\nrm /system/app/Supersu.*\nrm /system/app/superuser.*\nrm /system/app/supersu.*\nrm /system/app/SuperUser.*\nrm /system/app/SuperSU.*\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "cat %s > /system/xbin/su\n"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "chmod 6755 /system/xbin/su\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ln -s /system/xbin/su /system/bin/su\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "mount -oro,remount /system\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "sync\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 196
    .local v1, command:Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    const-string v7, "su"

    invoke-virtual {v6, v7}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 197
    .local v4, p:Ljava/lang/Process;
    invoke-virtual {v4}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/OutputStream;->write([B)V

    .line 198
    invoke-virtual {v4}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 199
    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I

    move-result v6

    if-eqz v6, :cond_0

    .line 200
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "non zero result"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    .end local v1           #command:Ljava/lang/String;
    .end local v4           #p:Ljava/lang/Process;
    .end local v5           #su:Ljava/io/File;
    :catch_0
    move-exception v3

    .line 204
    .local v3, ex:Ljava/lang/Exception;
    const/4 v0, 0x1

    .line 205
    const-string v6, "Superuser"

    const-string v7, "error upgrading"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 207
    .end local v3           #ex:Ljava/lang/Exception;
    :goto_0
    iget-object v6, p0, Lcom/koushikdutta/superuser/MainActivity$3;->val$dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->dismiss()V

    .line 208
    move v2, v0

    .line 209
    .local v2, error:Z
    iget-object v6, p0, Lcom/koushikdutta/superuser/MainActivity$3;->this$0:Lcom/koushikdutta/superuser/MainActivity;

    new-instance v7, Lcom/koushikdutta/superuser/MainActivity$3$1;

    invoke-direct {v7, p0, v2}, Lcom/koushikdutta/superuser/MainActivity$3$1;-><init>(Lcom/koushikdutta/superuser/MainActivity$3;Z)V

    invoke-virtual {v6, v7}, Lcom/koushikdutta/superuser/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 225
    return-void

    .line 201
    .end local v2           #error:Z
    .restart local v1       #command:Ljava/lang/String;
    .restart local v4       #p:Ljava/lang/Process;
    .restart local v5       #su:Ljava/io/File;
    :cond_0
    :try_start_1
    iget-object v6, p0, Lcom/koushikdutta/superuser/MainActivity$3;->this$0:Lcom/koushikdutta/superuser/MainActivity;

    invoke-static {v6}, Lcom/koushikdutta/superuser/util/SuHelper;->checkSu(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
