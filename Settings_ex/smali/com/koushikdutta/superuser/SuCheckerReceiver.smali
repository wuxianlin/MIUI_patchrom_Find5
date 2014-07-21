.class public Lcom/koushikdutta/superuser/SuCheckerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SuCheckerReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static doNotification(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    const v2, 0x7f080043

    const/4 v4, 0x0

    .line 17
    new-instance v1, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v1, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 18
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 19
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 20
    const v0, 0x7f0200c3

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 21
    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 22
    const v0, 0x7f08004a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 23
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 24
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/koushikdutta/superuser/MainActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v4, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 25
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/koushikdutta/superuser/SuCheckerReceiver;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 26
    const-string v3, "internal.superuser.ACTION_CHECK_DELETED"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    invoke-static {p0, v4, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 28
    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 29
    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 30
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 31
    const/16 v2, 0x2710

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 32
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 38
    if-nez p2, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "internal.superuser.BOOT_TEST"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 44
    :cond_2
    invoke-static {p1}, Lcom/koushikdutta/superuser/util/Settings;->getCheckSuQuietCounter(Landroid/content/Context;)I

    move-result v0

    .line 45
    .local v0, counter:I
    if-lez v0, :cond_3

    .line 46
    const-string v2, "Superuser"

    const-string v3, "Not bothering user... su counter set."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    add-int/lit8 v0, v0, -0x1

    .line 48
    invoke-static {p1, v0}, Lcom/koushikdutta/superuser/util/Settings;->setCheckSuQuietCounter(Landroid/content/Context;I)V

    goto :goto_0

    .line 52
    :cond_3
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 53
    .local v1, handler:Landroid/os/Handler;
    new-instance v2, Lcom/koushikdutta/superuser/SuCheckerReceiver$1;

    invoke-direct {v2, p0, p1, v1}, Lcom/koushikdutta/superuser/SuCheckerReceiver$1;-><init>(Lcom/koushikdutta/superuser/SuCheckerReceiver;Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v2}, Lcom/koushikdutta/superuser/SuCheckerReceiver$1;->start()V

    goto :goto_0

    .line 69
    .end local v0           #counter:I
    .end local v1           #handler:Landroid/os/Handler;
    :cond_4
    const-string v2, "internal.superuser.ACTION_CHECK_DELETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    const-string v2, "Superuser"

    const-string v3, "Will not bother the user in the future... su counter set."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const/4 v2, 0x3

    invoke-static {p1, v2}, Lcom/koushikdutta/superuser/util/Settings;->setCheckSuQuietCounter(Landroid/content/Context;I)V

    goto :goto_0
.end method
