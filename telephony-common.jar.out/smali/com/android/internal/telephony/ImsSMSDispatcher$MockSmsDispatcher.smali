.class final Lcom/android/internal/telephony/ImsSMSDispatcher$MockSmsDispatcher;
.super Landroid/content/BroadcastReceiver;
.source "ImsSMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ImsSMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MockSmsDispatcher"
.end annotation


# static fields
.field private static final MOCK_ADDRESS:Ljava/lang/String; = "+01123456789"

.field private static final SEND_MOCK_SMS_PERMISSION:Ljava/lang/String; = "android.permission.SEND_MOCK_SMS"

.field private static final TAG:Ljava/lang/String; = "MockSmsReceiver"


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/ImsSMSDispatcher;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/ImsSMSDispatcher;)V
    .locals 0
    .parameter

    .prologue
    .line 467
    iput-object p1, p0, Lcom/android/internal/telephony/ImsSMSDispatcher$MockSmsDispatcher;->this$0:Lcom/android/internal/telephony/ImsSMSDispatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/ImsSMSDispatcher;Lcom/android/internal/telephony/ImsSMSDispatcher$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 467
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ImsSMSDispatcher$MockSmsDispatcher;-><init>(Lcom/android/internal/telephony/ImsSMSDispatcher;)V

    return-void
.end method

