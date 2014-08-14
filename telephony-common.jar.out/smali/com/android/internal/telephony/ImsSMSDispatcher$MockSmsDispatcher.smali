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
    .line 473
    iput-object p1, p0, Lcom/android/internal/telephony/ImsSMSDispatcher$MockSmsDispatcher;->this$0:Lcom/android/internal/telephony/ImsSMSDispatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/ImsSMSDispatcher;Lcom/android/internal/telephony/ImsSMSDispatcher$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 473
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ImsSMSDispatcher$MockSmsDispatcher;-><init>(Lcom/android/internal/telephony/ImsSMSDispatcher;)V

    return-void
.end method

.method private bcdTimestamp()[B
    .locals 16

    .prologue
    .line 702
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 703
    .local v0, c:Ljava/util/Calendar;
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v13, "yy"

    invoke-direct {v6, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 704
    .local v6, sdf:Ljava/text/SimpleDateFormat;
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v13, "Z"

    invoke-direct {v7, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 705
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

    .line 707
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

    .line 708
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

    .line 709
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

    .line 710
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

    .line 711
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

    .line 712
    .local v8, second:B
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 713
    .local v11, tz:Ljava/lang/String;
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    div-int/lit8 v9, v13, 0x64

    .line 714
    .local v9, timezone:I
    if-gez v9, :cond_0

    .line 715
    add-int/lit16 v9, v9, 0x80

    .line 717
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

    .line 718
    .local v1, data:[B
    const/4 v13, 0x0

    array-length v14, v1

    invoke-static {v1, v13, v14}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v10

    .line 719
    .local v10, ts:[B
    const/4 v13, 0x6

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x10

    invoke-static {v14, v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v14

    int-to-byte v14, v14

    aput-byte v14, v10, v13

    .line 720
    return-object v10
.end method

.method private dispatch([[BLjava/lang/String;)V
    .locals 10
    .parameter "pdus"
    .parameter "format"

    .prologue
    const/4 v4, 0x0

    .line 591
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.provider.Telephony.SMS_DELIVER"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 595
    .local v1, intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher$MockSmsDispatcher;->this$0:Lcom/android/internal/telephony/ImsSMSDispatcher;

    iget-object v0, v0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v9

    .line 596
    .local v9, componentName:Landroid/content/ComponentName;
    if-eqz v9, :cond_0

    .line 598
    invoke-virtual {v1, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 599
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

    .line 603
    :cond_0
    const-string v0, "pdus"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 604
    const-string v0, "format"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 605
    const/high16 v0, 0x800

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 606
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher$MockSmsDispatcher;->this$0:Lcom/android/internal/telephony/ImsSMSDispatcher;

    iget-object v0, v0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.RECEIVE_SMS"

    const/16 v3, 0x10

    const/4 v6, -0x1

    move-object v5, v4

    move-object v7, v4

    move-object v8, v4

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 608
    return-void
.end method

.method private getPdus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[[B
    .locals 22
    .parameter "scAddress"
    .parameter "senderAddress"
    .parameter "msg"

    .prologue
    .line 622
    invoke-static/range {p2 .. p2}, Landroid/telephony/PhoneNumberUtils;->isWellFormedSmsAddress(Ljava/lang/String;)Z

    move-result v12

    .line 623
    .local v12, isWellFormed:Z
    if-eqz v12, :cond_0

    move-object/from16 v15, p2

    .line 624
    .local v15, pduSenderAddress:Ljava/lang/String;
    :goto_0
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move/from16 v2, v18

    invoke-static {v0, v15, v1, v2}, Landroid/telephony/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/telephony/SmsMessage$SubmitPdu;

    move-result-object v17

    .line 628
    .local v17, submitPdu:Landroid/telephony/SmsMessage$SubmitPdu;
    const/16 v18, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;Z)[I

    move-result-object v18

    const/16 v19, 0x1

    aget v5, v18, v19

    .line 631
    .local v5, dataLen:I
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v13, v0, [B

    const/16 v18, 0x0

    const/16 v19, 0x0

    aput-byte v19, v13, v18

    const/16 v18, 0x1

    const/16 v19, 0x0

    aput-byte v19, v13, v18

    const/16 v18, 0x2

    int-to-byte v0, v5

    move/from16 v19, v0

    aput-byte v19, v13, v18

    .line 632
    .local v13, pds:[B
    new-instance v18, Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/telephony/SmsMessage$SubmitPdu;->encodedMessage:[B

    move-object/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Ljava/lang/String;-><init>([B)V

    new-instance v19, Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-direct {v0, v13}, Ljava/lang/String;-><init>([B)V

    const/16 v20, 0x4

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v18

    add-int/lit8 v6, v18, 0x2

    .line 635
    .local v6, dataPos:I
    move-object/from16 v0, v17

    iget-object v9, v0, Landroid/telephony/SmsMessage$SubmitPdu;->encodedScAddress:[B

    .line 636
    .local v9, encSc:[B
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/telephony/SmsMessage$SubmitPdu;->encodedMessage:[B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    sub-int v18, v18, v6

    move/from16 v0, v18

    new-array v8, v0, [B

    .line 637
    .local v8, encMsg:[B
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/telephony/SmsMessage$SubmitPdu;->encodedMessage:[B

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/telephony/SmsMessage$SubmitPdu;->encodedMessage:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    sub-int v20, v20, v6

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v6, v8, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 640
    const/4 v10, 0x0

    .line 642
    .local v10, encSender:[B
    if-nez v12, :cond_1

    .line 644
    :try_start_0
    invoke-static/range {p2 .. p2}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;)[B

    move-result-object v16

    .line 645
    .local v16, sender7BitPacked:[B
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x2

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    new-array v10, v0, [B

    .line 646
    const/16 v18, 0x0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    mul-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v10, v18

    .line 647
    const/16 v18, 0x1

    const/16 v19, -0x30

    aput-byte v19, v10, v18

    .line 648
    const/16 v18, 0x1

    const/16 v19, 0x2

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-static {v0, v1, v10, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 662
    .end local v16           #sender7BitPacked:[B
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ImsSMSDispatcher$MockSmsDispatcher;->bcdTimestamp()[B

    move-result-object v11

    .line 663
    .local v11, encTs:[B
    array-length v0, v9

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    array-length v0, v10

    move/from16 v19, v0

    add-int v18, v18, v19

    add-int/lit8 v18, v18, 0x2

    array-length v0, v11

    move/from16 v19, v0

    add-int v18, v18, v19

    array-length v0, v8

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    new-array v14, v0, [B

    .line 672
    .local v14, pdu:[B
    const/4 v4, 0x0

    .line 673
    .local v4, c:I
    const/16 v18, 0x0

    array-length v0, v9

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v9, v0, v14, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 674
    array-length v0, v9

    move/from16 v18, v0

    add-int v4, v4, v18

    .line 676
    const/16 v18, 0x4

    aput-byte v18, v14, v4

    .line 677
    add-int/lit8 v4, v4, 0x1

    .line 679
    const/16 v18, 0x0

    array-length v0, v10

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v10, v0, v14, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 680
    array-length v0, v10

    move/from16 v18, v0

    add-int v4, v4, v18

    .line 682
    const/16 v18, 0x0

    aput-byte v18, v14, v4

    .line 683
    add-int/lit8 v4, v4, 0x1

    .line 684
    const/16 v18, 0x0

    aput-byte v18, v14, v4

    .line 685
    add-int/lit8 v4, v4, 0x1

    .line 687
    const/16 v18, 0x0

    array-length v0, v11

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v11, v0, v14, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 688
    array-length v0, v11

    move/from16 v18, v0

    add-int v4, v4, v18

    .line 690
    const/16 v18, 0x0

    array-length v0, v8

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v8, v0, v14, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 693
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [[B

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v14, v18, v19

    return-object v18

    .line 623
    .end local v4           #c:I
    .end local v5           #dataLen:I
    .end local v6           #dataPos:I
    .end local v8           #encMsg:[B
    .end local v9           #encSc:[B
    .end local v10           #encSender:[B
    .end local v11           #encTs:[B
    .end local v13           #pds:[B
    .end local v14           #pdu:[B
    .end local v15           #pduSenderAddress:Ljava/lang/String;
    .end local v17           #submitPdu:Landroid/telephony/SmsMessage$SubmitPdu;
    :cond_0
    const-string v15, "+01123456789"

    goto/16 :goto_0

    .line 649
    .restart local v5       #dataLen:I
    .restart local v6       #dataPos:I
    .restart local v8       #encMsg:[B
    .restart local v9       #encSc:[B
    .restart local v10       #encSender:[B
    .restart local v13       #pds:[B
    .restart local v15       #pduSenderAddress:Ljava/lang/String;
    .restart local v17       #submitPdu:Landroid/telephony/SmsMessage$SubmitPdu;
    :catch_0
    move-exception v7

    .line 650
    .local v7, e:Lcom/android/internal/telephony/EncodeException;
    const-string v18, "MockSmsReceiver"

    const-string v19, "Failed to decode sender address. Using default."

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 651
    add-int/lit8 v18, v6, -0x4

    move/from16 v0, v18

    new-array v10, v0, [B

    .line 652
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/telephony/SmsMessage$SubmitPdu;->encodedMessage:[B

    move-object/from16 v18, v0

    const/16 v19, 0x2

    const/16 v20, 0x0

    add-int/lit8 v21, v6, -0x4

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-static {v0, v1, v10, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_1

    .line 657
    .end local v7           #e:Lcom/android/internal/telephony/EncodeException;
    :cond_1
    add-int/lit8 v18, v6, -0x4

    move/from16 v0, v18

    new-array v10, v0, [B

    .line 658
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/telephony/SmsMessage$SubmitPdu;->encodedMessage:[B

    move-object/from16 v18, v0

    const/16 v19, 0x2

    const/16 v20, 0x0

    add-int/lit8 v21, v6, -0x4

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-static {v0, v1, v10, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_1
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 512
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

    .line 513
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 514
    .local v2, action:Ljava/lang/String;
    const-string v16, "android.provider.Telephony.MOCK_SMS_RECEIVED"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1

    .line 588
    :cond_0
    :goto_0
    return-void

    .line 521
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

    .line 523
    .local v3, allowMockSMS:Z
    :goto_1
    if-nez v3, :cond_3

    .line 525
    const-string v16, "MockSmsReceiver"

    const-string v17, "Mock SMS is not allowed. Enable Mock SMS on Settings/Delevelopment."

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 585
    .end local v3           #allowMockSMS:Z
    :catch_0
    move-exception v4

    .line 586
    .local v4, ex:Ljava/lang/Exception;
    const-string v16, "MockSmsReceiver"

    const-string v17, "Failed to dispatch SMS"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 521
    .end local v4           #ex:Ljava/lang/Exception;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 531
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

    .line 532
    .local v12, packageManager:Landroid/content/pm/PackageManager;
    const-string v16, "android.hardware.telephony"

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_4

    .line 534
    const-string v16, "MockSmsReceiver"

    const-string v17, "Mock SMS is not allowed because telephony is not supported."

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 539
    :cond_4
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 540
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

    .line 541
    .local v9, messages:[Ljava/lang/Object;
    if-eqz v9, :cond_7

    array-length v0, v9

    move/from16 v16, v0

    if-lez v16, :cond_7

    .line 543
    array-length v0, v9

    move/from16 v16, v0

    move/from16 v0, v16

    new-array v13, v0, [[B

    .line 544
    .local v13, pdus:[[B
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    array-length v0, v9

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v7, v0, :cond_5

    .line 545
    aget-object v16, v9, v7

    check-cast v16, [B

    check-cast v16, [B

    aput-object v16, v13, v7

    .line 544
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 547
    :cond_5
    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 578
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

    .line 581
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

    .line 582
    .restart local v13       #pdus:[[B
    const-string v16, "3gpp"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v13, v1}, Lcom/android/internal/telephony/ImsSMSDispatcher$MockSmsDispatcher;->dispatch([[BLjava/lang/String;)V

    goto :goto_3

    .line 551
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v13           #pdus:[[B
    :cond_7
    const-string v16, "scAddr"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 552
    .local v14, scAddress:Ljava/lang/String;
    const-string v16, "senderAddr"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 553
    .local v15, senderAddress:Ljava/lang/String;
    const-string v16, "msg"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 556
    .local v10, msg:Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 557
    const-string v14, "+01123456789"

    .line 559
    :cond_8
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 560
    const-string v15, "+01123456789"

    .line 562
    :cond_9
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 563
    const-string v10, "This is a mock SMS message."

    .line 565
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

    .line 571
    invoke-static {v10}, Landroid/telephony/SmsMessage;->fragmentText(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 572
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

    .line 573
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
    .line 486
    :try_start_0
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 487
    .local v2, handler:Landroid/os/Handler;
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 488
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v3, "android.provider.Telephony.MOCK_SMS_RECEIVED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 489
    iget-object v3, p0, Lcom/android/internal/telephony/ImsSMSDispatcher$MockSmsDispatcher;->this$0:Lcom/android/internal/telephony/ImsSMSDispatcher;

    iget-object v3, v3, Lcom/android/internal/telephony/ImsSMSDispatcher;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.SEND_MOCK_SMS"

    invoke-virtual {v3, p0, v1, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 490
    const-string v3, "MockSmsReceiver"

    const-string v4, "Registered MockSmsReceiver"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    .end local v1           #filter:Landroid/content/IntentFilter;
    .end local v2           #handler:Landroid/os/Handler;
    :goto_0
    return-void

    .line 491
    :catch_0
    move-exception v0

    .line 492
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "MockSmsReceiver"

    const-string v4, "Failed to register MockSmsReceiver"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final unregisterReceiver()V
    .locals 3

    .prologue
    .line 501
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ImsSMSDispatcher$MockSmsDispatcher;->this$0:Lcom/android/internal/telephony/ImsSMSDispatcher;

    iget-object v1, v1, Lcom/android/internal/telephony/ImsSMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 505
    :goto_0
    return-void

    .line 502
    :catch_0
    move-exception v0

    .line 503
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "MockSmsReceiver"

    const-string v2, "Failed to unregister MockSmsReceiver"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
