.class public Lcom/android/settings/NotificationStation;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "NotificationStation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/NotificationStation$PackageReceiver;,
        Lcom/android/settings/NotificationStation$NotificationHistoryAdapter;,
        Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/android/settings/NotificationStation$NotificationHistoryAdapter;

.field private mContext:Landroid/content/Context;

.field private mListener:Landroid/service/notification/INotificationListener$Stub;

.field private mNoMan:Landroid/app/INotificationManager;

.field private final mNotificationSorter:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageReceiver:Lcom/android/settings/NotificationStation$PackageReceiver;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mRefreshListRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/android/settings/NotificationStation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/NotificationStation;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 61
    new-instance v0, Lcom/android/settings/NotificationStation$PackageReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/NotificationStation$PackageReceiver;-><init>(Lcom/android/settings/NotificationStation;Lcom/android/settings/NotificationStation$1;)V

    iput-object v0, p0, Lcom/android/settings/NotificationStation;->mPackageReceiver:Lcom/android/settings/NotificationStation$PackageReceiver;

    .line 65
    new-instance v0, Lcom/android/settings/NotificationStation$1;

    invoke-direct {v0, p0}, Lcom/android/settings/NotificationStation$1;-><init>(Lcom/android/settings/NotificationStation;)V

    iput-object v0, p0, Lcom/android/settings/NotificationStation;->mRefreshListRunnable:Ljava/lang/Runnable;

    .line 72
    new-instance v0, Lcom/android/settings/NotificationStation$2;

    invoke-direct {v0, p0}, Lcom/android/settings/NotificationStation$2;-><init>(Lcom/android/settings/NotificationStation;)V

    iput-object v0, p0, Lcom/android/settings/NotificationStation;->mListener:Landroid/service/notification/INotificationListener$Stub;

    .line 92
    new-instance v0, Lcom/android/settings/NotificationStation$3;

    invoke-direct {v0, p0}, Lcom/android/settings/NotificationStation$3;-><init>(Lcom/android/settings/NotificationStation;)V

    iput-object v0, p0, Lcom/android/settings/NotificationStation;->mNotificationSorter:Ljava/util/Comparator;

    .line 394
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/NotificationStation;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/settings/NotificationStation;->refreshList()V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/android/settings/NotificationStation;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/NotificationStation;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings/NotificationStation;->mRefreshListRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-static {p0, p1}, Lcom/android/settings/NotificationStation;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/NotificationStation;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/settings/NotificationStation;->startApplicationDetailsActivity(Ljava/lang/String;)V

    return-void
.end method

.method private getResourcesForUserPackage(Ljava/lang/String;I)Landroid/content/res/Resources;
    .locals 5
    .parameter "pkg"
    .parameter "userId"

    .prologue
    .line 248
    const/4 v1, 0x0

    .line 250
    .local v1, r:Landroid/content/res/Resources;
    if-eqz p1, :cond_1

    .line 252
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 253
    const/4 p2, 0x0

    .line 255
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/NotificationStation;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    move-object v2, v1

    .line 263
    :goto_1
    return-object v2

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, Lcom/android/settings/NotificationStation;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Icon package not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const/4 v2, 0x0

    goto :goto_1

    .line 261
    .end local v0           #ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    iget-object v2, p0, Lcom/android/settings/NotificationStation;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    goto :goto_0
.end method