.method private bcdTimestamp()[B
    .locals 16

    .prologue
    .line 697
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 698
    .local v0, c:Ljava/util/Calendar;
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v13, "yy"

    invoke-direct {v6, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 699
    .local v6, sdf:Ljava/text/SimpleDateFormat;
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v13, "Z"

    invoke-direct {v7, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 700
    .local v7, sdf2:Ljava/text/SimpleDateFormat;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x10

    invoke-static {v13, v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v13

    int-to-byte v12, v13

    .line 702
    .local v12, year:B
    const/4 v13, 0x2

    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x10

    invoke-static {v13, v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v13

    int-to-byte v5, v13

    .line 703
    .local v5, month:B
    const/4 v13, 0x5

    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x10

    invoke-static {v13, v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v13

    int-to-byte v2, v13

    .line 704
    .local v2, day:B
    const/16 v13, 0xa

    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x10

    invoke-static {v13, v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v13

    int-to-byte v3, v13

    .line 705
    .local v3, hour:B
    const/16 v13, 0xc

    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x10

    invoke-static {v13, v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v13

    int-to-byte v4, v13

    .line 706
    .local v4, minute:B
    const/16 v13, 0xd

    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x10

    invoke-static {v13, v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v13

    int-to-byte v8, v13

    .line 707
    .local v8, second:B
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 708
    .local v11, tz:Ljava/lang/String;
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    div-int/lit8 v9, v13, 0x64

    .line 709
    .local v9, timezone:I
    if-gez v9, :cond_0

    .line 710
    add-int/lit16 v9, v9, 0x80

    .line 712
    :cond_0
    const/4 v13, 0x7

    new-array v1, v13, [B

    const/4 v13, 0x0

    aput-byte v12, v1, v13

    const/4 v13, 0x1

    aput-byte v5, v1, v13

    const/4 v13, 0x2

    aput-byte v2, v1, v13

    const/4 v13, 0x3

    aput-byte v3, v1, v13

    const/4 v13, 0x4

    aput-byte v4, v1, v13

    const/4 v13, 0x5

    aput-byte v8, v1, v13

    const/4 v13, 0x6

    const/4 v14, 0x0

    aput-byte v14, v1, v13

    .line 713
    .local v1, data:[B
    const/4 v13, 0x0

    array-length v14, v1

    invoke-static {v1, v13, v14}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v10

    .line 714
    .local v10, ts:[B
    const/4 v13, 0x6

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x10

    invoke-static {v14, v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v14

    int-to-byte v14, v14

    aput-byte v14, v10, v13

    .line 715
    return-object v10
.end method

.method private dispatch([[BLjava/lang/String;)V
    .locals 10
    .parameter "pdus"
    .parameter "format"

    .prologue
    const/4 v4, 0x0

    .line 585
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.provider.Telephony.SMS_DELIVER"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 589
    .local v1, intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher$MockSmsDispatcher;->this$0:Lcom/android/internal/telephony/ImsSMSDispatcher;

    iget-object v0, v0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v9

    .line 590
    .local v9, componentName:Landroid/content/ComponentName;
    if-eqz v9, :cond_0

    .line 592
    invoke-virtual {v1, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 593
    const-string v0, "MockSmsReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Delivering SMS to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    :cond_0
    const-string v0, "pdus"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 598
    const-string v0, "format"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 599
    const/high16 v0, 0x800

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 600
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher$MockSmsDispatcher;->this$0:Lcom/android/internal/telephony/ImsSMSDispatcher;

    iget-object v0, v0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.RECEIVE_SMS"

    const/16 v3, 0x10

    const/4 v6, -0x1

    move-object v5, v4

    move-object v7, v4

    move-object v8, v4

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 602
    return-void
.end method

.method private getPdus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[[B
    .locals 18
    .parameter "scAddress"
    .parameter "senderAddress"
    .parameter "msg"

    .prologue
    .line 615
    const-string v14, "+01123456789"

    const/4 v15, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v14, v1, v15}, Landroid/telephony/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/telephony/SmsMessage$SubmitPdu;

    move-result-object v13

    .line 623
    .local v13, submitPdu:Landroid/telephony/SmsMessage$SubmitPdu;
    const/4 v14, 0x1

    move-object/from16 v0, p3

    invoke-static {v0, v14}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;Z)[I

    move-result-object v14

    const/4 v15, 0x1

    aget v3, v14, v15

    .line 626
    .local v3, dataLen:I
    const/4 v14, 0x3

    new-array v10, v14, [B

    const/4 v14, 0x0

    const/4 v15, 0x0

    aput-byte v15, v10, v14

    const/4 v14, 0x1

    const/4 v15, 0x0

    aput-byte v15, v10, v14

    const/4 v14, 0x2

    int-to-byte v15, v3

    aput-byte v15, v10, v14

    .line 627
    .local v10, pds:[B
    new-instance v14, Ljava/lang/String;

    iget-object v15, v13, Landroid/telephony/SmsMessage$SubmitPdu;->encodedMessage:[B

    invoke-direct {v14, v15}, Ljava/lang/String;-><init>([B)V

    new-instance v15, Ljava/lang/String;

    invoke-direct {v15, v10}, Ljava/lang/String;-><init>([B)V

    const/16 v16, 0x4

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v14

    add-int/lit8 v4, v14, 0x2

    .line 630
    .local v4, dataPos:I
    iget-object v7, v13, Landroid/telephony/SmsMessage$SubmitPdu;->encodedScAddress:[B

    .line 631
    .local v7, encSc:[B
    iget-object v14, v13, Landroid/telephony/SmsMessage$SubmitPdu;->encodedMessage:[B

    array-length v14, v14

    sub-int/2addr v14, v4

    new-array v6, v14, [B

    .line 632
    .local v6, encMsg:[B
    iget-object v14, v13, Landroid/telephony/SmsMessage$SubmitPdu;->encodedMessage:[B

    const/4 v15, 0x0

    iget-object v0, v13, Landroid/telephony/SmsMessage$SubmitPdu;->encodedMessage:[B

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    sub-int v16, v16, v4

    move/from16 v0, v16

    invoke-static {v14, v4, v6, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 635
    const/4 v8, 0x0

    .line 637
    .local v8, encSender:[B
    invoke-static/range {p2 .. p2}, Landroid/telephony/PhoneNumberUtils;->isWellFormedSmsAddress(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 639
    :try_start_0
    invoke-static/range {p2 .. p2}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;)[B

    move-result-object v12

    .line 640
    .local v12, sender7BitPacked:[B
    array-length v14, v12

    add-int/lit8 v14, v14, 0x2

    add-int/lit8 v14, v14, -0x1

    new-array v8, v14, [B

    .line 641
    const/4 v14, 0x0

    array-length v15, v12

    add-int/lit8 v15, v15, -0x1

    mul-int/lit8 v15, v15, 0x2

    int-to-byte v15, v15

    aput-byte v15, v8, v14

    .line 642
    const/4 v14, 0x1

    const/16 v15, -0x30

    aput-byte v15, v8, v14

    .line 643
    const/4 v14, 0x1

    const/4 v15, 0x2

    array-length v0, v12

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    invoke-static {v12, v14, v8, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 657
    .end local v12           #sender7BitPacked:[B
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ImsSMSDispatcher$MockSmsDispatcher;->bcdTimestamp()[B

    move-result-object v9

    .line 658
    .local v9, encTs:[B
    array-length v14, v7

    add-int/lit8 v14, v14, 0x1

    array-length v15, v8

    add-int/2addr v14, v15

    add-int/lit8 v14, v14, 0x2

    array-length v15, v9

    add-int/2addr v14, v15

    array-length v15, v6

    add-int/2addr v14, v15

    new-array v11, v14, [B

    .line 667
    .local v11, pdu:[B
    const/4 v2, 0x0

    .line 668
    .local v2, c:I
    const/4 v14, 0x0

    array-length v15, v7

    invoke-static {v7, v14, v11, v2, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 669
    array-length v14, v7

    add-int/2addr v2, v14

    .line 671
    const/4 v14, 0x4

    aput-byte v14, v11, v2

    .line 672
    add-int/lit8 v2, v2, 0x1

    .line 674
    const/4 v14, 0x0

    array-length v15, v8

    invoke-static {v8, v14, v11, v2, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 675
    array-length v14, v8

    add-int/2addr v2, v14

    .line 677
    const/4 v14, 0x0

    aput-byte v14, v11, v2

    .line 678
    add-int/lit8 v2, v2, 0x1

    .line 679
    const/4 v14, 0x0

    aput-byte v14, v11, v2

    .line 680
    add-int/lit8 v2, v2, 0x1

    .line 682
    const/4 v14, 0x0

    array-length v15, v9

    invoke-static {v9, v14, v11, v2, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 683
    array-length v14, v9

    add-int/2addr v2, v14

    .line 685
    const/4 v14, 0x0

    array-length v15, v6

    invoke-static {v6, v14, v11, v2, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 688
    const/4 v14, 0x1

    new-array v14, v14, [[B

    const/4 v15, 0x0

    aput-object v11, v14, v15

    return-object v14

    .line 644
    .end local v2           #c:I
    .end local v9           #encTs:[B
    .end local v11           #pdu:[B
    :catch_0
    move-exception v5

    .line 645
    .local v5, e:Lcom/android/internal/telephony/EncodeException;
    const-string v14, "MockSmsReceiver"

    const-string v15, "Failed to decode sender address. Using default."

    invoke-static {v14, v15, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 646
    add-int/lit8 v14, v4, -0x4

    new-array v8, v14, [B

    .line 647
    iget-object v14, v13, Landroid/telephony/SmsMessage$SubmitPdu;->encodedMessage:[B

    const/4 v15, 0x2

    const/16 v16, 0x0

    add-int/lit8 v17, v4, -0x4

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v14, v15, v8, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 652
    .end local v5           #e:Lcom/android/internal/telephony/EncodeException;
    :cond_0
    add-int/lit8 v14, v4, -0x4

    new-array v8, v14, [B

    .line 653
    iget-object v14, v13, Landroid/telephony/SmsMessage$SubmitPdu;->encodedMessage:[B

    const/4 v15, 0x2

    const/16 v16, 0x0

    add-int/lit8 v17, v4, -0x4

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v14, v15, v8, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 506
    const-string v16, "MockSmsReceiver"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "New mock SMS reception request. Intent: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 508
    .local v2, action:Ljava/lang/String;
    const-string v16, "android.provider.Telephony.MOCK_SMS_RECEIVED"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1

    .line 582
    :cond_0
    :goto_0
    return-void

    .line 515
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ImsSMSDispatcher$MockSmsDispatcher;->this$0:Lcom/android/internal/telephony/ImsSMSDispatcher;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "mock_sms"

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    const/4 v3, 0x1

    .line 517
    .local v3, allowMockSMS:Z
    :goto_1
    if-nez v3, :cond_3

    .line 519
    const-string v16, "MockSmsReceiver"

    const-string v17, "Mock SMS is not allowed. Enable Mock SMS on Settings/Delevelopment."

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 579
    .end local v3           #allowMockSMS:Z
    :catch_0
    move-exception v4

    .line 580
    .local v4, ex:Ljava/lang/Exception;
    const-string v16, "MockSmsReceiver"

    const-string v17, "Failed to dispatch SMS"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 515
    .end local v4           #ex:Ljava/lang/Exception;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 525
    .restart local v3       #allowMockSMS:Z
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ImsSMSDispatcher$MockSmsDispatcher;->this$0:Lcom/android/internal/telephony/ImsSMSDispatcher;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 526
    .local v12, packageManager:Landroid/content/pm/PackageManager;
    const-string v16, "android.hardware.telephony"

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_4

    .line 528
    const-string v16, "MockSmsReceiver"

    const-string v17, "Mock SMS is not allowed because telephony is not supported."

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 533
    :cond_4
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 534
    .local v11, msgs:Ljava/util/List;,"Ljava/util/List<[[B>;"
    const-string v16, "pdus"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v16

    check-cast v16, [Ljava/lang/Object;

    move-object/from16 v0, v16

    check-cast v0, [Ljava/lang/Object;

    move-object v9, v0

    .line 535
    .local v9, messages:[Ljava/lang/Object;
    if-eqz v9, :cond_7

    array-length v0, v9

    move/from16 v16, v0

    if-lez v16, :cond_7

    .line 537
    array-length v0, v9

    move/from16 v16, v0

    move/from16 v0, v16

    new-array v13, v0, [[B

    .line 538
    .local v13, pdus:[[B
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    array-length v0, v9

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v7, v0, :cond_5

    .line 539
    aget-object v16, v9, v7

    check-cast v16, [B

    check-cast v16, [B

    aput-object v16, v13, v7

    .line 538
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 541
    :cond_5
    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 572
    .end local v7           #i:I
    .end local v13           #pdus:[[B
    :cond_6
    const-string v16, "MockSmsReceiver"

    const-string v17, "Mock SMS. Number of msg: %d"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [[B

    .line 576
    .restart local v13       #pdus:[[B
    const-string v16, "3gpp"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v13, v1}, Lcom/android/internal/telephony/ImsSMSDispatcher$MockSmsDispatcher;->dispatch([[BLjava/lang/String;)V

    goto :goto_3

    .line 545
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v13           #pdus:[[B
    :cond_7
    const-string v16, "scAddr"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 546
    .local v14, scAddress:Ljava/lang/String;
    const-string v16, "senderAddr"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 547
    .local v15, senderAddress:Ljava/lang/String;
    const-string v16, "msg"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 550
    .local v10, msg:Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 551
    const-string v14, "+01123456789"

    .line 553
    :cond_8
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 554
    const-string v15, "+01123456789"

    .line 556
    :cond_9
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 557
    const-string v10, "This is a mock SMS message."

    .line 559
    :cond_a
    const-string v16, "MockSmsReceiver"

    const-string v17, "Mock SMS. scAddress: %s, senderAddress: %s, msg: %s"

    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v14, v18, v19

    const/16 v19, 0x1

    aput-object v15, v18, v19

    const/16 v19, 0x2

    aput-object v10, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    invoke-static {v10}, Landroid/telephony/SmsMessage;->fragmentText(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 566
    .local v6, fragmentMsgs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 567
    .local v5, fragmentMsg:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v5}, Lcom/android/internal/telephony/ImsSMSDispatcher$MockSmsDispatcher;->getPdus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method public final registerReceiver()V
    .locals 5

    .prologue
    .line 480
    :try_start_0
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 481
    .local v2, handler:Landroid/os/Handler;
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 482
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v3, "android.provider.Telephony.MOCK_SMS_RECEIVED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 483
    iget-object v3, p0, Lcom/android/internal/telephony/ImsSMSDispatcher$MockSmsDispatcher;->this$0:Lcom/android/internal/telephony/ImsSMSDispatcher;

    iget-object v3, v3, Lcom/android/internal/telephony/ImsSMSDispatcher;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.SEND_MOCK_SMS"

    invoke-virtual {v3, p0, v1, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 484
    const-string v3, "MockSmsReceiver"

    const-string v4, "Registered MockSmsReceiver"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 488
    .end local v1           #filter:Landroid/content/IntentFilter;
    .end local v2           #handler:Landroid/os/Handler;
    :goto_0
    return-void

    .line 485
    :catch_0
    move-exception v0

    .line 486
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "MockSmsReceiver"

    const-string v4, "Failed to register MockSmsReceiver"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final unregisterReceiver()V
    .locals 3

    .prologue
    .line 495
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ImsSMSDispatcher$MockSmsDispatcher;->this$0:Lcom/android/internal/telephony/ImsSMSDispatcher;

    iget-object v1, v1, Lcom/android/internal/telephony/ImsSMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    :goto_0
    return-void

    .line 496
    :catch_0
    move-exception v0

    .line 497
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "MockSmsReceiver"

    const-string v2, "Failed to unregister MockSmsReceiver"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
