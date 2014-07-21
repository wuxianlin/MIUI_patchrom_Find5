.class public Lcom/koushikdutta/superuser/SuReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SuReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 35
    if-nez p2, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    const-string v12, "command"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 39
    .local v3, command:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 41
    const-string v12, "uid"

    const/4 v13, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 42
    .local v11, uid:I
    const/4 v12, -0x1

    if-eq v11, v12, :cond_0

    .line 44
    const-string v12, "desired_uid"

    const/4 v13, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 45
    .local v5, desiredUid:I
    const/4 v12, -0x1

    if-eq v5, v12, :cond_0

    .line 47
    const-string v12, "action"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, action:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 50
    const-string v12, "from_name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 51
    .local v6, fromName:Ljava/lang/String;
    const-string v12, "desired_name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 53
    .local v4, desiredName:Ljava/lang/String;
    new-instance v7, Lcom/koushikdutta/superuser/db/LogEntry;

    invoke-direct {v7}, Lcom/koushikdutta/superuser/db/LogEntry;-><init>()V

    .line 54
    .local v7, le:Lcom/koushikdutta/superuser/db/LogEntry;
    iput v11, v7, Lcom/koushikdutta/superuser/db/LogEntry;->uid:I

    .line 55
    iput-object v3, v7, Lcom/koushikdutta/superuser/db/LogEntry;->command:Ljava/lang/String;

    .line 56
    iput-object v1, v7, Lcom/koushikdutta/superuser/db/LogEntry;->action:Ljava/lang/String;

    .line 57
    iput v5, v7, Lcom/koushikdutta/superuser/db/LogEntry;->desiredUid:I

    .line 58
    iput-object v4, v7, Lcom/koushikdutta/superuser/db/LogEntry;->desiredName:Ljava/lang/String;

    .line 59
    iput-object v6, v7, Lcom/koushikdutta/superuser/db/LogEntry;->username:Ljava/lang/String;

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    long-to-int v12, v12

    iput v12, v7, Lcom/koushikdutta/superuser/db/LogEntry;->date:I

    .line 61
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Lcom/koushikdutta/superuser/db/LogEntry;->getPackageInfo(Landroid/content/Context;)V

    .line 63
    move-object/from16 v0, p1

    invoke-static {v0, v7}, Lcom/koushikdutta/superuser/db/SuperuserDatabaseHelper;->addLog(Landroid/content/Context;Lcom/koushikdutta/superuser/db/LogEntry;)Lcom/koushikdutta/superuser/db/UidPolicy;

    move-result-object v10

    .line 66
    .local v10, u:Lcom/koushikdutta/superuser/db/UidPolicy;
    const-string v12, "allow"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 67
    const v12, 0x7f080025

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-virtual {v7}, Lcom/koushikdutta/superuser/db/LogEntry;->getName()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 73
    .local v9, toast:Ljava/lang/String;
    :goto_1
    if-eqz v10, :cond_2

    iget-boolean v12, v10, Lcom/koushikdutta/superuser/db/UidPolicy;->notification:Z

    if-eqz v12, :cond_0

    .line 76
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/koushikdutta/superuser/util/Settings;->getNotificationType(Landroid/content/Context;)I

    move-result v12

    packed-switch v12, :pswitch_data_0

    goto/16 :goto_0

    .line 90
    :pswitch_0
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v9, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 70
    .end local v9           #toast:Ljava/lang/String;
    :cond_3
    const v12, 0x7f080026

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-virtual {v7}, Lcom/koushikdutta/superuser/db/LogEntry;->getName()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .restart local v9       #toast:Ljava/lang/String;
    goto :goto_1

    .line 78
    :pswitch_1
    new-instance v2, Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 79
    .local v2, builder:Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-virtual {v2, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v12

    const/4 v13, 0x0

    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v13, v14, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v12

    const/high16 v13, 0x7f08

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v12

    invoke-virtual {v12, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v12

    const v13, 0x7f0200c3

    invoke-virtual {v12, v13}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 86
    const-string v12, "notification"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    .line 87
    .local v8, nm:Landroid/app/NotificationManager;
    const/16 v12, 0x11c1

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v13

    invoke-virtual {v8, v12, v13}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