.method private loadIconDrawable(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "pkg"
    .parameter "userId"
    .parameter "resId"

    .prologue
    const/4 v3, 0x0

    .line 287
    invoke-direct {p0, p1, p2}, Lcom/android/settings/NotificationStation;->getResourcesForUserPackage(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v1

    .line 289
    .local v1, r:Landroid/content/res/Resources;
    if-nez p3, :cond_0

    move-object v2, v3

    .line 301
    :goto_0
    return-object v2

    .line 294
    :cond_0
    :try_start_0
    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 295
    :catch_0
    move-exception v0

    .line 296
    .local v0, e:Ljava/lang/RuntimeException;
    sget-object v4, Lcom/android/settings/NotificationStation;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Icon not found in "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p1, :cond_1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ": "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 301
    goto :goto_0

    .line 296
    :cond_1
    const-string v2, "<system>"

    goto :goto_1
.end method

.method private loadNotifications()Ljava/util/List;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 197
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    .line 199
    .local v7, currentUserId:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NotificationStation;->mNoMan:Landroid/app/INotificationManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NotificationStation;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Landroid/app/INotificationManager;->getActiveNotifications(Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    .line 200
    .local v4, active:[Landroid/service/notification/StatusBarNotification;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NotificationStation;->mNoMan:Landroid/app/INotificationManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NotificationStation;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x32

    invoke-interface/range {v18 .. v20}, Landroid/app/INotificationManager;->getHistoricalNotifications(Ljava/lang/String;I)[Landroid/service/notification/StatusBarNotification;

    move-result-object v8

    .line 202
    .local v8, dismissed:[Landroid/service/notification/StatusBarNotification;
    new-instance v15, Ljava/util/ArrayList;

    array-length v0, v4

    move/from16 v18, v0

    array-length v0, v8

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 206
    .local v15, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;>;"
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v5, v0, [[Landroid/service/notification/StatusBarNotification;

    const/16 v18, 0x0

    aput-object v4, v5, v18

    const/16 v18, 0x1

    aput-object v8, v5, v18

    .local v5, arr$:[[Landroid/service/notification/StatusBarNotification;
    array-length v13, v5

    .local v13, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    move v11, v10

    .end local v5           #arr$:[[Landroid/service/notification/StatusBarNotification;
    .end local v10           #i$:I
    .end local v13           #len$:I
    .local v11, i$:I
    :goto_0
    if-ge v11, v13, :cond_a

    aget-object v16, v5, v11

    .line 207
    .local v16, resultset:[Landroid/service/notification/StatusBarNotification;
    move-object/from16 v6, v16

    .local v6, arr$:[Landroid/service/notification/StatusBarNotification;
    array-length v14, v6

    .local v14, len$:I
    const/4 v10, 0x0

    .end local v11           #i$:I
    .restart local v10       #i$:I
    :goto_1
    if-ge v10, v14, :cond_9

    aget-object v17, v6, v10

    .line 208
    .local v17, sbn:Landroid/service/notification/StatusBarNotification;
    new-instance v12, Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;

    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-direct {v12, v0}, Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;-><init>(Lcom/android/settings/NotificationStation$1;)V

    .line 209
    .local v12, info:Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;
    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v12, Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;->pkg:Ljava/lang/String;

    .line 210
    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v18

    move/from16 v0, v18

    iput v0, v12, Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;->user:I

    .line 211
    iget-object v0, v12, Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;->pkg:Ljava/lang/String;

    move-object/from16 v18, v0

    iget v0, v12, Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;->user:I

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Landroid/app/Notification;->icon:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/NotificationStation;->loadIconDrawable(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v12, Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 212
    iget-object v0, v12, Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;->pkg:Ljava/lang/String;

    move-object/from16 v18, v0

    iget v0, v12, Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;->user:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/settings/NotificationStation;->loadPackageIconDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v12, Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;->pkgicon:Landroid/graphics/drawable/Drawable;

    .line 213
    iget-object v0, v12, Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;->pkg:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/settings/NotificationStation;->loadPackageName(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v12, Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;->pkgname:Ljava/lang/CharSequence;

    .line 214
    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    .line 215
    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    move-object/from16 v18, v0

    const-string v19, "android.title"

    invoke-virtual/range {v18 .. v19}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v12, Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    .line 216
    iget-object v0, v12, Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    const-string v18, ""

    iget-object v0, v12, Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 217
    :cond_0
    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    move-object/from16 v18, v0

    const-string v19, "android.text"

    invoke-virtual/range {v18 .. v19}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v12, Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    .line 220
    :cond_1
    iget-object v0, v12, Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    const-string v18, ""

    iget-object v0, v12, Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 221
    :cond_2
    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v12, Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    .line 224
    :cond_3
    iget-object v0, v12, Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    const-string v18, ""

    iget-object v0, v12, Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 225
    :cond_4
    iget-object v0, v12, Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;->pkgname:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v12, Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    .line 227
    :cond_5
    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v18

    move-wide/from16 v0, v18

    iput-wide v0, v12, Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;->timestamp:J

    .line 228
    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/app/Notification;->priority:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v12, Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;->priority:I

    .line 229
    const-string v18, "   [%d] %s: %s"

    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    iget-wide v0, v12, Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;->timestamp:J

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    iget-object v0, v12, Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;->pkg:Ljava/lang/String;

    move-object/from16 v21, v0

    aput-object v21, v19, v20

    const/16 v20, 0x2

    iget-object v0, v12, Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Lcom/android/settings/NotificationStation;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    move-object/from16 v0, v16

    if-ne v0, v4, :cond_8

    const/16 v18, 0x1

    :goto_2
    move/from16 v0, v18

    iput-boolean v0, v12, Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;->active:Z

    .line 233
    iget v0, v12, Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;->user:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_6

    iget v0, v12, Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;->user:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v0, v7, :cond_7

    .line 235
    :cond_6
    invoke-interface {v15, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 231
    :cond_8
    const/16 v18, 0x0

    goto :goto_2

    .line 206
    .end local v12           #info:Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;
    .end local v17           #sbn:Landroid/service/notification/StatusBarNotification;
    :cond_9
    add-int/lit8 v10, v11, 0x1

    move v11, v10

    .end local v10           #i$:I
    .restart local v11       #i$:I
    goto/16 :goto_0

    .line 241
    .end local v4           #active:[Landroid/service/notification/StatusBarNotification;
    .end local v6           #arr$:[Landroid/service/notification/StatusBarNotification;
    .end local v8           #dismissed:[Landroid/service/notification/StatusBarNotification;
    .end local v11           #i$:I
    .end local v14           #len$:I
    .end local v15           #list:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;>;"
    .end local v16           #resultset:[Landroid/service/notification/StatusBarNotification;
    :catch_0
    move-exception v9

    .line 242
    .local v9, e:Landroid/os/RemoteException;
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    .line 244
    const/4 v15, 0x0

    .end local v9           #e:Landroid/os/RemoteException;
    :cond_a
    return-object v15
.end method

.method private loadPackageIconDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "pkg"
    .parameter "userId"

    .prologue
    .line 267
    const/4 v0, 0x0

    .line 269
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/NotificationStation;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 273
    :goto_0
    return-object v0

    .line 270
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private loadPackageName(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "pkg"

    .prologue
    .line 278
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/NotificationStation;->mPm:Landroid/content/pm/PackageManager;

    const/16 v2, 0x2000

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 280
    .local v0, info:Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/NotificationStation;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 283
    .end local v0           #info:Landroid/content/pm/ApplicationInfo;
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 281
    .restart local p1
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static varargs logd(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .parameter "msg"
    .parameter "args"

    .prologue
    .line 181
    sget-object v0, Lcom/android/settings/NotificationStation;->TAG:Ljava/lang/String;

    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .end local p0
    :cond_0
    :goto_0
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    return-void

    .line 181
    .restart local p0
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private refreshList()V
    .locals 5

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/android/settings/NotificationStation;->loadNotifications()Ljava/util/List;

    move-result-object v0

    .line 171
    .local v0, infos:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/NotificationStation$HistoricalNotificationInfo;>;"
    if-eqz v0, :cond_0

    .line 172
    const-string v1, "adding %d infos"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/android/settings/NotificationStation;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    iget-object v1, p0, Lcom/android/settings/NotificationStation;->mAdapter:Lcom/android/settings/NotificationStation$NotificationHistoryAdapter;

    invoke-virtual {v1}, Lcom/android/settings/NotificationStation$NotificationHistoryAdapter;->clear()V

    .line 174
    iget-object v1, p0, Lcom/android/settings/NotificationStation;->mAdapter:Lcom/android/settings/NotificationStation$NotificationHistoryAdapter;

    invoke-virtual {v1, v0}, Lcom/android/settings/NotificationStation$NotificationHistoryAdapter;->addAll(Ljava/util/Collection;)V

    .line 175
    iget-object v1, p0, Lcom/android/settings/NotificationStation;->mAdapter:Lcom/android/settings/NotificationStation$NotificationHistoryAdapter;

    iget-object v2, p0, Lcom/android/settings/NotificationStation;->mNotificationSorter:Ljava/util/Comparator;

    invoke-virtual {v1, v2}, Lcom/android/settings/NotificationStation$NotificationHistoryAdapter;->sort(Ljava/util/Comparator;)V

    .line 177
    :cond_0
    return-void
.end method

.method private startApplicationDetailsActivity(Ljava/lang/String;)V
    .locals 4
    .parameter "packageName"

    .prologue
    .line 388
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string v2, "package"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 390
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/NotificationStation;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 391
    invoke-virtual {p0, v0}, Lcom/android/settings/NotificationStation;->startActivity(Landroid/content/Intent;)V

    .line 392
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 133
    const-string v1, "onActivityCreated(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/android/settings/NotificationStation;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/NotificationStation;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 142
    .local v0, listView:Landroid/widget/ListView;
    new-instance v1, Lcom/android/settings/NotificationStation$NotificationHistoryAdapter;

    iget-object v2, p0, Lcom/android/settings/NotificationStation;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/android/settings/NotificationStation$NotificationHistoryAdapter;-><init>(Lcom/android/settings/NotificationStation;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/NotificationStation;->mAdapter:Lcom/android/settings/NotificationStation$NotificationHistoryAdapter;

    .line 143
    iget-object v1, p0, Lcom/android/settings/NotificationStation;->mAdapter:Lcom/android/settings/NotificationStation$NotificationHistoryAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 144
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 5
    .parameter "activity"

    .prologue
    .line 103
    const-string v0, "onAttach(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/settings/NotificationStation;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 105
    iput-object p1, p0, Lcom/android/settings/NotificationStation;->mContext:Landroid/content/Context;

    .line 106
    iget-object v0, p0, Lcom/android/settings/NotificationStation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/NotificationStation;->mPm:Landroid/content/pm/PackageManager;

    .line 107
    const-string v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/NotificationStation;->mNoMan:Landroid/app/INotificationManager;

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/NotificationStation;->mNoMan:Landroid/app/INotificationManager;

    iget-object v1, p0, Lcom/android/settings/NotificationStation;->mListener:Landroid/service/notification/INotificationListener$Stub;

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/settings/NotificationStation;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Landroid/app/INotificationManager;->registerListener(Landroid/service/notification/INotificationListener;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 121
    const-string v1, "onCreate(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/android/settings/NotificationStation;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/NotificationStation;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 124
    .local v0, activity:Landroid/app/Activity;
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 128
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 129
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 148
    const-string v0, "onPause()"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/settings/NotificationStation;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 150
    iget-object v0, p0, Lcom/android/settings/NotificationStation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/NotificationStation;->mPackageReceiver:Lcom/android/settings/NotificationStation$PackageReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 151
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 155
    const-string v1, "onResume()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/settings/NotificationStation;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 157
    invoke-direct {p0}, Lcom/android/settings/NotificationStation;->refreshList()V

    .line 160
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 161
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 166
    iget-object v1, p0, Lcom/android/settings/NotificationStation;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/NotificationStation;->mPackageReceiver:Lcom/android/settings/NotificationStation$PackageReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 167
    return-void
.end method
