.class public final Lcom/android/internal/telephony/uicc/AdnRecordCache;
.super Landroid/os/Handler;
.source "AdnRecordCache.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccConstants;


# static fields
.field static final EVENT_LOAD_ALL_ADN_LIKE_DONE:I = 0x1

.field static final EVENT_UPDATE_ADN_DONE:I = 0x2

.field private static final USIM_EFANR_TAG:I = 0xc4

.field private static final USIM_EFEMAIL_TAG:I = 0xca


# instance fields
.field mAdnLikeFiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field mAdnLikeWaiters:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAdncountofIcc:I

.field private mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

.field mUserWriteResponse:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V
    .locals 2
    .parameter "fh"

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdncountofIcc:I

    .line 43
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    .line 47
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    .line 51
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    .line 66
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 67
    new-instance v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v0, v1, p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;Lcom/android/internal/telephony/uicc/AdnRecordCache;)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    .line 68
    return-void
.end method

.method private clearUserWriters()V
    .locals 4

    .prologue
    .line 95
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 96
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 97
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    const-string v3, "AdnCace reset"

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 100
    return-void
.end method

.method private clearWaiters()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 85
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 86
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 87
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 88
    .local v3, waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    new-instance v0, Landroid/os/AsyncResult;

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "AdnCache reset"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v6, v6, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 89
    .local v0, ar:Landroid/os/AsyncResult;
    invoke-direct {p0, v3, v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V

    .line 86
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 91
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v3           #waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 92
    return-void
.end method

.method private notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V
    .locals 5
    .parameter
    .parameter "ar"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;",
            "Landroid/os/AsyncResult;",
            ")V"
        }
    .end annotation

    .prologue
    .line 340
    .local p1, waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    if-nez p1, :cond_1

    .line 350
    :cond_0
    return-void

    .line 344
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, s:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 345
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 347
    .local v2, waiter:Landroid/os/Message;
    iget-object v3, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v4, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 348
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 344
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
    .locals 2
    .parameter "response"
    .parameter "errString"

    .prologue
    .line 130
    if-eqz p1, :cond_0

    .line 131
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 132
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 133
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 135
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method private updateEmailAndAnr(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;ILjava/lang/String;Landroid/os/Message;)V
    .locals 8
    .parameter "efid"
    .parameter "oldAdn"
    .parameter "newAdn"
    .parameter "index"
    .parameter "pin2"
    .parameter "response"

    .prologue
    .line 410
    iget v0, p3, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->extensionEfForEf(I)I

    move-result v3

    .line 411
    .local v3, extensionEF:I
    const/4 v7, 0x0

    .line 412
    .local v7, success:Z
    const/16 v0, 0xca

    invoke-direct {p0, p2, p3, p4, v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->updateUsimRecord(Lcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;II)Z

    move-result v7

    .line 414
    if-eqz v7, :cond_0

    .line 415
    const/16 v0, 0xc4

    invoke-direct {p0, p2, p3, p4, v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->updateUsimRecord(Lcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;II)Z

    move-result v7

    .line 420
    if-eqz v7, :cond_1

    .line 421
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 422
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    iget v2, p3, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    iget v4, p3, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    const/4 v1, 0x2

    invoke-virtual {p0, v1, p1, p4, p3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move-object v1, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/uicc/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    .line 429
    :goto_0
    return-void

    .line 417
    :cond_0
    const-string v0, "update email failed"

    invoke-direct {p0, p6, v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0

    .line 426
    :cond_1
    const-string v0, "update anr failed"

    invoke-direct {p0, p6, v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateUsimRecord(Lcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;II)Z
    .locals 14
    .parameter "oldAdn"
    .parameter "newAdn"
    .parameter "index"
    .parameter "tag"

    .prologue
    .line 432
    const/4 v8, 0x0

    .line 433
    .local v8, oldRecords:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 434
    .local v6, newRecords:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 435
    .local v7, oldRecord:Ljava/lang/String;
    const/4 v5, 0x0

    .line 436
    .local v5, newRecord:Ljava/lang/String;
    const/4 v10, 0x0

    .line 438
    .local v10, success:Z
    sparse-switch p4, :sswitch_data_0

    move v11, v10

    .line 484
    .end local v10           #success:Z
    .local v11, success:I
    :goto_0
    return v11

    .line 440
    .end local v11           #success:I
    .restart local v10       #success:Z
    :sswitch_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v8

    .line 441
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v6

    .line 450
    :goto_1
    if-eqz v8, :cond_0

    .line 451
    move-object v1, v8

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    if-ge v3, v4, :cond_0

    aget-object v9, v1, v3

    .line 452
    .local v9, record:Ljava/lang/String;
    move-object v7, v9

    .line 456
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v9           #record:Ljava/lang/String;
    :cond_0
    if-eqz v6, :cond_1

    .line 457
    move-object v1, v6

    .restart local v1       #arr$:[Ljava/lang/String;
    array-length v4, v1

    .restart local v4       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    if-ge v3, v4, :cond_1

    aget-object v9, v1, v3

    .line 458
    .restart local v9       #record:Ljava/lang/String;
    move-object v5, v9

    .line 462
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v9           #record:Ljava/lang/String;
    :cond_1
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3

    :cond_2
    if-eqz v7, :cond_4

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 465
    :cond_3
    const/4 v10, 0x1

    :goto_2
    move v11, v10

    .line 484
    .restart local v11       #success:I
    goto :goto_0

    .line 444
    .end local v11           #success:I
    :sswitch_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAdditionalNumbers()[Ljava/lang/String;

    move-result-object v8

    .line 445
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAdditionalNumbers()[Ljava/lang/String;

    move-result-object v6

    .line 446
    goto :goto_1

    .line 468
    :cond_4
    sparse-switch p4, :sswitch_data_1

    .line 477
    const/4 v10, 0x0

    goto :goto_2

    .line 470
    :sswitch_2
    :try_start_0
    iget-object v12, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move/from16 v0, p3

    invoke-virtual {v12, v0, v7, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateEmailFile(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v10

    .line 472
    goto :goto_2

    .line 474
    :sswitch_3
    iget-object v12, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move/from16 v0, p3

    invoke-virtual {v12, v0, v7, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateAnrFile(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 475
    goto :goto_2

    .line 479
    :catch_0
    move-exception v2

    .line 480
    .local v2, e:Ljava/lang/RuntimeException;
    const/4 v10, 0x0

    .line 481
    const-string v12, "AdnRecordCache"

    const-string v13, "update usim record failed"

    invoke-static {v12, v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 438
    nop

    :sswitch_data_0
    .sparse-switch
        0xc4 -> :sswitch_1
        0xca -> :sswitch_0
    .end sparse-switch

    .line 468
    :sswitch_data_1
    .sparse-switch
        0xc4 -> :sswitch_3
        0xca -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public extensionEfForEf(I)I
    .locals 1
    .parameter "efid"

    .prologue
    const/16 v0, 0x6f4a

    .line 118
    sparse-switch p1, :sswitch_data_0

    .line 125
    const/4 v0, -0x1

    :goto_0
    :sswitch_0
    return v0

    .line 119
    :sswitch_1
    const/16 v0, 0x6fc8

    goto :goto_0

    .line 121
    :sswitch_2
    const/16 v0, 0x6f4c

    goto :goto_0

    .line 122
    :sswitch_3
    const/16 v0, 0x6f4b

    goto :goto_0

    .line 124
    :sswitch_4
    const/4 v0, 0x0

    goto :goto_0

    .line 118
    :sswitch_data_0
    .sparse-switch
        0x4f30 -> :sswitch_4
        0x6f3a -> :sswitch_0
        0x6f3b -> :sswitch_3
        0x6f40 -> :sswitch_0
        0x6f49 -> :sswitch_2
        0x6fc7 -> :sswitch_1
    .end sparse-switch
.end method

.method public getAdnCount()I
    .locals 1

    .prologue
    .line 558
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdncountofIcc:I

    return v0
.end method

.method public getAnrCount()I
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAnrCount()I

    move-result v0

    return v0
.end method

.method public getEmailCount()I
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEmailCount()I

    move-result v0

    return v0
.end method

.method public getRecordsIfLoaded(I)Ljava/util/ArrayList;
    .locals 1
    .parameter "efid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSpareAnrCount()I
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getSpareAnrCount()I

    move-result v0

    return v0
.end method

.method public getSpareEmailCount()I
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getSpareEmailCount()I

    move-result v0

    return v0
.end method

.method public getUsimAdnCount()I
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getUsimAdnCount()I

    move-result v0

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/16 v8, 0x6f3a

    .line 360
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 405
    :cond_0
    :goto_0
    return-void

    .line 363
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 364
    .local v1, ar:Landroid/os/AsyncResult;
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 367
    .local v2, efid:I
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 368
    .local v5, waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->delete(I)V

    .line 370
    iget-object v6, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_1

    .line 371
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    iget-object v6, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v7, v2, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 373
    :cond_1
    invoke-direct {p0, v5, v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V

    .line 374
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 375
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->setAdnCount(I)V

    goto :goto_0

    .line 379
    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v2           #efid:I
    .end local v5           #waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 380
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 381
    .restart local v2       #efid:I
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 382
    .local v3, index:I
    iget-object v6, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object v0, v6

    check-cast v0, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 384
    .local v0, adn:Lcom/android/internal/telephony/uicc/AdnRecord;
    iget-object v6, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_3

    .line 385
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 386
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    add-int/lit8 v7, v3, -0x1

    invoke-virtual {v6, v7, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 388
    :cond_2
    const/16 v6, 0x4f30

    if-ne v2, v6, :cond_3

    .line 389
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadEfFilesFromUsim()Ljava/util/ArrayList;

    move-result-object v6

    add-int/lit8 v7, v3, -0x1

    invoke-virtual {v6, v7, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 393
    :cond_3
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Message;

    .line 394
    .local v4, response:Landroid/os/Message;
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->delete(I)V

    .line 398
    if-eqz v4, :cond_0

    .line 399
    const/4 v6, 0x0

    iget-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v4, v6, v7}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 400
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 360
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public requestLoadAllAdnLike(IILandroid/os/Message;)V
    .locals 6
    .parameter "efid"
    .parameter "extensionEf"
    .parameter "response"

    .prologue
    .line 283
    const/16 v2, 0x4f30

    if-ne p1, v2, :cond_1

    .line 284
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadEfFilesFromUsim()Ljava/util/ArrayList;

    move-result-object v0

    .line 290
    .local v0, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :goto_0
    if-eqz v0, :cond_2

    .line 291
    if-eqz p3, :cond_0

    .line 292
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iput-object v0, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 293
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 333
    :cond_0
    :goto_1
    return-void

    .line 286
    .end local v0           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;

    move-result-object v0

    .restart local v0       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    goto :goto_0

    .line 301
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 303
    .local v1, waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    if-eqz v1, :cond_3

    .line 307
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 313
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 314
    .restart local v1       #waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 319
    if-gez p2, :cond_4

    .line 322
    if-eqz p3, :cond_0

    .line 323
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF is not known ADN-like EF:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 325
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 331
    :cond_4
    new-instance v2, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v3, p1, v4}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, p1, p2, v3}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadAllFromEF(IILandroid/os/Message;)V

    goto :goto_1
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 77
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->reset()V

    .line 79
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->clearWaiters()V

    .line 80
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->clearUserWriters()V

    .line 82
    return-void
.end method

.method public setAdnCount(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 562
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdncountofIcc:I

    .line 563
    return-void
.end method

.method public updateAdnByIndex(ILcom/android/internal/telephony/uicc/AdnRecord;ILjava/lang/String;Landroid/os/Message;)V
    .locals 8
    .parameter "efid"
    .parameter "adn"
    .parameter "recordIndex"
    .parameter "pin2"
    .parameter "response"

    .prologue
    .line 150
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->extensionEfForEf(I)I

    move-result v3

    .line 151
    .local v3, extensionEF:I
    if-gez v3, :cond_0

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EF is not known ADN-like EF:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p5, v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 167
    :goto_0
    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Message;

    .line 157
    .local v7, pendingResponse:Landroid/os/Message;
    if-eqz v7, :cond_1

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Have pending update for EF:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p5, v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 164
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/4 v1, 0x2

    invoke-virtual {p0, v1, p1, p3, p2}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move-object v1, p2

    move v2, p1

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/uicc/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public updateAdnBySearch(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;Ljava/lang/String;Landroid/os/Message;)V
    .locals 21
    .parameter "efid"
    .parameter "oldAdn"
    .parameter "newAdn"
    .parameter "pin2"
    .parameter "response"

    .prologue
    .line 187
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->extensionEfForEf(I)I

    move-result v6

    .line 189
    .local v6, extensionEF:I
    if-gez v6, :cond_0

    .line 190
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EF is not known ADN-like EF:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 271
    .end local v6           #extensionEF:I
    :goto_0
    return-void

    .line 194
    .restart local v6       #extensionEF:I
    :cond_0
    const/16 v18, 0x0

    .line 196
    .local v18, oldAdnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    const/16 v3, 0x4f30

    move/from16 v0, p1

    if-ne v0, v3, :cond_1

    .line 197
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadEfFilesFromUsim()Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    .line 209
    :goto_1
    if-nez v18, :cond_2

    .line 210
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adn list not exist for EF:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0

    .line 199
    :cond_1
    :try_start_1
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v18

    goto :goto_1

    .line 201
    :catch_0
    move-exception v12

    .line 206
    .local v12, e:Ljava/lang/NullPointerException;
    const/16 v18, 0x0

    goto :goto_1

    .line 214
    .end local v12           #e:Ljava/lang/NullPointerException;
    :cond_2
    const/4 v7, -0x1

    .line 215
    .local v7, index:I
    const/4 v11, 0x1

    .line 216
    .local v11, count:I
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 217
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 218
    .local v17, nextAdnRecord:Lcom/android/internal/telephony/uicc/AdnRecord;
    const/4 v15, 0x0

    .line 219
    .local v15, isEmailOrAnrIsFull:Z
    const/16 v3, 0x4f30

    move/from16 v0, p1

    if-ne v0, v3, :cond_4

    .line 223
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    add-int/lit8 v4, v11, -0x1

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPbrIndexBy(I)I

    move-result v19

    .line 224
    .local v19, pbrIndex:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEmptyAnrNum_Pbrindex(I)I

    move-result v10

    .line 225
    .local v10, anrNum:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEmptyEmailNum_Pbrindex(I)I

    move-result v13

    .line 226
    .local v13, emailNum:I
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAdditionalNumbers()[Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAdditionalNumbers()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    if-nez v10, :cond_3

    .line 228
    const/4 v15, 0x1

    .line 230
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    if-nez v13, :cond_4

    .line 231
    const/4 v15, 0x1

    .line 235
    .end local v10           #anrNum:I
    .end local v13           #emailNum:I
    .end local v19           #pbrIndex:I
    :cond_4
    if-nez v15, :cond_6

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEqual(Lcom/android/internal/telephony/uicc/AdnRecord;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 236
    move v7, v11

    .line 242
    .end local v15           #isEmailOrAnrIsFull:Z
    .end local v17           #nextAdnRecord:Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_5
    const/4 v3, -0x1

    if-ne v7, v3, :cond_7

    .line 243
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adn record don\'t exist for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 239
    .restart local v15       #isEmailOrAnrIsFull:Z
    .restart local v17       #nextAdnRecord:Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_6
    add-int/lit8 v11, v11, 0x1

    .line 240
    goto :goto_2

    .line 246
    .end local v15           #isEmailOrAnrIsFull:Z
    .end local v17           #nextAdnRecord:Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_7
    const-string v3, "AdnRecordCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update oldADN:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", newAdn:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",index :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const/16 v3, 0x4f30

    move/from16 v0, p1

    if-ne v0, v3, :cond_8

    .line 250
    add-int/lit8 v3, v7, -0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 251
    .local v14, foundAdn:Lcom/android/internal/telephony/uicc/AdnRecord;
    iget v3, v14, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    move-object/from16 v0, p3

    iput v3, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    .line 252
    iget v3, v14, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    move-object/from16 v0, p3

    iput v3, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 253
    iget v3, v14, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    move-object/from16 v0, p3

    iput v3, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    .line 256
    .end local v14           #foundAdn:Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/os/Message;

    .line 258
    .local v20, pendingResponse:Landroid/os/Message;
    if-eqz v20, :cond_9

    .line 259
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Have pending update for EF:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 263
    :cond_9
    const/16 v3, 0x4f30

    move/from16 v0, p1

    if-ne v0, v3, :cond_a

    move-object/from16 v3, p0

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    .line 264
    invoke-direct/range {v3 .. v9}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->updateEmailAndAnr(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;ILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 266
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    move/from16 v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 267
    new-instance v3, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/4 v4, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v4, v1, v7, v2}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    move-object/from16 v4, p3

    move/from16 v5, p1

    move-object/from16 v8, p4

    invoke-virtual/range {v3 .. v9}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/uicc/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0
.end method

.method public updateUsimAdnByIndex(ILcom/android/internal/telephony/uicc/AdnRecord;ILjava/lang/String;Landroid/os/Message;)V
    .locals 12
    .parameter "efid"
    .parameter "newAdn"
    .parameter "recordIndex"
    .parameter "pin2"
    .parameter "response"

    .prologue
    .line 491
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->extensionEfForEf(I)I

    move-result v4

    .line 492
    .local v4, extensionEF:I
    if-gez v4, :cond_0

    .line 493
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EF is not known ADN-like EF:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 540
    .end local v4           #extensionEF:I
    :goto_0
    return-void

    .line 497
    .restart local v4       #extensionEF:I
    :cond_0
    const/4 v10, 0x0

    .line 499
    .local v10, oldAdnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    const/16 v1, 0x4f30

    if-ne p1, v1, :cond_1

    .line 500
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadEfFilesFromUsim()Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 512
    :goto_1
    if-nez v10, :cond_2

    .line 513
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adn list not exist for EF:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0

    .line 502
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v10

    goto :goto_1

    .line 504
    :catch_0
    move-exception v8

    .line 509
    .local v8, e:Ljava/lang/NullPointerException;
    const/4 v10, 0x0

    goto :goto_1

    .line 517
    .end local v8           #e:Ljava/lang/NullPointerException;
    :cond_2
    move v5, p3

    .line 519
    .local v5, index:I
    const/16 v1, 0x4f30

    if-ne p1, v1, :cond_3

    .line 520
    add-int/lit8 v1, v5, -0x1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 521
    .local v9, foundAdn:Lcom/android/internal/telephony/uicc/AdnRecord;
    iget v1, v9, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    iput v1, p2, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    .line 522
    iget v1, v9, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    iput v1, p2, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 523
    iget v1, v9, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    iput v1, p2, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    .line 526
    .end local v9           #foundAdn:Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Message;

    .line 528
    .local v11, pendingResponse:Landroid/os/Message;
    if-eqz v11, :cond_4

    .line 529
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Have pending update for EF:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0

    .line 533
    :cond_4
    const/16 v1, 0x4f30

    if-ne p1, v1, :cond_5

    .line 534
    add-int/lit8 v1, v5, -0x1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object v1, p0

    move v2, p1

    move-object v4, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->updateEmailAndAnr(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;ILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 536
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v0, p5

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 537
    new-instance v1, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1, v5, p2}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    move-object v2, p2

    move v3, p1

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/uicc/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0
.end method
