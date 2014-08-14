.class public Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;
.super Lcom/android/internal/telephony/ISms$Stub;
.source "IccSmsInterfaceManagerProxy.java"


# static fields
.field private static final WAKE_LOCK_TIMEOUT:I = 0x1388


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/IccSmsInterfaceManager;)V
    .locals 1
    .parameter "context"
    .parameter "iccSmsInterfaceManager"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/internal/telephony/ISms$Stub;-><init>()V

    .line 41
    new-instance v0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy$1;-><init>(Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;)V

    iput-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 107
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mHandler:Landroid/os/Handler;

    .line 85
    iput-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mContext:Landroid/content/Context;

    .line 86
    iput-object p2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    .line 87
    const-string v0, "isms"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 88
    const-string v0, "isms"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 91
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->createWakelock()V

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;)Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    return-object v0
.end method

.method private broadcastOutgoingSms(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;IZI)V
    .locals 10
    .parameter "callingPackage"
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "multipart"
    .parameter
    .parameter
    .parameter
    .parameter "priority"
    .parameter "isExpectMore"
    .parameter "validityPeriod"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;IZI)V"
        }
    .end annotation

    .prologue
    .line 305
    .local p5, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p6, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p7, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    new-instance v2, Landroid/content/Intent;

    const-string v1, "android.intent.action.NEW_OUTGOING_SMS"

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 306
    .local v2, broadcast:Landroid/content/Intent;
    const-string v1, "destAddr"

    invoke-virtual {v2, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 307
    const-string v1, "scAddr"

    invoke-virtual {v2, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    const-string v1, "multipart"

    invoke-virtual {v2, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 309
    const-string v1, "callingPackage"

    invoke-virtual {v2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    const-string v1, "callingUid"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 311
    const-string v1, "parts"

    invoke-virtual {v2, v1, p5}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 312
    const-string v1, "sentIntents"

    move-object/from16 v0, p6

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 313
    const-string v1, "deliveryIntents"

    move-object/from16 v0, p7

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 314
    const-string v1, "priority"

    move/from16 v0, p8

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 315
    const-string v1, "isExpectMore"

    move/from16 v0, p9

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 316
    const-string v1, "validityPeriod"

    move/from16 v0, p10

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 317
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const-string v4, "android.permission.INTERCEPT_SMS"

    iget-object v5, p0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v9, 0x0

    move-object v8, p2

    invoke-virtual/range {v1 .. v9}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 320
    return-void
.end method

.method private createWakelock()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 99
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 100
    .local v0, pm:Landroid/os/PowerManager;
    const-string v1, "IccSmsInterfaceManager"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 101
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 102
    return-void
.end method

.method private dispatch(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 9
    .parameter "intent"
    .parameter "permission"

    .prologue
    const/4 v4, 0x0

    .line 129
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 130
    const/high16 v0, 0x800

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 131
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mContext:Landroid/content/Context;

    const/16 v3, 0x10

    iget-object v5, p0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mHandler:Landroid/os/Handler;

    const/4 v6, -0x1

    move-object v1, p1

    move-object v2, p2

    move-object v7, v4

    move-object v8, v4

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 133
    return-void
.end method

.method private dispatchPdus([[B)V
    .locals 4
    .parameter "pdus"

    .prologue
    .line 109
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.provider.Telephony.SMS_DELIVER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 112
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v0

    .line 113
    .local v0, componentName:Landroid/content/ComponentName;
    if-nez v0, :cond_0

    .line 124
    :goto_0
    return-void

    .line 116
    :cond_0
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 117
    const-string v2, "pdus"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 118
    const-string v2, "format"

    const-string v3, "synthetic"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    const-string v2, "android.permission.RECEIVE_SMS"

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 121
    const-string v2, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 123
    const-string v2, "android.permission.RECEIVE_SMS"

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public copyMessageToIccEf(Ljava/lang/String;I[B[B)Z
    .locals 1
    .parameter "callingPackage"
    .parameter "status"
    .parameter "pdu"
    .parameter "smsc"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->copyMessageToIccEf(Ljava/lang/String;I[B[B)Z

    move-result v0

    return v0
.end method

.method public disableCellBroadcast(I)Z
    .locals 1
    .parameter "messageIdentifier"

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->disableCellBroadcast(I)Z

    move-result v0

    return v0
.end method

.method public disableCellBroadcastRange(II)Z
    .locals 1
    .parameter "startMessageId"
    .parameter "endMessageId"

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->disableCellBroadcastRange(II)Z

    move-result v0

    return v0
.end method

.method public enableCellBroadcast(I)Z
    .locals 1
    .parameter "messageIdentifier"

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->enableCellBroadcast(I)Z

    move-result v0

    return v0
.end method

.method public enableCellBroadcastRange(II)Z
    .locals 1
    .parameter "startMessageId"
    .parameter "endMessageId"

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->enableCellBroadcastRange(II)Z

    move-result v0

    return v0
.end method

.method public getAllMessagesFromIccEf(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "callingPackage"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getAllMessagesFromIccEf(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getImsSmsFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getImsSmsFormat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPremiumSmsPermission(Ljava/lang/String;)I
    .locals 1
    .parameter "packageName"

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getPremiumSmsPermission(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public isImsSmsSupported()Z
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->isImsSmsSupported()Z

    move-result v0

    return v0
.end method

.method public sendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 8
    .parameter "callingPackage"
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "destPort"
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 170
    return-void
.end method

.method public sendDataWithOrigPort(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 9
    .parameter "callingPackage"
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "destPort"
    .parameter "origPort"
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendDataWithOrigPort(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 178
    return-void
.end method

.method public sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 12
    .parameter "callingPackage"
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 227
    .local p4, parts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p5, sentIntents:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p6, deliveryIntents:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.SEND_SMS"

    const-string v3, "Sending SMS message"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->isShortSMSCode(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 240
    :goto_0
    return-void

    .line 235
    :cond_0
    const/4 v5, 0x1

    if-eqz p4, :cond_1

    new-instance v6, Ljava/util/ArrayList;

    move-object/from16 v0, p4

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_1
    if-eqz p5, :cond_2

    new-instance v7, Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_2
    if-eqz p6, :cond_3

    new-instance v8, Ljava/util/ArrayList;

    move-object/from16 v0, p6

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_3
    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v11}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->broadcastOutgoingSms(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;IZI)V

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    goto :goto_3
.end method

.method public sendMultipartTextWithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;IZI)V
    .locals 12
    .parameter "callingPackage"
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter
    .parameter
    .parameter
    .parameter "priority"
    .parameter "isExpectMore"
    .parameter "validityPeriod"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;IZI)V"
        }
    .end annotation

    .prologue
    .line 246
    .local p4, parts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p5, sentIntents:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p6, deliveryIntents:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.SEND_SMS"

    const-string v3, "Sending SMS message"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->isShortSMSCode(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 250
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendMultipartTextWithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;IZI)V

    .line 259
    :goto_0
    return-void

    .line 254
    :cond_0
    const/4 v5, 0x1

    if-eqz p4, :cond_1

    new-instance v6, Ljava/util/ArrayList;

    move-object/from16 v0, p4

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_1
    if-eqz p5, :cond_2

    new-instance v7, Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_2
    if-eqz p6, :cond_3

    new-instance v8, Ljava/util/ArrayList;

    move-object/from16 v0, p6

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_3
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-direct/range {v1 .. v11}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->broadcastOutgoingSms(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;IZI)V

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    goto :goto_3
.end method

.method public sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 12
    .parameter "callingPackage"
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 183
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.SEND_SMS"

    const-string v3, "Sending SMS message"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->isShortSMSCode(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 199
    :goto_0
    return-void

    .line 191
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 192
    .local v6, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 194
    .local v7, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    move-object/from16 v0, p5

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 196
    .local v8, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    move-object/from16 v0, p6

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    const/4 v5, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v11}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->broadcastOutgoingSms(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;IZI)V

    goto :goto_0
.end method

.method public sendTextWithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;IZI)V
    .locals 12
    .parameter "callingPackage"
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "priority"
    .parameter "isExpectMore"
    .parameter "validityPeriod"

    .prologue
    .line 205
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.SEND_SMS"

    const-string v3, "Sending SMS message"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->isShortSMSCode(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendTextWithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;IZI)V

    .line 221
    :goto_0
    return-void

    .line 213
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 214
    .local v6, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 216
    .local v7, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    move-object/from16 v0, p5

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .local v8, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    move-object/from16 v0, p6

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-direct/range {v1 .. v11}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->broadcastOutgoingSms(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;IZI)V

    goto :goto_0
.end method

.method public setPremiumSmsPermission(Ljava/lang/String;I)V
    .locals 1
    .parameter "packageName"
    .parameter "permission"

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->setPremiumSmsPermission(Ljava/lang/String;I)V

    .line 289
    return-void
.end method

.method public setmIccSmsInterfaceManager(Lcom/android/internal/telephony/IccSmsInterfaceManager;)V
    .locals 0
    .parameter "iccSmsInterfaceManager"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    .line 96
    return-void
.end method

.method public synthesizeMessages(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;J)V
    .locals 8
    .parameter "originatingAddress"
    .parameter "scAddress"
    .parameter
    .parameter "timestampMillis"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 137
    .local p3, messages:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BROADCAST_SMS"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    new-array v7, v1, [[B

    .line 140
    .local v7, pdus:[[B
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-ge v6, v1, :cond_0

    .line 141
    new-instance v0, Lcom/android/internal/telephony/SyntheticSmsMessage;

    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/SyntheticSmsMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 143
    .local v0, message:Lcom/android/internal/telephony/SyntheticSmsMessage;
    invoke-virtual {v0}, Lcom/android/internal/telephony/SyntheticSmsMessage;->getPdu()[B

    move-result-object v1

    aput-object v1, v7, v6

    .line 140
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 145
    .end local v0           #message:Lcom/android/internal/telephony/SyntheticSmsMessage;
    :cond_0
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->dispatchPdus([[B)V

    .line 146
    return-void
.end method

.method public updateMessageOnIccEf(Ljava/lang/String;II[B)Z
    .locals 1
    .parameter "callingPackage"
    .parameter "index"
    .parameter "status"
    .parameter "pdu"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->updateMessageOnIccEf(Ljava/lang/String;II[B)Z

    move-result v0

    return v0
.end method
