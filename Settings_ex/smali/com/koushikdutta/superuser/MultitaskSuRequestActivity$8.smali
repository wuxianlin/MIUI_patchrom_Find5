.class Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$8;
.super Ljava/lang/Thread;
.source "MultitaskSuRequestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->manageSocket()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;


# direct methods
.method constructor <init>(Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 306
    iput-object p1, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$8;->this$0:Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/16 v14, 0x14

    .line 310
    :try_start_0
    iget-object v10, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$8;->this$0:Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;

    new-instance v11, Landroid/net/LocalSocket;

    invoke-direct {v11}, Landroid/net/LocalSocket;-><init>()V

    iput-object v11, v10, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mSocket:Landroid/net/LocalSocket;

    .line 311
    iget-object v10, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$8;->this$0:Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;

    iget-object v10, v10, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mSocket:Landroid/net/LocalSocket;

    new-instance v11, Landroid/net/LocalSocketAddress;

    iget-object v12, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$8;->this$0:Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;

    iget-object v12, v12, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mSocketPath:Ljava/lang/String;

    sget-object v13, Landroid/net/LocalSocketAddress$Namespace;->FILESYSTEM:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v11, v12, v13}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v10, v11}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 313
    new-instance v5, Ljava/io/DataInputStream;

    iget-object v10, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$8;->this$0:Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;

    iget-object v10, v10, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v10}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v5, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 315
    .local v5, is:Ljava/io/DataInputStream;
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 318
    .local v9, payload:Landroid/content/ContentValues;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v14, :cond_3

    .line 319
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    .line 320
    .local v8, nameLen:I
    if-le v8, v14, :cond_1

    .line 321
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "name length too long: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    .end local v4           #i:I
    .end local v5           #is:Ljava/io/DataInputStream;
    .end local v8           #nameLen:I
    .end local v9           #payload:Landroid/content/ContentValues;
    :catch_0
    move-exception v3

    .line 358
    .local v3, ex:Ljava/lang/Exception;
    const-string v10, "Superuser"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 360
    :try_start_1
    iget-object v10, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$8;->this$0:Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;

    iget-object v10, v10, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v10}, Landroid/net/LocalSocket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 364
    :goto_1
    iget-object v10, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$8;->this$0:Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;

    new-instance v11, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$8$2;

    invoke-direct {v11, p0}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$8$2;-><init>(Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$8;)V

    invoke-virtual {v10, v11}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 371
    .end local v3           #ex:Ljava/lang/Exception;
    :cond_0
    :goto_2
    return-void

    .line 322
    .restart local v4       #i:I
    .restart local v5       #is:Ljava/io/DataInputStream;
    .restart local v8       #nameLen:I
    .restart local v9       #payload:Landroid/content/ContentValues;
    :cond_1
    :try_start_2
    new-array v7, v8, [B

    .line 323
    .local v7, nameBytes:[B
    invoke-virtual {v5, v7}, Ljava/io/DataInputStream;->readFully([B)V

    .line 324
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    .line 325
    .local v6, name:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 326
    .local v2, dataLen:I
    #calls: Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->getValueMax(Ljava/lang/String;)I
    invoke-static {v6}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->access$000(Ljava/lang/String;)I

    move-result v10

    if-le v2, v10, :cond_2

    .line 327
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " data length too long: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 328
    :cond_2
    new-array v1, v2, [B

    .line 329
    .local v1, dataBytes:[B
    invoke-virtual {v5, v1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 330
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 331
    .local v0, data:Ljava/lang/String;
    invoke-virtual {v9, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-string v10, "eof"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 339
    .end local v0           #data:Ljava/lang/String;
    .end local v1           #dataBytes:[B
    .end local v2           #dataLen:I
    .end local v6           #name:Ljava/lang/String;
    .end local v7           #nameBytes:[B
    .end local v8           #nameLen:I
    :cond_3
    iget-object v10, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$8;->this$0:Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;

    const-string v11, "from.uid"

    invoke-virtual {v9, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iput v11, v10, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mCallerUid:I

    .line 340
    iget-object v10, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$8;->this$0:Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;

    const-string v11, "to.uid"

    invoke-virtual {v9, v11}, Landroid/content/ContentValues;->getAsByte(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Byte;->byteValue()B

    move-result v11

    iput v11, v10, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mDesiredUid:I

    .line 341
    iget-object v10, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$8;->this$0:Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;

    const-string v11, "command"

    invoke-virtual {v9, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mDesiredCmd:Ljava/lang/String;

    .line 343
    iget-object v10, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$8;->this$0:Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;

    const-string v11, "pid"

    invoke-virtual {v9, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iput v11, v10, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->mPid:I

    .line 344
    iget-object v10, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$8;->this$0:Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;

    new-instance v11, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$8$1;

    invoke-direct {v11, p0}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$8$1;-><init>(Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$8;)V

    invoke-virtual {v10, v11}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 352
    const-string v10, "com.koushikdutta.superuser"

    iget-object v11, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$8;->this$0:Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;

    invoke-virtual {v11}, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 353
    sget-object v10, Lcom/koushikdutta/superuser/util/SuHelper;->CURRENT_VERSION:Ljava/lang/String;

    const-string v11, "binary.version"

    invoke-virtual {v9, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 354
    iget-object v10, p0, Lcom/koushikdutta/superuser/MultitaskSuRequestActivity$8;->this$0:Lcom/koushikdutta/superuser/MultitaskSuRequestActivity;

    invoke-static {v10}, Lcom/koushikdutta/superuser/SuCheckerReceiver;->doNotification(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 318
    .restart local v0       #data:Ljava/lang/String;
    .restart local v1       #dataBytes:[B
    .restart local v2       #dataLen:I
    .restart local v6       #name:Ljava/lang/String;
    .restart local v7       #nameBytes:[B
    .restart local v8       #nameLen:I
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 362
    .end local v0           #data:Ljava/lang/String;
    .end local v1           #dataBytes:[B
    .end local v2           #dataLen:I
    .end local v4           #i:I
    .end local v5           #is:Ljava/io/DataInputStream;
    .end local v6           #name:Ljava/lang/String;
    .end local v7           #nameBytes:[B
    .end local v8           #nameLen:I
    .end local v9           #payload:Landroid/content/ContentValues;
    .restart local v3       #ex:Ljava/lang/Exception;
    :catch_1
    move-exception v10

    goto/16 :goto_1
.end method
