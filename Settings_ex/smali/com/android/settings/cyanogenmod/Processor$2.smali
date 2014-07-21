.class Lcom/android/settings/cyanogenmod/Processor$2;
.super Ljava/lang/Thread;
.source "Processor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/cyanogenmod/Processor;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/cyanogenmod/Processor;

.field final synthetic val$file:Ljava/lang/String;

.field final synthetic val$newValue:Ljava/lang/String;

.field final synthetic val$nrcpus:I


# direct methods
.method constructor <init>(Lcom/android/settings/cyanogenmod/Processor;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, Lcom/android/settings/cyanogenmod/Processor$2;->this$0:Lcom/android/settings/cyanogenmod/Processor;

    iput p2, p0, Lcom/android/settings/cyanogenmod/Processor$2;->val$nrcpus:I

    iput-object p3, p0, Lcom/android/settings/cyanogenmod/Processor$2;->val$file:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/settings/cyanogenmod/Processor$2;->val$newValue:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 254
    const/4 v1, 0x0

    .line 255
    .local v1, count:I
    const/4 v5, 0x5

    .line 256
    .local v5, maxcount:I
    const-string v9, "1"

    .line 257
    .local v9, on:Ljava/lang/String;
    const-string v8, "0"

    .line 258
    .local v8, off:Ljava/lang/String;
    const-string v10, ""

    .line 259
    .local v10, onfile:Ljava/lang/String;
    const-string v2, ""

    .line 260
    .local v2, cpufile:Ljava/lang/String;
    const-string v11, ""

    .line 261
    .local v11, savedstate:Ljava/lang/String;
    const-string v12, ""

    .line 262
    .local v12, state:Ljava/lang/String;
    const-string v6, "mpdecision"

    .line 263
    .local v6, mpdec:Ljava/lang/String;
    invoke-static {v6}, Landroid/os/SystemService;->getState(Ljava/lang/String;)Landroid/os/SystemService$State;

    move-result-object v7

    .line 265
    .local v7, mpdecstate:Landroid/os/SystemService$State;
    sget-object v13, Landroid/os/SystemService$State;->RUNNING:Landroid/os/SystemService$State;

    invoke-virtual {v7, v13}, Landroid/os/SystemService$State;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 266
    invoke-static {v6}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 269
    :cond_0
    const/4 v4, 0x1

    .local v4, i:I
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings/cyanogenmod/Processor$2;->val$nrcpus:I

    if-ge v4, v13, :cond_5

    .line 270
    const-string v13, "/sys/devices/system/cpu/cpu0/online"

    const-string v14, "cpu0"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "cpu"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 271
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/cyanogenmod/Processor$2;->val$file:Ljava/lang/String;

    const-string v14, "cpu0"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "cpu"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 272
    invoke-static {v10}, Lcom/android/settings/Utils;->fileReadOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 274
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 275
    invoke-static {v10}, Lcom/android/settings/Utils;->fileIsWritable(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 276
    invoke-static {v10, v9}, Lcom/android/settings/Utils;->fileWriteOneLine(Ljava/lang/String;Ljava/lang/String;)Z

    .line 285
    :cond_1
    :goto_1
    if-ge v1, v5, :cond_2

    .line 286
    const-wide/16 v13, 0xa

    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V

    .line 287
    invoke-static {v2}, Lcom/android/settings/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 288
    invoke-static {v2}, Lcom/android/settings/Utils;->fileIsWritable(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 289
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/cyanogenmod/Processor$2;->val$newValue:Ljava/lang/String;

    invoke-static {v2, v13}, Lcom/android/settings/Utils;->fileWriteOneLine(Ljava/lang/String;Ljava/lang/String;)Z

    .line 301
    :cond_2
    const/4 v1, 0x0

    .line 302
    invoke-static {v10}, Lcom/android/settings/Utils;->fileReadOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 304
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 305
    invoke-static {v10, v8}, Lcom/android/settings/Utils;->fileWriteOneLine(Ljava/lang/String;Ljava/lang/String;)Z

    .line 269
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 278
    :cond_4
    const-string v13, "ro.hardware"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 279
    .local v3, hw:Ljava/lang/String;
    const-string v13, "CPUSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " not writable, did you set ownership in init."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".rc?"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 308
    .end local v3           #hw:Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 311
    :cond_5
    sget-object v13, Landroid/os/SystemService$State;->RUNNING:Landroid/os/SystemService$State;

    invoke-virtual {v7, v13}, Landroid/os/SystemService$State;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 312
    invoke-static {v6}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    .line 314
    :cond_6
    return-void

    .line 292
    :cond_7
    :try_start_1
    const-string v13, "CPUSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " not writable, did you set ueventd rules?"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_8
    add-int/lit8 v1, v1, 0x1

    .line 297
    if-ne v1, v5, :cond_1

    .line 298
    const-string v13, "CPUSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed setting new value to "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method
